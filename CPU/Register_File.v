module Register_File(readAddr1,readAddr2,writeAddr,writedata,WriteEnable,data1,data2);
input wire [3:0] readAddr1,readAddr2,writeAddr;
input wire [15:0] writedata;
input wire WriteEnable;
output reg [15:0]  data1,data2;

reg [15:0] registers [15:0];

always@(posedge WriteEnable) begin
 if(WriteEnable) begin
 registers[writeAddr] <= writedata;
 end
 end
always  @* begin
  data1 <= (WriteEnable && (readAddr1 == writeAddr))? writedata:registers[readAddr1];
  data2 <= (WriteEnable && (readAddr2 == writeAddr))? writedata:registers[readAddr2];
end
endmodule