`timescale 1ns / 1ps
module mohit(I0, I1, S, Out);
input I0, I1, S;
output Out;

assign Out = (S)? I1:I0;
endmodule

