// draw arrows to screen
// current question: how can i draw multiple arrows to screen? how can i create a memory bank that draws new arrows on screen?
// how can i create a sprite on a screen?
// how can i create sprites by reading off a rom?
module arrow (
	input  logic       Clk, reset, frame_clk,
	input [9:0]        DrawX, DrawY,
	output logic [3:0] display_arrow
);

// some static values
parameter [9:0] arrow_center_x = 320-64;  // Center position on the X axis
parameter [9:0] arrow_center_y = 240;  // Center position on the Y axis

// position variables
logic [9:0] x_pos, y_pos;   // position on screen of arrow
logic [9:0] x_dist, y_dist; // distance from draw{X,Y} to center of arrow
assign x_dist = DrawX - x_pos;
assign y_dist = DrawY - y_pos;

// timing
logic frame_clk_delayed, frame_clk_rising_edge;
always_ff @ (posedge Clk) begin
    frame_clk_delayed <= frame_clk;
end
assign frame_clk_rising_edge = (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);

// reset and every clock cycle behavior
always_ff @ (posedge Clk) begin
    if (reset)
    begin
        x_pos <= arrow_center_x;
        y_pos <= arrow_center_y;
        // Ball_X_Motion <= 10'd0;
        // Ball_Y_Motion <= Ball_Y_Step;
    end
    else if (frame_clk_rising_edge)        // Update only at rising edge of frame clock
    begin
        // x_pos <= x_pos_in;
        // Ball_Y_Pos <= Ball_Y_Pos_in;
        // Ball_X_Motion <= Ball_X_Motion_in;
        // Ball_Y_Motion <= Ball_Y_Motion_in;
    end
    // By defualt, keep the register values.
end


// output the draw signal
always_comb begin
	display_arrow = 1'b0;
	if ( y_dist <= 32 && x_dist <= 32 )
		display_arrow[0] = 1'b1;
end

endmodule