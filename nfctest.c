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
   int ishost = 0;
   poptContext optCon;          /* context for parsing  command - line options */
   {
      const struct poptOption optionsTable[] = {
         {"port", 'p', POPT_ARG_STRING, &port, 0, "Port (/dev/...)"},
         {"host", 'h', POPT_ARG_NONE, &ishost, 0, "Host"},
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
   const char *e;
   int sock = open (port, O_RDWR);
   if (sock < 0)
      err (1, "Cannot open %s", port);
   pn532_t *p = pn532_init (sock, 0xFF);
   if (!p)
      errx (1, "No PN532");

   if (ishost)
   {
      while (1)
      {
         int l = pn532_Cards (p);
         if (l <= 0)
         {
            sleep (1);
            continue;
         }
         warnx ("ATQA %04X SAK %02X", pn532_atqa (p), pn532_sak (p));

         uint8_t buf[200],
          *b;
         b = buf;
         *b++ = 0x30;
         *b++ = 0x00;
         l = pn532_dx (p, b - buf, buf, sizeof (buf), &e);
         if (l < 0)
            warnx ("%s", e);
         while (pn532_Present (p) > 0)
         {
            sleep (1);
         }
      }
      return 0;
   }
   // Card

   uint8_t id[] = { 7, 0x88, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66 };
   uint8_t ntag[1024] = { 0 };
   memcpy (ntag, id + 1, 3);
   memcpy (ntag + 4, id + 4, 4);
   ntag[3] = 0x88 ^ ntag[0] ^ ntag[1] ^ ntag[2];        // 0x88 is CT
   ntag[8] = ntag[4] ^ ntag[5] ^ ntag[6] ^ ntag[7];
   ntag[12] = 0xE1;             // NFC Forum
   ntag[13] = 0x10;             // V1.0
   ntag[14] = 0x6D;             // NTAG216
   ntag[15] = 0x00;             // No security
   const char *url = "aa.net.uk";
   uint8_t *n = ntag + 16;      // Start of tag value
   *n++ = 0x03;                 // NDEF
   *n++ = 5 + strlen (url);
   *n++ = 0xD1;                 // URL
   *n++ = 0x01;
   *n++ = 1 + strlen (url);
   *n++=0x55;
   *n++ = 1;                    // https://www.
   n = stpcpy (n, url);
   while (1)
   {
      uint8_t buf[300];
      int l = pn532_target (p, 0x0044, 0x00, id, NULL, NULL, buf, sizeof (buf), 60);    // Ultralight Type 2 tag
      uint8_t sec = 0;
      while (l >= 0)
      {
         if (l == 2 && buf[0] == 0xC2)
         {
            sec = buf[1];
            // TODO reply
         } else if (l == 2 && buf[0] == 0x30)
         {
            memcpy (buf, ntag + sec * 256 + buf[1] * 4, 16);
            l = pn532_set_init (p, 16, buf);
         }
         if (l >= 0)
            l = pn532_get_init (p, buf, sizeof (buf), 2);
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
