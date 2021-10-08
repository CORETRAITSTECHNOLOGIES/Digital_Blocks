`timescale 1ns/1ns
`include "XNOR_G.v"

module XNOR_G_tb();

reg A,B;
wire C;

XNOR_G uut(A,B,C);
initial begin
  $dumpfile("XNOR_G_tb.vcd");
  $dumpvars(1,XNOR_G_tb);

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
  $display("Done Testing");
  

end

endmodule