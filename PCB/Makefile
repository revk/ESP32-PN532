all: png Round-Base.stl Round-Top.stl Round-Plate.stl Round-Plate90.stl

png:	$(patsubst %.kicad_pcb,%.png,$(wildcard */*.kicad_pcb))

PCBCase/case: PCBCase/case.c
	make -C PCBCase

PCBCase/clean: PCBCase/clean.c
	make -C PCBCase

%.stl: %.scad Round.scad
	echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	echo "Made $@"

%.png:	%.kicad_pcb PCBCase/clean PCBCase/render
	PCBCase/render $<
