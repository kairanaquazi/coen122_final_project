`timescale 1ns / 1ps

module control(input [31:0] inst, output reg svpc, output reg brz, output reg brn, output reg j, output reg wai, output reg memw, output reg memr, output reg regw, output reg alusrc, output reg [2:0] aluop) begin
wire [3:0] opcode;
opcode=inst[31:28];
svpc=opcode[0]&opcode[1]&opcode[2]&opcode[3];
brz=opcode[0]&~opcode[1]&~opcode[2]&opcode[3];
brn = opcode[0] & opcode[1] & ~opcode[2] & opcode[3]
j = ~opcode[0] & ~opcode[1] & ~opcode[2] & opcode[3]
wai = ~opcode[0] & opcode[1] & ~opcode[2] & opcode[3]
memw = opcode[0] & opcode[1] & ~opcode[2] & ~opcode[3]
memr = ~opcode[0] & opcode[1] & opcode[2] & opcode[3]
regw = opcode[2] | (~opcode[0] & opcode[1] & opcode[3])
alusrc = (opcode[0] & opcode[1] & opcode[2] & opcode[3]) | (opcode[0] & ~opcode[1] & opcode[2] & ~opcode[3]) 
aluop[0] = (~opcode[1] & opcode[2] & ~opcode[3]) | (opcode[0] & opcode[1] & opcode[2] & opcode[3])
aluop[1] = ~opcode[0] & opcode[1] & opcode[2] & ~opcode[3]
aluop[2] = opcode[0] & opcode[1] & opcode[2] & ~opcode[3]

endmodule
