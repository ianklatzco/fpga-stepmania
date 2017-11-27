// draws the receptors. handles different colors for push.
module receptor(
	output logic [3:0] is_receptor,
	output logic is_background, is_receptor_background,
	input  logic [7:0] keycode,
	input  logic [9:0] DrawX, DrawY
);

always_comb begin
	is_background = 1'b0;
	is_receptor_background = 1'b0;

	if ( DrawX >= 10'd256 && DrawX <= 10'd383 )
		is_background = 1'b1;

	if ( DrawY >= 10'd30 && DrawY <= 10'd79 )
		if ( DrawX >= 10'd256 && DrawX <= 10'd383 )
			is_receptor_background = 1'b1;
end

// everything will always be left, down, up, right.
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

endmodule // receptor
