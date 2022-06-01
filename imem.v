`timescale 1ns / 1ps


module imem(input clock, input [7:0] addr, input [31:0] inp [255:0], output reg [31:0] inst);
wire [31:0] data [255:0];
wire w;
assign w=0;

always @(posedge clock) begin
if(w==0) begin data=inp; w=1; end
inst=data[addr];
end
endmodule
