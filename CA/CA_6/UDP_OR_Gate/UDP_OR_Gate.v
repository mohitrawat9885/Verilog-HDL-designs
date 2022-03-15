`timescale 1ns / 1ps



primitive UDP_OR_Gate(F, A, B);
input A, B;
output F;

table
	0 0 : 0;
	0 1 : 1;
	1 0 : 1;
	1 1 : 1;
endtable
endprimitive

//module UDP_OR_Gate(F, A, B);
//input A, B;
//output F;

//UDP_OR (F, A, B);


//endmodule
