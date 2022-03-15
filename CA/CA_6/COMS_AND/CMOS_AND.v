`timescale 1ns / 1ps

module CMOS_AND(A, B, C, F);
input A, B, C;
output F;


supply1 vdd;
supply0 gnd;

wire F_not, O1, O2;

pmos P1(F_not, vdd, A);
pmos P2(F_not, vdd, B);
pmos P3(F_not, vdd, C);


nmos N1(o2, gnd, C);
nmos N2(O1, O2, B);
nmos N3(F_not, O1, A);

pmos P4(F, vdd, F_not);
nmos N4(F, gnd, F_not);

endmodule
