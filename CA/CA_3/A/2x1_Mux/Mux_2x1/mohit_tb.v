`timescale 1ns / 1ps
module mohit_tb();
reg I0, I1, S;
wire Out;

mohit (I0, I1, S, Out);
initial
	begin
		S=0;I1=0;I0=0; #20;
		S=0;I1=0;I0=1; #20;
		S=1;I1=1;I0=0; #20;
		S=1;I1=1;I0=1; #20;
	end
endmodule

