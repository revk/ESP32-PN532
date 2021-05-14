stl: PN532-wall.stl PN532-cable.stl PN532-thick.stl

PN532-wall.stl: PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=0 -Dthick=3 -Draspox=false -Dheader=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

PN532-cable.stl: PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=1 -Dthick=3 -Draspox=true -Dheader=false -Dspox=false -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=false

PN532-thick.stl: PN532.scad Makefile
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@ -Dbase=10 -Dthick=3 -Draspox=false -Dheader=false -Dspox=true -Dtamper=true -Dbell=false -Dmilligrid=false -Dscrews=true

