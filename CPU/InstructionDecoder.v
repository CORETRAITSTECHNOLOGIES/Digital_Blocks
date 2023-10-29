module InstructionDecoder(
    input wire [7:0] opcode,
    output reg regWrite,
    output reg [2:0] alu_op,
    output reg memwrite, memRead, memBranch, jump
);

always @* begin
    regWrite = 0;
    alu_op = 3'b000;
    memwrite = 0;
    memRead = 0;
    jump = 0;
    memBranch = 0;

    case (opcode) 
        8'b00000000 : begin
            regWrite = 1;
            alu_op = 3'b000;
        end
        // more cases for opcodes to writteen.
        default : begin
            regWrite = 0;
            alu_op = 3'b000;
            memwrite = 0;
            memRead = 0;
            jump = 0;
            memBranch = 0;
        end
    endcase
end

endmodule