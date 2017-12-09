// contains memory contents
// This memory has similar behavior to the SRAM IC on the DE2 board.  This
// file should be used for simulations only.  In simulation, this memory is
// guaranteed to work at least as well as the actual memory (that is, the
// actual memory may require more careful treatment than this test memory).

// To use, you should create a seperate top-level entity for simulation
// that connects this memory module to your computer.  You can create this
// extra entity either in the same project (temporarily setting it to be the
// top module) or in a new one, and create a new vector waveform file for it.

module test_memory ( input          Clk,
                     input          reset, 
                     input  [19:0]  SRAM_ADDR,
                     input          SRAM_CE_N,
                                    SRAM_UB_N,
                                    SRAM_LB_N,
                                    SRAM_OE_N,
                                    SRAM_WE_N
                                    );
												
   parameter size = 256; // expand memory as needed (current is 64 words)
	 
   logic [15:0] mem [size-1:0];
	  
   always_ff @ (posedge Clk or posedge reset)
   begin
		if(reset)   // Insert initial memory contents here
		begin
      mem[0] <= 16'hf3ff;
      mem[1] <= 16'h0000;
      mem[2] <= 16'hf0ff;
      mem[3] <= 16'h0000;
      mem[4] <= 16'hfbff;
      mem[5] <= 16'hf1ff;
      mem[6] <= 16'hffff;
      mem[7] <= 16'hffff;
      mem[8] <= 16'hf9ff;
      mem[9] <= 16'hf7ff;
      mem[10] <= 16'hf7ff;
      mem[11] <= 16'hf3ff;
      mem[12] <= 16'hffff;
      mem[13] <= 16'hfdff;
      mem[14] <= 16'hfbff;
      mem[15] <= 16'hf9ff;
      mem[16] <= 16'hfbff;
      mem[17] <= 16'hf9ff;
      mem[18] <= 16'hffff;
      mem[19] <= 16'hfbff;
      mem[20] <= 16'hfdff;
      mem[21] <= 16'hf9ff;
      mem[22] <= 16'hfdff;
      mem[23] <= 16'hf2ff;
      mem[24] <= 16'hffff;
      mem[25] <= 16'hffff;
      mem[26] <= 16'hfbff;
      mem[27] <= 16'hfbff;
      mem[28] <= 16'h0200;
      mem[29] <= 16'hf5ff;
      mem[30] <= 16'hfbff;
      mem[31] <= 16'hffff;
      mem[32] <= 16'hfbff;
      mem[33] <= 16'hf9ff;
      mem[34] <= 16'hf5ff;
      mem[35] <= 16'h0000;
      mem[36] <= 16'hf9ff;
      mem[37] <= 16'hfdff;
      mem[38] <= 16'hf9ff;
      mem[39] <= 16'hf9ff;
      mem[40] <= 16'hf9ff;
      mem[41] <= 16'h0000;
      mem[42] <= 16'hf7ff;
      mem[43] <= 16'hf5ff;
      mem[44] <= 16'hffff;
      mem[45] <= 16'hf2ff;
      mem[46] <= 16'h0000;
      mem[47] <= 16'hffff;
      mem[48] <= 16'hfbff;
      mem[49] <= 16'hffff;
      mem[50] <= 16'hf5ff;
      mem[51] <= 16'hffff;
      mem[52] <= 16'hf3ff;
      mem[53] <= 16'h0300;
      mem[54] <= 16'hfbff;
      mem[55] <= 16'hf5ff;
      mem[56] <= 16'hffff;
      mem[57] <= 16'hf9ff;
      mem[58] <= 16'hfbff;
      mem[59] <= 16'hf7ff;
      mem[60] <= 16'hffff;
      mem[61] <= 16'hfbff;
      mem[62] <= 16'hfdff;
      mem[63] <= 16'hffff;
      mem[64] <= 16'hf2ff;
      mem[65] <= 16'hfdff;
      mem[66] <= 16'hfbff;
      mem[67] <= 16'hf9ff;
      mem[68] <= 16'hf7ff;
      mem[69] <= 16'hf9ff;
      mem[70] <= 16'hf7ff;
      mem[71] <= 16'hfdff;
      mem[72] <= 16'hfdff;
      mem[73] <= 16'hf9ff;
      mem[74] <= 16'hffff;
      mem[75] <= 16'hfbff;
      mem[76] <= 16'hffff;
      mem[77] <= 16'hf7ff;
      mem[78] <= 16'hfdff;
      mem[79] <= 16'hf9ff;
      mem[80] <= 16'hf0ff;
      mem[81] <= 16'h0700;
      mem[82] <= 16'hf9ff;
      mem[83] <= 16'hfbff;
      mem[84] <= 16'hfbff;
      mem[85] <= 16'hfdff;
      mem[86] <= 16'hf9ff;
      mem[87] <= 16'hf9ff;
      mem[88] <= 16'hf9ff;
      mem[89] <= 16'h0300;
      mem[90] <= 16'hfdff;
      mem[91] <= 16'hfdff;
      mem[92] <= 16'hfdff;
      mem[93] <= 16'hffff;
      mem[94] <= 16'hffff;
      mem[95] <= 16'hf9ff;
      mem[96] <= 16'hfbff;
      mem[97] <= 16'h0200;
      mem[98] <= 16'hffff;
      mem[99] <= 16'hffff;
      mem[100] <= 16'h0000;
      mem[101] <= 16'h0200;
      mem[102] <= 16'hffff;
      mem[103] <= 16'hfdff;
      mem[104] <= 16'h0400;
      mem[105] <= 16'hfdff;
      mem[106] <= 16'hfdff;
      mem[107] <= 16'h0000;
      mem[108] <= 16'hfbff;
      mem[109] <= 16'hfdff;
      mem[110] <= 16'hfdff;
      mem[111] <= 16'h0200;
      mem[112] <= 16'hf2ff;
      mem[113] <= 16'h0500;
      mem[114] <= 16'hf7ff;
      mem[115] <= 16'h0700;
      mem[116] <= 16'hf9ff;
      mem[117] <= 16'hf9ff;
      mem[118] <= 16'h0700;
      mem[119] <= 16'hf9ff;
      mem[120] <= 16'h0200;
      mem[121] <= 16'h0200;
      mem[122] <= 16'hfbff;
      mem[123] <= 16'hfbff;
      mem[124] <= 16'h0700;
      mem[125] <= 16'hfdff;
      mem[126] <= 16'h0300;
      mem[127] <= 16'hf9ff;
      mem[128] <= 16'h0400;
      mem[129] <= 16'hfdff;
      mem[130] <= 16'hfdff;
      mem[131] <= 16'h0900;
      mem[132] <= 16'hf7ff;
      mem[133] <= 16'h0500;
      mem[134] <= 16'h0300;
      mem[135] <= 16'hfdff;
      mem[136] <= 16'h0200;
      mem[137] <= 16'hfdff;
      mem[138] <= 16'hfdff;
      mem[139] <= 16'h0400;
      mem[140] <= 16'hffff;
      mem[141] <= 16'h0500;
      mem[142] <= 16'hfbff;
      mem[143] <= 16'hfdff;
      mem[144] <= 16'h0900;
      mem[145] <= 16'h0200;
      mem[146] <= 16'h0200;
      mem[147] <= 16'hffff;
      mem[148] <= 16'h0200;
      mem[149] <= 16'h0300;
      mem[150] <= 16'h0000;
      mem[151] <= 16'h0d00;
      mem[152] <= 16'hfdff;
      mem[153] <= 16'hfdff;
      mem[154] <= 16'h0000;
      mem[155] <= 16'h0500;

			
			for (integer i = 156; i <= size - 1; i = i + 1)		// Assign the rest of the memory to 0
			begin
				mem[i] <= 16'h0;
			end
		end
   end
	  
endmodule