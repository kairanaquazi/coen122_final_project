`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 10:08:27 AM
// Design Name: 
// Module Name: TBMux
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


module mux4(A, B, C, D, sel, out);
    input [1:0] sel;
    input [31:0] A;
    input [31:0] B;
    input [31:0] C;
    input [31:0] D;
	wire storage1;
	wire storage2;
    wire outputA;
    wire outputB;
    wire outputC;
    wire outputD;
    wire [31:0] A1;
    wire [31:0] B1;
    wire [31:0] C1;
    wire [31:0] D1;
    output [31:0] out;
	
	nor(outputA, sel[0], sel[1]);
	not(storage1, sel[1]);
	and(outputB, sel[0], storage1);
	not(storage2, sel[0]);
	and(outputC, storage2, sel[1]);
	and(outputD, sel[0], sel[1]);
	
	and(A1[0], A[0], outputA);
    and(A1[1], A[1], outputA);
    and(A1[2], A[2], outputA);
    and(A1[3], A[3], outputA);
    and(A1[4], A[4], outputA);
    and(A1[5], A[5], outputA);
    and(A1[6], A[6], outputA);
    and(A1[7], A[7], outputA);
    and(A1[8], A[8], outputA);
    and(A1[9], A[9], outputA);
    and(A1[10], A[10], outputA);
    and(A1[11], A[11], outputA);
    and(A1[12], A[12], outputA);
    and(A1[13], A[13], outputA);
    and(A1[14], A[14], outputA);
    and(A1[15], A[15], outputA);
    and(A1[16], A[16], outputA);
    and(A1[17], A[17], outputA);
    and(A1[18], A[18], outputA);
    and(A1[19], A[19], outputA);
    and(A1[20], A[20], outputA);
    and(A1[21], A[21], outputA);
    and(A1[22], A[22], outputA);
    and(A1[23], A[23], outputA);
    and(A1[24], A[24], outputA);
    and(A1[25], A[25], outputA);
    and(A1[26], A[26], outputA);
    and(A1[27], A[27], outputA);
    and(A1[28], A[28], outputA);
    and(A1[29], A[29], outputA);
    and(A1[30], A[30], outputA);
    and(A1[31], A[31], outputA);
	
	
	and(B1[0], B[0], outputB);
    and(B1[1], B[1], outputB);
    and(B1[2], B[2], outputB);
    and(B1[3], B[3], outputB);
    and(B1[4], B[4], outputB);
    and(B1[5], B[5], outputB);
    and(B1[6], B[6], outputB);
    and(B1[7], B[7], outputB);
    and(B1[8], B[8], outputB);
    and(B1[9], B[9], outputB);
    and(B1[10], B[10], outputB);
    and(B1[11], B[11], outputB);
    and(B1[12], B[12], outputB);
    and(B1[13], B[13], outputB);
    and(B1[14], B[14], outputB);
    and(B1[15], B[15], outputB);
    and(B1[16], B[16], outputB);
    and(B1[17], B[17], outputB);
    and(B1[18], B[18], outputB);
    and(B1[19], B[19], outputB);
    and(B1[20], B[20], outputB);
    and(B1[21], B[21], outputB);
    and(B1[22], B[22], outputB);
    and(B1[23], B[23], outputB);
    and(B1[24], B[24], outputB);
    and(B1[25], B[25], outputB);
    and(B1[26], B[26], outputB);
    and(B1[27], B[27], outputB);
    and(B1[28], B[28], outputB);
    and(B1[29], B[29], outputB);
    and(B1[30], B[30], outputB);
    and(B1[31], B[31], outputB);
	
	
	and(C1[0], C[0], outputC);
    and(C1[1], C[1], outputC);
    and(C1[2], C[2], outputC);
    and(C1[3], C[3], outputC);
    and(C1[4], C[4], outputC);
    and(C1[5], C[5], outputC);
    and(C1[6], C[6], outputC);
    and(C1[7], C[7], outputC);
    and(C1[8], C[8], outputC);
    and(C1[9], C[9], outputC);
    and(C1[10], C[10], outputC);
    and(C1[11], C[11], outputC);
    and(C1[12], C[12], outputC);
    and(C1[13], C[13], outputC);
    and(C1[14], C[14], outputC);
    and(C1[15], C[15], outputC);
    and(C1[16], C[16], outputC);
    and(C1[17], C[17], outputC);
    and(C1[18], C[18], outputC);
    and(C1[19], C[19], outputC);
    and(C1[20], C[20], outputC);
    and(C1[21], C[21], outputC);
    and(C1[22], C[22], outputC);
    and(C1[23], C[23], outputC);
    and(C1[24], C[24], outputC);
    and(C1[25], C[25], outputC);
    and(C1[26], C[26], outputC);
    and(C1[27], C[27], outputC);
    and(C1[28], C[28], outputC);
    and(C1[29], C[29], outputC);
    and(C1[30], C[30], outputC);
    and(C1[31], C[31], outputC);
	
	
	and(D1[0], D[0], outputD);
    and(D1[1], D[1], outputD);
    and(D1[2], D[2], outputD);
    and(D1[3], D[3], outputD);
    and(D1[4], D[4], outputD);
    and(D1[5], D[5], outputD);
    and(D1[6], D[6], outputD);
    and(D1[7], D[7], outputD);
    and(D1[8], D[8], outputD);
    and(D1[9], D[9], outputD);
    and(D1[10], D[10], outputD);
    and(D1[11], D[11], outputD);
    and(D1[12], D[12], outputD);
    and(D1[13], D[13], outputD);
    and(D1[14], D[14], outputD);
    and(D1[15], D[15], outputD);
    and(D1[16], D[16], outputD);
    and(D1[17], D[17], outputD);
    and(D1[18], D[18], outputD);
    and(D1[19], D[19], outputD);
    and(D1[20], D[20], outputD);
    and(D1[21], D[21], outputD);
    and(D1[22], D[22], outputD);
    and(D1[23], D[23], outputD);
    and(D1[24], D[24], outputD);
    and(D1[25], D[25], outputD);
    and(D1[26], D[26], outputD);
    and(D1[27], D[27], outputD);
    and(D1[28], D[28], outputD);
    and(D1[29], D[29], outputD);
    and(D1[30], D[30], outputD);
    and(D1[31], D[31], outputD);
	
	or(out[0], A1[0], B1[0], C1[0], D1[0]);
    or(out[1], A1[1], B1[1], C1[1], D1[1]);
    or(out[2], A1[2], B1[2], C1[2], D1[2]);
    or(out[3], A1[3], B1[3], C1[3], D1[3]);
    or(out[4], A1[4], B1[4], C1[4], D1[4]);
    or(out[5], A1[5], B1[5], C1[5], D1[5]);
    or(out[6], A1[6], B1[6], C1[6], D1[6]);
    or(out[7], A1[7], B1[7], C1[7], D1[7]);
    or(out[8], A1[8], B1[8], C1[8], D1[8]);
    or(out[9], A1[9], B1[9], C1[9], D1[9]);
    or(out[10], A1[10], B1[10], C1[10], D1[10]);
    or(out[11], A1[11], B1[11], C1[11], D1[11]);
    or(out[12], A1[12], B1[12], C1[12], D1[12]);
    or(out[13], A1[13], B1[13], C1[13], D1[13]);
    or(out[14], A1[14], B1[14], C1[14], D1[14]);
    or(out[15], A1[15], B1[15], C1[15], D1[15]);
    or(out[16], A1[16], B1[16], C1[16], D1[16]);
    or(out[17], A1[17], B1[17], C1[17], D1[17]);
    or(out[18], A1[18], B1[18], C1[18], D1[18]);
    or(out[19], A1[19], B1[19], C1[19], D1[19]);
    or(out[20], A1[20], B1[20], C1[20], D1[20]);
    or(out[21], A1[21], B1[21], C1[21], D1[21]);
    or(out[22], A1[22], B1[22], C1[22], D1[22]);
    or(out[23], A1[23], B1[23], C1[23], D1[23]);
    or(out[24], A1[24], B1[24], C1[24], D1[24]);
    or(out[25], A1[25], B1[25], C1[25], D1[25]);
    or(out[26], A1[26], B1[26], C1[26], D1[26]);
    or(out[27], A1[27], B1[27], C1[27], D1[27]);
    or(out[28], A1[28], B1[28], C1[28], D1[28]);
    or(out[29], A1[29], B1[29], C1[29], D1[29]);
    or(out[30], A1[30], B1[30], C1[30], D1[30]);
    or(out[31], A1[31], B1[31], C1[31], D1[31]);
	
endmodule
