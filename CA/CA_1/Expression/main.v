`timescale 1ns / 1ps
module main(
	input A,B,C,D,
	output Y
);
wire w1, w2, w3, w4;

not (a, A);
not (b, B);
not (c, C);
not (d, D);

and (w1,B,C);
and (w2,a,b,c);
and (w3,a,b,d);
and (w4,A,B,d);

or (Y,w1,w2,w3,w4);

endmodule
