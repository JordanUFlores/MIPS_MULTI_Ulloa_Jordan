module mux2to1a
   #(parameter DW = 32)
   (input [DW-1:0] I1,I0,
    input Sel,
    output [DW-1:0] Data_out);
	 
//PARTE DECLARATORIA: Nets y variables
    wire [DW-1:0] I [1:0];
	 
	 
//PARTE OPERATORIA
    assign I[0]=I0;
    assign I[1]=I1;
    assign Data_out =I[Sel];
	 
endmodule 