`timescale 1ns / 1ps
`include "regfile.v"

module idecode(input clk, input svpc, input [31:0]  pci, input [31:0] inst, input rw, input [31:0] wd, input [5:0] rdi, output reg [31:0] pco, output reg [31:0] lhs, output reg [5:0] rd2o, output reg [31:0] imm, output reg [3:0] opcode, output [5:0] rdo) begin
wire [31:0] rd1o;
regfile urf(rdi,inst[21:16],inst[15:10], wd, clk, rw, rd1o, rd2o);
always @(posedge clk) begin
pci=pco;
opcode=inst[31:28];
rdo=inst[27:22];
if(svpc) begin lhs=pci; end else begin lhs=rd1o; end
if(inst[0]) begin imm=inst[21:0]; end else begin imm=inst[15:0]; end
end
endmodule

0-9 unused
10-15 rs2
16-21 rs1
22-27 rd
28-31 opcode