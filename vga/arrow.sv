// module
// every tick (from input signal)
// read next value out of array

/*
    [0,0,1,0],
    [1,0,0,1]
*/

// if high, create arrow and place at bottom of screen

// draw arrows to screen
// current question: how can i draw multiple arrows to screen? how can i create a memory bank that draws new arrows on screen?
// how can i create a sprite on a screen?
// how can i create sprites by reading off a rom?
// module arrow (
// 	input  logic       Clk, reset, frame_clk,
// 	input [9:0]        DrawX, DrawY,
// 	output logic [3:0] display_arrow
// );

// // some static values
// parameter [9:0] arrow_center_x = 320-64;  // Center position on the X axis
// parameter [9:0] arrow_center_y = 240;  // Center position on the Y axis

// // position variables
// logic [9:0] x_pos, y_pos;   // position on screen of arrow
// logic [9:0] x_dist, y_dist; // distance from draw{X,Y} to center of arrow
// assign x_dist = DrawX - x_pos;
// assign y_dist = DrawY - y_pos;

// // timing
// logic frame_clk_delayed, frame_clk_rising_edge;
// always_ff @ (posedge Clk) begin
//     frame_clk_delayed <= frame_clk;
// end
// assign frame_clk_rising_edge = (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);

// // reset and every clock cycle behavior
// always_ff @ (posedge Clk) begin
//     if (reset)
//     begin
//         x_pos <= arrow_center_x;
//         y_pos <= arrow_center_y;
//         // Ball_X_Motion <= 10'd0;
//         // Ball_Y_Motion <= Ball_Y_Step;
//     end
//     else if (frame_clk_rising_edge)        // Update only at rising edge of frame clock
//     begin
//         // x_pos <= x_pos_in;
//         // Ball_Y_Pos <= Ball_Y_Pos_in;
//         // Ball_X_Motion <= Ball_X_Motion_in;
//         // Ball_Y_Motion <= Ball_Y_Motion_in;
//     end
//     // By defualt, keep the register values.
// end


// // output the draw signal
// always_comb begin
// 	display_arrow = 1'b0;
// 	if ( y_dist <= 32 && x_dist <= 32 )
// 		display_arrow[0] = 1'b1;
// end

// endmodule

module arrow (
    input  logic       Clk, reset, frame_clk, cont,
    input [9:0]        DrawX, DrawY,
    output logic [3:0] display_arrow
);

// some static values
parameter [9:0] arrow_1_center_x = 272;
parameter [9:0] arrow_2_center_x = 304;
parameter [9:0] arrow_3_center_x = 336;
parameter [9:0] arrow_4_center_x = 368;
parameter [9:0] arrow_start_center_y = 480-16;
parameter [9:0] arrow_speed = -2;

logic [9:0] arrow_1_pos_x, arrow_1_pos_y, arrow_1_motion_y;
logic [9:0] arrow_1_pos_x_in, arrow_1_pos_y_in, arrow_1_motion_y_in;
logic [479:0] arrow0_heights, arrow1_heights, arrow2_heights, arrow3_heights;

int DistX, DistY, Size;
//assign DistX = DrawX - arrow_1_pos_x;
//assign DistY = DrawY - arrow_1_pos_y;
assign DistX = DrawX - arrow_1_pos_x;
assign DistY = DrawY - arrow_1_pos_y;
assign Size = 16;

logic frame_clk_delayed;
logic frame_clk_rising_edge;

always_ff @ (posedge Clk)
begin
    frame_clk_delayed <= frame_clk;
end
assign frame_clk_rising_edge = (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);

always_ff @ (posedge Clk)
begin
    if(reset)
    begin
        arrow_1_pos_x <= arrow_1_center_x;
        arrow_1_pos_y <= arrow_start_center_y;
        arrow_1_motion_y <= 10'b0;
    end
    else if(frame_clk_rising_edge)
    begin
        arrow_1_pos_x <= arrow_1_pos_x_in;
        arrow_1_pos_y <= arrow_1_pos_y_in;
        arrow_1_motion_y <= arrow_1_motion_y_in;
    end
end

