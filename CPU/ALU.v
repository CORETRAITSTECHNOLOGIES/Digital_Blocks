`include "8Bit_Adder.v"
//refrence:https://github.com/Daragh-Crowley/8-bit-cpu/blob/main/individual_modules_and_testbenches/alu.sv

module ALU(
  input wire [7:0] operanda, operandb,
  input wire [2:0] alu_op,
  output reg [7:0] result,
  output wire [7:0]carry_out,
  output wire zero
);
wire [7:0] adder_result;
  Eight_Bit_Adder EBA0 (.a(operanda), .b(operandb), .sum(adder_result), .cout(carry_out));

  always @* begin
    case(alu_op)
      3'b000:  result = operanda & operandb;
      3'b001:  result = operanda | operandb;
      3'b010:  result = operanda ^ operandb;
      3'b011:  result = ~(operanda & operandb);
      3'b100:  result = operanda + operandb;
      3'b101:  result = operanda - operandb;
      3'b110:  result = operanda >> 1;
      3'b111:  result = 1 << operanda;
      default:  result = 8'b0;
    endcase
  end

  assign zero = (result == 8'b0) ? 1'b1 : 1'b0;

endmodule
/*// Use behavioural modelling to achieve correct ALU performance 
// Arithemtic logic unit
module cpu_alu (input [7:0] A, B,
                input [4:0] SEL,
                output reg [7:0] Z,
                output reg Cout);
  always @ (A, B, SEL) begin
    case (SEL)
      // S4 S3 S2 S1 S0
      5'b00000: {Cout,Z} = A+B; //add
      5'b00001: {Cout,Z} = A & B; // bitwise and
      5'b00010: Z = A; // input A
      5'b00011: Z = B; // input B
      5'b01100: {Cout,Z} = A-B; //subtract
      5'b10100: {Cout,Z} = A + 1; //increment
      5'b10000: Z = A; // input A
      5'b00100: {Cout,Z} = A+B+1; // add and increment
      5'b01000: {Cout,Z} = A-B-1; //subtract and decrement
      default: Z=8'b00000000; // default case to prevent latching
    endcase
  end
  
endmodule*/