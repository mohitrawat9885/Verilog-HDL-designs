`timescale 1ns / 1ps

module Hald_Adder(A, B, S, C);
input A, B;
output S, C;

xor(S, A, B);
and(C, A, B);

endmodule
