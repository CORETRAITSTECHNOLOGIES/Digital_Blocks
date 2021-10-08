`timescale 1ns/1ns
`include "ADD.v"
module ADD_tb();
reg A,B;
wire S,C;
ADD uut(A,B,S,C);
initial begin
  $dumpfile("ADD_tb.vcd");
  $dumpvars(1,ADD_tb);

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
  $display("test Done");
end

endmodule