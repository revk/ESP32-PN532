all: png Round-Base.stl Round-Top.stl Round-Plate.stl Round-Plate90.stl

png:	$(patsubst %.kicad_pcb,%.png,$(wildcard */*.kicad_pcb))

PCBCase/case: PCBCase/case.c
	make -C PCBCase

PCBCase/clean: PCBCase/clean.c
	make -C PCBCase

Round-Base.stl:	Round-Base.scad Round.scad Round/Round.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	@echo "Made $@"

Round-Top.stl:	Round-Top.scad Round.scad Round/Round.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	@echo "Made $@"

Round-Plate.stl:	Round-Plate.scad blacnkplate.scad Round-Top.scad Round.scad Round/Round.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	@echo "Made $@"

%.png:	%.kicad_pcb PCBCase/clean PCBCase/render
	PCBCase/render $<

Round/Round.scad: Round/Round.kicad_pcb PCBCase/case
	PCBCase/case -o $@ $< -n
