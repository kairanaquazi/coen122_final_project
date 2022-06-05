`timescale 1ns / 1ps
`include "pc.v"
`include "imem.v"

module ifetch(input clk, input [31:0] rd1, input brz, input brn, input j, output [31:0] pco, output [31:0] inst) ;
reg [31:0] pci;
//reg [31:0] tempInst;
pc upc(pci,pco);
imem uimem(clk, pci, inst);

initial begin pci=0; end

always @(posedge clk) begin
pci=pci+1;
if(brz | brn | j) begin
pci=rd1;
end
end
endmodule