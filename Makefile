makeloop: makeloop.c
	gcc -I/usr/local/include -L/usr/local/lib -O -o $@ $< -lpopt -lm -g

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
	PCBCase/case -o $@ $< --edge=2 --base=0.6 --top=3
