// 1-bit ALU
module alu1bit (
    input logic a,           
    input logic b,           
    input logic cin,        
    input logic [1:0] op,    
    output logic s,          
    output logic cout        
);
	logic g1,g2,g3,g4,g5,g6,g7;
	OR2 #(.Tpdlh(9),.Tpdhl(9)) or1 (.Z(g1),.A(a),.B(b));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand1(.Z(g2),.A(g1),.B(g1));
	XNOR2 #(.Tpdlh(8),.Tpdhl(8)) xnor1 (.Z(g3),.A(a),.B(b));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand2(.Z(g4),.A(g3),.B(g3));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand3(.Z(g5),.A(op[0]),.B(op[0]));
	fas  fas1(.s(g6),.cout(cout),.a(a),.b(b),.cin(cin),.a_ns(g5));
	mux4 mux1(.z(s),.d0(g2),.d1(g4),.d2(g6),.d3(g6),.sel(op));
	
endmodule
