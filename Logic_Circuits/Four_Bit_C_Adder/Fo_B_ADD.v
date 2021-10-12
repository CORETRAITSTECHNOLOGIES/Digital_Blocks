`include "F_ADD.v"
module Fo_B_ADD(A,B,C,S,D);
input [3:0] A,B;
input C;
output [3:0] S;
output D;
wire [3:1] Y;


F_ADD uut0(A[0],B[0],C,S[0],Y[1]);
F_ADD uut1(A[1],B[1],Y[1],S[1],Y[2]);
F_ADD uut2(A[2],B[2],Y[2],S[2],Y[3]);
F_ADD uut3(A[3],B[3],Y[3],S[3],D);

endmodule