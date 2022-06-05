`timescale 1ns / 1ps
`include "ifetch.v"
`include "IF_ID_buffer.v"

module stage1 (
    input clk, input [31:0] rd1, input brz, input brn, input j, output [31:0] out_instruction, output [31:0] out_PC);

    wire [31:0] PC;
    wire [31:0] instruction;
    ifetch fetcher(clk, rd1, brz, brn, j, PC, instruction);
    buffer_IM_ID buffer(clk, PC, instruction, out_instruction, out_PC);

endmodule