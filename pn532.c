// PN532 functions
// Copyright © 2019-205 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0

#ifdef	ESP_PLATFORM
static const char TAG[] = "PN532";
#include "sdkconfig.h"
#include "esp_log.h"
#include <driver/uart.h>
#include <driver/gpio.h>
#define	HEXLOG	ESP_LOG_INFO
#define	DXLOG	ESP_LOG_INFO
#define	MSGLOG	ESP_LOG_ERROR
#define	RX_BUF	280
#define	TX_BUF	280
#else
#include <stdio.h>
#include <termios.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#define	ESP_LOGE(tag,fmt,...)	fprintf(stderr,fmt"\n",__VA_ARGS__);
#endif

#ifndef	ESP_PLATFORM
int pn532_dump = 0;
int pn532_debug = 0;
#endif

#include "pn532.h"

struct pn532_s
{
#ifdef	ESP_PLATFORM
   uint8_t uart;                // Which UART
#else
   int sock;                    // UART socket
#endif
   volatile uint8_t pending;    // Pending response
   uint8_t lasterr;             // Last error (obviously not for PN532_ERR_NULL)
   uint8_t cards;               // Cards present (0, 1 or 2)
   uint8_t tg;                  // First card target id (normally 1)
   uint16_t sens_res;           // From InListPassiveTarget
   uint8_t sel_res;             // From InListPassiveTarget
   uint8_t nfcid[11];           // First card ID last seen (starts with len)
   uint8_t ats[30];             // First card ATS last seen (starts with len)
#ifdef	ESP_PLATFORM
   SemaphoreHandle_t mutex;     // DX mutex 
#endif
};

// Data
static const char *const pn532_err_str[PN532_ERR_STATUS_MAX + 1] = {
#define p(n) [PN532_ERR_##n]="PN532_ERR_"#n,
#define s(v,n) [PN532_ERR_STATUS_##n]="PN532_ERR_STATUS_"#n,
   pn532_errs
#undef p
#undef s
};

pn532_err_t
pn532_lasterr (pn532_t *p)
{
   if (!p)
      return -PN532_ERR_NULL;
#ifdef	ESP_PLATFORM
#if 0
   if (p->lasterr > PN532_ERR_STATUS)
      ESP_LOGI (TAG, "Last err status %02X", p->lasterr - PN532_ERR_STATUS);
   else
      ESP_LOGI (TAG, "Last err %d", p->lasterr);
#endif
#endif
   return p->lasterr;
}

const char *
pn532_err_to_name (pn532_err_t e)
{
   if (e < 0)
      e = -e;
   if (e > PN532_ERR_STATUS_MAX)
      return "PN532_ERR_UNKNOWN";
   return pn532_err_str[e];
}

static void
uart_rx_flush (pn532_t *p)
{
#ifdef	ESP_PLATFORM
   uart_flush_input (p->uart);
#else
   tcflush (p->sock, TCIFLUSH);
#endif
}

static int
uart_rx (pn532_t *p, uint8_t *buf, uint32_t length, int ms)
{                               // Low level UART rx with optional logging
   if (!p)
      return -PN532_ERR_NULL;
#ifdef	ESP_PLATFORM
   ms /= portTICK_PERIOD_MS;
   if (ms < 2)
      ms = 2;                   // Ensure some timeout
   int l = uart_read_bytes (p->uart, buf, length, ms);
#ifdef CONFIG_PN532_DUMP
   if (l > 0)
      ESP_LOG_BUFFER_HEX_LEVEL ("NFCRx", buf, l, HEXLOG);
   if (l != length)
      ESP_LOGI (TAG, "Rx %d/%ld %d*%ldms", l, length, ms, portTICK_PERIOD_MS);
#endif
#else
   int l = 0;
   while (l < length)
   {
      int r = 0;
      if (ioctl (p->sock, FIONREAD, &r) < 0)
         break;
      if (r <= 0)
      {
         if (!ms--)
            break;
         usleep (1000);
         continue;
      }
      if (r > length - l)
         r = length - l;
      r = read (p->sock, buf + l, r);
      if (r <= 0)
         break;
      l += r;
   }
   if (pn532_dump)
   {
      fprintf (stderr, "Rx");
      for (int i = 0; i < l; i++)
         fprintf (stderr, " %02X", buf[i]);
      fprintf (stderr, "\n");
   }
#endif
   return l;
}

