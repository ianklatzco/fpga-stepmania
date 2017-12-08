// a FSM to sequentially read off of the SRAM, starting from 0 when reset is pushed.
// will want to: reference signals from https://github.com/DashKosaka/ECE385-lab6/blob/master/ISDU.sv
module sram_reading_fsm (
	input Clk,
	input reset,
	input data_from_sram,

	output logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N,
	output logic [19:0] SRAM_ADDR
	
);

/*
int counter = 0;
// playback of ROM
always_ff @(posedge Clk or posedge reset)
begin
	if(reset) begin
		counter <= 0;
	end else begin
		if (counter >= 1000) begin
			audio_data <= mem[0];
			counter <= 0;
		end else begin
		 	audio_data <= mem[counter];
			counter <= counter + 1;
		end
	end
end
*/


endmodule