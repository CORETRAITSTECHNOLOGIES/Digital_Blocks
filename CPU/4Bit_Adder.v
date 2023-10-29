`include "Full_adder.v"
module Four_Bit_Adder(
    input wire [3:0] a,b,
    output wire [3:0] sum,cout
);
Full_Adder fa0(.a(a[0]),.b(b[0]),.cin(1'b1),.sum(sum[0]),.cout(cout[0]));
Full_Adder fa1(.a(a[1]),.b(b[1]),.cin(fa0.cout),.sum(sum[1]),.cout(cout[1]));
Full_Adder fa2(.a(a[2]),.b(b[2]),.cin(fa1.cout),.sum(sum[2]),.cout(cout[2]));
Full_Adder fa3(.a(a[3]),.b(b[3]),.cin(fa2.cout),.sum(sum[3]),.cout(cout[3]));
endmodule