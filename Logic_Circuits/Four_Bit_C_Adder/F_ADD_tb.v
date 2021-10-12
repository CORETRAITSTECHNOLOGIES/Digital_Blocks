`timescale 1ns/1ns
`include "F_ADD.v"
module F_ADD_tb();
reg A,B,C;
wire S,O;
F_ADD uut(A,B,C,S,O);
initial begin
  $dumpfile("F_ADD_tb.vcd");
  $dumpvars(2,F_ADD_tb);

  A=0;
  B=0;
  C=0;
  #20
  A=0;
  B=0;
  C=1;
  #20
  A=0;
  B=1;
  C=0;
  #20
  A=0;
  B=1;
  C=1;
  #20
  A=1;
  B=0;
  C=0;
  #20
  A=1;
  B=0;
  C=1;
  #20
  A=1;
  B=1;
  C=0;
  #20
  A=1;
  B=1;
  C=1;
  #20
$display("test Done");
end

endmodule