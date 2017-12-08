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
	inout wire [15:0] SRAM_DQ, //tristate buffers need to be of type wire
	output logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N,
	output logic [19:0] SRAM_ADDR
);

logic start, cont; // continue
assign cont = KEY[3];
assign start = KEY[2];

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
HexDriver hex_driver_0 ( .In0 (keycode[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (keycode[7:4]), .Out0(HEX1) );

HexDriver hex_driver_4 ( .In0 (), .Out0(HEX4) );
HexDriver hex_driver_5 ( .In0 (), .Out0(HEX5) );
HexDriver hex_driver_6 ( .In0 (), .Out0(HEX6) );
HexDriver hex_driver_7 ( .In0 (), .Out0(HEX7) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(keycode),
	.press  (keypress)
);

// audio //////////////////////////////////////////////////////////////////////

logic [15:0] audio_data;
logic [15:0] Data_from_SRAM, Data_to_SRAM;
assign AUD_XCK = CLOCK_50;

// synchronizers for ram writes
logic SYNC_OE, SYNC_WE;
sync sync_0(.Clk, .d(SRAM_WE_N), .q(SYNC_WE));
sync sync_1(.Clk, .d(SRAM_OE_N), .q(SYNC_OE));

// uw
logic advance;
logic [23:0] dac_left, dac_right;
audio_driver audio_driver_inst(
	.CLOCK_50, .reset,
	.dac_left( $unsigned(audio_data) ), .dac_right(24'hFFFFFF),
	// .adc_left, .adc_right, // don't care so we don't need to hook them up
	// .advance, // don't care: output to signal that there's been input
	.FPGA_I2C_SCLK(I2C_SCLK), .FPGA_I2C_SDAT(I2C_SDAT), .AUD_DACLRCK,// .AUD_XCK(CLOCK_50), // remove bc the xck was configured for different hardware
	.AUD_ADCLRCK, .AUD_BCLK, .AUD_ADCDAT, .AUD_DACDAT
);

// SRAM for audio
tristate #(.N(16)) tristate_inst(
    .Clk(Clk), .tristate_write_enable(~SYNC_WE), .Data_write(Data_to_SRAM),
    .Data_read(Data_from_SRAM), .Data(SDRAM_DQ) // i believe all we care about is Data
);

sram_reading_fsm sram_reading_fsm_inst(
	.Clk(Clk), .reset(reset),
	.start, .cont,
	.SRAM_CE_N, .SRAM_UB_N, .SRAM_LB_N, .SRAM_OE_N, .SRAM_WE_N,
	.SRAM_ADDR
);

// end audio //////////////////////////////////////////////////////////////////
// begin display

logic [9:0] DrawX, DrawY;
// signals to tell color mapper to draw on screen
logic ball, background, receptor_background;
logic [3:0] receptor, display_arrow;

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
	.display_arrow(display_arrow),
	.DrawX (DrawX), .DrawY (DrawY),
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