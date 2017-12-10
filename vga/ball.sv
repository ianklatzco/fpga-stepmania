// ball movement and is_ball signal
module  ball ( input         Clk, Reset,
                             frame_clk,          // The clock indicating a new frame (~60Hz)
               input [9:0]   DrawX, DrawY,       // Current pixel coordinates
               input [7:0]   keycode,
               output logic  is_ball             // Whether current pixel belongs to ball or background
              );
    //arrow positions are at 272, 304, 336, 368
    parameter [9:0] Ball_X_Center=320;  // Center position on the X axis
    parameter [9:0] Ball_Y_Center=240;  // Center position on the Y axis
    parameter [9:0] Ball_X_Min=0;       // Leftmost point on the X axis
    parameter [9:0] Ball_X_Max=639;     // Rightmost point on the X axis
    parameter [9:0] Ball_Y_Min=0;       // Topmost point on the Y axis
    parameter [9:0] Ball_Y_Max=479;     // Bottommost point on the Y axis
    parameter [9:0] Ball_X_Step=1;      // Step size on the X axis
    parameter [9:0] Ball_Y_Step=1;      // Step size on the Y axis
    parameter [9:0] Ball_Size=4;        // Ball size
    
    logic [9:0] Ball_X_Pos, Ball_X_Motion, Ball_Y_Pos, Ball_Y_Motion;
    logic [9:0] Ball_X_Pos_in, Ball_X_Motion_in, Ball_Y_Pos_in, Ball_Y_Motion_in;
    
    /* Since the multiplicants are required to be signed, we have to first cast them
       from logic to int (signed by default) before they are multiplied. */
    int DistX, DistY, Size;
    assign DistX = DrawX - Ball_X_Pos;
    assign DistY = DrawY - Ball_Y_Pos;
    assign Size = Ball_Size;
    
    //////// Do not modify the always_ff blocks. ////////
    // Detect rising edge of frame_clk
    logic frame_clk_delayed;
    logic frame_clk_rising_edge;
    always_ff @ (posedge Clk) begin
        frame_clk_delayed <= frame_clk;
    end
    assign frame_clk_rising_edge = (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);
    // Update ball position and motion
    always_ff @ (posedge Clk)
    begin
        if (Reset)
        begin
            Ball_X_Pos <= Ball_X_Center;
            Ball_Y_Pos <= Ball_Y_Center;
            Ball_X_Motion <= 10'd0;
            Ball_Y_Motion <= Ball_Y_Step;
        end
        else if (frame_clk_rising_edge)        // Update only at rising edge of frame clock
        begin
            Ball_X_Pos <= Ball_X_Pos_in;
            Ball_Y_Pos <= Ball_Y_Pos_in;
            Ball_X_Motion <= Ball_X_Motion_in;
            Ball_Y_Motion <= Ball_Y_Motion_in;
        end
        // By defualt, keep the register values.
    end
    
    // in combinational blocks, priority is encoded by the last thing declaring a particular variable
    always_comb
    begin
        // Update the ball's position with its motion
        Ball_X_Pos_in = Ball_X_Pos + Ball_X_Motion;
        Ball_Y_Pos_in = Ball_Y_Pos + Ball_Y_Motion;
    
        // By default, keep motion unchanged
        Ball_X_Motion_in = Ball_X_Motion;
        Ball_Y_Motion_in = Ball_Y_Motion;

        // 50 left
        // 51 down
        // 52 up
        // 4f rigth
        //pressing two keys will make the ball go
        /* 
        if ( keycode == 8'h04 ) // left
        begin
            Ball_Y_Motion_in = 10'b0;
            Ball_X_Motion_in = (~(Ball_X_Step) + 1'b1); // 2's comp
        end
        else if ( keycode == 8'h16) // down
        begin
            Ball_X_Motion_in = 10'b0;
            Ball_Y_Motion_in = Ball_Y_Step;
        end
        else if ( keycode == 8'h1a) // up
        begin
            Ball_X_Motion_in = 10'b0;
            Ball_Y_Motion_in = (~(Ball_Y_Step) + 1'b1);
        end
        else if ( keycode == 8'h07) // right
        begin
            Ball_Y_Motion_in = 10'b0;
            Ball_X_Motion_in = Ball_X_Step;
        end
        */

        // boundaries
        if( Ball_X_Pos + Ball_Size >= Ball_X_Max )  // Ball is at the bottom edge, BOUNCE!
        begin
            Ball_Y_Motion_in = 10'b0;
            Ball_X_Motion_in = (~(Ball_X_Step) + 1'b1);  // 2's complement.  
        end
        else if ( Ball_X_Pos <= Ball_X_Min + Ball_Size )  // Ball is at the top edge, BOUNCE!
        begin
            Ball_Y_Motion_in = 10'b0;
            Ball_X_Motion_in = Ball_X_Step;
        end

        // Be careful when using comparators with "logic" datatype because compiler treats 
        //   both sides of the operator UNSIGNED numbers. (unless with further type casting)
        // e.g. Ball_Y_Pos - Ball_Size <= Ball_Y_Min 
        // If Ball_Y_Pos is 0, then Ball_Y_Pos - Ball_Size will not be -4, but rather a large positive number.
        // y boundary conditions
        if( Ball_Y_Pos - Ball_Size >= Ball_Y_Max )  // Ball is at the bottom edge, BOUNCE!
        begin
            Ball_X_Motion_in = 10'b0;
            Ball_Y_Motion_in = (~(Ball_Y_Step) + 1'b1);  // 2's complement.  
        end
        else if ( Ball_Y_Pos <= Ball_Y_Min + Ball_Size )  // Ball is at the top edge, BOUNCE!
        begin
            Ball_X_Motion_in = 10'b0;
            Ball_Y_Motion_in = Ball_Y_Step;
        end
   
        // Compute whether the pixel corresponds to ball or background
        if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
            is_ball = 1'b0;
        else
            is_ball = 1'b0;
    end
    
endmodule