// a FSM to sequentially read off of the SRAM, starting from 0 when reset is pushed.
// will want to: reference signals from https://github.com/DashKosaka/ECE385-lab6/blob/master/ISDU.sv
module sram_reading_fsm (
	input Clk,
	input reset,
	input start, cont,

	output logic SRAM_CE_N, SRAM_UB_N, SRAM_LB_N, SRAM_OE_N, SRAM_WE_N,
	output logic [19:0] SRAM_ADDR,
	output logic sram_data_load
	
);

// first: make it read one sample to LEDs for every press of KEY[3]
// load piano2.rom onto SRAM using the crappy utility (on desktop)
// write this FSM to read off SRAM
logic sram_reg_load;

counter_reg sram_reg(
	.clk(Clk), .reset(reset),
	.load (sram_reg_load), .dout({4'b0, SRAM_ADDR[15:0]})
);

enum logic [2:0] {
	halted, 
	reading_sample_1,
	reading_sample_2,
	reading_sample_3,
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
	        	next_state = reading_sample_3;
        reading_sample_3:
        	if(~cont)
	        	next_state = done;
        done:
        	next_state = halted;
        default : ;
	endcase

	// default values for output signals
	SRAM_OE_N = 1'b1;
	SRAM_WE_N = 1'b1;
	sram_reg_load = 1'b0;
	sram_data_load = 1'b0;

	// always active
    SRAM_CE_N = 1'b0;
    SRAM_UB_N = 1'b0;
 	SRAM_LB_N = 1'b0;


	case (state)
		//halted: ;
		reading_sample_1:
		begin
			SRAM_OE_N = 1'b0;
		end
		reading_sample_2:
		begin
			SRAM_OE_N = 1'b0;
		end
		reading_sample_3:
		begin
			SRAM_OE_N = 1'b0;
	        sram_data_load = 1'b1;
		end
		done:
			sram_reg_load = 1'b1;
		default: ;
	endcase

end
endmodule

module counter_reg (
	input  logic clk,    // Clock
	input  logic reset, // Clock Enable
	input  logic load,
	//input [15:0] din,  // Asynchronous reset active low
	output logic [15:0] dout
);
always_ff @(posedge clk)
begin
	if(reset) begin
		dout <= 16'b0;
	end 
	else if(load) begin
		dout <= dout+1;
	end
end

endmodule
