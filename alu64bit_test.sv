// 64-bit ALU test bench template
module alu64bit_test;
logic [63:0] a;
logic [63:0] b;
logic cin;
logic [1:0] op;
logic [63:0] s;
logic cout;
	alu64bit uut(
	.a(a),
	.b(b),
	.cin(cin),
	.op(op),
	.s(s),
	.cout(cout)
	);
	initial begin
		a={64{1'b1}};
		b={64{1'b0}};
		cin = 1'b0;
		op  = 2'b10;
		
		#2000
		
		cin = 1'b1;
		
		#2000;
	end

endmodule
