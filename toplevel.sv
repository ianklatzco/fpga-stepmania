module toplevel (
	input  logic [3:0] KEY,
	input  logic CLOCK_50,
	input  logic PS2_KBCLK, PS2_KBDAT,
	output logic [6:0] HEX0, HEX1, HEX2,
	output logic [9:0] LEDG
);

logic Clk;
assign Clk = CLOCK_50;

logic reset;
always_ff @ (posedge Clk) begin
    reset <= ~(KEY[0]);
end

logic [7:0] keyCode;
logic press;
assign LEDG[0] = press;
assign LEDG[9:1] = keyCode;

HexDriver hex_driver_0 ( .In0 (keyCode[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (keyCode[7:4]), .Out0(HEX1) );
HexDriver hex_driver_2 ( .In0 (4'b1111), .Out0(HEX2) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(keyCode),
	.press  (press)
);

endmodule // toplevel
