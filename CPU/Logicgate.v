module  Logic_Gate(
input wire a,b,
output wire and_out,or_out,xor_out,xnor_out,not_a,not_b
);
assign and_out = a&b;
assign or_out = a|b;
assign xor_out = a^b;
assign xnor_out = ~(a^b);
assign not_a = ~a;
assign not_b = ~b;

endmodule