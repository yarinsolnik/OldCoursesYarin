module mux2 (
    input logic d0,
    input logic d1,          
    input logic sel,         
    output logic z           
);
	logic g1,g2,g3;
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand1(.Z(g1),.A(sel),.B(sel));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand2(.Z(g2),.A(g1),.B(d0));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand3(.Z(g3),.A(sel),.B(d1));
	NAND2 #(.Tpdlh(10),.Tpdhl(10)) nand4(.Z(z),.A(g3),.B(g2));
endmodule
