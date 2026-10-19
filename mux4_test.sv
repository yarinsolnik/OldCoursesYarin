//This is a 4-1 Mux test that examines only one of the inputs changes
module mux4_test;
	logic d0;
	logic d1;
	logic d2;
	logic d3;
	logic [1:0] sel;
	logic z;
// Module instantaion
	mux4 uut(
		.d0(d0),
		.d1(d1),
		.d2(d2),
		.d3(d3),
		.sel(sel),
		.z(z)
		);
	initial begin
		d0=1;
		d1=0;
		d2=0;
		d3=0;
		sel[1:0] = 2'b00;
		
		#80;
		
		sel[1:0] = 2'b10;
		
		#80;
		
		sel[1:0] = 2'b00;
		
		#80;
	
	end
		
		
// 
	

endmodule
