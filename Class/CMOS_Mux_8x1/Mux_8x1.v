`timescale 1ns / 1ps


module Mux_2x1(Y, I0, I1, S);
output Y;
input I0, I1;
input S;
wire w;
not (w, S);
cmos c1(Y, I0, w, S);
cmos c2(Y, I1, S, w);
endmodule



module Mux_8x1(Y, I, S);
input I;
wire [7:0] I;
input [2:0] S;

output Y;

wire w1, w2, w3, w4, w5, w6;

Mux_2x1 Mux2_1(w1, I[0], I[1], S[0]),
		  Mux2_2(w2, I[2], I[3], S[0]),
	     Mux2_3(w3, I[4], I[5], S[0]),
		  Mux2_4(w4, I[6], I[7], S[0),

		  Mux2_5(w5, w1, w2, S[1]),
		  Mux2_6(w6, w3, w4, S[1]),

		  Mux2_7(Y, w5, w6, S[2]);


endmodule
