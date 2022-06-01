`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 06:39:04 PM
// Design Name: 
// Module Name: exCode
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

module dataMem(clock, read, write, address, datain, dataout);
input clock, read, write;
input [31:0] address;
input [31:0] datain;
output reg [31:0] dataout;
reg [31:0] memory [6535:0];

initial begin 
memory[0] = 0;
memory[1] = 4;
memory[2] = 30;
memory[3] = 19;
memory[4] = 6;
memory[5] = 10;
end


always @(posedge clock)
begin
// only write datain if the write signal is high
if (write > 0) begin
    memory[address] = datain;
end

// only read from memory if the read signal is high
if (read > 0) begin
    dataout = memory[address];
end

end
endmodule


module add1(A,B,cin,S,cout);
input A,B,cin;
output S,cout;

wire axorb, cout1, cout2;
xor(axorb,A,B);
xor(S,axorb,cin);

and(cout1,axorb,cin);
and(cout2,A,B);
or(cout,cout1,cout2);
endmodule
//////////////////////////////////////////////////////////////////////////////////
module add32(A,B,S);
input [31:0] A;
input [31:0] B;
output [31:0] S;
wire cout0, cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8, cout9;
wire cout10, cout11, cout12, cout13, cout14, cout15, cout16, cout17, cout18, cout19;
wire cout20, cout21, cout22, cout23, cout24, cout25, cout26, cout27, cout28, cout29;
wire cout30, cout31;

add1 add1_0(A[0], B[0], 0, S[0], cout0);
add1 add1_1(A[1], B[1], cout0, S[1], cout1);
add1 add1_2(A[2], B[2], cout1, S[2], cout2);
add1 add1_3(A[3], B[3], cout2, S[3], cout3);
add1 add1_4(A[4], B[4], cout3, S[4], cout4);
add1 add1_5(A[5], B[5], cout4, S[5], cout5);
add1 add1_6(A[6], B[6], cout5, S[6], cout6);
add1 add1_7(A[7], B[7], cout6, S[7], cout7);
add1 add1_8(A[8], B[8], cout7, S[8], cout8);
add1 add1_9(A[9], B[9], cout8, S[9], cout9);
add1 add1_10(A[10], B[10], cout9, S[10], cout10);
add1 add1_11(A[11], B[11], cout10, S[11], cout11);
add1 add1_12(A[12], B[12], cout11, S[12], cout12);
add1 add1_13(A[13], B[13], cout12, S[13], cout13);
add1 add1_14(A[14], B[14], cout13, S[14], cout14);
add1 add1_15(A[15], B[15], cout14, S[15], cout15);
add1 add1_16(A[16], B[16], cout15, S[16], cout16);
add1 add1_17(A[17], B[17], cout16, S[17], cout17);
add1 add1_18(A[18], B[18], cout17, S[18], cout18);
add1 add1_19(A[19], B[19], cout18, S[19], cout19);
add1 add1_20(A[20], B[20], cout19, S[20], cout20);
add1 add1_21(A[21], B[21], cout20, S[21], cout21);
add1 add1_22(A[22], B[22], cout21, S[22], cout22);
add1 add1_23(A[23], B[23], cout22, S[23], cout23);
add1 add1_24(A[24], B[24], cout23, S[24], cout24);
add1 add1_25(A[25], B[25], cout24, S[25], cout25);
add1 add1_26(A[26], B[26], cout25, S[26], cout26);
add1 add1_27(A[27], B[27], cout26, S[27], cout27);
add1 add1_28(A[28], B[28], cout27, S[28], cout28);
add1 add1_29(A[29], B[29], cout28, S[29], cout29);
add1 add1_30(A[30], B[30], cout29, S[30], cout30);
add1 add1_31(A[31], B[31], cout30, S[31], cout31);

endmodule
//////////////////////////////////////////////////////////////////////////////////
module negateA(A,out);
input [31:0] A;
output [31:0] out;

wire [31:0] wire_A;

not(wire_A[0],A[0]);
not(wire_A[1],A[1]);
not(wire_A[2],A[2]);
not(wire_A[3],A[3]);
not(wire_A[4],A[4]);
not(wire_A[5],A[5]);
not(wire_A[6],A[6]);
not(wire_A[7],A[7]);
not(wire_A[8],A[8]);
not(wire_A[9],A[9]);
not(wire_A[10],A[10]);
not(wire_A[11],A[11]);
not(wire_A[12],A[12]);
not(wire_A[13],A[13]);
not(wire_A[14],A[14]);
not(wire_A[15],A[15]);
not(wire_A[16],A[16]);
not(wire_A[17],A[17]);
not(wire_A[18],A[18]);
not(wire_A[19],A[19]);
not(wire_A[20],A[20]);
not(wire_A[21],A[21]);
not(wire_A[22],A[22]);
not(wire_A[23],A[23]);
not(wire_A[24],A[24]);
not(wire_A[25],A[25]);
not(wire_A[26],A[26]);
not(wire_A[27],A[27]);
not(wire_A[28],A[28]);
not(wire_A[29],A[29]);
not(wire_A[30],A[30]);
not(wire_A[31],A[31]);

add32 add32_instance(.A(wire_A), .B(1), .S(out));

endmodule

//////////////////////////////////////////////////////////////////////////////////
module mux21(sel,B,out);
input sel;
input [31:0] B;
output [31:0] out;
wire notsel;

not(notsel,sel);

and(out[0],notsel,B[0]);
and(out[1],notsel,B[1]);
and(out[2],notsel,B[2]);
and(out[3],notsel,B[3]);
and(out[4],notsel,B[4]);
and(out[5],notsel,B[5]);
and(out[6],notsel,B[6]);
and(out[7],notsel,B[7]);
and(out[8],notsel,B[8]);
and(out[9],notsel,B[9]);
and(out[10],notsel,B[10]);
and(out[11],notsel,B[11]);
and(out[12],notsel,B[12]);
and(out[13],notsel,B[13]);
and(out[14],notsel,B[14]);
and(out[15],notsel,B[15]);
and(out[16],notsel,B[16]);
and(out[17],notsel,B[17]);
and(out[18],notsel,B[18]);
and(out[19],notsel,B[19]);
and(out[20],notsel,B[20]);
and(out[21],notsel,B[21]);
and(out[22],notsel,B[22]);
and(out[23],notsel,B[23]);
and(out[24],notsel,B[24]);
and(out[25],notsel,B[25]);
and(out[26],notsel,B[26]);
and(out[27],notsel,B[27]);
and(out[28],notsel,B[28]);
and(out[29],notsel,B[29]);
and(out[30],notsel,B[30]);
and(out[31],notsel,B[31]);

endmodule
//////////////////////////////////////////////////////////////////////////////////
module mux31(sel, A, B, out);

input [1:0] sel;
input [31:0] A;
input [31:0] B;
output [31:0] out;

wire notsel1, notsel0, result1;
wire [31:0] resulta;
wire [31:0] resultnegb;
wire [31:0] negativeB;

not(notsel1,sel[1]);
not(notsel0,sel[0]);

and(resulta[0],A[0],notsel1,notsel0);
and(resulta[1],A[1],notsel1,notsel0);
and(resulta[2],A[2],notsel1,notsel0);
and(resulta[3],A[3],notsel1,notsel0);
and(resulta[4],A[4],notsel1,notsel0);
and(resulta[5],A[5],notsel1,notsel0);
and(resulta[6],A[6],notsel1,notsel0);
and(resulta[7],A[7],notsel1,notsel0);
and(resulta[8],A[8],notsel1,notsel0);
and(resulta[9],A[9],notsel1,notsel0);
and(resulta[10],A[10],notsel1,notsel0);
and(resulta[11],A[11],notsel1,notsel0);
and(resulta[12],A[12],notsel1,notsel0);
and(resulta[13],A[13],notsel1,notsel0);
and(resulta[14],A[14],notsel1,notsel0);
and(resulta[15],A[15],notsel1,notsel0);
and(resulta[16],A[16],notsel1,notsel0);
and(resulta[17],A[17],notsel1,notsel0);
and(resulta[18],A[18],notsel1,notsel0);
and(resulta[19],A[19],notsel1,notsel0);
and(resulta[20],A[20],notsel1,notsel0);
and(resulta[21],A[21],notsel1,notsel0);
and(resulta[22],A[22],notsel1,notsel0);
and(resulta[23],A[23],notsel1,notsel0);
and(resulta[24],A[24],notsel1,notsel0);
and(resulta[25],A[25],notsel1,notsel0);
and(resulta[26],A[26],notsel1,notsel0);
and(resulta[27],A[27],notsel1,notsel0);
and(resulta[28],A[28],notsel1,notsel0);
and(resulta[29],A[29],notsel1,notsel0);
and(resulta[30],A[30],notsel1,notsel0);
and(resulta[31],A[31],notsel1,notsel0);

and(result1,1,notsel1,sel[0]);

negateA negateB_call(B,negativeB);


and(resultnegb[0],negativeB[0],sel[1],notsel0);
and(resultnegb[1],negativeB[1],sel[1],notsel0);
and(resultnegb[2],negativeB[2],sel[1],notsel0);
and(resultnegb[3],negativeB[3],sel[1],notsel0);
and(resultnegb[4],negativeB[4],sel[1],notsel0);
and(resultnegb[5],negativeB[5],sel[1],notsel0);
and(resultnegb[6],negativeB[6],sel[1],notsel0);
and(resultnegb[7],negativeB[7],sel[1],notsel0);
and(resultnegb[8],negativeB[8],sel[1],notsel0);
and(resultnegb[9],negativeB[9],sel[1],notsel0);
and(resultnegb[10],negativeB[10],sel[1],notsel0);
and(resultnegb[11],negativeB[11],sel[1],notsel0);
and(resultnegb[12],negativeB[12],sel[1],notsel0);
and(resultnegb[13],negativeB[13],sel[1],notsel0);
and(resultnegb[14],negativeB[14],sel[1],notsel0);
and(resultnegb[15],negativeB[15],sel[1],notsel0);
and(resultnegb[16],negativeB[16],sel[1],notsel0);
and(resultnegb[17],negativeB[17],sel[1],notsel0);
and(resultnegb[18],negativeB[18],sel[1],notsel0);
and(resultnegb[19],negativeB[19],sel[1],notsel0);
and(resultnegb[20],negativeB[20],sel[1],notsel0);
and(resultnegb[21],negativeB[21],sel[1],notsel0);
and(resultnegb[22],negativeB[22],sel[1],notsel0);
and(resultnegb[23],negativeB[23],sel[1],notsel0);
and(resultnegb[24],negativeB[24],sel[1],notsel0);
and(resultnegb[25],negativeB[25],sel[1],notsel0);
and(resultnegb[26],negativeB[26],sel[1],notsel0);
and(resultnegb[27],negativeB[27],sel[1],notsel0);
and(resultnegb[28],negativeB[28],sel[1],notsel0);
and(resultnegb[29],negativeB[29],sel[1],notsel0);
and(resultnegb[30],negativeB[30],sel[1],notsel0);
and(resultnegb[31],negativeB[31],sel[1],notsel0);

or(out[0],resulta[0],resultnegb[0],result1);
or(out[1],resulta[1],resultnegb[1],0);
or(out[2],resulta[2],resultnegb[2],0);
or(out[3],resulta[3],resultnegb[3],0);
or(out[4],resulta[4],resultnegb[4],0);
or(out[5],resulta[5],resultnegb[5],0);
or(out[6],resulta[6],resultnegb[6],0);
or(out[7],resulta[7],resultnegb[7],0);
or(out[8],resulta[8],resultnegb[8],0);
or(out[9],resulta[9],resultnegb[9],0);
or(out[10],resulta[10],resultnegb[10],0);
or(out[11],resulta[11],resultnegb[11],0);
or(out[12],resulta[12],resultnegb[12],0);
or(out[13],resulta[13],resultnegb[13],0);
or(out[14],resulta[14],resultnegb[14],0);
or(out[15],resulta[15],resultnegb[15],0);
or(out[16],resulta[16],resultnegb[16],0);
or(out[17],resulta[17],resultnegb[17],0);
or(out[18],resulta[18],resultnegb[18],0);
or(out[19],resulta[19],resultnegb[19],0);
or(out[20],resulta[20],resultnegb[20],0);
or(out[21],resulta[21],resultnegb[21],0);
or(out[22],resulta[22],resultnegb[22],0);
or(out[23],resulta[23],resultnegb[23],0);
or(out[24],resulta[24],resultnegb[24],0);
or(out[25],resulta[25],resultnegb[25],0);
or(out[26],resulta[26],resultnegb[26],0);
or(out[27],resulta[27],resultnegb[27],0);
or(out[28],resulta[28],resultnegb[28],0);
or(out[29],resulta[29],resultnegb[29],0);
or(out[30],resulta[30],resultnegb[30],0);
or(out[31],resulta[31],resultnegb[31],0);

endmodule
//////////////////////////////////////////////////////////////////////////////////
module alu(A,B,add,inc,neg,sub,out,Z,N);
 
input [31:0] A;
input [31:0] B;
input add,inc,neg,sub;
output [31:0] out;
output Z,N;

//Makes inc irrelevant
and(inc, add, neg, sub);

wire not_sub;
wire [1:0] select;
wire [31:0] result_21mux;
wire [31:0] result_31mux;

not(not_sub, sub);
and(select[0], inc, not_sub);
nor(select[1], add, inc);
mux31 mux31_call(select, A, B, result_31mux);

mux21 mux21_call(neg, B, result_21mux);

add32 add32_final(.A(result_31mux),.B(result_21mux),.S(out));

assign N = out[31];

nor(Z, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15], out[16], out[17], out[18], out[19], out[20], out[21], out[22], out[23], out[24], out[25], out[26], out[27], out[28], out[29], out[30], out[31]);

endmodule


module exCode(clock, memWrite, memRead, ALUSRC, ALUOP, rd1, rd2, imm, readData, result, zero, neg);
   input clock;
   input memWrite, memRead, ALUSRC;
   input [2:0] ALUOP;
   input [31:0] rd1, rd2, imm;
   output [31:0] readData;
   output [31:0] result;
   output zero, neg;
   reg [31:0] aluA;

   dataMem dataMemInst(clock, memRead, memWrite, rd1, rd2, readData);
   
   alu aluInst(aluA, rd1, ALUOP[2], 0, ALUOP[1], ALUOP[0], result, zero, neg);
   
   always @(posedge clock) begin
   if(ALUSRC) begin 
   aluA=imm; 
   end else begin 
   aluA=rd2; 
   end
   end
   
   


endmodule
