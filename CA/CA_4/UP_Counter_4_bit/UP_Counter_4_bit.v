`timescale 1ns / 1ps
module D_Flip_Flop(Q, Q_bar, D, clk, reset);
input clk, reset, D;
output reg Q;
output Q_bar;
assign Q_bar = ~Q;
always @(posedge clk)
begin
if(reset)
	Q<=1'b0;
else
	Q<=D;
end
endmodule
// 4 bit up Counter
module UP_Counter_4_bit(clk,reset, Q0, Q1, Q2, Q3);
input clk, reset;
output Q0, Q1, Q2, Q3;
wire Q0_b, Q1_b, Q2_b, Q3_b;

wire d1, d2, d3, w1, w2;

xor x1(d1, Q0, Q1);
and(w1, Q0, Q1);
xor x2(d2,Q2, w1);
and(w2, Q0, Q1, Q2);
xor x3(d3,Q3, w2);


D_Flip_Flop D1(Q0, Q0_bar, Q0_bar, clk, reset);
D_Flip_Flop D2(Q1, Q1_bar, d1, clk, reset);
D_Flip_Flop D3(Q2, Q2_bar, d2, clk, reset);
D_Flip_Flop D4(Q3, Q3_bar, d3, clk, reset);

//D_Flip_Flop D1(Q0, Q0_bar, Q0_bar, clk, reset);
//D_Flip_Flop D2(Q1, Q1_bar, (Q0^Q1), clk, reset);
//D_Flip_Flop D3(Q2, Q2_bar, (Q2^(Q1&Q0)), clk, reset);
//D_Flip_Flop D4(Q3, Q3_bar, Q3^(Q0&Q1&Q2), clk, reset);

endmodule
