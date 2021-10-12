module F_ADD(A,B,C,S,O);
input A,B,C;
output S,O;

assign S=A^B^C;
assign O=(A&B)|C&(A^B);

endmodule 