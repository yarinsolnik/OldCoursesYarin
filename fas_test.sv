// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
	logic a;           // Input bit a
    logic b;           // Input bit b
    logic cin;         // Carry in
    logic a_ns;        // A_nS (add/not subtract) control
    logic s;          // Output S
    logic cout;
	// Module instantaion
	fas uut(
		.a(a),
		.b(b),
		.cin(cin),
		.a_ns(a_ns),
		.s(s),
		.cout(cout)
		);
	initial begin
		a=0;
		b=0;
		cin=0;
		a_ns=0;
		
		#100;
		b=1;
		
		#100;
		b=0;
		
		#100;
	end 
		
		
		

// End of your code

endmodule
