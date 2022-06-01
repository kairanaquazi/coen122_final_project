`timescale 1ns / 1ps
`include "exCode.v"
`include "EX_WB_buffer.v"
`include "mux4.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 08:49:58 PM
// Design Name: 
// Module Name: stage3
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
//clock, regWrite, WAI, memRead, PC, readData, ALUResult, rd, out_regWrite, out_WAI, out_memRead, out_PC, out_readData, out_ALUResult, out_rd
//clock, memWrite, memRead, ALUSRC, ALUOP, rd1, rd2, imm, readData, result, zero, neg
//A, B, C, D, sel, out
//inputs:
//to exCode: clock, memWrite, memRead, ALUSRC, ALUOP, rd1, rd2, imm
//to Buffer: regWrite, WAI, memRead, PC, rd
//to Mux: N/A

//outputs:
//from exCode: zero, neg
//from Buffer: out_regWrite, out_rd
//from Mux: out
module stage3(clock, memWrite, memRead, ALUSRC, ALUOP, rd1, rd2, imm, regWrite, WAI, PC, rd, zero, neg, out_regWrite, out_rd, muxOut);
    input clock;
    input memWrite, memRead, ALUSRC;
    input [2:0] ALUOP;
    input [31:0] rd1, rd2, imm;
    input regWrite;
    input WAI;
    input [31:0] PC;
    input [5:0] rd;
   
    output zero, neg;
    output out_regWrite;
    output [5:0] out_rd;
    output [31:0] muxOut;
    
    wire readData1;
    wire ALUResult1;
   
    exCode exCodeInst(clock, memWrite, memRead, ALUSRC, ALUOP, rd1, rd2, imm, readData1, ALUResult1, zero, neg);
    
    wire WAI2, memRead2;
    wire [31:0] PC2, readData2, ALUResult2;
    
    EX_WB_buffer EX_WB_bufferInst(clock, regWrite, WAI, memRead, PC, readData1, ALUResult1, rd, out_regWrite, WAI2, memRead2, PC2, readData2, ALUResult2, out_rd);
    
    wire [1:0] sel;
    or(sel[1], memRead2, 0);
    or(sel[0], WAI2, 0);
    
    mux4 mux4Inst(ALUResult2, PC2, readData2, 0, sel, muxOut);
   

endmodule
