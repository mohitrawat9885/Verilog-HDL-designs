`timescale 1ns / 1ps

module NAND_TB();
reg A;
wire F;

NAND_GATE NTB(A, F);
initial
	begin
		A = 0;
		#100;
		A = 1;
end
endmodule
