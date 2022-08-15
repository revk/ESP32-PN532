makeloop: makeloop.c
	gcc -I/usr/local/include -L/usr/local/lib -O -o $@ $< -lpopt -lm -g

clean:
	idf.py clean

pull:
	git pull
	git submodule update --recursive

update:
	git submodule update --init --recursive --remote

stl: KiCad/PN532-Round.stl KiCad/PN532-wall.stl KiCad/PN532-cable.stl KiCad/PN532-thick.stl
zip: KiCad/PN532-Round.zip KiCad/PN532.zip

KiCad/PN532-wall.stl: KiCad/PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=0 -Dthick=3 -Draspox=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

KiCad/PN532-cable.stl: KiCad/PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=1 -Dthick=3 -Draspox=true -Dspox=false -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=false

KiCad/PN532-thick.stl: KiCad/PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=10 -Dthick=3 -Draspox=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

PCBCase/case: PCBCase/case.c
	make -C PCBCase

%.stl: %.scad
	echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	echo "Made $@"

%-B_Cu.gbr:     %.kicad_pcb
	echo "Plot $@ from $<"
	exit 1

%-PTH.drl:      %.kicad_pcb
	echo "Generate drill files $@ from $<"
	exit 1

%.zip: %-B_Cu.gbr %-F_Cu.gbr %-B_Mask.gbr %-F_Mask.gbr %-B_Paste.gbr %-F_Paste.gbr %-B_Silkscreen.gbr %-F_Silkscreen.gbr %-Edge_Cuts.gbr %-PTH.drl %-NPTH.drl
	rm -f $@
	zip $@ $+

KiCad/PN532-Round.scad: KiCad/PN532-Round.kicad_pcb PCBCase/case Makefile
	PCBCase/case -n -o $@ $< --base=0.8 --top=2.5 --ignore=J1,J2
	@echo "base();" >> $@
	@echo "translate([spacing,0,0])difference(){top();translate([casewall+pcbwidth/2-13/2,casewall+pcblength/2+6.5-5/2,-1])cube([13,5,10]);}" >> $@

