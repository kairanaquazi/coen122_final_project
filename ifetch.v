`timescale 1ns / 1ps
`include "pc.v"
`include "imem.v"

31-28 opcode
27-22 rd
21-16 r1
15-10 r2
9-0 unused

module unpack(input [31:0] i, output [5:0] r1, output [5:0] r2, output [5:0] rd);
r1=i[21:16];
r2=i[15:10];
rd=i[27:22];
endmodule

module hazarddet(input [31:0] i, input [31:0] ip, input [31:0] idp, output reg stall);
reg [5:0] r11, r12, r1d, r21, r22, r2d, r31, r32, r3d;
unpack u1(i, r11, r12, r1d);
unpack u2(ip, r21, r22, r2d);
unpack u3(idp, r31, r32, r3d);
always@(i, ip, idp) begin
// we need to stall if load dependency (1 stall, so only look at IP)
// RAW (R-type, two stalls)
// Or branch (two stalls)

// LOAD
stall=0
if(ip[31:28]==4'b1110) begin
stall=1;
end
// RAW with I and IP
if(r11==r2d | r12==r2d) begin stall=1 end

// RAW with IP and IDP
if(r21==r3d | r22==r3d) begin stall=1 end

// Branch hazard
// I
if(i[31:28]==4'b1000 | i[31:28]==4'b1001 | i[31:28]==4'b1011) begin
stall=1;
end
// IP
if(ip[31:28]==4'b1000 | ip[31:28]==4'b1001 | ip[31:28]==4'b1011) begin
stall=1;
end

end
endmodule


module ifetch(input clk, input [31:0] rd1, input brz, input brn, input j, output [31:0] pco, output [31:0] inst) ;
reg [31:0] pci;
reg [31:0] ip, idp;
reg stall;
reg inst2[31:0];

reg [31:0] inst2i, ipi, idpi;

//reg [31:0] tempInst;
pc upc(pci,pco);
imem uimem(clk, pci, inst2, ip, idp);
hazarddet uhaz(inst2i, ipi, idpi, stall);

initial begin pci=0; end

always @(posedge clk) begin
if(stall==0) begin
pci=pci+1;
if(brz | brn | j) begin
pci=rd1;
end
inst=inst2;

inst2i=inst2;
ipi=ip;
idpi=idp;

end
else begin
inst=0;
idpi=ip;
ipi=inst2;
inst2i=0;
end
end
endmodule