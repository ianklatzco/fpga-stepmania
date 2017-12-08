// a FSM to sequentially read off of the SRAM, starting from 0 when reset is pushed.
// will want to: reference signals from https://github.com/DashKosaka/ECE385-lab6/blob/master/ISDU.sv
module sram_reading_fsm (
	input Clk,
	input reset,
	input start, cont,

	output logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N,
	output logic [19:0] SRAM_ADDR
	
);

// first: make it read one sample to LEDs for every press of KEY[3]
// load piano2.rom onto SRAM using the crappy utility (on desktop)
// write this FSM to read off SRAM

logic [15:0] address;
assign SRAM_ADDR = { 4'b0, address };

enum logic [1:0] {
	halted, 
	reading_sample_1,
	reading_sample_2,
	done
}   state, next_state;

// reset behavior
always_ff @ (posedge Clk)
begin
    if (reset) 
        state <= halted;
    else 
        state <= next_state;
end

always_comb
begin 
    next_state = state; // Default next state is staying at current state
 
    unique case (state)
        halted : 
            if (cont) // if we've hit the continue button, go fetch another sample
                next_state = reading_sample_1;                      
        reading_sample_1:
        	next_state = reading_sample_2;
        reading_sample_2:
        	next_state = done;
        done:
        	next_state = halted;
        default : ;
	endcase

	// default values for output signals
	SRAM_OE_N = 1'b1;
	SRAM_WE_N = 1'b1;
	address = 16'b0;

	// always active
    assign Mem_CE = 1'b0;
    assign Mem_UB = 1'b0;
    assign Mem_LB = 1'b0;

	case (state):
		halted: ;
		reading_sample_1:
		begin
			address = address + 1; // todo: wrong - address needs to be latched somewhere. just write one inside this file, and make the signal on this line of code be its load signal, so it updates when we reach this state.
			SRAM_OE_N = 1'b0;
		end
		reading_sample_2:
		begin
			SRAM_OE_N = 1'b0;
		end
		done: ;
		default: ;
	endcase

end




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