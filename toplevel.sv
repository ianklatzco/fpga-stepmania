module toplevel (
	input  logic [3:0] KEY, // 3 = continue, 2 = start
	input  logic CLOCK_50,

	input  logic PS2_KBCLK, PS2_KBDAT,
	output logic [7:0]  VGA_R, VGA_G, VGA_B,
	output logic VGA_CLK, VGA_SYNC_N, VGA_BLANK_N, VGA_VS, VGA_HS,

	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
	output logic [9:0] LEDG,
	
	// audio IO
	output logic AUD_DACDAT, I2C_SCLK, AUD_XCK,
	inout I2C_SDAT,
	input AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK, AUD_ADCDAT,
	output logic [31:0] ADCDATA,

	// SRAM io
	input logic [15:0] SRAM_DQ,
	output logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N,
	output logic [19:0] SRAM_ADDR
);

logic start, cont; // continue
assign start = ~KEY[2];
assign cont = ~KEY[3];

// audio logics
logic [15:0] audio_data;
logic [15:0] sram_data_out;
logic sram_data_load;

// clock and reset
logic Clk, reset;
assign Clk = CLOCK_50;
always_ff @ (posedge Clk) begin
    reset <= ~(KEY[0]);
end

// vga clk reset
always_ff @ (posedge Clk) begin
	if(reset)
		VGA_CLK <= 1'b0;
	else
		VGA_CLK <= ~VGA_CLK;
end    
// end clock and reset

logic [7:0] keycode;
logic keypress;
assign LEDG[8] = keypress;
assign LEDG[7:0] = keycode;

// for keycode
// HexDriver hex_driver_0 ( .In0 (SRAM_ADDR[3:0]), .Out0(HEX0) );
// HexDriver hex_driver_1 ( .In0 (SRAM_ADDR[7:4]), .Out0(HEX1) );
// HexDriver hex_driver_2 ( .In0 (SRAM_ADDR[11:8]), .Out0(HEX2) );
// HexDriver hex_driver_3 ( .In0 (SRAM_ADDR[15:12]), .Out0(HEX3) );

// HexDriver hex_driver_4 ( .In0 (sram_data_out[3:0]), .Out0(HEX4) );
// HexDriver hex_driver_5 ( .In0 (sram_data_out[7:4]), .Out0(HEX5) );
// HexDriver hex_driver_6 ( .In0 (sram_data_out[11:8]), .Out0(HEX6) );
// HexDriver hex_driver_7 ( .In0 (sram_data_out[15:12]), .Out0(HEX7) );

HexDriver hex_driver_0 ( .In0 (sram_data_out[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (sram_data_out[7:4]), .Out0(HEX1) );
HexDriver hex_driver_2 ( .In0 (sram_data_out[11:8]), .Out0(HEX2) );
HexDriver hex_driver_3 ( .In0 (sram_data_out[15:12]), .Out0(HEX3) );

HexDriver hex_driver_4 ( .In0 (SRAM_ADDR[3:0]), .Out0(HEX4) );
HexDriver hex_driver_5 ( .In0 (SRAM_ADDR[7:4]), .Out0(HEX5) );
HexDriver hex_driver_6 ( .In0 (SRAM_ADDR[11:8]), .Out0(HEX6) );
HexDriver hex_driver_7 ( .In0 (SRAM_ADDR[15:12]), .Out0(HEX7) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(keycode),
	.press  (keypress)
);

// audio //////////////////////////////////////////////////////////////////////

assign AUD_XCK = CLOCK_50;

// synchronizers for ram writes
logic clk_div, xck_divider;

// uw
logic [23:0] dac_left, dac_right;
audio_driver audio_driver_inst(
	.CLOCK_50, .reset,
	.dac_left( $signed(sram_data_out) ), .dac_right( $signed(sram_data_out) ),
	// .adc_left, .adc_right, // don't care so we don't need to hook them up
	// .advance, // don't care: output to signal that there's been input
	.FPGA_I2C_SCLK(I2C_SCLK), .FPGA_I2C_SDAT(I2C_SDAT), .AUD_DACLRCK, //.AUD_XCK,
	.AUD_ADCLRCK, .AUD_BCLK, .AUD_ADCDAT, .AUD_DACDAT
);

logic sq_wv;

square_wave sq_inst (
	.clk(Clk),
	.rst(reset),
	.dac_out(sq_wv)
	);

sram_reading_fsm sram_reading_fsm_inst(
	.Clk, .reset,
	.SRAM_CE_N, .SRAM_UB_N, .SRAM_LB_N, .SRAM_OE_N, .SRAM_WE_N,
	.SRAM_ADDR,
	.sram_data_load,
	.start, .cont(clk_div)
);

// register to hold current sample
reg_16 sram_data(
	.clk(Clk), .reset,
	.load (sram_data_load), .din(SRAM_DQ), .dout (sram_data_out)
);

ClkDivider clk_divider_inst(
	.clk(Clk), .rst(reset),
	.clk_div
);

aud_xck_divider aud_xck_divider_inst(
	.clk    (Clk), .rst    (reset),
	.clk_div(xck_divider)
);

// end audio //////////////////////////////////////////////////////////////////
// begin display

logic [9:0] DrawX, DrawY;
// signals to tell color mapper to draw on screen
logic ball, background, receptor_background;
logic [3:0] receptor, display_arrow;

//
logic [3:0] display_signal;

//timer
logic [3:0] arrows;
timer counter(.Clk(Clk), .Reset(reset), .arrows(arrows));

// mostly from VGA lab
vga_controller vga_controller_inst(
	.Clk        (Clk),
	.Reset      (reset),
	.VGA_HS     (VGA_HS),
	.VGA_VS     (VGA_VS),
	.VGA_CLK    (VGA_CLK),
	.VGA_BLANK_N(VGA_BLANK_N),
	.VGA_SYNC_N (VGA_SYNC_N),
	.DrawX      (DrawX),
	.DrawY      (DrawY)
);

color_mapper color_mapper_inst(
	.is_ball(ball),
	.is_receptor(receptor),
	.is_background(background),
	.is_receptor_background(receptor_background),
	.display_arrow(display_arrow),
	.DrawX  (DrawX),
	.DrawY  (DrawY),
	.VGA_R  (VGA_R),
	.VGA_G  (VGA_G),
	.VGA_B  (VGA_B)
);

ball ball_inst(
	.Clk                (Clk),
	.Reset              (reset),
	.frame_clk          (VGA_VS),
	.DrawX              (DrawX),
	.DrawY              (DrawY),
	.keycode            (keycode[7:0]),
	.is_ball            (ball)
);

receptor receptor_inst(
	.is_receptor        (receptor),
	.is_receptor_background(receptor_background),
	.is_background      (background),
	.keycode            (keycode[7:0]),
	.DrawX(DrawX), .DrawY(DrawY)
);

arrow arrow_inst(
	.Clk          (Clk),
	.reset        (reset),
	.frame_clk    (VGA_VS),
	.display_signal(display_signal),
	.display_arrow(display_arrow),
	.DrawX (DrawX), .DrawY (DrawY)
);

// endisplay

endmodule // toplevel

// sychronizer for outputs to SRAM
module sync (input  logic Clk, d, output logic q );
    always_ff @ (posedge Clk)
    begin
        q <= d;
    end
endmodule