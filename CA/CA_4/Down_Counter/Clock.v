`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:50:49 11/02/2021
// Design Name:   Down_Counter
// Module Name:   F:/ECE/HDL_Design/CA/CA_4/Down_Counter/Clock.v
// Project Name:  Down_Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Down_Counter
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
	reg tA;
	reg tB;
	reg tC;
	reg tD;
	reg rst;

	// Outputs
	wire QA;
	wire QB;
	wire QC;
	wire QD;

	// Instantiate the Unit Under Test (UUT)
	Down_Counter uut (
		.clk(clk), 
		.tA(tA), 
		.tB(tB), 
		.tC(tC), 
		.tD(tD), 
		.rst(rst), 
		.QA(QA), 
		.QB(QB), 
		.QC(QC), 
		.QD(QD)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		tA = 0;
		tB = 0;
		tC = 0;
		tD = 0;
		
		// Wait 100 ns for global reset to finish
		forever #1 clk = ~clk;
		end
		initial begin
		rst = 1;
		#5 rst = 1'b0;
		end
      
endmodule

