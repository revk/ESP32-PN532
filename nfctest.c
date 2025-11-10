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
   while (1)
   {
      uint8_t id[] = { 7, 0x04, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66 };
      uint8_t buf[100];
      int e = pn532_target (p, 0x0044, 0x20, id, NULL,buf,sizeof(buf)); // Ultralight
      if (e<0)
      {
         warnx ("e=%s (%d)", pn532_err_to_name (e), e);
	 if(e!=-PN532_ERR_TIMEOUT)sleep(1);
         continue;
      }
   }
   p = pn532_end (p);
   close (sock);
   poptFreeContext (optCon);
   return 0;
}
