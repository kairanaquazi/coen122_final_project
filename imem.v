`timescale 1ns / 1ps


module imem(input clock, input [7:0] addr, output reg [31:0] inst);
reg [31:0] data [255:0];
always @(posedge clock) begin
inst=data[addr];
end
endmodule
