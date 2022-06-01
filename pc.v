`timescale 1ns / 1ps

module pc(input [31:0] i, output [31:0] o) begin always @(i) begin o=i; end endmodule