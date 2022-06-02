`timescale 1ns / 1ps
`include "regfile.v"
`include "mux2.v"

module idecode(input clk, input svpc, input [31:0]  pci, input [31:0] inst, input rw, input [31:0] wd, input [5:0] rdi, output reg [31:0] pco, output [31:0] lhs, output [31:0] rd2o, output reg [31:0] imm, output reg [5:0] rdo);
wire [31:0] rd1o;
regfile urf(rdi,inst[21:16],inst[15:10], wd, clk, rw, rd1o, rd2o);
mux2 muxInst(rd1o, pci, svpc, lhs);
always @(posedge clk) begin
pco=pci;
rdo=inst[27:22];
//if(svpc) begin lhs=pci; end else begin lhs=rd1o; end
if(inst[0]) begin imm=inst[21:0]; end else begin imm=inst[15:0]; end
end
endmodule
