`timescale 1ns/1ns
`include "NOR_G.v"
module NOR_G_tb();

reg A,B;
wire C;
NOR_G uut(A,B,C);

initial begin
  $dumpfile("NOR_G_tb.vcd");
  $dumpvars(1,NOR_G_tb);

  A=0;
  B=0;
  #20
  A=1;
  B=0;
  #20
  A=0;
  B=1;
  #20
  A=1;
  B=1;
  #20

  $display("done testing");
  
end

endmodule