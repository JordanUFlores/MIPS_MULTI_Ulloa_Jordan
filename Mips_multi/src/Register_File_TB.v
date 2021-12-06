/******************************************************************
* Description
*	This is the verifaction envioroment ofr testeting the register file.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	12/06/2015
******************************************************************/
`timescale 1ns/1ns
module Register_File_TB;

reg clk_tb = 0;
reg reset_tb;
reg Reg_Write_i_tb;//valor de 1 bit para habilitar el registro
reg [4:0] Write_Register_i_tb;
reg [4:0] Read_Register_1_i_tb;
reg [4:0] Read_Register_2_i_tb;
reg [31:0] Write_Data_i_tb;

wire [31:0] Read_Data_1_i_tb;
wire [31:0] Read_Data_2_i_tb;
  
  
RegisterFile
DUV
(
	.clk(clk_tb),
	.enable(reset_tb),//.reset(reset_tb),
	.Reg_Write_i(Reg_Write_i_tb),
	.Write_Register_i(Write_Register_i_tb),
	.Read_Register_1_i(Read_Register_1_i_tb),
	.Read_Register_2_i(Read_Register_2_i_tb),
	.Write_Data_i(Write_Data_i_tb),
	.Read_Data_1_o(Read_Data_1_i_tb),
	.Read_Data_2_o(Read_Data_2_i_tb)

);
/*********************************************************/
initial // Clock generator
  begin
    forever #5 clk_tb = !clk_tb;
  end
/*********************************************************/
initial begin // reset generator
	#0 reset_tb = 1;
	#193 reset_tb = 0;
end
initial begin
	#0 Reg_Write_i_tb = 0;
	#4 Reg_Write_i_tb = 1;
	#105 Reg_Write_i_tb = 0;
	#30 Reg_Write_i_tb = 0;
	#2 Reg_Write_i_tb = 0;
	#30 Reg_Write_i_tb = 1;
	#5 Reg_Write_i_tb = 0;
	#20 Reg_Write_i_tb = 1;
	#5 Reg_Write_i_tb = 0;
end
initial begin//declares the register that is goin to be read.
	#0 Read_Register_1_i_tb = 0;
	#10 Read_Register_1_i_tb = 0;
	#10 Read_Register_1_i_tb = 1;
	#10 Read_Register_1_i_tb = 2;
	#10 Read_Register_1_i_tb = 3;
	#10 Read_Register_1_i_tb = 4;
	#10 Read_Register_1_i_tb = 5;
	#10 Read_Register_1_i_tb = 6;
	#10 Read_Register_1_i_tb = 7;
	#10 Read_Register_1_i_tb = 8;
	#10 Read_Register_1_i_tb = 9;
	#10 Read_Register_1_i_tb = 10;

end
initial begin
	#0 Read_Register_2_i_tb = 0;
	#100 Read_Register_2_i_tb = 8;
	#10 Read_Register_2_i_tb = 7;
	#10 Read_Register_2_i_tb = 6;
	#10 Read_Register_2_i_tb = 5;
	#10 Read_Register_2_i_tb = 4;
	#10 Read_Register_2_i_tb = 3;
	#10 Read_Register_2_i_tb = 2;
	#10 Read_Register_2_i_tb = 1;
	#10 Read_Register_2_i_tb = 0;
	#10 Read_Register_2_i_tb = 10;
end/////////////////////////////////////////////////////////////
initial begin//value that represents the register where data is gonna be stored
	#0 Write_Register_i_tb = 0;
	#10 Write_Register_i_tb = 1;
	#10 Write_Register_i_tb = 2;
	#10 Write_Register_i_tb = 3;
	#10 Write_Register_i_tb = 4;
	#10 Write_Register_i_tb = 5;
	#10 Write_Register_i_tb = 6;
	#10 Write_Register_i_tb = 7;
	#10 Write_Register_i_tb = 8;
	#10 Write_Register_i_tb = 9;
	#10 Write_Register_i_tb = 10;

end
/*********************************************************/
initial begin // reset generator
	#0 Write_Data_i_tb = 100;
	#10 Write_Data_i_tb = 88;
	#10 Write_Data_i_tb = 77;
	#10 Write_Data_i_tb = 20;
	#10 Write_Data_i_tb = 66;
	#10 Write_Data_i_tb = 78;
	#10 Write_Data_i_tb = 30;
	#10 Write_Data_i_tb = 15;
	#10 Write_Data_i_tb = 27;
	#10 Write_Data_i_tb = 61;
	#10 Write_Data_i_tb = 89;
	#30 Write_Data_i_tb = 27;
	#30 Write_Data_i_tb = 61;
	#30 Write_Data_i_tb = 89;
end
/*********************************************************/
endmodule