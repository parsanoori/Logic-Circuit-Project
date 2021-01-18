module EightBitAdderTestBench();
	reg [7:0] a;
	reg [7:0] b;
	wire [7:0] s;
	wire overflow;
	EightBitAdder eightBitAdder(s,overflow,a,b);
	initial begin

		$dumpfile("adder.vcd");
		$dumpvars(0,EightBitAdderTestBench);

		a = 8'b00000001;
		b = 8'b00000001;
		#20;

		a = 8'b01000000;
		b = 8'b01000000;
		#20;

		a = 8'b10000000;
		b = 8'b10000000;
		#20;

		a = 8'b11111111;
		b = 8'b11111111;
		#20;
	end
endmodule
