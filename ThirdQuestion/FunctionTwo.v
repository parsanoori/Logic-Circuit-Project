module FunctionTwo(S,B);
	input signed [7:0] B;
	output signed [7:0] S;

	assign S = -B;
endmodule