static int
uart_tx (pn532_t *p, const uint8_t *src, size_t size)
{                               // Low level UART tx with optional logging
   if (!p)
      return -PN532_ERR_NULL;
#ifdef	ESP_PLATFORM
   int l = uart_write_bytes (p->uart, (char *) src, size);
#ifdef CONFIG_PN532_DUMP
   if (l > 0)
      ESP_LOG_BUFFER_HEX_LEVEL ("NFCTx", src, l, HEXLOG);
   if (l != size)
      ESP_LOGI (TAG, "Tx %d/%d", l, size);
#endif
#else
   if (pn532_dump)
   {
      fprintf (stderr, "Tx");
      for (int i = 0; i < size; i++)
         fprintf (stderr, " %02X", src[i]);
      fprintf (stderr, "\n");
   }
   int l = 0;
   while (l < size)
   {
      int w = write (p->sock, src + l, size - l);
      if (w <= 0)
         return w;
      l += w;
   }
#endif
   return l;
}

static void
uart_tx_wait (pn532_t *p, int ms)
{
#ifdef	ESP_PLATFORM
   uart_wait_tx_done (p->uart, ms / portTICK_PERIOD_MS);
#else
   while (ms)
   {                            // Messy
      int w = -1;
      if (ioctl (p->sock, TIOCOUTQ, &w) < 0 || !w)
         break;
      if (!ms--)
         break;
      usleep (1000);
   }
#endif
}

static int
uart_preamble (pn532_t *p, int ms)
{                               // Wait for preamble
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t last = 0xFF;
   while (1)
   {
      uint8_t c;
      int l = uart_rx (p, &c, 1, ms);
      if (l < 1)
         return l;
      if (last == 0x00 && c == 0xFF)
         return 2;
      last = c;
   }
}

void *
pn532_end (pn532_t *p)
{
   if (p)
   {
#ifdef	ESP_PLATFORM
      vSemaphoreDelete (p->mutex);
#endif
      free (p);
   }
   return NULL;
}

