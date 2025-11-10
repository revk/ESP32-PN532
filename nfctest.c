/* NFC test code */

#define _GNU_SOURCE

#include <stdio.h>
#include <string.h>
#include <time.h>
#include <popt.h>
#include <err.h>
#include <stdlib.h>
#include <pn532.h>
#include <fcntl.h>
#include <err.h>

int
main (int argc, const char *argv[])
{
   const char *port = NULL;
   poptContext optCon;          /* context for parsing  command - line options */
   {
      const struct poptOption optionsTable[] = {
         {"port", 'p', POPT_ARG_STRING, &port, 0, "Port (/dev/...)"},
         {"dump", 'V', POPT_ARG_NONE, &pn532_dump, 0, "Dump"},
         {"debug", 'v', POPT_ARG_NONE, &pn532_debug, 0, "Debug"},
         POPT_AUTOHELP {}
      };

      optCon = poptGetContext (NULL, argc, argv, optionsTable, 0);
      /* poptSetOtherOptionHelp(optCon, ""); */

      int c;
      if ((c = poptGetNextOpt (optCon)) < -1)
         errx (1, "%s: %s\n", poptBadOption (optCon, POPT_BADOPTION_NOALIAS), poptStrerror (c));
   }
   if (!port && poptPeekArg (optCon))
      port = poptGetArg (optCon);
   if (!port)
   {
      poptPrintUsage (optCon, stderr, 0);
      return -1;
   }
   int sock = open (port, O_RDWR);
   if (sock < 0)
      err (1, "Cannot open %s", port);
   pn532_t *p = pn532_init (sock, 0xFF);
   if (!p)
      errx (1, "No PN532");
   uint8_t id[] = { 7, 0x04, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66 };
   uint8_t ntag[1024] = { 0 };
   memcpy (ntag, id + 1, 3);
   memcpy (ntag + 4, id + 4, 4);
   ntag[3] = 0x88 ^ ntag[0] ^ ntag[1] ^ ntag[2]; // 0x88 is CT
   ntag[8] = ntag[4] ^ ntag[5] ^ ntag[6] ^ ntag[7];
   ntag[12] = 0xE1;             // NFC Forum
   ntag[13] = 0x10;             // V1.0
   ntag[14] = 0x6D;             // NTAG216
   ntag[15] = 0x00;             // No security
   ntag[16] = 0x03;             // https://www.nxp.com/docs/en/data-sheet/NTAG213_215_216.pdf
   ntag[18] = 0xFE;
   while (1)
   {
      uint8_t buf[300];
      int l = pn532_target (p, 0x0044, 0x20, id, buf, sizeof (buf));    // Ultralight
      while (l >= 0)
      {
         // Maybe https://downloads.acs.com.hk/drivers/en/API-ACR122U-2.02.pdf
         const uint8_t ok[] = { 0x90, 0x00 };
         const uint8_t selapdu[] = { 0x00, 0xA4, 0x04, 0x00, 0x07, 0xD2, 0x76, 0x00, 0x00, 0x85, 0x01, 0x01, 0x00 };    // SELECT DF first 7 bytes D2760000850101 unspecified
         const uint8_t selfile[] = { 0x00, 0xA4, 0x00, 0x0C, 0x02, 0xE1, 0x03 };        // 
         if (l == sizeof (selapdu) && !memcmp (buf, selapdu, l))
            l = pn532_set_data (p, sizeof (ok), ok);
         else if (l == sizeof (selfile) && !memcmp (buf, selfile, l))
            l = pn532_set_data (p, sizeof (ok), ok);
         else if (l == 5 && !buf[0] && buf[1] == 0xB0 && !buf[2])
         {                      // READ BINARY
            uint8_t block = buf[3];
            uint8_t bytes = buf[4];
            if (bytes)
               memcpy (buf, ntag + block * 4, bytes);
            buf[bytes] = 0x90;
            buf[bytes + 1] = 0;
            l = pn532_set_data (p, bytes + 2, buf);
         } else
            l = pn532_set_data (p, sizeof (ok), ok);
         if (l >= 0)
            l = pn532_get_data (p, buf, sizeof (buf));  // Next
      }
      if (l < 0)
      {
         warnx ("%s (%d)", pn532_err_to_name (l), l);
         if (l != -PN532_ERR_TIMEOUT)
            sleep (1);
         continue;
      }
   }
   p = pn532_end (p);
   close (sock);
   poptFreeContext (optCon);
   return 0;
}
