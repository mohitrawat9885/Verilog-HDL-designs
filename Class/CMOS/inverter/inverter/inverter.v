`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:46 11/15/2021 
// Design Name: 
// Module Name:    inverter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module inverter(o1, i1);
input i1;
output o1;

supply1 vcc;
supply0 gnd;

pmos P1(o1, vcc, X);
nmos N1(o1, gnd, X);
endmodule
