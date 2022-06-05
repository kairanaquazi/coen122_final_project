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


module mux2(B, C, sel, out);
    
    input sel;
    input [31:0] B;
    input [31:0] C;
    wire output1;
    wire [31:0] B1;
    wire [31:0] C1;
    output [31:0] out;
    
    //always@(A,B,C,D,sel)
    //begin
    
    not(output1, sel); //not gate -> output1 wire now holds !sel
    
    
    and(B1[0], B[0], output1);
    and(B1[1], B[1], output1);
    and(B1[2], B[2], output1);
    and(B1[3], B[3], output1);
    and(B1[4], B[4], output1);
    and(B1[5], B[5], output1);
    and(B1[6], B[6], output1);
    and(B1[7], B[7], output1);
    and(B1[8], B[8], output1);
    and(B1[9], B[9], output1);
    and(B1[10], B[10], output1);
    and(B1[11], B[11], output1);
    and(B1[12], B[12], output1);
    and(B1[13], B[13], output1);
    and(B1[14], B[14], output1);
    and(B1[15], B[15], output1);
    and(B1[16], B[16], output1);
    and(B1[17], B[17], output1);
    and(B1[18], B[18], output1);
    and(B1[19], B[19], output1);
    and(B1[20], B[20], output1);
    and(B1[21], B[21], output1);
    and(B1[22], B[22], output1);
    and(B1[23], B[23], output1);
    and(B1[24], B[24], output1);
    and(B1[25], B[25], output1);
    and(B1[26], B[26], output1);
    and(B1[27], B[27], output1);
    and(B1[28], B[28], output1);
    and(B1[29], B[29], output1);
    and(B1[30], B[30], output1);
    and(B1[31], B[31], output1);
    
    
    and(C1[0], C[0], sel);
    and(C1[1], C[1], sel);
    and(C1[2], C[2], sel);
    and(C1[3], C[3], sel);
    and(C1[4], C[4], sel);
    and(C1[5], C[5], sel);
    and(C1[6], C[6], sel);
    and(C1[7], C[7], sel);
    and(C1[8], C[8], sel);
    and(C1[9], C[9], sel);
    and(C1[10], C[10], sel);
    and(C1[11], C[11], sel);
    and(C1[12], C[12], sel);
    and(C1[13], C[13], sel);
    and(C1[14], C[14], sel);
    and(C1[15], C[15], sel);
    and(C1[16], C[16], sel);
    and(C1[17], C[17], sel);
    and(C1[18], C[18], sel);
    and(C1[19], C[19], sel);
    and(C1[20], C[20], sel);
    and(C1[21], C[21], sel);
    and(C1[22], C[22], sel);
    and(C1[23], C[23], sel);
    and(C1[24], C[24], sel);
    and(C1[25], C[25], sel);
    and(C1[26], C[26], sel);
    and(C1[27], C[27], sel);
    and(C1[28], C[28], sel);
    and(C1[29], C[29], sel);
    and(C1[30], C[30], sel);
    and(C1[31], C[31], sel);
    
    
    or(out[0], B1[0], C1[0]);
    or(out[1], B1[1], C1[1]);
    or(out[2], B1[2], C1[2]);
    or(out[3], B1[3], C1[3]);
    or(out[4], B1[4], C1[4]);
    or(out[5], B1[5], C1[5]);
    or(out[6], B1[6], C1[6]);
    or(out[7], B1[7], C1[7]);
    or(out[8], B1[8], C1[8]);
    or(out[9], B1[9], C1[9]);
    or(out[10], B1[10], C1[10]);
    or(out[11], B1[11], C1[11]);
    or(out[12], B1[12], C1[12]);
    or(out[13], B1[13], C1[13]);
    or(out[14], B1[14], C1[14]);
    or(out[15], B1[15], C1[15]);
    or(out[16], B1[16], C1[16]);
    or(out[17], B1[17], C1[17]);
    or(out[18], B1[18], C1[18]);
    or(out[19], B1[19], C1[19]);
    or(out[20], B1[20], C1[20]);
    or(out[21], B1[21], C1[21]);
    or(out[22], B1[22], C1[22]);
    or(out[23], B1[23], C1[23]);
    or(out[24], B1[24], C1[24]);
    or(out[25], B1[25], C1[25]);
    or(out[26], B1[26], C1[26]);
    or(out[27], B1[27], C1[27]);
    or(out[28], B1[28], C1[28]);
    or(out[29], B1[29], C1[29]);
    or(out[30], B1[30], C1[30]);
    or(out[31], B1[31], C1[31]);
    
