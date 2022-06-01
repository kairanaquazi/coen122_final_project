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


module buffer_ID_EX(clock, imm, rd, rd1, rd2, PC, out_imm, out_rd, out_rd1, out_rd2, out_PC, brz, brn, j, regw, wai, memw, memr, alusrc, aluop, out_brz, out_brn, out_j, out_regw, out_wai, out_memw, out_memr, out_alusrc, out_aluop);
input clock;
input [31:0] imm;
input [5:0] rd;
input [31:0] rd1;
input [31:0] rd2;
input [31:0] PC;
input brz;
input brn;
input j;
input regw;
input wai;
input memw;
input memr;
input alusrc;
input [2:0] aluop;
output reg [31:0] out_imm;
output reg [5:0] out_rd;
output reg [31:0] out_rd1;
output reg [31:0] out_rd2;
output reg [31:0] out_PC;
output reg out_brz;
output reg out_brn;
output reg out_j;
output reg out_regw;
output reg out_wai;
output reg out_memw;
output reg out_memr;
output reg out_alusrc;
output reg out_[2:0] aluop;

  always @(negedge clock)
begin
out_imm = imm;
out_rd = rd;
out_rd1 = rd1;
out_rd2 = rd2;
out_PC = PC;
out_brz = brz;
out_brn = brn;
out_j = j;
out_regw = regw;
out_wai = wai;
out_memw = memw;
out_memr = memr;
out_alusrc = alusrc;
out_aluop = aluop;
end
endmodule
