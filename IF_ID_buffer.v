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


module buffer_IM_ID(clock, PC, instruction, out_instruction, out_PC);
input clock;
input [31:0] PC;
input [31:0] instruction;
output reg [31:0] out_instruction;
output reg [31:0] out_PC;

  always @(negedge clock)
begin
out_instruction = instruction;
out_PC = PC;
end
endmodule