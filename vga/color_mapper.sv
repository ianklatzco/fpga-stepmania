// color_mapper: Decide which color to be output to VGA for each pixel.
module  color_mapper ( 
                    input              is_ball,            // Whether current pixel belongs to ball 
                                                              //   or background (computed in ball.sv)
                    input        [9:0] DrawX, DrawY,       // Current pixel coordinates
                    output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
                     );
    
    logic [7:0] Red, Green, Blue;
    
    // Output colors to VGA
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;
    
    // Assign color based on is_ball signal
    always_comb
    begin
        if (is_ball == 1'b1) 
        begin
            // White ball
            Red = 8'hff;
            Green = 8'hff;
            Blue = 8'hff;
        end
        else 
        begin
            // Background with nice color gradient
            Red = 8'h05;  // #054bc1
            Green = 8'h4b;
            Blue = 8'hc1;
            // Blue = 8'h7f - {1'b0, DrawX[9:3]};
        end
    end 
    
endmodule