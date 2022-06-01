`timescale 1ns / 1ps
`include "pc.v"
`include "imem.v"

module ifetch(input clk, input [5:0] rd1, input brz, input brn, input j, output reg [31:0] pco, output reg [31:0] inst) ;
reg [31:0] pci;
pc upc(pci,pco);
imem uimem(clk, pci, 0, inst);
initial begin pci=0; end

always @(posedge clk) begin
pci=pci+1;
if(brz | brn | j) begin
pci=rd1;
end
end
endmodule