always_ff @ (posedge Clk)
begin
	 if(reset)
	 begin
		  arrow0_heights <= 479'b0;
		  arrow1_heights <= 479'b0;
		  arrow2_heights <= 479'b0;
		  arrow3_heights <= 479'b0;
 end
	 //arrow_heights <<= 1;
	 else if(frame_clk_rising_edge)
	 begin
		 for(int i=2; i<480; i++)
		 begin
			  arrow0_heights[i-2] <= arrow0_heights[i];
			  arrow0_heights[i] <= 1'b0;
			  arrow1_heights[i-2] <= arrow1_heights[i];
			  arrow1_heights[i] <= 1'b0;
			  arrow2_heights[i-2] <= arrow2_heights[i];
			  arrow2_heights[i] <= 1'b0;
			  arrow3_heights[i-2] <= arrow3_heights[i];
			  arrow3_heights[i] <= 1'b0;
			  
		 end
		 arrow0_heights[0] <= 1'b0;
		 arrow1_heights[0] <= 1'b0;
		 arrow2_heights[0] <= 1'b0;
		 arrow3_heights[0] <= 1'b0;

		 if(cont)
		 begin
			  arrow0_heights[300] <= 1'b1;
			  arrow1_heights[400] <= 1'b1;
			  arrow2_heights[350] <= 1'b1;
			  arrow3_heights[450] <= 1'b1;

		 end
	 end
end
/*
always_comb
begin
    arrow_1_pos_x_in = arrow_1_pos_x;
    arrow_1_pos_y_in = arrow_1_pos_y + arrow_1_motion_y;
    arrow_1_pos_y_in = arrow_1_pos_y_in;
    arrow_1_pos_x_in = arrow_1_pos_x_in;
	 
	 arrow_1_motion_y_in = arrow_speed;
	 
//	 arrow
end
*/
/*
always_comb begin // receptors
	is_receptor[3:0] = 4'b0;
	if ( DrawY >= 10'd30 && DrawY <= 10'd79 )
	begin
		if ( DrawX >= 10'd256 && DrawX <= 10'd287 )
			if ( keycode == 8'h34 )
				is_receptor[0] = 1'b1;
		if ( DrawX >= 10'd288 && DrawX <= 10'd319 )
			if ( keycode == 8'h33 )
				is_receptor[1] = 1'b1;
		if ( DrawX >= 10'd320 && DrawX <= 10'd351 )
			if ( keycode == 8'h35 )
				is_receptor[2] = 1'b1;
		if ( DrawX >= 10'd352 && DrawX <= 10'd383 )
			if ( keycode == 8'h3b )
				is_receptor[3] = 1'b1;
	end
end
*/

always_comb
begin
    display_arrow = 1'b0;
//    if ( DistY <= 32 && DistY >= -32 && DistX <= 32 && DistX >= -32)
/*
		if (DrawX >= 10'd256 && DrawX <= 10'd383 && DrawY >= 10'd447 && DrawY <= 10'd479)
        display_arrow[0] = 1'b1;    
		if (DistX <= Size && DistX >= (-1*Size) && DistY <= Size && DistY >= (-1*Size))
		  display_arrow[1] = 1'b1;
*/
	   for(int n=0; n<480;n++)
		begin
		  if (arrow0_heights[n] == 1'b1)
			 if (DrawX >= 10'd256 && DrawX < 10'd288 && DrawY <= (n+16) && DrawY >= (n-16))
				display_arrow[2] = 1'b1;
		  if (arrow1_heights[n] == 1'b1)
			 if (DrawX >= 10'd288 && DrawX < 10'd320 && DrawY <= (n+16) && DrawY >= (n-16))
				display_arrow[2] = 1'b1;
		  if (arrow2_heights[n] == 1'b1)
			 if (DrawX >= 10'd320 && DrawX < 10'd352 && DrawY <= (n+16) && DrawY >= (n-16))
				display_arrow[2] = 1'b1;
		  if (arrow3_heights[n] == 1'b1)
			 if (DrawX >= 10'd352 && DrawX < 10'd384 && DrawY <= (n+16) && DrawY >= (n-16))
				display_arrow[2] = 1'b1;		
		end
		/*
		if (DrawX >= 10'd256 && DrawX <= 10'd383 && DrawY <= 10'd256 && DrawY >= 10'd226)//DrawY <= (n+16) && DrawY >= (n-16))
				display_arrow[2] = 1'b1;
		*/
end

endmodule

//make a couple of registers that store a current y-pos so every strip of arrows can be acounted for???
//if the output is not zero then

//whatif I made a 480 register or some kind of array
//for each pixel so that we can update every clock at which pixel a specific arrow strip
//is at.
/*use a for loop to check ever index and move it up one step
module y_reg(
		input logic 
);
*/