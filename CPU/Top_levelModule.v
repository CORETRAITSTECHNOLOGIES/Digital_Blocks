`include "Clock_Gen.v"
`include "InstructioMemory.v"
`include "ALU.v"
`include "Register_File.v"
`include "programCounter.v"
`include "InstructioDecoder"
`include "ControlUnit"
`include "DataMemory"
`include "DataMemory"
`include "ExecutionUnit"


module Top_LevelModule;
wire clk, reset;
wire [7:0] address;
wire [7:0] Instruction;
wire [7:0] operanda,operandb;
  wire [2:0] alu_op;
  wire [7:0] result;
  wire [7:0]carry_out; 
  wire zero;
Clock_Gen Clock0 (.clk(clk),.enable(1'b1));
InstructionMemory IM(
    .address(address),
    .reset(reset),
    .clk(clk),
    .Instruction(Instruction)
);
ALU ALU0(.operanda(operanda),.operandb(operandb),.alu_op(alu_op),.result(result),.carry_out(carry_out),.zero(zero));

endmodule