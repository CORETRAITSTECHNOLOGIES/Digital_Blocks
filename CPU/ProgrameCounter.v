module Programe_Counter(
    input wire clk,
    input wire reset,
    input wire [3:0] increment,
    output reg [3:0] address

);
reg [3:0] counter;
always @(posedge clk or posedge reset) begin
   if (reset) begin
   counter <=4'b0000;
   end else begin 
   counter <= counter + increment;
    end
 end
 always @* begin
 address <= counter;
 end

endmodule