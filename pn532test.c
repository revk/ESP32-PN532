/* PN532 via serial port */

#include <stdio.h>
#include <popt.h>
#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <stdint.h>

int             debug = 0;
uint8_t         pending = 0;

int
swrite(int p, uint8_t * buf, int l)
{
   if (debug)
      for (int n = 0; n < l; n++)
         fprintf(stderr, " %02X", buf[n]);
   int             r = write(p, buf, l);
   if (r < 0)
      err(1, "Write failed (%d!=%d)", r, l);
   return r;
}

int
sread(int p, uint8_t * buf, int l)
{
   int             q = 0;
   while (q < l)
   {
      int             r = read(p, buf + q, l - q);
      if (r <= 0)
         err(1, "Read failed (%d!=%d)", r, l);
      q += r;
   }
   if (debug)
      for (int n = 0; n < l; n++)
         fprintf(stderr, " %02X", buf[n]);
   return l;
}

int
pn532_tx(int p, uint8_t cmd, int len1, uint8_t * data1, int len2, uint8_t * data2)
{
   if (debug)
      fprintf(stderr, "Tx:");
   if (pending)
      return -__LINE__;
   uint8_t         buf[20];
   uint8_t        *b = buf;
   int             l = len1 + len2 + 2;
   *b++ = 0x55;
   *b++ = 0x55;
   *b++ = 0x55;
   *b++ = 0x00;                 /* Preamble */
   *b++ = 0x00;                 /* Start 1 */
   *b++ = 0xFF;                 /* Start 2 */
   if (l >= 0x100)
   {
      *b++ = 0xFF;
      /* Extended len */
      *b++ = 0xFF;
      *b++ = (l >> 8);
      /* len */
      *b++ = (l & 0xFF);
      *b++ = -(l >> 8) - (l & 0xFF);
      /* Checksum */
   } else
   {
      *b++ = l;
      /* Len */
      *b++ = -l;
      /* Checksum */
   }
   *b++ = 0xD4;
   /* Direction(host to PN532) */
   *b++ = cmd;
   uint8_t         sum = 0xD4 + cmd;
   for (l = 0; l < len1; l++)
      sum += data1[l];
   for (l = 0; l < len2; l++)
      sum += data2[l];
   /* Send data */
   swrite(p, buf, b - buf);
   if (len1)
      write(p, data1, len1);
   if (len2)
      swrite(p, data2, len2);
   buf[0] = -sum;
   /* Checksum */
   buf[1] = 0x00;
   /* Postamble */
   swrite(p, buf, 2);
   if (debug)
      fprintf(stderr, "\nRx:");
   /* Get ACK and check it */
   while ((l = sread(p, buf, 1)) == 1 && *buf != 0x00);
   if (l <= 0)
      return -__LINE__;
   while ((l = sread(p, buf, 1)) == 1 && *buf != 0xFF);
   if (l <= 0)
      return -__LINE__;
   l = sread(p, buf, 3);
   if (l < 3)
      return -__LINE__;
   if (buf[2])
      return -__LINE__;
   if (buf[0] == 0xFF && !buf[1])
      return -__LINE__;
   if (buf[0] || buf[1] != 0xFF)
      return -__LINE__;
   pending = cmd + 1;           /* Expected reply */
   if (debug)
      fprintf(stderr, "\n");
   return len1 + len2;
}

