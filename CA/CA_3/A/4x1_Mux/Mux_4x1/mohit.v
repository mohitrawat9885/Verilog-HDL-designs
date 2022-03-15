`timescale 1ns / 1ps

module mohit(I0, I1, I2, I3, S0, S1, Out);
input I0, I1, I2, I3, S0, S1;
output Out;

assign Out = S1 ? (S0?I3:I2):(S0?I1:I0);

endmodule





//wire Out_0, Out_1;
//assign Out_0 = S0 ? I1:I0;
//assign Out_1 = S0 ? I3:I2;
//assign Out   = S1 ? Out_1 : Out_0;

