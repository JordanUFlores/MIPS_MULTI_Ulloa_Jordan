module registers32
#(parameter width32 = 32
)(
	output [width32-1:0] Q, 
	input clk, 
	input [width32-1:0] data,
	input regwrite,
	input cp);
	
wire w1;

assign w1 = (cp & regwrite & clk);
	
registers R0 (.Q(Q), .clk(w1), .data(data));

endmodule 