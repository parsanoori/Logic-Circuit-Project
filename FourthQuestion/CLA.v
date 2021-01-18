module My_CLA(s,a,b);
	output [31:0] s;
	input [31:0] a;
	input [31:0] b;

	wire [32:0] c;
	assign c[0] = 0;

	for(genvar i=0;i<32;i = i+1) begin
		assign c[i+1] = (a[i] & b[i]) | ((a[i] | b[i]) & c[i]);	
		FullBitAdder fullBitAdder(
			.sum(s[i]),
			.cout(),
			.in_a(a[i]),
			.in_b(b[i]),
			.cin(c[i])
		);
	end
endmodule
