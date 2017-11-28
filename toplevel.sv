module toplevel (
	input  logic [3:0] KEY,
	input  logic CLOCK_50,

	input  logic PS2_KBCLK, PS2_KBDAT,
	output logic [7:0]  VGA_R, VGA_G, VGA_B,
	output logic VGA_CLK, VGA_SYNC_N, VGA_BLANK_N, VGA_VS, VGA_HS,

	output logic [6:0] HEX0, HEX1, HEX2,
	output logic [9:0] LEDG,
	
	output logic AUD_DACDAT, I2C_SDAT, I2C_SCLK, 
	output logic [31:0] ADCDATA
);

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

logic [7:0] keycode;
logic keypress;
assign LEDG[8] = keypress;
assign LEDG[7:0] = keycode;

HexDriver hex_driver_0 ( .In0 (keycode[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (keycode[7:4]), .Out0(HEX1) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(keycode),
	.press  (keypress)
);

// display

logic [9:0] DrawX, DrawY;
// signals to tell color mapper to draw on screen
logic ball, background, receptor_background;
logic [3:0] receptor, display_arrow;

//timer
logic [3:0] arrows;
timer counter(.Clk(Clk), .Reset(reset), .arrows(arrows));

/*
		LDATA, RDATA	:      IN std_logic_vector(15 downto 0); -- parallel external data inputs
		clk, Reset, INIT : IN std_logic; 
		INIT_FINISH :				OUT std_logic;
		adc_full :			OUT std_logic;
		data_over :          OUT std_logic; -- sample sync pulse
		AUD_MCLK :             OUT std_logic; -- Codec master clock OUTPUT
		AUD_BCLK :             IN std_logic; -- Digital Audio bit clock
		AUD_ADCDAT :			IN std_logic;
		AUD_DACDAT :           OUT std_logic; -- DAC data line
		AUD_DACLRCK, AUD_ADCLRCK :          IN std_logic; -- DAC data left/right select
		I2C_SDAT :             OUT std_logic; -- serial interface data line
		I2C_SCLK :             OUT std_logic;  -- serial interface clock
		ADCDATA : 				OUT std_logic_vector(31 downto 0)
*/

logic INIT_FINISH, adc_full, data_over;//, I2C_SDAT, I2C_SCLK;
//logic [31:0] ADCDATA;	

audio_interface sound(.clk(Clk), .Reset(reset), .LDATA(12'd2048), .RDATA(12'd2048), 
	.INIT(1'b1), .INIT_FINISH(INIT_FINISH), .adc_full(adc_full), .data_over(data_over), .ADCDATA(ADCDATA)
		, .I2C_SDAT(I2C_SDAT), .I2C_SCLK(I2C_SCLK));

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
