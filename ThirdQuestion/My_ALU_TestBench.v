module My_ALU_TestBench();
	reg signed [7:0] A;
	reg signed [7:0] B;
	wire signed [7:0] S;
	reg [1:0] sel;

	My_ALU my_ALU(S,A,B,sel);
	initial begin
		$dumpfile("alu.vd");
		$dumpvars(0,My_ALU_TestBench);
		A = 8'sb00000001;
		B = 8'sb10000000;
		sel = 0;
		#20;

		B = 8'sb00000001;
		sel = 1;
		#20;

		B = 8'sb11111111;
		sel = 2;
		#20;

		B = 8'sb00000001;
		#20;

		sel = 3;
		#20;

		B = 8'sb00001000;
		#20;
	end
	

endmodule
