`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 01:59:12 PM
// Design Name: 
// Module Name: buffs
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


module buffer_EX_WB(clock, regWrite, WAI, memRead, PC, readData, ALUResult, rd, out_regWrite, out_WAI, out_memRead, out_PC, out_readData, out_ALUResult, out_rd);
    input clock;
    input regWrite;
    input WAI;
    input memRead;
    input [31:0] PC;
    input [31:0] readData;
    input [31:0] ALUResult;
    input [5:0] rd;
    output reg out_regWrite;
    output reg out_WAI;
    output reg out_memRead;
    output reg [31:0] out_PC;
    output reg [31:0] out_readData;
    output reg [31:0] out_ALUResult;
    output reg [5:0] out_rd;
    always @(posedge clock)
    begin
        out_regWrite = regWrite;
        out_WAI = WAI;
        out_memRead = memRead;
        out_PC = PC;
        out_readData = readData;
        out_ALUResult = ALUResult;
        out_rd = rd;
    end
endmodule
