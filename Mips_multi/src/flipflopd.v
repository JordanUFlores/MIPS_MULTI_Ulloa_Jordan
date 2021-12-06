module flipflopd
(
	 input data,
    input clk,
	 output Q
    );
	 
	 wire w1, w2, q_n;
	 
	 assign w1 = ~(data & clk);// SET
	 assign w2 = ~(~data & clk);// RESET
	 
	 assign Q = ~(w1 & q_n);//salida Q
	 assign q_n = ~(w2 & Q);

endmodule 