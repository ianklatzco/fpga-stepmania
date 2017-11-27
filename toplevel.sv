module toplevel (
	input  logic [3:0] KEY,
	input  logic CLOCK_50,
	input  logic PS2_KBCLK, PS2_KBDAT,
	output logic [6:0] HEX0, HEX1, HEX2,
	output logic [9:0] LEDG
);

logic Clk, reset;
assign Clk = CLOCK_50;
always_ff @ (posedge Clk) begin
    reset <= ~(KEY[0]);
end

logic [7:0] key_code;
logic key_press;
assign LEDG[9] = key_press;
assign LEDG[8:0] = key_ccode;

HexDriver hex_driver_0 ( .In0 (key_code[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (key_code[7:4]), .Out0(HEX1) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(key_code),
	.press  (key_press)
);

endmodule // toplevel
