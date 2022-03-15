`timescale 1ns / 1ps

module DeCoder_2_4_TB();

reg [1:0] I;
reg [3:0] Y;

DeCoder_2_4 DC(I, Y);

initial
	begin
		I[1]=0; I[0]=0;  #5;
		I[1]=0; I[0]=1;  #5;
		I[1]=1; I[0]=0;  #5;
		I[1]=1; I[0]=1;  #5;
		
		$finish;
		end
endmodule
