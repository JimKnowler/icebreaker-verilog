module top(
    output P1A1,        // R3 
    output P1A2,        // R1
    output P1A3,        // G3
    output P1A4,        // G1
    output P1A7,        // R2
    output P1A8,        // R0
    output P1A9,        // G2
    output P1A10,       // G0

    output P1B1,        // B3
    output P1B2,        // CK
    output P1B3,        // B0
    output P1B4,        // HS
    output P1B7,        // B2
    output P1B8,        // B1
    output P1B9,        // DE
    output P1B10        // VS
);

// Implement 800x600@60Hz VGA signal
// http://tinyvga.com/vga-timing/800x600@60Hz
// 40 Mhz clock, positive hs/vs pulses

// example
// https://github.com/icebreaker-fpga/icebreaker-verilog-examples/tree/main/icebreaker/dvi-12bit
// note: look at io port buffering for output, is that for ice40 or for Xilinx ?

// TODO: clock
// TODO: VGA pixel clock generator
// TODO: VGA test signals (perhaps use butttons 1, 2, 3 to select different patterns)

assign P1A1  = 0;
assign P1A2  = 0;
assign P1A3  = 0;
assign P1A4  = 0;
assign P1A7  = 0;
assign P1A8  = 0;
assign P1A9  = 0;
assign P1A10 = 0;

assign P1B1  = 0;
assign P1B2  = 0;
assign P1B3  = 0;
assign P1B4  = 0;
assign P1B7  = 0;
assign P1B8  = 0;
assign P1B9  = 0;
assign P1B10 = 0;

endmodule
