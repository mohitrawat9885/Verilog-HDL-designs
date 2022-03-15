`timescale 1ns / 1ps

module D_FF_TB();
reg clk, D, rst;
wire Q;

D_Flip_Flop DFF(clk, D, rst, Q);
initial
	begin
		clk=1'b0;rst=1'b0;D=1'b0;
		#5 rst =1'b1;
		#7 rst = 1'b0;
		#13 rst = 1'b1;
	#40 $finish;
	end
	always #3 clk=~clk;
	always #5 D=~D;
endmodule
