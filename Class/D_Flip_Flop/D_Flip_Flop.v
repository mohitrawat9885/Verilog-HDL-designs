`timescale 1ns / 1ps

module D_Flip_Flop(clk, D, rst, Q);
input clk, D, rst;
output Q;
reg Q;

always@(clk, rst)
	begin
		if(rst)
			Q<=1'b0;
		else
			Q<=D;
		end
endmodule
