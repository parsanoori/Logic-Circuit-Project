module my_function(out,a,b,c,d,not_a,not_b,not_c,not_d);
	output out;
	input a,b,c,d,not_a,not_b,not_c,not_d;
	
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

	supply1 pwr;
	supply0 gnd;
	
	pmos(wire1,pwr,not_a);
	pmos(wire2,wire1,not_d);
	pmos(out,wire2,not_c);

	pmos(wire3,pwr,not_a);
	pmos(wire4,wire3,b);
	pmos(out,wire4,not_c);

	pmos(wire5,pwr,a);
	pmos(wire6,wire5,c);
	pmos(out,wire6,d);

	pmos(wire7,pwr,not_b);
	pmos(out,wire7,d);

	nmos(out,wire8,not_a);
	nmos(out,wire8,not_d);
	nmos(out,wire8,not_c);

	nmos(wire8,wire9,not_a);
	nmos(wire8,wire9,b);
	nmos(wire8,wire9,not_c);

	nmos(wire9,wire10,a);
	nmos(wire9,wire10,c);
	nmos(wire9,wire10,d);

	nmos(wire10,gnd,not_b);
	nmos(wire10,gnd,d);

endmodule
