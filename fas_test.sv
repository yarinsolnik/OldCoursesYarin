// Full Adder/Subtractor test bench template please note this only examines one input to output change
module fas_test;
	logic a;           
    logic b;           
    logic cin;         
    logic a_ns;        
    logic s;         
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
