`timescale 1ns / 1ps

module DeCoder_2_4(I, Y);
input [1:0]I;
output [3:0]Y;

reg Y;

always @(I)
	begin
			  if(I == 2'b00) Y=4'b0001;
		else if(I == 2'b01) Y=4'b0010;
		else if(I == 2'b10) Y=4'b0100;
		else Y=4'b1000;
end
endmodule
