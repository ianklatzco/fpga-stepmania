
module reg_16 (
	input  logic clk,    // Clock
	input  logic reset, // Clock Enable
	input  logic load,
	input  logic [15:0] din,  // Asynchronous reset active low
	output logic [15:0] dout
);
always_ff @(posedge clk)
begin
	if(reset) begin
		dout <= 16'b0;
	end 
	else if(load) begin
		dout <= din;
	end
end

endmodule