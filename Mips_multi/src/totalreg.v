module totalreg
#(parameter width32 = 32
)(
	output [width32-1:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,
			 Q11,Q12,Q13,Q14,Q15,Q16,Q17,Q18,Q19,Q20,
			 Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31,
	input clk, 
	input regwrite,
	input [width32-1:0] data,
	input [width32-1:0] cp);
	
	
registers32 R0(.Q(Q0), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[0]));
registers32 R1(.Q(Q1), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[1]));
registers32 R2(.Q(Q2), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[2]));
registers32 R3(.Q(Q3), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[3]));
registers32 R4(.Q(Q4), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[4]));
registers32 R5(.Q(Q5), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[5]));
registers32 R6(.Q(Q6), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[6]));
registers32 R7(.Q(Q7), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[7]));
registers32 R8(.Q(Q8), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[8]));
registers32 R9(.Q(Q9), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[9]));
registers32 R10(.Q(Q10), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[10]));
registers32 R11(.Q(Q11), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[11]));
registers32 R12(.Q(Q12), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[12]));
registers32 R13(.Q(Q13), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[13]));
registers32 R14(.Q(Q14), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[14]));
registers32 R15(.Q(Q15), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[15]));
registers32 R16(.Q(Q16), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[16]));
registers32 R17(.Q(Q17), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[17]));
registers32 R18(.Q(Q18), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[18]));
registers32 R19(.Q(Q19), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[19]));
registers32 R20(.Q(Q20), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[20]));
registers32 R21(.Q(Q21), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[21]));
registers32 R22(.Q(Q22), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[22]));
registers32 R23(.Q(Q23), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[23]));
registers32 R24(.Q(Q24), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[24]));
registers32 R25(.Q(Q25), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[25]));
registers32 R26(.Q(Q26), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[26]));
registers32 R27(.Q(Q27), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[27]));
registers32 R28(.Q(Q28), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[28]));
registers32 R29(.Q(Q29), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[29]));
registers32 R30(.Q(Q30), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[30]));
registers32 R31(.Q(Q31), .clk(clk), .data(data), .regwrite(regwrite), .cp(cp[31]));

endmodule 