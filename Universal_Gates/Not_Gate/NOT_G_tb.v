`timescale 1ns/1ns
`include "NOT_G.v"
module NOT_G_tb();
reg A;
wire B;
NOT_G uut(A,B);
initial begin
  $dumpfile("NOT_G_tb.vcd");
  $dumpvars(0,NOT_G_tb);
  
  A=0;
  #20
  A=1;
  #20
  $display("Done testing");
end

endmodule