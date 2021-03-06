`timescale 1ns / 1ps
module Full_Adder(A, B, Cin, S, Cout);
input A, B, Cin;
output S, Cout;	
wire w1, w2, w3;
and (w1, A, Cin);
and (w2, B, Cin);
and (w3, A, B);
xor (S, A, B, Cin);
or (Cout, w1, w2, w3);
endmodule
module mohit(A, B, S, Cout);
input [2:0] A;
input [2:0] B;
output [2:0] S;
output Cout;
wire c0, c1;
Full_Adder A1(A[0], B[0], 1'b0, S[0], c0);
Full_Adder A2(A[1], B[1], c0,   S[1], c1);
Full_Adder A3(A[2], B[2], c1,   S[2], Cout);
endmodule
