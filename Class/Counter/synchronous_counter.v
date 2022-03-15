`timescale 1ns / 1ps 
 module dff(clk, clr, d, q); 
 
	input clk; 
	input clr; 
	input d; 
	output q; 
	 
	wire clk; 
	wire clr; 
	wire d; 
	reg q; 
 
	always @(posedge clk or posedge clr) 
	begin 
		if(clr) 
		begin 
			q <= 0; 
		end 
		else 
		begin 
			q <= d; 
		end 
	end 
 
endmodule 

module synchronous_counter(clk, clr, count); 

	input clk; 
	input clr; 
	 
	output count; 
	 
	wire [3:0] count; 
 
	wire [3:0] q; 
	
	wire xo1; 
	wire xo2; 
	wire xo3; 
	wire xo4; 

	wire ao2; 
	wire ao3;

	dff dff1(.clk(clk), .clr(clr), .d(xo1), .q(q[0])); 
	dff dff2(.clk(clk), .clr(clr), .d(xo2), .q(q[1])); 
	dff dff3(.clk(clk), .clr(clr), .d(xo3), .q(q[2])); 
	dff dff4(.clk(clk), .clr(clr), .d(xo4), .q(q[3])); 

	xor x1(xo1, q[0], 1'b1); 
	xor x2(xo2, q[0], q[1]); 
	and a2(ao2, q[0], q[1]); 
	xor x3(xo3, ao2, q[2]); 
	and a3(ao3, q[0], q[1], q[2]); 
	xor x4(xo4, ao3, q[3]); 

	assign count[3:0] = q[3:0];
 
endmodule 