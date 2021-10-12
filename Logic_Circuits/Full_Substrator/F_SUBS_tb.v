`timescale 1ns/1ns
`include "F_SUBS.v"

module F_SUBS_tb();

reg A,B,C;
wire D,E;

F_SUBS uut(A,B,C,D,E);
initial begin
  $dumpfile("F_SUBS_tb.vcd");
  $dumpvars(1,F_SUBS_tb);
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
  $display("Done testing");
end

endmodule