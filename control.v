`timescale 1ns / 1ps

module control(input [31:0] inst, output wire svpc, output wire brz, output wire brn, output wire j, output wire wai, output wire memw, output wire memr, output wire wirew, output wire alusrc, output wire [2:0] aluop);
wire [3:0] opcode;
assign opcode=inst[31:28];
assign svpc=opcode[0]&opcode[1]&opcode[2]&opcode[3];
assign brz=opcode[0]&~opcode[1]&~opcode[2]&opcode[3];
assign brn = opcode[0] & opcode[1] & ~opcode[2] & opcode[3];
assign j = ~opcode[0] & ~opcode[1] & ~opcode[2] & opcode[3];
assign wai = ~opcode[0] & opcode[1] & ~opcode[2] & opcode[3];
assign memw = opcode[0] & opcode[1] & ~opcode[2] & ~opcode[3];
assign memr = ~opcode[0] & opcode[1] & opcode[2] & opcode[3];
assign regw = opcode[2] | (~opcode[0] & opcode[1] & opcode[3]);
assign alusrc = (opcode[0] & opcode[1] & opcode[2] & opcode[3]) | (opcode[0] & ~opcode[1] & opcode[2] & ~opcode[3]) ;
assign aluop[0] = (~opcode[1] & opcode[2] & ~opcode[3]) | (opcode[0] & opcode[1] & opcode[2] & opcode[3]);
assign aluop[1] = ~opcode[0] & opcode[1] & opcode[2] & ~opcode[3];
assign aluop[2] = opcode[0] & opcode[1] & opcode[2] & ~opcode[3];

endmodule
