makeloop: makeloop.c
	gcc -I/usr/local/include -L/usr/local/lib -O -o $@ $< -lpopt -lm -g

clean:
	idf.py clean

pull:
	git pull
	git submodule update --recursive

update:
	git submodule update --init --recursive --remote
	git commit -a -m "Library update"

stl: KiCad/PN532-Round.stl KiCad/PN532-wall.stl KiCad/PN532-cable.stl KiCad/PN532-thick.stl

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

KiCad/PN532-Round.scad: KiCad/PN532-Round.kicad_pcb PCBCase/case Makefile
	# TODO screw holes 0 maybe single centre screw
	PCBCase/case -n -o $@ $< --base=0.8 --top=3.4
	@echo "base();" >> $@
	@echo "translate([spacing,0,0])difference(){top();translate([casewall+23,casewall+23,-1],$fn=100){cylinder(d=3.5,h=2);translate([0,0,0.2])cylinder(d1=3.5,d2=7,h=2);}}" >> $@

