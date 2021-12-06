module ALU (Z, y, a, b, select);		 // ARITHMETIC UNIT
output 	[31: 0] 	y;
output   		   Z;
input		[31: 0]	a, b;
//input					c_in;
input		[3: 0]	select;
reg		[31: 0]	y;
reg               Z;

always @ (*)
	begin
	y= 4'b0;
		case (select)
			4'b0000:	y = a & b;
			4'b0001:	y = a | b;
			4'b0010:	y = a + b;
			4'b0110:	y = a - b;
			4'b0111:	y = (a < b) ? 1 : 0;
			4'b1100:	y = ~(a | b);
			/*4'b000110:	y = a - 1'b1;
			4'b000111:	y = b;
			4'b001000:	y = a & b;
			4'b001010:	y = a | b;
			4'b001100:  y = a ^ b;
			4'b001110:	y = ~a;
			4'b010000:	y = a << 1;
			4'b100000:	y = a >> 1;			// 16
			4'b110000:	y = 0;            // 24*/
			default:		y = 4'b0;
		endcase
	end
always @ (y)
	begin
		case (y)
			32'b00000000_00000000_00000000 : Z = 1'b0;
			default:		Z = 4'b0;
		endcase
	end
endmodule 