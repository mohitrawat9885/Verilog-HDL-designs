`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:20:37 11/15/2021
// Design Name:   inverter
// Module Name:   D:/ECE/HDL_Design/Class/CMOS/inverter/inverter/inverter_tb.v
// Project Name:  inverter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: inverter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inverter_tb_v;

	// Inputs
	reg i1;

	// Outputs
	wire o1;

	// Instantiate the Unit Under Test (UUT)
	inverter uut (
		.o1(o1), 
		.i1(i1)
	);

	initial begin
		i1 = 0;

		forever #10 i1 = ~i1;

		// Add stimulus here

	end
      
endmodule

