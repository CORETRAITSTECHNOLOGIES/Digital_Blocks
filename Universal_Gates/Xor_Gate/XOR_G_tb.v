`timescale 1ns/1ns
`include  "XOR_G.v"
module XOR_G_tb();

reg A,B;
wire C;

XOR_G uut(A,B,C);

initial begin
  
  $dumpfile("XOR_G_tb.vcd");
  $dumpvars(1,XOR_G_tb);

  A=0;
  B=0;
  #20
  A=0;
  B=1;
  #20
  A=1;
  B=0;
  #20
  A=1;
  B=1;
  #20
$display("Test Done");
end

endmodule