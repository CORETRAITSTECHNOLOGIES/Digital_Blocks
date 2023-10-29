`include "4Bit_Adder.v"
module Eight_Bit_Adder(
    input wire[7:0]a,b,
    output wire[7:0] sum, cout
);
wire [3:0] carryIntermediate;
Four_Bit_Adder FBA0 (.a(a[3:0]),.b(b[3:0]),.sum(sum[3:0]),.cout(carryIntermediate));
Four_Bit_Adder FBA1 (.a(a[7:4]),.b(b[7:4]),.sum(sum[7:4]),.cout(cout[7:4]));
endmodule
