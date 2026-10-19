// Full Adder/Subtractor
module fas (
    input logic a,          
    input logic b,           
    input logic cin,         
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          
    output logic cout        
);
	logic g1,g2,g3,g4,g5;
	// Calcualting cout
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand1(.Z(g1),.A(cin),.B(b));
	OR2 #(.Tpdlh(9),.Tpdhl(9)) or1 (.Z(g2),.A(cin),.B(b));
	XNOR2 #(.Tpdlh(8),.Tpdhl(8)) xnor1 (.Z(g3),.A(a),.B(a_ns));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand2(.Z(g4),.A(g2),.B(g3));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand3(.Z(cout),.A(g1),.B(g4));
	
	// Calcualting s
	XNOR2 #(.Tpdlh(8),.Tpdhl(8)) xnor2 (.Z(g5),.A(cin),.B(b));
	XNOR2 #(.Tpdlh(8),.Tpdhl(8)) xnor3 (.Z(s),.A(g5),.B(a));

endmodule
