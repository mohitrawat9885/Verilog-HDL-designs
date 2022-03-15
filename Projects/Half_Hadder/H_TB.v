`timescale 1ns / 1ps


module H_TB_v;
	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	Hald_Adder uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		A=0;B=0; #20;
		A=0;B=1; #20;
		A=1;B=0; #20;
		A=1;B=1; #20;
	end
endmodule

