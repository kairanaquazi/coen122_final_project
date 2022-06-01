`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 05:20:51 PM
// Design Name: 
// Module Name: regfile
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


module regfile(
    input [5:0] rd,
    input [5:0] rt,
    input [5:0] rs,
    input [31:0] din,
    input clk,
    input wrt,
    output reg [31:0] sout,
    output reg [31:0] tout
    );
reg [31:0] data [63:0];

initial begin
    data[2] = 0;
    data[3] = 5;
end
    
always @(posedge clk) begin
if(wrt==1) begin
data[rd]=din;
end
sout=data[rs];
tout=data[rt];
end
endmodule
