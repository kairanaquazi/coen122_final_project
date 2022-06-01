`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 05:21:54 PM
// Design Name: 
// Module Name: dataMem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dataMem(clock, read, write, address, datain, dataout);
input clock, read, write;
input [31:0] address;
input [31:0] datain;
output reg [31:0] dataout;
reg [31:0] memory [6535:0];

always @(posedge clock)
begin
// only write datain if the write signal is high
if (write > 0) begin
    memory[address] = datain;
end

// only read from memory if the read signal is high
if (read > 0) begin
    dataout = memory[address];
end

end
endmodule
