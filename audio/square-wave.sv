// https://electronics.stackexchange.com/questions/205749/generation-of-square-wave-using-veilog
// outputs either a 1 or a 0 for a freq of i think 4mhz?
module square_wave(clk,rst,dac_out);
   input clk; // assuming 1 MHz
   input rst;
   output reg dac_out;
   reg [11:0]  counter; // 12-bit for numbers up to 3999

   always @(posedge clk)
     begin
        if (rst == 1'b1  ||  counter == 12'd3999) // period, count from 0 to n-1
          counter <= 0;
        else
          counter <= counter + 1'b1;

        // synchronous output without glitches
        if (rst == 1'b0  &&  counter < 12'd2000) // duty cycle, m cycles high
          dac_out = 1'b1;
        else
          dac_out = 1'b0;
      end
endmodule // square_wave

