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

HexDriver hex_driver_0 ( .In0 (keycode[3:0]), .Out0(HEX0) );
HexDriver hex_driver_1 ( .In0 (keycode[7:4]), .Out0(HEX1) );

keyboard keyboard_inst(
	.Clk    (Clk),
	.psClk  (PS2_KBCLK), .psData(PS2_KBDAT),
	.reset  (reset),
	.keyCode(keycode),
	.press  (keypress)
);

// audio

// koushik roy's vhdl
// logic INIT_FINISH, adc_full, data_over;//, I2C_SDAT, I2C_SCLK;
// //logic [31:0] ADCDATA;	

// audio_interface audio_interface_inst(
// 	.clk(Clk), .Reset(reset), .LDATA(12'd2048), .RDATA(12'd2048), 
// 	.INIT(1'b1), .INIT_FINISH(INIT_FINISH), .adc_full(adc_full), .data_over(data_over), .ADCDATA(ADCDATA),
// 	.I2C_SDAT(I2C_SDAT), .I2C_SCLK(I2C_SCLK)
// );

/*
		CLOCK_50 : in std_logic;
		CLOCK_27 : in std_logic_vector(1 downto 0);
		KEY : in std_logic_vector(3 downto 0);
		SW : in std_logic_vector(9 downto 0);
		AUD_ADCLRCK : out std_logic;
		AUD_ADCDAT : in std_logic;
		AUD_DACLRCK : out std_logic;
		AUD_DACDAT : out std_logic;
		AUD_XCK : out std_logic;
		AUD_BCLK : out std_logic;
		I2C_SCLK : out std_logic; -- master (our module) drives i2c clock
		I2C_SDAT : inout std_logic;
		GPIO_1 : inout std_logic_vector(35 downto 0);
		HEX0,HEX1,HEX2,HEX3 : out std_logic_vector(6 downto 0));
*/

// end audio
// begin display

logic [9:0] DrawX, DrawY;
// signals to tell color mapper to draw on screen
logic ball, background, receptor_background;
logic [3:0] receptor, display_arrow;

//timer
logic [3:0] arrows;
timer counter(.Clk(Clk), .Reset(reset), .arrows(arrows));

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
