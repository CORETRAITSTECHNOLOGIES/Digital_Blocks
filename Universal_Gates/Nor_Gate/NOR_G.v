module NOR_G(A,B,C);

input A,B;
output C;

assign C=(~(A|B));


endmodule