module Full_Adder(
      input a,b,cin,
    output wire sum,cout

);

assign sum = a^b^cin;
assign sum = (a&b) | (b&cin) | (cin | a);

endmodule