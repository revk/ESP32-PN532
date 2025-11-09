all: png Round-Base.stl Round-Top.stl Round-Plate.stl Round-Plate90.stl

png:	$(patsubst %.kicad_pcb,%.png,$(wildcard */*.kicad_pcb)) $(patsubst %.scad,%.png,$(wildcard *.scad))

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

Round-Plate.stl:	Round-Plate.scad blankplate.scad Round-Top.scad Round.scad Round/Round.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	@echo "Made $@"

Round-Plate90.stl:	Round-Plate90.scad blankplate.scad Round-Top.scad Round.scad Round/Round.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	@echo "Made $@"

%.png:	%.kicad_pcb PCBCase/clean PCBCase/render
	PCBCase/render $<

%.png:	%.scad
	@echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD --colorscheme=WhiteResin --autocenter --viewall --render --imgsize=4096,4096 -o $@ $<
	magick "$@" -transparent '#4589cd' -resize 1024x1024 -trim -bordercolor None -border 10 "$@"
	@echo "Made $@"

Round/Round.scad: Round/Round.kicad_pcb PCBCase/case
	PCBCase/case -o $@ $< -n
