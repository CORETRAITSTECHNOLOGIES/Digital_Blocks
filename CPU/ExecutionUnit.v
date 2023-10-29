`include "ALU.v"
module Execution_Unit(
    input wire [15:0] operanda,operandb,
    input wire [2:0]alu_op,
    output reg [15:0] result,
    output wire [15:0] carry_out,
    output reg zero
);

wire [15:0] immediateResult;
wire zero1;
ALU ALU_1(
    .operanda(operanda[7:0]),
    .operandb(operandb[7:0]),
    .alu_op(alu_op),
    .result(immediateResult[7:0]),
    .carry_out(carry_out[7:0]),
    .zero(zero1)
);
ALU ALU_2(
    .operanda(operanda[15:8]),
    .operandb(operandb[15:8]),
    .alu_op(alu_op),
    .result(immediateResult[15:8]),
    .carry_out(carry_out[15:8]),
    .zero(zero1)
);

always @* begin
        // Output the result based on ALU operation
        case (alu_op)
            3'b000: result = immediateResult[7:0]+immediateResult[15:8]; // Pass-through
            3'b001: result = immediateResult[7:0]+immediateResult[15:8];// Addition
            3'b010: result = immediateResult[7:0]+immediateResult[15:8];
            // Add more cases for other ALU operations...

            default: result = 16'b0; // Default case
        endcase

        // Set zeroFlag based on the result
     assign  zero = zero1;
    end

endmodule
