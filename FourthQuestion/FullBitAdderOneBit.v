module FullBitAdder(output sum,output cout, input in_a,input in_b,input cin);
	assign sum = (in_a ^ in_b) ^ cin;
	assign cout = ((in_a ^ in_b) & cin) | (in_a & in_b);
endmodule
