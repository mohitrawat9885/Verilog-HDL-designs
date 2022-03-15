`timescale 1ns / 1ps

module Mux_4x1_TB();
reg [3:0] I;
reg [1:0] S;
wire Y;

Mux_4x1 MX(I, S, Y);

initial
	begin
		I[0]=1; I[1]=0; I[2]=0; I[3]=1; #5;
		S[1]=0; S[0]=0;  #5;
		S[1]=0; S[0]=1;  #5;
		S[1]=1; S[0]=0;  #5;
		S[1]=1; S[0]=1;  #5;
		
		$finish;
		end
endmodule
