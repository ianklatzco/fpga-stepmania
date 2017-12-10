//state machine
// input: array of four bits, clock
//get a new value every second
// output: logic [3:0] arrows

//make an int count up to 50 mil

//outputs a four bit array every second representing arrows
module timer(
	input logic Clk, Reset,
//	input logic ,
//	output logic arrows???
	output logic [3:0] arrows
);
/*
logic [3:0] array[0:3] = [ {0,0,0,0},
									{0,1,0,0},
									{1,1,1,1},
									{0,0,0,0} ];
*/
logic [3:0][3:0] array;

assign array =  {4'b0000, 4'b0100 ,	4'b1111 , 4'b0000};

int count = 1;
always_ff @(posedge Clk)
begin
	count += 1;
	if(count % 50000000 == 0)
	begin
		arrows = array[1];
		count = 1;
	end
end

endmodule

module mux(
	input logic sel, 
	input logic [3:0] d0, d1,
	output logic [3:0] y
);

always_comb
begin
	if(sel == 1'b0)
		y = 4'b0;
	else
		y = d1;
end

endmodule