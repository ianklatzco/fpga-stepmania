/*
    This sprite table was generated using 'conv_to_sv.py'. Find out more here: https://github.com/Atrifex/ECE385-HelperTools
    To use, instantiate this module in your color mapper. The SpriteX input should be connected to
        'ObjectXSize - DistX', where ObjectXSize is the width of your object in pixels along the
        x direction. DistX is the horizontal distance between the DrawX pxiel and the top left corner
        of the object in question, so something like: 'DistX = DrawX - ObjectXPosition' is fine.
        Similarly this goes for SpriteY. Warning: If you don't do this, your image will be flipped along
        the axis you ignored. This is a handy way to flip an image if you need to, though.
 
    In the color mapper, you can then simply do something like:
    module ColorMapper(...)
    ...
    logic [7:0] ObjectR, ObjectG, ObjectB
    parameter ObjectXSize = 10'd10;
    parameter ObjectYSize = 10'd10;
    ...
    always_comb
    ...
         if(ObjectOn == 1'b1)
         begin
             Red = ObjectR
             Green = ObjectG
             Blue = ObjectB
         end
     ...
     ObjectSpriteTable ost(
                           .SpriteX(ObjectXSize - DistX), .SpriteY(ObjectYSize - DistY),
                           .SpriteR(ObjectR), .SpriteG(ObjectG), .SpriteB(ObjectB)
                           );
 
     See the comment at the top of the generation script if you're still confused.
*/
module down(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[1:0] = '{8'd255, 8'd0};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_0_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_0_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_0_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_0_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_0_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_1_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_1_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_1_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_1_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_1_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_2_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_2_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_2_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_2_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_2_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_3_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_3_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_3_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_3_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_3_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_4_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_4_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_4_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_4_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_4_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_5_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_5_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_5_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_5_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_5_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_6_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_6_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_6_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_6_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_6_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_7_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_7_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_7_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_7_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_7_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_8_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_8_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_8_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_8_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_8_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_9_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_9_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_9_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_9_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_9_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_10_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_10_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_10_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_10_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_10_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_10_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_11_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_11_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_11_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_11_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_11_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_12_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_12_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_12_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_12_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_12_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_12_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_12_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_12_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_12_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_12_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_12_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_12_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_12_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_13_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_13_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_13_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_13_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_13_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_13_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_13_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_13_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_13_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_13_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_13_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_13_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_13_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_14_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_14_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_14_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_14_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_14_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_14_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_14_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_14_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_14_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_14_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_14_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_14_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_14_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_15_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_15_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_15_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_15_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_15_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_15_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_15_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_15_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_15_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_15_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_15_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_15_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_15_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_16_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_16_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_16_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_16_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_16_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_16_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_16_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_16_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_16_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_16_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_16_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_16_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_16_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_17_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_17_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_17_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_17_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_17_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_17_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_17_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_17_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_17_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_17_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_17_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_17_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_17_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_17_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_17_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_17_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_17_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_17_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_17_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_17_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_18_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_18_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_18_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_18_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_18_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_18_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_18_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_18_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_18_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_18_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_18_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_18_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_18_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_18_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_18_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_18_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_18_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_18_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_18_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_18_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_19_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_19_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_19_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_19_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_19_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_19_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_19_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_19_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableR = SpriteTableR_19_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableR = SpriteTableR_19_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableR = SpriteTableR_19_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableR = SpriteTableR_19_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableR = SpriteTableR_19_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableR = SpriteTableR_19_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableR = SpriteTableR_19_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableR = SpriteTableR_19_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableR = SpriteTableR_19_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableR = SpriteTableR_19_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableR = SpriteTableR_19_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableR = SpriteTableR_19_19[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableR_0_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_0_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_1_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_3_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_5_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_6_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_7_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_8_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_9_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_10_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_11_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_12_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_13_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_14_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_15_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_16_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_17_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_18_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_19_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[1:0] = '{8'd255, 8'd162};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_0_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_0_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_0_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_0_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_0_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_1_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_1_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_1_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_1_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_1_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_2_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_2_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_2_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_2_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_2_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_3_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_3_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_3_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_3_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_3_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_4_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_4_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_4_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_4_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_4_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_5_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_5_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_5_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_5_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_5_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_6_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_6_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_6_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_6_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_6_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_7_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_7_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_7_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_7_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_7_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_8_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_8_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_8_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_8_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_8_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_9_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_9_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_9_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_9_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_9_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_10_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_10_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_10_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_10_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_10_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_10_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_11_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_11_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_11_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_11_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_11_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_12_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_12_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_12_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_12_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_12_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_12_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_12_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_12_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_12_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_12_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_12_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_12_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_12_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_13_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_13_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_13_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_13_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_13_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_13_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_13_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_13_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_13_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_13_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_13_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_13_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_13_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_14_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_14_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_14_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_14_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_14_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_14_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_14_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_14_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_14_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_14_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_14_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_14_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_14_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_15_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_15_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_15_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_15_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_15_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_15_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_15_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_15_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_15_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_15_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_15_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_15_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_15_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_16_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_16_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_16_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_16_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_16_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_16_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_16_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_16_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_16_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_16_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_16_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_16_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_16_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_17_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_17_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_17_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_17_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_17_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_17_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_17_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_17_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_17_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_17_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_17_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_17_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_17_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_17_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_17_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_17_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_17_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_17_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_17_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_17_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_18_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_18_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_18_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_18_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_18_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_18_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_18_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_18_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_18_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_18_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_18_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_18_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_18_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_18_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_18_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_18_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_18_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_18_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_18_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_18_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_19_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_19_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_19_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_19_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_19_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_19_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_19_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_19_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableG = SpriteTableG_19_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableG = SpriteTableG_19_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableG = SpriteTableG_19_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableG = SpriteTableG_19_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableG = SpriteTableG_19_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableG = SpriteTableG_19_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableG = SpriteTableG_19_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableG = SpriteTableG_19_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableG = SpriteTableG_19_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableG = SpriteTableG_19_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableG = SpriteTableG_19_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableG = SpriteTableG_19_19[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableG_0_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_0_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_0_11[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_1_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_1_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_1_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_2_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_2_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_2_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_2_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_3_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_3_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_3_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_3_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_3_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_4_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_5_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_6_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_6_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_6_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_6_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_7_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_7_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_7_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_8_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_8_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_9_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_9_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_10_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_11_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_11_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_11_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_12_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_12_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_12_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_12_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_13_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_13_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_13_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_13_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_13_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_14_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_14_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_14_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_14_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_14_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_14_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_1[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_2[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_3[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_4[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_5[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_6[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_7[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_8[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_9[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_15_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_15_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_15_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_15_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_15_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_15_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_16_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_16_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_16_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_16_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_16_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_17_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_17_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_17_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_17_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_18_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_18_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_18_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_19_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_11[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_19_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[1:0] = '{8'd255, 8'd232};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_0_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_0_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_0_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_0_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_0_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_0_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_0_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_0_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_0_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_0_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_0_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_0_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_1_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_1_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_1_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_1_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_1_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_1_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_1_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_1_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_1_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_1_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_1_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_1_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_2_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_2_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_2_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_2_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_2_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_2_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_2_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_2_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_2_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_2_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_2_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_2_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_3_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_3_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_3_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_3_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_3_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_3_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_3_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_3_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_3_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_3_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_3_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_3_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_4_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_4_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_4_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_4_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_4_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_4_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_4_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_4_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_4_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_4_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_4_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_4_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_5_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_5_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_5_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_5_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_5_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_5_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_5_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_5_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_5_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_5_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_5_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_5_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_5_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_6_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_6_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_6_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_6_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_6_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_6_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_6_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_6_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_6_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_6_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_6_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_6_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_6_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_6_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_6_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_6_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_6_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_6_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_6_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd48 && SpriteX < 10'd56 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_6_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_7_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_7_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_7_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_7_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_7_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_7_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_7_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_7_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_7_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_7_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_7_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_7_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_7_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_7_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_7_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_7_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_7_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_7_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_7_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd56 && SpriteX < 10'd64 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_7_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_8_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_8_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_8_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_8_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_8_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_8_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_8_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_8_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_8_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_8_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_8_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_8_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_8_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_8_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_8_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_8_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_8_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_8_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_8_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd64 && SpriteX < 10'd72 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_8_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_9_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_9_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_9_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_9_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_9_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_9_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_9_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_9_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_9_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_9_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_9_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_9_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_9_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_9_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_9_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_9_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_9_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_9_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_9_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd72 && SpriteX < 10'd80 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_9_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_10_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_10_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_10_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_10_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_10_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_10_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_10_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_10_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_10_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_10_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_10_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_10_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_10_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_10_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_10_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_10_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_10_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_10_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_10_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd80 && SpriteX < 10'd88 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_10_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_11_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_11_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_11_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_11_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_11_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_11_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_11_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_11_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_11_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_11_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_11_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_11_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_11_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_11_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_11_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_11_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_11_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_11_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_11_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd88 && SpriteX < 10'd96 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_11_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_12_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_12_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_12_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_12_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_12_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_12_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_12_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_12_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_12_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_12_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_12_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_12_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_12_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_12_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_12_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_12_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_12_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_12_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_12_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd96 && SpriteX < 10'd104 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_12_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_13_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_13_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_13_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_13_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_13_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_13_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_13_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_13_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_13_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_13_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_13_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_13_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_13_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_13_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_13_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_13_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_13_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_13_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_13_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd104 && SpriteX < 10'd112 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_13_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_14_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_14_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_14_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_14_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_14_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_14_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_14_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_14_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_14_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_14_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_14_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_14_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_14_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_14_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_14_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_14_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_14_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_14_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_14_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd112 && SpriteX < 10'd120 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_14_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_15_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_15_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_15_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_15_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_15_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_15_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_15_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_15_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_15_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_15_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_15_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_15_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_15_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_15_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_15_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_15_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_15_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_15_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_15_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd120 && SpriteX < 10'd128 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_15_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_16_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_16_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_16_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_16_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_16_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_16_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_16_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_16_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_16_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_16_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_16_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_16_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_16_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_16_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_16_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_16_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_16_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_16_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_16_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd128 && SpriteX < 10'd136 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_16_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_17_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_17_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_17_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_17_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_17_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_17_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_17_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_17_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_17_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_17_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_17_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_17_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_17_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_17_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_17_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_17_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_17_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_17_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_17_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd136 && SpriteX < 10'd144 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_17_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_18_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_18_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_18_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_18_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_18_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_18_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_18_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_18_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_18_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_18_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_18_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_18_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_18_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_18_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_18_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_18_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_18_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_18_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_18_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd144 && SpriteX < 10'd152 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_18_19[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_19_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_19_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_19_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_19_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_19_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_19_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_19_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_19_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd64 && SpriteY < 10'd72)
		begin
		    SpriteTableB = SpriteTableB_19_8[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd72 && SpriteY < 10'd80)
		begin
		    SpriteTableB = SpriteTableB_19_9[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd80 && SpriteY < 10'd88)
		begin
		    SpriteTableB = SpriteTableB_19_10[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd88 && SpriteY < 10'd96)
		begin
		    SpriteTableB = SpriteTableB_19_11[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd96 && SpriteY < 10'd104)
		begin
		    SpriteTableB = SpriteTableB_19_12[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd104 && SpriteY < 10'd112)
		begin
		    SpriteTableB = SpriteTableB_19_13[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd112 && SpriteY < 10'd120)
		begin
		    SpriteTableB = SpriteTableB_19_14[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd120 && SpriteY < 10'd128)
		begin
		    SpriteTableB = SpriteTableB_19_15[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd128 && SpriteY < 10'd136)
		begin
		    SpriteTableB = SpriteTableB_19_16[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd136 && SpriteY < 10'd144)
		begin
		    SpriteTableB = SpriteTableB_19_17[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd144 && SpriteY < 10'd152)
		begin
		    SpriteTableB = SpriteTableB_19_18[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd152 && SpriteX < 10'd160 && SpriteY >= 10'd152 && SpriteY < 10'd160)
		begin
		    SpriteTableB = SpriteTableB_19_19[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableB_0_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_0_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_0_11[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_1_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_1_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_1_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_2_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_2_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_2_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_2_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_3_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_3_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_3_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_3_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_3_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableB_4_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_4_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_5_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_6_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_6_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_6_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_6_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_7_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_7_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_7_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_8_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_8_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_9_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_9_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_10_19[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_11_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_11_18[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_11_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_12_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_12_17[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_12_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_12_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_13_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_13_16[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_13_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_13_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_13_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_14_0[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_2[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_4[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_6[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_8[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_9[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_14_15[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_14_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_14_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_14_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_14_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_1[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_2[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_3[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_4[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_5[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_6[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_7[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_8[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_9[7:0][7:0] = '{'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_15_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_15_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_15_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_15_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_15_14[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_15_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_16_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_16_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_16_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_16_13[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_16_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_17_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_17_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_17_12[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_17_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_18_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_18_11[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_18_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_8[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_9[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableB_19_10[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_11[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_12[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_13[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_14[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_15[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_16[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_17[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_18[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_19_19[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule
