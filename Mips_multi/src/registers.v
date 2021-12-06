module registers#(
parameter width = 32)(
input clk,
input [width-1:0] data,
output [width-1:0] Q);

genvar i;

generate 
	for ( i = 0; i <= width-1; i = i + 1) begin : flip_reg
		flipflopd F1 (.Q(Q[i]), .clk(clk), .data(data[i]));
		end
endgenerate 
endmodule 