int
pn532_rx(int p, int max1, uint8_t * data1, int max2, uint8_t * data2)
{
   if (debug)
      fprintf(stderr, "Rx:");
   if (!pending)
      return -__LINE__;
   uint8_t         expect = pending;
   pending = 0;
   /* Recv data from PN532 */
   uint8_t         buf[9];
   int             l;
   while ((l = sread(p, buf, 1)) == 1 && *buf != 0x00);
   if (l <= 0)
      return -__LINE__;
   while ((l = sread(p, buf, 1)) == 1 && *buf != 0xFF);
   if (l <= 0)
      return -__LINE__;
   l = sread(p, buf, 4);
   if (l < 4)
      return -__LINE__;
   int             len = 0;
   if (buf[0] == 0xFF && buf[1] == 0xFF)
   {                            /* Extended */
      l = sread(p, buf + 4, 3);
      if (l < 3)
         return -__LINE__;
      if ((uint8_t) (buf[2] + buf[3] + buf[4]))
         return -__LINE__;
      len = (buf[2] << 8) + buf[3];
      if (buf[5] != 0xD5)
         return -__LINE__;
      if (buf[6] != expect)
         return -__LINE__;
   } else
   {                            /* Normal */
      if ((uint8_t) (buf[0] + buf[1]))
         return -__LINE__;
      len = buf[0];
      if (buf[2] != 0xD5)
         return -__LINE__;
      if (buf[3] != expect)
         return -__LINE__;
   }
   if (len < 2)
      return -__LINE__;
   len -= 2;
   int             res = len;
   uint8_t         sum = 0xD5 + expect;
   if (len > max1 + max2)
      return -__LINE__;
   if (data1)
   {
      l = max1;
      if (l > len)
         l = len;
      if (l)
      {
         if (sread(p, data1, l) < l)
            return -__LINE__;
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
         if (sread(p, data2, l) < l)
            return -__LINE__;
         len -= l;
         while (l)
            sum += data2[--l];
      }
   }
   l = sread(p, buf, 2);
   if (l < 2)
      return -__LINE__;
   if ((uint8_t) (buf[0] + sum))
      return -__LINE__;
   if (buf[1])
      return -__LINE__;
   if (debug)
      fprintf(stderr, "\n");
   return res;
}
int
main(int argc, const char *argv[])
{
   const char     *port = NULL;
   {                            /* POPT */
      poptContext     optCon;
      const struct poptOption optionsTable[] = {
         {"port", 'p', POPT_ARG_STRING, &port, 0, "Port", "/dev/cu.usbserial..."},
         {"debug", 'v', POPT_ARG_NONE, &debug, 0, "Debug", 0},
         POPT_AUTOHELP {}
      };

      optCon = poptGetContext(NULL, argc, argv, optionsTable, 0);
      poptSetOtherOptionHelp(optCon, "[aid/config] [reader] [username]");

      int             c;
      if ((c = poptGetNextOpt(optCon)) < -1)
         errx(1, "%s: %s\n", poptBadOption(optCon, POPT_BADOPTION_NOALIAS), poptStrerror(c));

      if (!port || poptPeekArg(optCon))
      {
         poptPrintUsage(optCon, stderr, 0);
         return -1;
      }
      poptFreeContext(optCon);
   }
   int             p = open(port, O_RDWR);
   if (p < 0)
      err(1, "Cannot open %s", port);
   struct termios  t;
   if (tcgetattr(p, &t) < 0)
      err(1, "Cannot get termios");
   cfsetspeed(&t, 115200);      /* The default HSU baud rate */
   if (tcsetattr(p, TCSANOW, &t) < 0)
      err(1, "Cannot set termios");
   usleep(100000);
   tcflush(p,TCIOFLUSH);

   uint8_t         buf[300];
   int             n,
                   l;
   /* SAM config */
   n = 0;
   buf[n++] = 0x01;             /* Normal */
   buf[n++] = 20;               /* *50 ms timeout */
   buf[n++] = 0x01;             /* Use IRQ */
   if ((l = pn532_tx(p, 0x14, 0, NULL, n, buf)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
      /* GetFirmwareVersion */
      if ((l = pn532_tx(p, 0x02, 0, NULL, 0, NULL)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
         errx(1, "GetFirmwareVersion fail (%d)", -l);
   /* RFConfiguration */
   n = 0;
   buf[n++] = 5;                /* Config item 5(MaxRetries) */
   buf[n++] = 0xFF;             /* MxRtyATR(default = 0xFF) */
   buf[n++] = 0x01;             /* MxRtyPSL(default = 0x01) */
   buf[n++] = 0x01;             /* MxRtyPassiveActivation */
   if ((l = pn532_tx(p, 0x32, 0, NULL, n, buf)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
      errx(1, "RFConfiguration fail (%d)", -l);
   /* RFConfiguration */
   n = 0;
   buf[n++] = 0x04;             /* MaxRtyCOM */
   buf[n++] = 1;                /* Retries (default 0) */
   if ((l = pn532_tx(p, 0x32, 0, NULL, n, buf)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
      errx(1, "RFConfiguration fail (%d)", -l);
   /* RFConfiguration */
   n = 0;
   buf[n++] = 0x02;             /* Various timings (100*2^(n-1))us */
   buf[n++] = 0x00;             /* RFU */
   buf[n++] = 0x0B;             /* Default (102.4 ms) */
   buf[n++] = 0x0A;             /* Default is 0x0A (51.2 ms) */
   if ((l = pn532_tx(p, 0x32, 0, NULL, n, buf)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
      errx(1, "RFConfiguration fail (%d)", -l);

   while (1)
   {
      /* InListPassiveTarget */
      buf[0] = 2;               /* 2 tags(we only report 1) */
      buf[1] = 0;               /* 106 kbps type A(ISO / IEC14443 Type A) */
      if ((l = pn532_tx(p, 0x4A, 2, buf, 0, NULL)) < 0 || (l = pn532_rx(p, 0, NULL, sizeof(buf), buf)) < 0)
         if (l < 0)
            errx(1, "Bad ILPT (%d)", -l);
      if(l>1)
      { // Found a card
	      fprintf(stderr,"Card:");
	      for(int n=0;n<l;n++)fprintf(stderr," %02X",buf[n]);
	      fprintf(stderr,"\n");
      }
   }

   close(p);
   return 0;
}
