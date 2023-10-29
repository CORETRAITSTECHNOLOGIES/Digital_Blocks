module Data_Memory(
    input wire [15:0] address,
    input wire [15:0] writeData,
    input wire memWrite, memRead, // Corrected: Added commas between input ports
    output reg [15:0] readData
);
    // Example of initializing a data memory with values
    reg [15:0] memory [0:1023] ;

    always @* begin
        if (memRead) begin
            // Read from memory when memRead is asserted
            readData = memory[address];
        end
        else if (memWrite) begin
            // Write to memory when memWrite is asserted
            memory[address] = writeData;
        end
    end
endmodule