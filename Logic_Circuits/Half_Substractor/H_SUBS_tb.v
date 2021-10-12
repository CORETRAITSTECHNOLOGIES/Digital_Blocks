`timescale 1ns/1ns
`include "H_SUBS.v"
module H_SUBS_tb();
reg A,B;
wire D,C;
H_SUBS uut(A,B,D,C);
initial begin
  $dumpfile("H_SUBS_tb.vcd");
  $dumpvars(1,H_SUBS_tb);

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
  $display("Done testing");
end

endmodule