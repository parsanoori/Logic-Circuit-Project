module My_CLA_TestBench();
	output [31:0] s;
	reg [31:0] a;
	reg [31:0] b;
	wire [31:0] out;
	My_CLA my_CLA(s,a,b);
	initial begin
		$dumpfile("CLA.vcd");
		$dumpvars(0,My_CLA_TestBench);

		a = 65751354;
		b = 52645635;
		#20;

		a = 2442874;
		b = 98771;
		#20;

		a = 123;
		b = 456;
		#20;
	end
endmodule
