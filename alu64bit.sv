// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

// ------------------
	logic [64:0] out;
	assign out[0]=cin;
	genvar i;
	generate
		for(i=0;i<64;i=i+1)
		begin
		alu1bit alu1(.s(s[i]),
		.cout(out[i+1]),
		.a(a[i]),
		.b(b[i]),
		.cin(out[i]),
		.op(op)
		);
		end
	endgenerate
	assign cout =out[64];

endmodule
