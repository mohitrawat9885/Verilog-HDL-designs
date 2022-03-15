`timescale 1ns / 1ps
module Clock_v;
	reg clk, reset;
	wire Q0, Q1, Q2, Q3;
	// Instantiate the Unit Under Test (UUT)
	UP_Counter_4_bit uut (
		.clk(clk), 
		.reset(reset), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3)
	);

	initial begin
		clk = 0;
		forever #1 clk = ~clk;
		end
		initial begin
		reset = 1;
		#5 reset = 0'b0;
		end
      
endmodule

