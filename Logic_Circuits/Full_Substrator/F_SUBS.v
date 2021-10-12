module F_SUBS(A,B,C,D,E);

input A,B,C;
output D,E;
 assign D=A^B^C;
 assign E=((~(A))&C|(~(A))&B|B&C);

endmodule