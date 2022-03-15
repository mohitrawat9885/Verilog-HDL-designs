`timescale 1ns / 1ps
module Mux_2x1(I1, I0, S, Out);
input I1, I0, S;
output Out;
assign Out = ((~S)&I0)|(S&I1);
endmodule

module Mux_4x1(I3, I2, I1, I0, S1, S0, Out);
input I3, I2, I1, I0, S1, S0;
output Out;

assign Out = ((~S1)&(~S0)&I0)|((~S1)&S0&I1)|((S1)&(~S0)&I2)|(S1&S0&I3);
endmodule


module mohit(I15, I14, I13, I12, I11, I10, I9, I8, I7, I6, I5, I4, I3, I2, I1, I0,S3, S2, S1, S0, Out);
input I15, I14, I13, I12, I11, I10, I9, I8, I7, I6, I5, I4, I3, I2, I1, I0, S3, S2, S1, S0;
output Out;

wire o1, o2, o3, o4, o5, o6;

Mux_4x1 M41(I3, I2, I1, I0, S1, S0, o1);
Mux_4x1 M42(I7, I6, I5, I4, S1, S0, o2);
Mux_4x1 M43(I11,I10,I9, I8, S1, S0, o3);
Mux_4x1 M44(I15,I14,I13,I12,S1, S0, o4);
Mux_2x1 M21(o2, o1, S2, o5);
Mux_2x1 M22(o4, o3, S2, o6);
Mux_2x1 M23(o6, o5, S3, Out);

endmodule