#ifdef	ESP_PLATFORM
pn532_t *
pn532_init (int8_t uart, uint8_t baud, int8_t tx, int8_t rx, uint8_t outputs)
#else
pn532_t *
pn532_init (int sock, uint8_t outputs)
#endif
{                               // Init PN532 (baud is 0-8 for 9600-1288000
#ifdef	ESP_PLATFORM
   if (uart < 0 || tx < 0 || rx < 0 || tx == rx)
      return NULL;
   if (!GPIO_IS_VALID_OUTPUT_GPIO (tx) || !GPIO_IS_VALID_GPIO (rx))
      return NULL;
#else
   if (sock < 0)
      return NULL;
#endif
   pn532_t *p = malloc (sizeof (*p));
   if (!p)
      return p;
   memset (p, 0, sizeof (*p));
#ifdef	ESP_PLATFORM
   p->uart = uart;
   p->mutex = xSemaphoreCreateBinary ();
   xSemaphoreGive (p->mutex);
#else
   p->sock = sock;
#endif
   // Init UART
#ifdef	ESP_PLATFORM
   esp_err_t err = 0;
   {
      uart_config_t uart_config = {
         .baud_rate = 115200,
         .data_bits = UART_DATA_8_BITS,
         .parity = UART_PARITY_DISABLE,
         .stop_bits = UART_STOP_BITS_1,
         .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
         .source_clk = UART_SCLK_DEFAULT,
      };
      if (!err)
         err = uart_param_config (uart, &uart_config);
      if (!err)
         err = gpio_reset_pin (tx);
      if (!err && tx != rx)
         err = gpio_reset_pin (rx);
      if (!err)
         err = uart_set_pin (uart, tx, rx, -1, -1);
      if (!err && !uart_is_driver_installed (uart))
      {
         ESP_LOGI (TAG, "Installing UART driver %d", uart);
         err = uart_driver_install (uart, RX_BUF, TX_BUF, 0, NULL, 0);
      }
      if (err)
      {
         ESP_LOGE (TAG, "UART fail %s", esp_err_to_name (err));
         return pn532_end (p);
      }
   }
   ESP_LOGD (TAG, "UART %d Tx %d Rx %d", uart, tx, rx);
   gpio_set_drive_capability (tx, GPIO_DRIVE_CAP_3);    // Oomph?
#else
   {
      struct termios t;
      tcgetattr (sock, &t);
      cfmakeraw (&t);
      t.c_cflag = ((t.c_cflag & ~CSIZE) | CS8);
      t.c_cflag |= CLOCAL;
      t.c_cflag |= CREAD;
      cfsetspeed (&t, B115200);
      tcsetattr (sock, TCSANOW, &t);
      int status = TIOCM_RTS;   // This is power on when using a tasmotiser
      ioctl (sock, TIOCMBIC, &status);
      usleep (100000);
   }
#endif
   int n;
   uint8_t buf[30] = { 0 };
   int e = sizeof (buf);
   buf[--e] = 0x55;             // Idle
   buf[--e] = 0x55;
   buf[--e] = 0x55;
   uart_rx_flush (p);
   uart_tx (p, buf, sizeof (buf));
   uart_tx_wait (p, 100);
#ifdef	ESP_PLATFORM
   if (baud != 4 && baud <= 8)
   {                            // Not the default Baud rate, go through the change of Baud rate step by step
      if (pn532_tx (p, 0x10, 1, &baud, 0, NULL) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 20) < 0)
      {
         ESP_LOGE (TAG, "Baud rate change failed %s", pn532_err_to_name (pn532_lasterr (p)));
         return pn532_end (p);
      }
      // We have to send ACK at current Baud rate
      uint8_t ack[] = { 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00 };
      uart_tx (p, ack, sizeof (ack));
      uart_tx_wait (p, 100);
      usleep (10000);
      // Change rate
      const uint32_t rate[] = { 9600, 19200, 38400, 57600, 115200, 230400, 460800, 921600, 1288000 };
      uart_config_t uart_config = {
         .baud_rate = rate[baud],
         .data_bits = UART_DATA_8_BITS,
         .parity = UART_PARITY_DISABLE,
         .stop_bits = UART_STOP_BITS_1,
         .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
         .source_clk = UART_SCLK_DEFAULT,
      };
      if (!err)
         err = uart_param_config (uart, &uart_config);
      if (err)
      {
         ESP_LOGE (TAG, "UART fail %s", esp_err_to_name (err));
         return pn532_end (p);
      }
      ESP_LOGE (TAG, "Baud rate %ld", rate[baud]);
      usleep (10000);
   }
