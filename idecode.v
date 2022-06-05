`timescale 1ns / 1ps
`include "regfile.v"
`include "mux2.v"
`include "mux1.v"

module idecode(input clk, input svpc, input [31:0]  pci, input [31:0] inst, input rw, input [31:0] wd, input [5:0] rdi, output [31:0] pco, output [31:0] lhs, output [31:0] rd2o, output [31:0] imm, output [5:0] rdo);
wire [31:0] rd1o;
regfile urf(rdi,inst[21:16],inst[15:10], wd, clk, rw, rd1o, rd2o);
mux2 mux2Inst(rd1o, pci, svpc, lhs);
immGenMux2 immGenMux2Inst(inst[15:0], inst[21:0], inst[31], imm);
mux1 mux1Inst(pci, pco);
mux1 mux1Inst2(inst[27:22], rdo);
//always @(posedge clk) begin
//pco=pci;
//rdo=inst[27:22];
//if(svpc) begin lhs=pci; end else begin lhs=rd1o; end
//if(inst[0]) begin imm=inst[21:0]; end else begin imm=inst[15:0]; end
//end
endmodule