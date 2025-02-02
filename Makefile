makeloop: makeloop.c
	gcc -I/usr/local/include -L/usr/local/lib -O -o $@ $< -lpopt -lm -g

clean:
	idf.py clean

pull:
	git pull
	git submodule update --recursive

update:
	-git pull
	-git commit -a
	git submodule update --init --recursive --remote
	idf.py update-dependencies
	-git commit -a -m "Library update"

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

stl: PCB/Round/Round.stl PCB/Square/Wall.stl PCB/Square/Cable.stl PCB/Square/Thick.stl

PCB/Round/Round.scad: PCB/Round/Round.kicad_pcb PCBCase/case Makefile
	PCBCase/case -n -o $@ $< --base=0.8 --top=2.5 --ignore=J1,J2 --pcb=2
	@echo "base();" >> $@
	@echo "translate([spacing,0,0])difference(){top();translate([casewall+pcbwidth/2-13/2,casewall+pcblength/2+6.5-5/2,-1])cube([15.5,5,10]);}" >> $@

PCB/Square/Wall.stl: PCB/Square/Square.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=0 -Dthick=3 -Draspox=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

PCB/Square/Cable.stl: PCB/Square/Square.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=1 -Dthick=3 -Draspox=true -Dspox=false -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=false

PCB/Square/Thick.stl: PCB/Square/Square.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=10 -Dthick=3 -Draspox=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

