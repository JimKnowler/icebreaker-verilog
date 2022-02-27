# Step 1 - Install Open Source Toolchain

Prepare MacOS for developing Verilog designs for IceBreaker board with the yosys/nextpnr/icestorm open source toolchain.

## Install tools

- add homebrew tap for open source FPGA tools
  https://github.com/ktemkin/homebrew-oss-fpga

- brew install yosys icestorm nextpnr-ice40 xdot graphviz

## Synthesis

- Open Source FPGA tool flow part 1: yosys
  https://www.youtube.com/watch?v=A5AHglpfdtQ


Use Yosys command to synthesize verilog code into json representation of logic.

```bash
% yosys
  . read_verilog top.v
  . opt
  . synth_ice40
  . write_json top.json
```

## Place and Route

- Open Source FPGA tool flow part 2: place and route
  https://www.youtube.com/watch?v=V6B3vT3jMlM

Use nextpnr-ice40 to take json output from synthesis, and generate ascii representation of FPGA design.

```bash
% nextpnr-ice40 --up5k --pcf icebreaker.pcf --json top.json --asc top.asc
```

Using icebreaker.pcf from the [IceStorm repository](https://github.com/YosysHQ/icestorm/tree/master/examples/icebreaker)

## Pack and program

- Open Source FPGA tool flow part 3: pack and program
  https://www.youtube.com/watch?v=h4bArgeqcLQ

Pack ascii representation into a binary file that can be downloaded to Icebreaker FPGA device.

```
% icepack top.asc > top.bin
```

Program Icebreaker with binary

> iceprog top.bin


