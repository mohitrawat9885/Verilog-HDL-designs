`timescale 1ns / 1ps

module myTB();
reg [2:0] A;
reg [2:0] B;
wire [2:0] S;
wire Cout;

mohit adH(A, B, S, Cout);

initial begin
A=3'b000; B=3'b000; #100;
A=3'b001; B=3'b001; #100;
A=3'b010; B=3'b010; #100;
A=3'b011; B=3'b011; #100;
A=3'b100; B=3'b100; #100;
A=3'b101; B=3'b101; #100;
A=3'b110; B=3'b110; #100;
A=3'b111; B=3'b111; #100;
end
endmodule