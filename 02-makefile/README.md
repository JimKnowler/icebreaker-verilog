# Step 2 - Makefile build system

Let's take the command lines for our open source build toolchain and automate them in a makefile.

## Using the makefile

Just type `make` at the command line to build `top.bin` from the verilog source file `top.v`.

```bash
% make
```

Use `make program` at the command line to program the Icebreaker FPGA device with `top.bin`

```bash
% make program-fpga
```

## References

- Yosys `synth_ice40` command: http://yosyshq.net/yosys/cmd_synth_ice40.html
- Icestorm examples makefile: https://github.com/YosysHQ/icestorm/blob/master/examples/icebreaker/Makefile

