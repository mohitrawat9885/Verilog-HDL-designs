`timescale 1ns / 1ps
module main_tb();
reg A, B, C, D;
wire Y;
localparam period = 20;
main (A,B,C,D,Y);
initial
	begin
	A=0; B=0; C=0; D=0;   #period;
	A=0; B=0; C=0; D=1;   #period;
	A=0; B=0; C=1; D=0;   #period;
	A=0; B=0; C=1; D=1;   #period;
	A=0; B=1; C=0; D=0;   #period;
	A=0; B=1; C=0; D=1;   #period;
	A=0; B=1; C=1; D=0;   #period;
	A=0; B=1; C=1; D=1;   #period;
	A=1; B=0; C=0; D=0;   #period;
	A=1; B=0; C=0; D=1;   #period;
	A=1; B=0; C=1; D=0;   #period;
	A=1; B=0; C=1; D=1;   #period;
	A=1; B=1; C=0; D=0;   #period;
	A=1; B=1; C=0; D=1;   #period;
	A=1; B=1; C=1; D=0;   #period;
	A=1; B=1; C=1; D=1;   #period;
	end
endmodule
