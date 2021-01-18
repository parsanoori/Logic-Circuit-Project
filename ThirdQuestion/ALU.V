module My_ALU(S,A,B,sel);
	output signed [7:0] S;
	input signed [7:0] A;
	input signed [7:0] B;
	input [1:0] sel;

	wire signed [7:0] f0;
	wire signed [7:0] f1;
	wire signed [7:0] f2;
	wire signed [7:0] f3;

	FunctionZero functionZero(f0,A,B);
	FunctionOne FunctionOne(f1,A,B);
	FunctionTwo functionTwo(f2,B);
	FunctionThree functionThree(f3,A,B);

	assign S = (!sel[1]) ? ((!sel[0]) ? f0 : f1) 
	: ((!sel[0]) ? f2 : f3);
endmodule

