module AbsoluteValue(S,A);
	input signed [7:0] A;
	output signed [7:0] S;
	assign S =
		(A[7]==1) ? -A : A;
endmodule

module ThreeTimesAMinusB(S,A,B);
	input signed [7:0] A;
	input signed [7:0] B;
	output signed [7:0] S;
	assign S = (3*A)-B;
endmodule

module FunctionThree(S,A,B);
	input signed [7:0] A;
	input signed [7:0] B;
	output signed [7:0] S;
	wire signed [7:0] tmp;

	ThreeTimesAMinusB threeTimesAMinusB(tmp,A,B);
	AbsoluteValue absoluteValue(S,tmp);
endmodule
