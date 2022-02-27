module top(
    output P1A1,
    output P1A2,
    output P1A3,
    output P1A4,
    output P1A7,
    output P1A8,
    output P1A9,
    output P1A10,

    input P1B1,
    input P1B2,
    input P1B3,
    input P1B4,
    input P1B7,
    input P1B8,
    input P1B9,
    input P1B10
);

wire [7:0] r_switches;
assign r_switches[0] = P1B1;
assign r_switches[1] = P1B2;
assign r_switches[2] = P1B3;
assign r_switches[3] = P1B4;
assign r_switches[4] = P1B7;
assign r_switches[5] = P1B8;
assign r_switches[6] = P1B9;
assign r_switches[7] = P1B10;

reg [7:0] r_leds;

always @(*)
begin
    r_leds = ~r_switches;
end

assign P1A1 = r_leds[7];
assign P1A2 = r_leds[6];
assign P1A3 = r_leds[5];
assign P1A4 = r_leds[4];
assign P1A7 = r_leds[3];
assign P1A8 = r_leds[2];
assign P1A9 = r_leds[1];
assign P1A10 = r_leds[0];

endmodule