#endif
   // Set up PN532 (SAM first as in vLowBat mode)
   // SAMConfiguration
   n = 0;
   buf[n++] = 0x01;             // Normal
   buf[n++] = 20;               // *50ms timeout
   buf[n++] = 0x00;             // Not use IRQ
   if (pn532_tx (p, 0x14, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
   {                            // Again
      uart_rx (p, buf, sizeof (buf), 100);      // Wait long enough for command response timeout before we try again
      // SAMConfiguration
      n = 0;
      buf[n++] = 0x01;          // Normal
      buf[n++] = 20;            // *50ms timeout
      buf[n++] = 0x00;          // Not use IRQ
      if (pn532_tx (p, 0x14, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
      {
         ESP_LOGE (TAG, "SAMConfiguration fail %s", pn532_err_to_name (pn532_lasterr (p)));
         return pn532_end (p);
      }
   }
   // GetFirmwareVersion
   if (pn532_tx (p, 0x02, 0, NULL, 0, NULL) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
   {
      ESP_LOGE (TAG, "GetFirmwareVersion fail %s", pn532_err_to_name (pn532_lasterr (p)));
      return pn532_end (p);
   }
   //uint32_t ver = (buf[0] << 24) + (buf[1] << 16) + (buf[2] << 8) + buf[3];
   // RFConfiguration (retries)
   n = 0;
   buf[n++] = 5;                // Config item 5 (MaxRetries)
   buf[n++] = 0xFF;             // MxRtyATR (default = 0xFF)
   buf[n++] = 0x01;             // MxRtyPSL (default = 0x01)
   buf[n++] = 0x01;             // MxRtyPassiveActivation
   if (pn532_tx (p, 0x32, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
   {
      ESP_LOGE (TAG, "RFConfiguration fail %s", pn532_err_to_name (pn532_lasterr (p)));
      return pn532_end (p);
   }
   // WriteRegister
   n = 0;
   // AB are 00=open drain, 10=quasi bidi, 01=input (high imp), 11=output (push/pull)
   buf[n++] = 0xFF;             // P3CFGA
   buf[n++] = 0xFC;             // P3CFGA
   buf[n++] = (outputs & 0x3F); // Define output bits
   buf[n++] = 0xFF;             // P3CFGB
   buf[n++] = 0xFD;             // P3CFGB
   buf[n++] = 0xFF;             // 0xFF
   buf[n++] = 0xFF;             // P3
   buf[n++] = 0xB0;             // P3
   buf[n++] = 0xFF;             // All high
   buf[n++] = 0xFF;             // P7CFGA
   buf[n++] = 0xF4;             // P7CFGA
   buf[n++] = ((outputs >> 5) & 0x06);  // Define output bits
   buf[n++] = 0xFF;             // P7CFGB
   buf[n++] = 0xF5;             // P7CFGB
   buf[n++] = 0xFF;             // 0xFF
   buf[n++] = 0xFF;             // P7
   buf[n++] = 0xF7;             // P7
   buf[n++] = 0xFF;             // All high
   if (n && (pn532_tx (p, 0x08, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0))
   {
      ESP_LOGE (TAG, "WriteRegister fail %s", pn532_err_to_name (pn532_lasterr (p)));
      return pn532_end (p);
   }
   // RFConfiguration
   n = 0;
   buf[n++] = 0x04;             // MaxRtyCOM
   buf[n++] = 1;                // Retries (default 0)
   if (pn532_tx (p, 0x32, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
   {
      ESP_LOGE (TAG, "RFConfiguration fail %s", pn532_err_to_name (pn532_lasterr (p)));
      return pn532_end (p);
   }
   // RFConfiguration
   n = 0;
   buf[n++] = 0x02;             // Various timings (100*2^(n-1))us
   buf[n++] = 0x00;             // RFU
   buf[n++] = 0x0B;             // Default (102.4 ms)
   buf[n++] = 0x0A;             // Default is 0x0A (51.2 ms)
   if (pn532_tx (p, 0x32, 0, NULL, n, buf) < 0 || pn532_rx (p, 0, NULL, sizeof (buf), buf, 50) < 0)
   {
      ESP_LOGE (TAG, "RFConfiguration fail %s", pn532_err_to_name (pn532_lasterr (p)));
      return pn532_end (p);
   }
   return p;
}

// Data access
uint8_t *
pn532_ats (pn532_t *p)
{
   return p->ats;
}

uint8_t *
pn532_nfcid (pn532_t *p, char text[21])
{
   if (text)
   {
      char *o = text;
      uint8_t *i = p->nfcid;
      if (*i <= 10)
      {
         int len = *i++;
         while (len--)
            o += sprintf (o, "%02X", *i++);
      }
      *o++ = 0;                 // End
   }
   return p->nfcid;
}

// Low level access functions
int
pn532_tx_mutex (pn532_t *p, uint8_t cmd, int len1, uint8_t *data1, int len2, uint8_t *data2)
{                               // Send data to PN532
   if (p->pending)
      return -(p->lasterr = PN532_ERR_CMDPENDING);
   uint8_t buf[20],
    *b = buf;
   *b++ = 0x55;
   *b++ = 0x55;
   *b++ = 0x55;
   *b++ = 0x00;                 // Preamble
   *b++ = 0x00;                 // Start 1
   *b++ = 0xFF;                 // Start 2
   int l = len1 + len2 + 2;
   if (l >= 0x100)
   {
      *b++ = 0xFF;              // Extended len
      *b++ = 0xFF;
      *b++ = (l >> 8);          // len
      *b++ = (l & 0xFF);
      *b++ = -(l >> 8) - (l & 0xFF);    // Checksum
   } else
   {
      *b++ = l;                 // Len
      *b++ = -l;                // Checksum
   }
   *b++ = 0xD4;                 // Direction (host to PN532)
   *b++ = cmd;
   uint8_t sum = 0xD4 + cmd;
   for (l = 0; l < len1; l++)
      sum += data1[l];
   for (l = 0; l < len2; l++)
      sum += data2[l];
   uart_rx_flush (p);
   // Send data
   uart_tx (p, buf, b - buf);
   if (len1)
      uart_tx (p, data1, len1);
   if (len2)
      uart_tx (p, data2, len2);
   buf[0] = -sum;               // Checksum
   buf[1] = 0x00;               // Postamble
   uart_tx (p, buf, 2);
   uart_tx_wait (p, 1000);
   // Get ACK and check it
   l = uart_preamble (p, 50);
   if (l < 2)
      return -(p->lasterr = PN532_ERR_TIMEOUTACK);
   l = uart_rx (p, buf, 3, 10);
   if (l < 3)
      return -(p->lasterr = PN532_ERR_TIMEOUTACK);
   if (buf[2])
      return -(p->lasterr = PN532_ERR_BADACK);
   if (buf[0] == 0xFF && !buf[1])
      return -(p->lasterr = PN532_ERR_NACK);
   if (buf[0] || buf[1] != 0xFF)
      return -(p->lasterr = PN532_ERR_BADACK);  // Bad
   p->pending = cmd + 1;
   return len1 + len2;
}

int
pn532_tx (pn532_t *p, uint8_t cmd, int len1, uint8_t *data1, int len2, uint8_t *data2)
{                               // Send data to PN532
   if (!p)
      return -PN532_ERR_NULL;
#ifdef	ESP_PLATFORM
#ifdef	CONFIG_PN532_DEBUG_MSG
   {                            // Messy
      uint8_t buf[100],
       *p = buf;
      *p++ = cmd;
      if (len1)
      {
         memcpy (p, data1, len1);
         p += len1;
      }
      if (len2)
      {
         memcpy (p, data2, len2);
         p += len2;
      }
      ESP_LOG_BUFFER_HEX_LEVEL ("NFCTx", buf, (int) (p - buf), MSGLOG);
   }
#endif
   xSemaphoreTake (p->mutex, portMAX_DELAY);
#else
   if (pn532_debug)
   {
      fprintf (stderr, "NFCTx %02X",cmd);
      for (int i = 0; i < len1; i++)
         fprintf (stderr, " %02X", data1[i]);
      for (int i = 0; i < len2; i++)
         fprintf (stderr, " %02X", data2[i]);
      fprintf (stderr, "\n");
   }
#endif
   int l = pn532_tx_mutex (p, cmd, len1, data1, len2, data2);
#ifdef	ESP_PLATFORM
   if (!p->pending)
      xSemaphoreGive (p->mutex);
#endif
   return l;
}

int
pn532_rx_mutex (pn532_t *p, int max1, uint8_t *data1, int max2, uint8_t *data2, int ms)
{                               // Recv data from PN532
   uint8_t pending = p->pending;
   p->pending = 0;
   int l = uart_preamble (p, ms);
   if (l < 2)
      return -(p->lasterr = PN532_ERR_TIMEOUT);
   uint8_t buf[9];
   l = uart_rx (p, buf, 4, 10);
   if (l < 4)
      return -(p->lasterr = PN532_ERR_TIMEOUT);
   int len = 0;
   if (buf[0] == 0xFF && buf[1] == 0xFF)
   {                            // Extended
      l = uart_rx (p, buf + 4, 3, 10);
      if (l < 3)
         return -(p->lasterr = PN532_ERR_TIMEOUT);
      if ((uint8_t) (buf[2] + buf[3] + buf[4]))
         return -(p->lasterr = PN532_ERR_HEADER);       // Bad checksum
      len = (buf[2] << 8) + buf[3];
      if (buf[5] != 0xD5)
         return -(p->lasterr = PN532_ERR_HEADER);       // Not reply
      if (buf[6] != pending)
         return -(p->lasterr = PN532_ERR_CMDMISMATCH);  // Not right reply
   } else
   {                            // Normal
      if ((uint8_t) (buf[0] + buf[1]))
         return -(p->lasterr = PN532_ERR_HEADER);       // Bad checksum
      len = buf[0];
      if (buf[2] != 0xD5)
         return -(p->lasterr = PN532_ERR_HEADER);       // Not reply
      if (buf[3] != pending)
         return -(p->lasterr = PN532_ERR_CMDMISMATCH);  // Not right reply
   }
   if (len < 2)
      return -(p->lasterr = PN532_ERR_HEADER);  // Invalid
   len -= 2;
   int res = len;
   uint8_t sum = 0xD5 + pending;
   if (len > max1 + max2)
      return -(p->lasterr = PN532_ERR_SPACE);   // Too big
#if	defined(CONFIG_PN532_DEBUG_MSG) || ! defined(PATHFORM_ESP)
   uint8_t len1 = 0,
      len2 = 0;
#endif
   if (data1)
   {
      l = max1;
      if (l > len)
         l = len;
      if (l)
      {
#if	defined(CONFIG_PN532_DEBUG_MSG) || ! defined(PATHFORM_ESP)
         len1 = l;
#endif
         if (uart_rx (p, data1, l, 10) < l)
            return -(p->lasterr = PN532_ERR_TIMEOUT);   // Bad read
         len -= l;
         while (l)
            sum += data1[--l];
      }
   }
   if (data2)
   {
      l = max2;
      if (l > len)
         l = len;
      if (l)
      {
#if	defined(CONFIG_PN532_DEBUG_MSG) || ! defined(PATHFORM_ESP)
         len2 = l;
#endif
         if (uart_rx (p, data2, l, 10) < l)
            return -(p->lasterr = PN532_ERR_TIMEOUT);   // Bad read
         len -= l;
         while (l)
            sum += data2[--l];
      }
   }
   l = uart_rx (p, buf, 2, 10);
   if (l < 2)
      return -(p->lasterr = PN532_ERR_TIMEOUT); // Postamble
   if ((uint8_t) (buf[0] + sum))
      return -(p->lasterr = PN532_ERR_CHECKSUM);        // checksum
   if (buf[1])
      return -(p->lasterr = PN532_ERR_POSTAMBLE);       // postamble
#ifdef	ESP_PLATFORM	
#ifdef	CONFIG_PN532_DEBUG_MSG
   {                            // Messy
      uint8_t buf[100],
       *p = buf;
      *p++ = pending;
      if (len1)
      {
         memcpy (p, data1, len1);
         p += len1;
      }
      if (len2)
      {
         memcpy (p, data2, len2);
         p += len2;
      }
      ESP_LOG_BUFFER_HEX_LEVEL ("NFCRx", buf, (int) (p - buf), MSGLOG);
   }
#endif
#else
   if (pn532_debug)
   {
      fprintf (stderr, "NFCRx %02X",pending);
      for (int i = 0; i < len1; i++)
         fprintf (stderr, " %02X", data1[i]);
      for (int i = 0; i < len2; i++)
         fprintf (stderr, " %02X", data2[i]);
      fprintf (stderr, "\n");
   }
#endif
   return res;
}

int
pn532_rx (pn532_t *p, int max1, uint8_t *data1, int max2, uint8_t *data2, int ms)
{                               // Recv data from PN532
   if (!p)
      return -PN532_ERR_NULL;
   if (!p->pending)
      return -(p->lasterr = PN532_ERR_NOTPENDING);
   int l = pn532_rx_mutex (p, max1, data1, max2, data2, ms);
#ifdef	ESP_PLATFORM
   xSemaphoreGive (p->mutex);
#endif
   return l;
}

int
pn532_ready (pn532_t *p)
{
   if (!p)
      return -PN532_ERR_NULL;
   if (!p->pending)
      return -(p->lasterr = PN532_ERR_NOTPENDING);      // Nothing pending
   size_t length = -1;
#ifdef	ESP_PLATFORM
   if (uart_get_buffered_data_len (p->uart, &length))
      return -(p->lasterr = 2); // Error
#else
   if (ioctl (p->sock, FIONREAD, &length) < 0)
      return -(p->lasterr = 2); // Error
#endif
   return length;
}

// Data exchange (for DESFire use)
int
pn532_dx (void *pv, unsigned int len, uint8_t *data, unsigned int max, const char **strerr)
{                               // Card access function - sends to card starting CMD byte, and receives reply in to same buffer, starting status byte, returns len
   if (strerr)
      *strerr = "No error";
   pn532_t *p = pv;
   if (!p)
      return -PN532_ERR_NULL;
   if (!p->cards)
      return 0;                 // No card
#ifdef	CONFIG_PN532_DEBUG_DX
#ifndef CONFIG_PN532_DUMP
   ESP_LOG_BUFFER_HEX_LEVEL ("NFCTx", data, len, DXLOG);
#endif
#endif
   int l = pn532_tx (p, 0x40, 1, &p->tg, len, data);
   if (l >= 0)
   {
      uint8_t status;
      l = pn532_rx (p, 1, &status, max, data, 500);
      if (!l)
         l = -PN532_ERR_SHORT;
      else if (l >= 1 && status)
         l = -PN532_ERR_STATUS - status;
#ifdef	CONFIG_PN532_DEBUG_DX
#ifndef CONFIG_PN532_DUMP
      if (l > 0)
         ESP_LOG_BUFFER_HEX_LEVEL ("NFCRx", data, l - 1, DXLOG);
#endif
#endif
   }
   if (l < 0)
   {
      p->lasterr = -l;
#ifdef	CONFIG_PN532_DEBUG_DX
      ESP_LOG_LEVEL (DXLOG, "NFCErr", "%s", pn532_err_to_name (p->lasterr));
#endif
      if (strerr)
         *strerr = pn532_err_to_name (p->lasterr);
   } else
      l--;                      // Allow for status
   return l;
}

// Other higher level functions
int
pn532_ILPT_Send (pn532_t *p)
{
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[3];
   // InListPassiveTarget
   buf[0] = 2;                  // 2 tags (we only report 1)
   buf[1] = 0;                  // 106 kbps type A (ISO/IEC14443 Type A)
   int l = pn532_tx (p, 0x4A, 2, buf, 0, NULL);
   if (l < 0)
      return l;
   return 0;                    // Waiting
}

int
pn532_Present (pn532_t *p)
{
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[1];
   if (!p->pending && p->cards && *p->ats && (p->ats[1] == 0x75 // DESFire
                                              //|| p->ats[1] == 0x78      // ISO
       ))
   {                            // We have cards, check in field still
      buf[0] = 6;               // Test 6 Attention Request Test or ISO/IEC14443-4 card presence detection
      int l = pn532_tx (p, 0x00, 1, buf, 0, NULL);
      if (l >= 0)
         l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 110);
      if (l < 0)
         return l;
      if (l < 1)
         return -(p->lasterr = PN532_ERR_SHORT);
      if (!*buf)
         return p->cards;       // Still in field
   }
   return pn532_Cards (p);      // Look for card - older MIFARE need re-doing to see if present still
}

int
pn532_deselect (pn532_t *p, uint8_t n)
{                               // Send a release
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[2];
   buf[0] = n;
   int l = pn532_tx (p, 0x44, 1, buf, 0, NULL);
   if (l >= 0)
      l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 100);
   return l;
}

int
pn532_release (pn532_t *p, uint8_t n)
{                               // Send a release
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[2];
   buf[0] = n;
   int l = pn532_tx (p, 0x52, 1, buf, 0, NULL);
   if (l >= 0)
      l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 100);
   return l;
}

int
pn532_write_GPIO (pn532_t *p, uint8_t value)
{                               // Write P3/P7 (P72/P71 in top bits, P35-30 in rest)
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[2];
   buf[0] = 0x80 | (value & 0x3F);
   buf[1] = 0x80 | ((value >> 5) & 0x06);
   int l = pn532_tx (p, 0x0E, 2, buf, 0, NULL);
   if (l >= 0)
      l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 50);
   return l;
}

int
pn532_read_GPIO (pn532_t *p)
{                               // Read P3/P7 (P72/P71 in top bits, P35-30 in rest)
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[3];
   int l = pn532_tx (p, 0x0C, 0, NULL, 0, NULL);
   if (l >= 0)
      l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 50);
   if (l < 0)
      return l;
   if (l < 3)
      return -(p->lasterr = PN532_ERR_SHORT);
   return (buf[0] & 0x3F) | ((buf[1] & 0x06) << 5);
}

int
pn532_Cards (pn532_t *p)
{                               // -ve for error, else number of cards
   if (!p)
      return -PN532_ERR_NULL;
   uint8_t buf[100];
   // InListPassiveTarget to get card count and baseID
   if (!p->pending)
      pn532_ILPT_Send (p);
   if (p->pending != 0x4B)
      return -(p->lasterr = PN532_ERR_CMDMISMATCH);     // We expect to be waiting for InListPassiveTarget response
   int l = pn532_rx (p, 0, NULL, sizeof (buf), buf, 110);
   if (l < 0)
      return l;
   memset (p->nfcid, 0, sizeof (p->nfcid));
   memset (p->ats, 0, sizeof (p->ats));
   // Extract first card ID
   uint8_t *b = buf,
      *e = buf + l;             // end
   if (b >= e)
      return -(p->lasterr = PN532_ERR_SHORT);   // No card count
   p->cards = *b++;
   if (p->cards)
   {                            // Get details of first card
      if (b + 5 > e)
         return -(p->lasterr = PN532_ERR_SPACE);        // No card data
      p->tg = *b++;
      p->sens_res = (b[0] << 8) + b[1];
      b += 2;
      p->sel_res = *b++;
      if (b + *b + 1 > e)
         return -(p->lasterr = PN532_ERR_SHORT);        // Too short
      if (*b < sizeof (p->nfcid))
         memcpy (p->nfcid, b, *b + 1);  // OK
      else
         memset (p->nfcid, 0, sizeof (p->nfcid));       // Too big
      b += *b + 1;
      if (b < e)
      {                         // ATS
         if (!*b || b + *b > e)
            return -(p->lasterr = PN532_ERR_SHORT);     // Zero or missing ATS
         if (*b <= sizeof (p->ats))
         {
            memcpy (p->ats, b, *b);     // OK
            (*p->ats)--;        // Make len of what follows for consistency
         }
         b += *b;               // ready for second target (which we are not looking at)
      }
   }
   return p->cards;
}
