/* General spiral track - for PN532 antenna */
/* (c) 2021 Adrian Kennard Andrews & Arnold Ltd */

#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <popt.h>
#include <err.h>
#include <float.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <math.h>

int
main(int argc, const char *argv[])
{
   const char     *name = "PN532-Antenna6";
   const char     *text = "PN532 HSU NFC READER PN532.REVK.UK";
   double          startr = 22.69;
   double          width = 0.5;
   double          step = 1.0;
   double          starta = 2.5;
   double          enda = 360 * 2 - 7;
   double          stepa = 30;
   double          edge = 23;
   double          ring = 16;
   double          texth = 3;
   double          textr = 20;
   double          textt = 0.4;
   int             debug = 0;
   {
      poptContext     optCon;   /* context for parsing  command - line options */
      const struct poptOption optionsTable[] = {
         {"name", 0, POPT_ARG_STRING | POPT_ARGFLAG_SHOW_DEFAULT, &name, 0, "Name"},
         {"text", 0, POPT_ARG_STRING | POPT_ARGFLAG_SHOW_DEFAULT, &text, 0, "Text"},
         {"texth", 0, POPT_ARG_STRING | POPT_ARGFLAG_SHOW_DEFAULT, &texth, 0, "Text height"},
         {"startr", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &startr, 0, "Start (outer) radius"},
         {"textr", 0, POPT_ARG_STRING | POPT_ARGFLAG_SHOW_DEFAULT, &textr, 0, "Text radius"},
         {"textt", 0, POPT_ARG_STRING | POPT_ARGFLAG_SHOW_DEFAULT, &textt, 0, "Text thickness"},
         {"width", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &width, 0, "Track width"},
         {"step", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &step, 0, "Step per turn"},
         {"starta", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &starta, 0, "Start angle"},
         {"enda", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &enda, 0, "End angle"},
         {"stepa", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &stepa, 0, "Step angle"},
         {"edge", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &edge, 0, "Edge"},
         {"ring", 0, POPT_ARG_DOUBLE | POPT_ARGFLAG_SHOW_DEFAULT, &ring, 0, "Ring"},
         {"debug", 'v', POPT_ARG_NONE, &debug, 0, "Debug"},
         POPT_AUTOHELP {}
      };

      optCon = poptGetContext(NULL, argc, argv, optionsTable, 0);
      /* poptSetOtherOptionHelp(optCon, ""); */

      int             c;
      if ((c = poptGetNextOpt(optCon)) < -1)
         errx(1, "%s: %s\n", poptBadOption(optCon, POPT_BADOPTION_NOALIAS), poptStrerror(c));

      poptFreeContext(optCon);
   }

   double          basex = 0,
                   basey = 0;

   double          x(double a)
   {
      double          r = startr - step * a / 360;
      if              (a < 0)
                         r = startr;
                      return r * sin(a * M_PI / 180.0) - basex;
   }
   double          y(double a)
   {
      double          r = startr - step * a / 360;
      if              (a < 0)
                         r = startr;
                      return -r * cos(a * M_PI / 180.0) + step / 4 - basey;
   }

                   printf("(footprint \"%s\" (layer \"F.Cu\") (version 20211014) ", name);
   printf("(attr smd exclude_from_pos_files exclude_from_bom)");
   printf("(fp_text reference \"Ref**\" (at 0 0) (layer \"F.SilkS\") hide (effects (font (size 1.27 1.27) (thickness 0.15))))");
   printf("(fp_text value \"Val**\" (at 0 0) (layer \"F.SilkS\") hide (effects (font (size 1.27 1.27) (thickness 0.15))))");
   if (edge)
      printf("(fp_circle (center 0 0) (end %lf 0) (layer \"Edge.Cuts\") (width 0.1) (fill none))", edge);
   if (ring)
      printf("(fp_circle (center 0 0) (end %lf 0) (layer \"Dwgs.User\") (width 0.2) (fill none))", ring);
   if (text && *text)
   {
      const char      thin[] = ".:'";
      double          s = texth / (textr - texth / 2) * 0.9,
                      a = 0;
      for (const char *p = text; *p; p++)
         a += (strchr(thin, *p) ? s / 2 : s);
      a = M_PI - a / 2 + s / 2;
      for (const char *p = text; *p; p++)
      {
         if (strchr(thin, *p))
            a -= s / 4;
         if (*p != ' ')
            printf("(fp_text user \"%c\" (at %lf %lf %lf unlocked) (layer \"F.SilkS\")(effects (font (size %lf %lf) (thickness %lf))))", *p, textr * sin(a), -textr * cos(a), -180 * a / M_PI, texth, texth,textt);
         if (strchr(thin, *p))
            a -= s / 4;
         a += s;
      }
   }
   {                            /* Components */
      /* top link */
      double          dy = y(roundl(enda / 360) * 360) - y(roundl(starta / 360) * 360);
      if (dy > 1.5 && dy < 2.5)
      {                         /* 0805 2mm high */
         double          Y = y(starta);
         double          W = x(starta) * 2;
         printf("(model \"${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0805_2012Metric.step\" (offset (xyz 0 %lf 0)) (scale (xyz 1 1 1)) (rotate (xyz 0 0 90)))", -Y - 1);
         printf("(pad \"\" smd rect (at 0 %lf 0) (size %lf %lf) (layers \"F.Cu\" \"B.Cu\"))", Y, W,width);
         printf("(pad \"\" smd rect (at 0 %lf 0) (size 1.4 %lf) (layers \"F.Paste\" \"F.Mask\"))", Y, width);
         printf("(pad \"2\" smd rect (at 0 %lf 0) (size 1.4 %lf) (layers \"F.Cu\" \"F.Paste\" \"F.Mask\"))", Y + 2, width);
      }
      /* 0603 1.6 mm high */
      double          X = x(enda) + width / 4;
      double          Y = y(enda);
      printf("(pad \"\" smd rect (at %lf %lf 0) (size %lF %lf) (layers \"F.Cu\"))", X + 0.5, Y, 1 + width / 2, width);
      printf("(pad \"\" smd rect (at %lf %lf 0) (size %lF %lf) (layers \"F.Cu\"))", -X - 0.5, Y, 1 + width / 2, width);
      X += width / 4;
      printf("(pad \"\" smd rect (at %lf %lf 0) (size 1 %lf) (layers \"F.Paste\" \"F.Mask\"))", X + 0.5, Y, width);
      printf("(pad \"\" smd rect (at %lf %lf 0) (size 1 %lf) (layers \"F.Paste\" \"F.Mask\"))", -X - 0.5, Y, width);
      printf("(pad \"3\" smd rect (at %lf %lf 0) (size 1 %lf) (layers \"F.Cu\" \"F.Paste\" \"F.Mask\"))", X + 0.5, Y + 1.6, width);
      printf("(pad \"1\" smd rect (at %lf %lf 0) (size 1 %lf) (layers \"F.Cu\" \"F.Paste\" \"F.Mask\"))", -X - 0.5, Y + 1.6, width);
      printf("(model \"${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.step\" (offset (xyz %lF %lf 0)) (scale (xyz 1 1 1)) (rotate (xyz 0 0 90)))", X + 0.5, -Y - 0.8);
      printf("(model \"${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.step\" (offset (xyz %lF %lf 0)) (scale (xyz 1 1 1)) (rotate (xyz 0 0 90)))", -X - 0.5, -Y - 0.8);
   }
   printf("(pad \"\" thru_hole circle (at %lf %lf) (size %lf %lf) (drill %lf) (layers *.Cu))", -x(enda), y(enda), width, width, width / 2);     /* End pad */
   void            pad(const char *layer, double flip)
   {
      basex = basey = 0;
      printf("(pad \"\" thru_hole circle (at %lf %lf) (size %lf %lf) (drill %lf) (layers *.Cu))", flip * x(starta), y(starta), width, width, width / 2);
      printf("(pad \"\" smd custom (at %lf %lf) (size %lf %lf) (layers \"%s\") (options (clearance outline) (anchor circle)) (primitives ", flip * x(starta), y(starta), width, width, layer);
      basex=x(starta);basey=y(starta);
      void            arc(double s, double e)
      {
         double          m = (s + e) / 2;
                         printf("(gr_arc (start %lf %lf) (mid %lf %lf) (end %lf %lf) (width %lf))", flip * x(s), y(s), flip * x(m), y(m), flip * x(e), y(e), width);
      }
      double          a = 0;
      if              (starta < 0)
                         arc(starta, 0);
      else if         (starta > 0 && starta < stepa)
                         arc(starta, a = stepa);
      for             (; a + stepa < enda; a += stepa)
                         arc(a, a + stepa);
      if              (a < enda)
                         arc(a, enda);
                      printf("))");
   }
                   pad("F.Cu", 1);
   pad("B.Cu", -1);



   printf(")");
   return 0;
}
