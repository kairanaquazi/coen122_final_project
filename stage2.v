`timescale 1ns / 1ps
`include "idecode.v"
`include "ID_EX_buffer.v"
`include "control.v"

module stage2(input clk, input [31:0] PC, input [31:0] instruction, input regwi, input zero, input neg, input [31:0] writedata, input [5:0] rdi, output [31:0] out_imm, output [5:0] out_rd, output [31:0] out_rd1, output [31:0] out_rd2, output [31:0] out_PC, output out_brz, output out_brn, output out_j, output out_regw, output out_wai, output out_memw, output out_memr, output out_alusrc, output [2:0] out_aluop);

wire svpc, brz, brn, j, wai, memw, memr, regw, alusrc;
wire [2:0] aluop;
wire [5:0] rdo;
wire [31:0] pco, lhs, rd2o, imm;

control control_instance(instruction, zero, neg, svpc, brz, brn, j, wai, memw, memr, regw, alusrc, aluop);

idecode idecode_instance(clk, svpc, PC, instruction, regwi, writedata, rdi, pco, lhs, rd2o, imm, rdo);

buffer_ID_EX buffer_ID_EX_instance(clk, imm, rdo, lhs, rd2o, pco, out_imm, out_rd, out_rd1, out_rd2, out_PC, brz, brn, j, regw, wai, memw, memr, alusrc, aluop, out_brz, out_brn, out_j, out_regw, out_wai, out_memw, out_memr, out_alusrc, out_aluop);

endmodule