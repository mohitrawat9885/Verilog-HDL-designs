`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:10:55 10/31/2021
// Design Name:   AND_GATE
// Module Name:   F:/ECE/HDL_Design/Projects/AND_GATE/TB.v
// Project Name:  AND_GATE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND_GATE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_v;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	AND_GATE uut (
		.A(A), 
		.B(B), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		B = 1;
		// Add stimulus here
		#100;
		A = 1;
		B = 0;
		#100;
		A = 1;
		B = 1;

	end
      
endmodule

