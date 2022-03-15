`timescale 1ns / 1ps


module Counter_Clock_v;

	// Inputs
	reg Clk;

	// Outputs
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;

	// Instantiate the Unit Under Test (UUT)
	UP_Counter_4_bit uut (
		.Clk(Clk), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		
		forever #1 Clk = ~Clk;
        
		// Add stimulus here

	end
	initial begin
	rst
      
endmodule

