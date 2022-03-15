`timescale 1ns / 1ps

module rawat();
reg A, B, Cin;
wire S, Cout;

mohit(A, B, Cin, S, Cout);

initial
	begin
		A=0; B=0; Cin=0;	#20;
		A=0; B=0; Cin=1;	#20;
		A=0; B=1; Cin=0;	#20;
		A=0; B=1; Cin=1;	#20;
		A=1; B=0; Cin=0;	#20;
		A=1; B=0; Cin=1;	#20;
		A=1; B=1; Cin=0;	#20;
		A=1; B=1; Cin=1;	#20;
	end

endmodule

