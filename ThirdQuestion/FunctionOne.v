module FunctionOne(S,A,B);
	input signed [7:0] A;
	input signed [7:0] B;
	output signed [7:0] S;

	assign S = A + (2*B);

endmodule
