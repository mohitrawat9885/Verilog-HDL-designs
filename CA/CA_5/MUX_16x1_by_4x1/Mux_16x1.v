`timescale 1ns / 1ps

module Mux_4x1(I, S, O);
input I;
wire [3:0] I;
input S;
wire [1:0] S;

output O;
reg O;


always @ (I or S)
begin
	if(S == 2'b00)
		O <=I[0];
	else if(S == 2'b01)
		O <= I[1];
	else if(S == 2'b10)
		O <= I[2];
	else if(S == 2'b11)
		O<= I[3];
end

endmodule


module Mux_16x1(I, S, O);
input [15:0] I;
input [3:0] S;
output O;

wire [3:0] w;

Mux_4x1 M4_1(I[3:0],   S[1:0], w[0]);
Mux_4x1 M4_2(I[7:4],   S[1:0], w[1]);
Mux_4x1 M4_3(I[11:8],  S[1:0], w[2]);
Mux_4x1 M4_4(I[15:12], S[1:0], w[3]);

Mux_4x1 M4_5(w, S[3:2], O);

endmodule
