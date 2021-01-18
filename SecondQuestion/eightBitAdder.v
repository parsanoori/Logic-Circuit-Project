module EightBitAdder(s,overflow, a, b);
	input [7:0] a;
	input [7:0] b;
	output [7:0] s;
	output overflow;

	supply0 gnd;
	
	wire wire1;
	wire wire2;
	wire wire3;
	wire wire4;
	wire wire5;
	wire wire6;
	wire wire7;
	wire wire8;
	wire wire9;
	wire wire10;
	wire wire11;
	wire wire12;
	wire wire13;
	wire wire14;
	wire wire15;
	wire wire16;
	wire wire17;
	wire wire18;
	wire wire19;
	wire wire20;
	wire wire21;
	wire wire22;
	wire wire23;
	wire wire24;
	wire wire25;
	wire wire26;
	wire wire27;
	wire wire28;
	wire wire29;
	wire wire30;
	wire wire31;
	wire wire32;
	
	xor xor1(wire1, a[0], b[0]);
	xor xor2(s[0], gnd, wire1);
	and and1(wire2, wire1, wire0);
	and and2(wire3, a[0], b[0]);
	or or1(wire4, wire2, wire3);

	xor xor3(wire5,a[1],b[1]);
	xor xor4(s[1],wire5,wire4);
	and and3(wire6,wire5,wire4);
	and and4(wire7,a[1],b[1]);
	or or2(wire8,wire6,wire7);

	xor xor5(wire9,a[2],b[2]);
	xor xor6(s[2],wire9,wire8);
	and and5(wire10,wire9,wire8);
	and and6(wire11,a[2],b[2]);
	or or3(wire12,wire10,wire11);

	xor xor7(wire13,a[3],b[3]);
	xor xor8(s[3],wire13,wire12);
	and and7(wire14,wire13,wire12);
	and and8(wire15,a[3],b[3]);
	or or4(wire16,wire14,wire15);

	xor xor9(wire17,a[4],b[4]);
	xor xor10(s[4],wire17,wire16);
	and and9(wire18,wire17,wire16);
	and and10(wire19,a[4],b[4]);
	or or5(wire20,wire18,wire19);

	xor xor11(wire21,a[5],b[5]);
	xor xor12(s[5],wire21,wire20);
	and and11(wire22,wire21,wire20);
	and and12(wire23,a[5],b[5]);
	or or6(wire24,wire22,wire23);

	xor xor13(wire25,a[6],b[6]);
	xor xor14(s[6],wire25,wire24);
	and and13(wire26,wire25,wire24);
	and and14(wire27,a[6],b[6]);
	or or7(wire28,wire26,wire27);

	xor xor15(wire29,a[7],b[7]);
	xor xor16(s[7],wire29,wire28);
	and and15(wire30,wire29,wire28);
	and and16(wire31,a[7],b[7]);
	or or8(wire32,wire30,wire31);

	wire tmp1,tmp2,tmp3;
	xnor overflow_xnor(tmp1,a[7],b[7]);
	not overflow_not(tmp2,s[7]);
	xnor overflow_xnor_two(tmp3,tmp2,a[7]);
	and overflow_final_and(overflow,tmp1,tmp3);

endmodule
