 `timescale 1ns/1ns
 `include "Fo_B_ADD.v"
 module Fo_B_ADD_tb();
parameter N=5;
reg [3:0] A,B;
reg C;
wire [3:0] S;
wire D;

reg [3:0] A_array[1:N];
reg [1:N] C_array;
reg [3:0] B_array[1:N];
reg [1:N] D_array;
reg [1:N] Sum_array[1:N];
initial begin

$dumpfile("Fo_B_ADD_tb.vcd");
$dumpvars(8,Fo_B_ADD_tb);
  A_array[1]=4'b0000;
  A_array[2]=4'b0001;
  A_array[3]=4'b0010;
  A_array[4]=4'b0011;
  A_array[5]=4'b0100;

  C_array[1]=1'b0;
  C_array[2]=1'b0;
  C_array[3]=1'b0;
  C_array[4]=1'b0;
  C_array[5]=1'b1;

  B_array[1]=4'b0000;
  B_array[2]=4'b0001;
  B_array[3]=4'b0010;
  B_array[4]=4'b0011;
  B_array[5]=4'b0100;

  Sum_array[1]=4'b0000;
  Sum_array[2]=4'b0010;
  Sum_array[3]=4'b0100;
  Sum_array[4]=4'b0110;
  Sum_array[5]=4'b1001;

  D_array[1]=1'b0;
  D_array[2]=1'b0;
  D_array[3]=1'b0;
  D_array[4]=1'b0;
  D_array[5]=1'b1;



end
integer i;
always  begin
  for(i=1;i<=N;i=i+1)
   begin
    $display(i);
     A<=A_array[i];//its a flip flop 
     C<=C_array[i];//its a flip flop
     #40
     if(!(S==Sum_array[i])&(D==D_array[i]))
     begin
     $display("WRONG");
     end
      else begin 
      $display("Correct !");
      end
  end
  $display("test Finished");
end
Fo_B_ADD uut(A,B,C,S,D);
 endmodule