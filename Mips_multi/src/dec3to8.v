module dec3to8(
	input e,
	input [4:0] a,
	output [31:0] d
	);
	
	
	assign d[0] =  (e & ~a[4] & ~a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign d[1] =  (e & ~a[4] & ~a[3] & ~a[2] & ~a[1] &  a[0]);
	assign d[2] =  (e & ~a[4] & ~a[3] & ~a[2] &  a[1] & ~a[0]);
	assign d[3] =  (e & ~a[4] & ~a[3] & ~a[2] &  a[1] &  a[0]);
	assign d[4] =  (e & ~a[4] & ~a[3] &  a[2] & ~a[1] & ~a[0]);
	assign d[5] =  (e & ~a[4] & ~a[3] &  a[2] & ~a[1] &  a[0]);
	assign d[6] =  (e & ~a[4] & ~a[3] &  a[2] &  a[1] & ~a[0]);
	assign d[7] =  (e & ~a[4] & ~a[3] &  a[2] &  a[1] &  a[0]);
	assign d[8] =  (e & ~a[4] &  a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign d[9] =  (e & ~a[4] &  a[3] & ~a[2] & ~a[1] &  a[0]);
	assign d[10] = (e & ~a[4] &  a[3] & ~a[2] &  a[1] & ~a[0]);
	assign d[11] = (e & ~a[4] &  a[3] & ~a[2] &  a[1] &  a[0]);
	assign d[12] = (e & ~a[4] &  a[3] &  a[2] & ~a[1] & ~a[0]);
	assign d[13] = (e & ~a[4] &  a[3] &  a[2] & ~a[1] &  a[0]);
	assign d[14] = (e & ~a[4] &  a[3] &  a[2] &  a[1] & ~a[0]);
	assign d[15] = (e & ~a[4] &  a[3] &  a[2] &  a[1] &  a[0]);
	assign d[16] = (e &  a[4] & ~a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign d[17] = (e &  a[4] & ~a[3] & ~a[2] & ~a[1] &  a[0]);
	assign d[18] = (e &  a[4] & ~a[3] & ~a[2] &  a[1] & ~a[0]);
	assign d[19] = (e &  a[4] & ~a[3] & ~a[2] &  a[1] &  a[0]);
	assign d[20] = (e &  a[4] & ~a[3] &  a[2] & ~a[1] & ~a[0]);
	assign d[21] = (e &  a[4] & ~a[3] &  a[2] & ~a[1] &  a[0]);
	assign d[22] = (e &  a[4] & ~a[3] &  a[2] &  a[1] & ~a[0]);
	assign d[23] = (e &  a[4] & ~a[3] &  a[2] &  a[1] &  a[0]);
	assign d[24] = (e &  a[4] &  a[3] & ~a[2] & ~a[1] & ~a[0]);
	assign d[25] = (e &  a[4] &  a[3] & ~a[2] & ~a[1] &  a[0]);
	assign d[26] = (e &  a[4] &  a[3] & ~a[2] &  a[1] & ~a[0]);
	assign d[27] = (e &  a[4] &  a[3] & ~a[2] &  a[1] &  a[0]);
	assign d[28] = (e &  a[4] &  a[3] &  a[2] & ~a[1] & ~a[0]);
	assign d[29] = (e &  a[4] &  a[3] &  a[2] & ~a[1] &  a[0]);
	assign d[30] = (e &  a[4] &  a[3] &  a[2] &  a[1] & ~a[0]);
	assign d[31] = (e &  a[4] &  a[3] &  a[2] &  a[1] &  a[0]);

endmodule 