// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
	logic g1,g2,g3;
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand1(.Z(g1),.A(sel),.B(sel));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand2(.Z(g2),.A(g1),.B(d0));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand3(.Z(g3),.A(sel),.B(d1));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand4(.Z(z),.A(g3),.B(g2));

// End of your code

endmodule
