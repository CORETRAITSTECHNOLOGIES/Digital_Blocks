module Mux_gen(a,b,f,sel);
input a,b;
input sel;
output f;
assign f= (sel==0)?a:b;
endmodule
