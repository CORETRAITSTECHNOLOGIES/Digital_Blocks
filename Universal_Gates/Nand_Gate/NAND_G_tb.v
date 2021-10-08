 `timescale 1ns/1ns
 `include "NAND_G.v"
module NAND_G_tb();
reg A,B;
wire C;
NAND_G uut(A,B,C);

initial begin
  $dumpfile("NAND_G_tb.vcd");
  $dumpvars(1,NAND_G_tb);
   
   A=0;
   B=0;
   #20
   A=0;
   B=1;
   #20;
   A=1;
   B=0;
   #20
   A=1;
   B=1;
   #20
   $display("Done Testing");
end

endmodule