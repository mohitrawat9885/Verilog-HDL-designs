`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:21:04 11/01/2021
// Design Name:   synchronous_counter
// Module Name:   F:/ECE/HDL_Design/Class/Counter/Clock.v
// Project Name:  Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: synchronous_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clock_v;

	// Inputs
	reg clk;
	reg clr;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	synchronous_counter uut (
		.clk(clk), 
		.clr(clr), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 0;
		

		forever #10 clk = ~clk;
		
        
		// Add stimulus here

	end
	initial begin
	clr = 1'b0;
	end
      
endmodule

