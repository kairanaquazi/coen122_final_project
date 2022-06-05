`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 05:08:12 PM
// Design Name: 
// Module Name: mainTB
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




//brn sets rd1a to garbage and then sets pc to rd1a

module mainTB();

    reg clk;
    wire brzA, brnA, jA; //all come from stage 2 to stage 1
    wire [31:0] rd1A; //comes from stage 2 to stage 1 and from stage 2 to stage 3 - appears to be rd1 in stage 2 as well
    wire [31:0] instructionA, PCA; //both go from stage 1 to stage 2
    stage1 stage1Inst(clk, rd1A, brzA, brnA, jA, instructionA, PCA);
    
    wire [31:0] immB, rd2B, PCB, writedataB; //all go from stage 2 to stage 3, except writeDataB, which goes from stage 3 to stage 2
    wire [5:0] rdB, rdiB; //rdB groes from stage 2 to stage 3, rdiB goes from stage 3 to stage 2
    wire zeroB, negB, regwB, waiB, memwB, memrB, alusrcB, regwiB; //all go from stage 2 to stage 3, except regwiB, which goes from stage 3 to stage 2
    wire[2:0] aluopB;
    stage2 stage2Inst(clk, PCA, instructionA, regwiB, zeroB, negB, writedataB, rdiB, immB, rdB, rd1A, rd2B, PCB, brzA, brnA, jA, regwB, waiB, memwB, memrB, alusrcB, aluopB);
    
    
    
    stage3 stage3Inst(clk, memwB, memrB, alusrcB, aluopB, rd1A, rd2B, immB, regwB, waiB, PCB, rdB, zeroB, negB, regwiB, rdiB, writedataB);
    
    
    
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end 
    
    
    // 'initial' means just to do it once (unlike 'always')
    initial
    begin
    #20000
    $finish;
    end
endmodule
