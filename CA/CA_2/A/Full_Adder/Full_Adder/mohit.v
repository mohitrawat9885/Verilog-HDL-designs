`timescale 1ns / 1ps

module mohit(
	input A, B, Cin,
	output S, Cout
);

wire w1, w2, w3;

and (w1, A, Cin);
and (w2, B, Cin);
and (w3, A, B);

xor (S, A, B, Cin);
or (Cout, w1, w2, w3);

endmodule
