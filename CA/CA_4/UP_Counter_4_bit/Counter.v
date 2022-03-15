`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:15:47 11/01/2021
// Design Name:   UP_Counter_4_bit
// Module Name:   F:/ECE/HDL_Design/CA/CA_4/UP_Counter_4_bit/Counter.v
// Project Name:  UP_Counter_4_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UP_Counter_4_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_v;

	// Inputs
	reg clk;

	// Outputs
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;

	// Instantiate the Unit Under Test (UUT)
	UP_Counter_4_bit uut (
		.clk(clk), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3)
	);

	initial begin
		
		clk = 0;

		forever #10 clk = ~clk;
        
		// Add stimulus here

	end
      
endmodule

