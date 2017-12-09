module testbench ( input a );

    timeunit 10ns;
    timeprecision 1ns;


	logic [3:0] KEY;
	logic CLOCK_50;
	logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
	
	// SRAM io
	wire [15:0] SRAM_DQ;
	logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N;
	logic [19:0] SRAM_ADDR;

	toplevel DUT(
		.KEY        (KEY),
		.CLOCK_50   (CLOCK_50),
		.HEX0       (HEX0),
		.HEX1       (HEX1),
		.HEX2       (HEX2),
		.HEX3       (HEX3),
		.HEX4       (HEX4),
		.HEX5       (HEX5),
		.HEX6       (HEX6),
		.HEX7       (HEX7),
        .SRAM_DQ    (SRAM_DQ),
        .SRAM_ADDR  (SRAM_ADDR),
        .SRAM_CE_N  (SRAM_CE_N),
        .SRAM_UB_N  (SRAM_UB_N),
        .SRAM_LB_N  (SRAM_LB_N),
        .SRAM_OE_N  (SRAM_OE_N),
        .SRAM_WE_N  (SRAM_WE_N)

	);

    always begin : CLOCK_GENERATION
        #1 CLOCK_50 = ~CLOCK_50;
    end

    initial begin: CLOCK_INITIALIZATION
        CLOCK_50 = 0;
    end 

    initial begin: TEST_VECTORS
        DUT.reset = 1;
        DUT.cont = 1;
        #2 DUT.reset = 0;

        DUT.cont = 1;
        #2 DUT.cont = 0;
        #2 DUT.cont = 1;
        #2 DUT.cont = 0;
        #2 DUT.cont = 1;
        #2 DUT.cont = 0;
        #2 DUT.cont = 1;
        #2 DUT.cont = 0;
        #2 DUT.cont = 1;
        #2 DUT.cont = 0;
        #2 DUT.cont = 1;

    end

endmodule
