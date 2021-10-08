`timescale 1ns/1ns
`include "AND_G.v"
module AND_G_tb();
reg A,B;
wire C;
AND_G uut(A,B,C);
initial begin
  $dumpfile("AND_G_tvb.vcd");
$dumpvars(1,AND_G_tb);

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
$display("Test Complete");
end

endmodule