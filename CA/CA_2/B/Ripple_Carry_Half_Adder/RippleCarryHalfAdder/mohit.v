`timescale 1ns / 1ps
module Half_Adder(A, B, S, C);
input A;
input B;
output S;
output C;
xor (S, A, B);
and (C, A, B);
endmodule
module Full_Adder(A, B, Cin, S, Cout);
input A, B, Cin;
output S, Cout;
wire c1, c2;
Half_Adder h1(A, B, s1, c1);
Half_Adder h2(s1, Cin, S, c2);
or o1(Cout, c1, c2);
endmodule
module mohit(
	input [2:0] A,
	input [2:0] B,
	output [2:0] S,
	output Cout
);

wire c0, c1;
Full_Adder A1(A[0], B[0], 1'b0, S[0], c0);
Full_Adder A2(A[1], B[1], c0,   S[1], c1);
Full_Adder A3(A[2], B[2], c1,   S[2], Cout);
endmodule


