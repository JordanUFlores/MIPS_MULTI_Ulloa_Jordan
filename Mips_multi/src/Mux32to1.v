module Mux32to1
   #(parameter WIDTH=32,
	parameter width5 = 5)
   (input [WIDTH-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,
			I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,
			I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,
    input [width5-1:0] Sel,
    output [WIDTH-1:0] Data_out);
//PARTE DECLARATORIA: Nets y variables
    wire [WIDTH-1:0] I [WIDTH-1:0];
//PARTE OPERATORIA
    assign I[0]=I0;
    assign I[1]=I1;
    assign I[2]=I2;
    assign I[3]=I3;
    assign I[4]=I4;
    assign I[5]=I5;
    assign I[6]=I6;
    assign I[7]=I7;
    assign I[8]=I8;
    assign I[9]=I9;
    assign I[10]=I10;
    assign I[11]=I11;
    assign I[12]=I12;
    assign I[13]=I13;
    assign I[14]=I14;
    assign I[15]=I15;
    assign I[16]=I16;
    assign I[17]=I17;
    assign I[18]=I18;
    assign I[19]=I19;
	 assign I[20]=I20;
    assign I[21]=I21;
    assign I[22]=I22;
    assign I[23]=I23;
    assign I[24]=I24;
    assign I[25]=I25;
    assign I[26]=I26;
    assign I[27]=I27;
    assign I[28]=I28;
    assign I[29]=I29;
    assign I[30]=I30;
    assign I[31]=I31;

    assign Data_out = I[Sel];
endmodule