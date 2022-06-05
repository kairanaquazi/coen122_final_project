`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2022 02:58:48 PM
// Design Name: 
// Module Name: mux2
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


module mux1(in, out);
    
    input [31:0] in;
    output [31:0] out;
    
    or(out[0], in[0], 0);
    or(out[1], in[1], 0);
    or(out[2], in[2], 0);
    or(out[3], in[3], 0);
    or(out[4], in[4], 0);
    or(out[5], in[5], 0);
    or(out[6], in[6], 0);
    or(out[7], in[7], 0);
    or(out[8], in[8], 0);
    or(out[9], in[9], 0);
    or(out[10], in[10], 0);
    or(out[11], in[11], 0);
    or(out[12], in[12], 0);
    or(out[13], in[13], 0);
    or(out[14], in[14], 0);
    or(out[15], in[15], 0);
    or(out[16], in[16], 0);
    or(out[17], in[17], 0);
    or(out[18], in[18], 0);
    or(out[19], in[19], 0);
    or(out[20], in[20], 0);
    or(out[21], in[21], 0);
    or(out[22], in[22], 0);
    or(out[23], in[23], 0);
    or(out[24], in[24], 0);
    or(out[25], in[25], 0);
    or(out[26], in[26], 0);
    or(out[27], in[27], 0);
    or(out[28], in[28], 0);
    or(out[29], in[29], 0);
    or(out[30], in[30], 0);
    or(out[31], in[31], 0);
    
endmodule