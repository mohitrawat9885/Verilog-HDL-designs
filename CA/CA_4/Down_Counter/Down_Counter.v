`timescale 1ns / 1ps

module t_ff(clk,t,rst,Q);
input clk,t,rst;
output Q;
reg Q;
always@(posedge clk, negedge rst)
begin
if(rst)
Q <= 0;
else if(t)
Q <= ~Q;
else Q <= Q;
end 
endmodule 
//4bit sync down counter
module Down_Counter(clk,tA,tB,tC,tD,rst,QA,QB,QC,QD);
input clk,tA,tB,tC,tD,rst;
output QA,QB,QC,QD;
reg QA,QB,QC,QD;
wire W1,W2,W3,W4,W5;
supply1 tA;
not n_1 (W1,QA);
not n_2 (W2,QB);
not n_3 (W3,QC);
and a_1 (W4,W1,W2);
and a_2 (W5,W4,W3);
t_ff ffa(clk,tA,rst,QA); 
t_ff ffb(clk,W1,rst,QB); 
t_ff ffc(clk,W4,rst,QC);
t_ff ffd(clk,W5,rst,QD);
endmodule