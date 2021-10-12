module H_SUBS(A,B,D,C);
input A,B;
output D,C;
assign D=A^B;
assign C=(~(A))&B;
endmodule