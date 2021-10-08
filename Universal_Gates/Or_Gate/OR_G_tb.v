 `timescale 1ns/1ns
`include "OR_G.v"
module OR_G_tb();
reg A,B;
wire C;
OR_G uut(A,B,C);
initial begin
  $dumpfile("OR_G_tb.vcd");
  $dumpvars(1,OR_G_tb);
  
  A=0;
  B=0;
  #20;
  A=1;
  B=0;
  #20
  A=0;
  B=1;
  #20
  A=1;
  B=1;
  #20
  $display("Done testing");

end

endmodule