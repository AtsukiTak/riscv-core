# Examples: src/top.sv src/pc.sv src/ram.sv
SV_SRC = $(wildcard src/*.sv)

# Examples: dist/top dist/pc dist/ram
SV_OBJ = $(patsubst src/%.sv, dist/%, $(SV_SRC))

$(SV_OBJ): dist/%: %.sv
	iverilog -g2012 -o $@ $^