endmodule


module immGenMux2(B, C, sel, out);
    
    input sel;
    input [31:0] B;
    input [31:0] C;
    wire output1;
    wire [31:0] B1;
    wire [31:0] C1;
    wire [31:0] B2;
    wire [31:0] C2;
    wire [31:0] B3;
    wire [31:0] C3;
    output [31:0] out;
    wire BPos, CPos;
    //always@(A,B,C,D,sel)
    //begin
    
    not(BPos, B[15]);
    not(CPos, C[21]);
    
    not(output1, sel); //not gate -> output1 wire now holds !sel
    
    
    and(B1[0], B[0], output1);
    and(B1[1], B[1], output1);
    and(B1[2], B[2], output1);
    and(B1[3], B[3], output1);
    and(B1[4], B[4], output1);
    and(B1[5], B[5], output1);
    and(B1[6], B[6], output1);
    and(B1[7], B[7], output1);
    and(B1[8], B[8], output1);
    and(B1[9], B[9], output1);
    and(B1[10], B[10], output1);
    and(B1[11], B[11], output1);
    and(B1[12], B[12], output1);
    and(B1[13], B[13], output1);
    and(B1[14], B[14], output1);
    and(B1[15], B[15], output1);
    and(B1[16], 0, output1);
    and(B1[17], 0, output1);
    and(B1[18], 0, output1);
    and(B1[19], 0, output1);
    and(B1[20], 0, output1);
    and(B1[21], 0, output1);
    and(B1[22], 0, output1);
    and(B1[23], 0, output1);
    and(B1[24], 0, output1);
    and(B1[25], 0, output1);
    and(B1[26], 0, output1);
    and(B1[27], 0, output1);
    and(B1[28], 0, output1);
    and(B1[29], 0, output1);
    and(B1[30], 0, output1);
    and(B1[31], 0, output1);
    
    and(B2[0], B[0], output1);
    and(B2[1], B[1], output1);
    and(B2[2], B[2], output1);
    and(B2[3], B[3], output1);
    and(B2[4], B[4], output1);
    and(B2[5], B[5], output1);
    and(B2[6], B[6], output1);
    and(B2[7], B[7], output1);
    and(B2[8], B[8], output1);
    and(B2[9], B[9], output1);
    and(B2[10], B[10], output1);
    and(B2[11], B[11], output1);
    and(B2[12], B[12], output1);
    and(B2[13], B[13], output1);
    and(B2[14], B[14], output1);
    and(B2[15], B[15], output1);
    and(B2[16], 1, output1);
    and(B2[17], 1, output1);
    and(B2[18], 1, output1);
    and(B2[19], 1, output1);
    and(B2[20], 1, output1);
    and(B2[21], 1, output1);
    and(B2[22], 1, output1);
    and(B2[23], 1, output1);
    and(B2[24], 1, output1);
    and(B2[25], 1, output1);
    and(B2[26], 1, output1);
    and(B2[27], 1, output1);
    and(B2[28], 1, output1);
    and(B2[29], 1, output1);
    and(B2[30], 1, output1);
    and(B2[31], 1, output1);
    
    mux2 mux2Inst(B2, B1, BPos, B3); //passes B1 if B is positive, passes B2 if B is negative
    
    and(C1[0], C[0], sel);
    and(C1[1], C[1], sel);
    and(C1[2], C[2], sel);
    and(C1[3], C[3], sel);
    and(C1[4], C[4], sel);
    and(C1[5], C[5], sel);
    and(C1[6], C[6], sel);
    and(C1[7], C[7], sel);
    and(C1[8], C[8], sel);
    and(C1[9], C[9], sel);
    and(C1[10], C[10], sel);
    and(C1[11], C[11], sel);
    and(C1[12], C[12], sel);
    and(C1[13], C[13], sel);
    and(C1[14], C[14], sel);
    and(C1[15], C[15], sel);
    and(C1[16], C[16], sel);
    and(C1[17], C[17], sel);
    and(C1[18], C[18], sel);
    and(C1[19], C[19], sel);
    and(C1[20], C[20], sel);
    and(C1[21], C[21], sel);
    and(C1[22], 0, sel);
    and(C1[23], 0, sel);
    and(C1[24], 0, sel);
    and(C1[25], 0, sel);
    and(C1[26], 0, sel);
    and(C1[27], 0, sel);
    and(C1[28], 0, sel);
    and(C1[29], 0, sel);
    and(C1[30], 0, sel);
    and(C1[31], 0, sel);
    
    and(C2[0], C[0], sel);
    and(C2[1], C[1], sel);
    and(C2[2], C[2], sel);
    and(C2[3], C[3], sel);
    and(C2[4], C[4], sel);
    and(C2[5], C[5], sel);
    and(C2[6], C[6], sel);
    and(C2[7], C[7], sel);
    and(C2[8], C[8], sel);
    and(C2[9], C[9], sel);
    and(C2[10], C[10], sel);
    and(C2[11], C[11], sel);
    and(C2[12], C[12], sel);
    and(C2[13], C[13], sel);
    and(C2[14], C[14], sel);
    and(C2[15], C[15], sel);
    and(C2[16], C[16], sel);
    and(C2[17], C[17], sel);
    and(C2[18], C[18], sel);
    and(C2[19], C[19], sel);
    and(C2[20], C[20], sel);
    and(C2[21], C[21], sel);
    and(C2[22], 1, sel);
    and(C2[23], 1, sel);
    and(C2[24], 1, sel);
    and(C2[25], 1, sel);
    and(C2[26], 1, sel);
    and(C2[27], 1, sel);
    and(C2[28], 1, sel);
    and(C2[29], 1, sel);
    and(C2[30], 1, sel);
    and(C2[31], 1, sel);

    mux2 mux2Inst2(C2, C1, CPos, C3); //passes C1 if C is positive, passes C2 if C is negative
    
