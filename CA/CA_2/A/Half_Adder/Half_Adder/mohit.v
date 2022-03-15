`timescale 1ns / 1ps

module sudheer(
	input A, B,
	output S, C
);


xor (S, A, B);
and (C, A, B);

endmodule

