`timescale 1ns/1ns
module dec5to32_tb;
	reg [5:0] in;
	reg e;
	
	wire [31:0] out;

	dec3to8 dut(.e(e), .a(in), .d(out));

	initial begin 
		in = 0;
		e = 1;
		#10 in = 5'b00000;
		#10 in = 5'b00001;
		#10 in = 5'b00010;
		#10 in = 5'b00011;
		#10 in = 5'b00100;
		#10 in = 5'b00101;
		#10 in = 5'b00111;
		#10 in = 5'b01000;
		#10 in = 5'b01001;
		#10 in = 5'b01010;
		#10 in = 5'b01011;
		#10 in = 5'b01100;
		#10 in = 5'b01101;
		#10 in = 5'b01110;
		#10 in = 5'b01111;

		end

endmodule 