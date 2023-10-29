module Generate_Decoder (in,select,out);
input in;
input [0:1]select;
output [0:3]out;
reg  [0:3]out;
assign out[select] = in;
endmodule
