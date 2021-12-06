` timescale 1ns/1ns
module register_tb;
	reg clk;
	reg [31:0] data;
	//reg [31:0] Q;
	wire [31:0] Q;

	registers F0(.Q(Q), .clk(clk), .data(data));

	initial begin 
		data = 32'b00000000000000000000000000000000;
		#10
		data = 32'b00000000000000000001111111111111;
		#10
		data = 32'b00000000000000000000000000000000;
		#10
		data = 32'b00000000000111111111111100000000;
		#10
		data = 32'b00000111111000000000000000000000;
		#10
		data = 32'b00000000000000000000011111110000;
		end
	initial begin 
		clk = 0;
		forever #25 clk = ~clk;
		end

endmodule  