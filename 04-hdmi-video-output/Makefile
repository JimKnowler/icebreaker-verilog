DEVICE = up5k
PIN_DEF = icebreaker.pcf
TOP_MODULE = top

all: $(TOP_MODULE).bin

program-fpga: $(TOP_MODULE).bin
	iceprog $(TOP_MODULE).bin

%.json: %.v
	yosys -p 'synth_ice40 -top $(TOP_MODULE) -json $@' $<

%.asc: %.json
	nextpnr-ice40 --$(DEVICE) --pcf $(PIN_DEF) --json $< --asc $@

%.bin: %.asc
	icepack $< > $@

