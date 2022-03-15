`timescale 1ns / 1ps

module sudheertb();
reg A, B;
wire S, C;

sudheer(A, B, S, C);

initial
	begin
		A=0; B=0;  #20;
		A=0; B=1;  #20;
		A=1; B=0;  #20;
		A=1; B=1;  #20;
	end
endmodule

