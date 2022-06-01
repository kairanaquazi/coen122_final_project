`timescale 1ns / 1ps
`include "ifetch.v"
`include "IF_ID_buffer.v"

module stage1 (
    input clk, input [5:0] rd1, input brz, input brn, input j, output reg [31:0] out_instruction, output reg [31:0] out_PC);

    reg [31:0] PC;
    reg [31:0] instruction;
    ifetch fetcher(clk, rd1, brz, brn, j, PC, instruction);
    IF_ID_buffer buffer(clk, PC, instruction, out_instruction, out_PC);

endmodule