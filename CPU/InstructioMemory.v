

module InstructionMemory(
    input wire [7:0]address,
    input wire reset,
    input wire clk,
    output reg [7:0]Instruction
);
reg [7:0] memory[0:255];

always @(posedge clk or posedge reset) begin
if(reset)  begin
Instruction <= 8'b0;
end else begin
Instruction <= memory[address];
end
end
endmodule
