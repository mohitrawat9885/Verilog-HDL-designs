
`timescale 1ns / 1ps

module mohit_tb();
reg [15:0] I;
reg [3:0] S;
wire Out;

mohit (I[15], I[14], I[13], I[12], I[11], I[10], I[9], I[8], I[7], I[6], I[5], I[4], I[3], I[2], I[1], I[0],
						S[3], S[2], S[1], S[0], Out);
initial
	begin
		S=4'b0000; I=16'b0000000000000001; #20;
		S=4'b0001; I=16'b0000000000000010; #20;
		S=4'b0010; I=16'b0000000000000100; #20;
		S=4'b0011; I=16'b0000000000001000; #20;
		S=4'b0100; I=16'b0000000000010000; #20;
		S=4'b0101; I=16'b0000000000100000; #20;
		S=4'b0110; I=16'b0000000001000000; #20;
		S=4'b0111; I=16'b0000000010000000; #20;
		S=4'b1000; I=16'b0000000100000000; #20;
		S=4'b1001; I=16'b0000001000000000; #20;
		S=4'b1010; I=16'b0000010000000000; #20;
		S=4'b1011; I=16'b0000100000000000; #20;
		S=4'b1100; I=16'b0001000000000000; #20;
		S=4'b1101; I=16'b0010000000000000; #20;
		S=4'b1110; I=16'b0100000000000000; #20;
		S=4'b1111; I=16'b1000000000000000; #20;
	end
endmodule