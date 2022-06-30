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
	PCBCase/case -n -o $@ $< --base=0.8 --top=3.4 --ignore=J1,J2
	@echo "base();" >> $@
	@echo "translate([spacing,0,0])difference(){union(){top();hull()for(y=[0,-3.44])translate([casewall+23,casewall+23+y,0])cylinder(d=10,h=3);};translate([casewall+23,casewall+23,-1]){hull()for(y=[0,-3.44])translate([0,y,0])cylinder(d=3.5,h=2);hull()for(y=[0,-3.44])translate([0,y,1.2])cylinder(d1=3.5,d2=7,h=1.75);hull()for(y=[0,-3.44])translate([0,y,2.95])cylinder(d=7,h=2);}}" >> $@

