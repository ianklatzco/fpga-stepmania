// https://learn.digilentinc.com/Documents/262

module ClkDivider (
    input clk,
    input rst,
    output reg clk_div
    );

localparam constantNumber = 1134;

// 50 000 000 / constantNumber = clk_div's rate

reg [31:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 32'b0;
    else if (count == constantNumber - 1)
        count <= 32'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div <= ~clk_div;
    else
        clk_div <= clk_div;
end
  
endmodule


module aud_xck_divider (
    input clk,
    input rst,
    output reg clk_div
    );

localparam constantNumber = 2;

// 50 000 000 / constantNumber = clk_div's rate

reg [31:0] count;

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        count <= 32'b0;
    else if (count == constantNumber - 1)
        count <= 32'b0;
    else
        count <= count + 1;
end

always @ (posedge(clk), posedge(rst))
begin
    if (rst == 1'b1)
        clk_div <= 1'b0;
    else if (count == constantNumber - 1)
        clk_div <= ~clk_div;
    else
        clk_div <= clk_div;
end
  
endmodule