or(out[0], B3[0], C3[0]);
    or(out[1], B3[1], C3[1]);
    or(out[2], B3[2], C3[2]);
    or(out[3], B3[3], C3[3]);
    or(out[4], B3[4], C3[4]);
    or(out[5], B3[5], C3[5]);
    or(out[6], B3[6], C3[6]);
    or(out[7], B3[7], C3[7]);
    or(out[8], B3[8], C3[8]);
    or(out[9], B3[9], C3[9]);
    or(out[10], B3[10], C3[10]);
    or(out[11], B3[11], C3[11]);
    or(out[12], B3[12], C3[12]);
    or(out[13], B3[13], C3[13]);
    or(out[14], B3[14], C3[14]);
    or(out[15], B3[15], C3[15]);
    or(out[16], B3[16], C3[16]);
    or(out[17], B3[17], C3[17]);
    or(out[18], B3[18], C3[18]);
    or(out[19], B3[19], C3[19]);
    or(out[20], B3[20], C3[20]);
    or(out[21], B3[21], C3[21]);
    or(out[22], B3[22], C3[22]);
    or(out[23], B3[23], C3[23]);
    or(out[24], B3[24], C3[24]);
    or(out[25], B3[25], C3[25]);
    or(out[26], B3[26], C3[26]);
    or(out[27], B3[27], C3[27]);
    or(out[28], B3[28], C3[28]);
    or(out[29], B3[29], C3[29]);
    or(out[30], B3[30], C3[30]);
    or(out[31], B3[31], C3[31]);
    
endmodule