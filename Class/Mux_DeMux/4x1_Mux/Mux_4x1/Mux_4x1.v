`timescale 1ns / 1ps

module Mux_4x1(I, S, Y);
input [3:0]I;
input [1:0]S;
output Y;
reg Y;

always @(I or S)
	begin
		if(S == 2'b00)
			Y = I[0];
		if(S == 2'b01)
			Y = I[1];
		if(S == 2'b10)
			Y = I[2];
		if(S == 2'b11)
			Y = I[3];
	end
endmodule
