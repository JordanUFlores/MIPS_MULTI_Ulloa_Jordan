module Mips_multi(
	input clk,
	input reset,
	
	input PC_write, // pc register enable
	input Mem_write, //enable for ram memory
	input lorD_mux, //first mux addr
	input IR_write, // second register for operation 
	/////second part register file and on.
	///// Falta el input de el mux que no aparece
	input Reg_Dst_mux,
	input Mem_reg_mux,
	input Reg_write,
	input ALU_srcA_mux,
	input [1:0] ALU_srcB_mux,
	input [3:0] ALU_control,
	input Pc_src_mux,
	input Branch,
	
	output [7:0] gpio_o,
	output [5:0] Funct, Op
);

wire [31:0] PC_o, Mem_o,Fetch_parts_o, Fetch_no_mod,
Mem_i, Mux_alu_o, ALU_out, RF_o_B, data_wd3,
data_o_A, data_o_B, RF_o_A, SrcA_ALU_in, SrcB_ALU_in,
ALU_result, Sign_ex;
wire [4:0] in_A3;
wire Z, w1, Pc_en;

and and1 (w1, Branch, Z);
or  or1 (Pc_en, w1, PC_write);

One_register PC (.clk(clk), // Program Counter register
						.rst(reset), 
						.enable(Pc_en), 
						.data(Mux_alu_o), 
						.one_register_o(PC_o));
						
mux2to1a mux_pc_mem (.I1(ALU_out), //mux para definir la entrada de la memoria
						.I0(PC_o), 
						.Sel(lorD_mux), 
						.Data_out(Mem_i));
						
memory_system Mem_0 (.write_enable_i(Mem_write), 
						.write_data(RF_o_B),
						.address_i(Mem_i), 
						.instruction_o(Mem_o));
						
One_register IRWrite (.clk(clk), // Fetch to break a part data register, 
						.rst(reset), 
						.enable(IR_write), 
						.data(Mem_o), 
						.one_register_o(Fetch_parts_o));
						
assign Funct = Fetch_parts_o[31:26];
assign Op = Fetch_parts_o[5:0];
						
One_register No_enable (.clk(clk), // Not modified Fetch
						.rst(reset), 
						.enable(1'b1), 
						.data(Mem_o), 
						.one_register_o(Fetch_no_mod));			
						
mux2to1a #(.DW(5)) mux_A3 (.I1(Fetch_parts_o[15:11]), //mux for A3
						.I0(Fetch_parts_o[20:16]), 
						.Sel(Reg_Dst), 
						.Data_out(in_A3));
						
mux2to1a mux_WD3 (.I1(Fetch_no_mod), //mux for WD3
						.I0(ALU_out), 
						.Sel(Mem_reg_mux), 
						.Data_out(data_wd3));
						
RegisterFile reg_file (.clk(clk), 
						.enable(1'b1), 
						.Reg_Write_i(Reg_write), 
						.Write_Register_i(in_A3), 
						.Read_Register_1_i(Fetch_parts_o[25:21]), 
						.Read_Register_2_i(Fetch_parts_o[20:16]), 
						.Write_Data_i(data_wd3), //mux output
						.Read_Data_1_o(data_o_A), 
						.Read_Data_2_o(data_o_B));
						
//////////////////////////////////////////////77
sign_extend sign1 (.y(Sign_ex), 
		.x(Fetch_parts_o[15:0]));
///reservado para el sign extend, signImm
/////////////////////////////////////////////////
						
One_register two_input_reg1 (.clk(clk), // Register File, register out1
						.rst(reset), 
						.enable(1'b1), 
						.data(data_o_A), 
						.one_register_o(RF_o_A));

One_register two_input_reg2 (.clk(clk), // Register File, register out2
						.rst(reset), 
						.enable(1'b1), 
						.data(data_o_B), 
						.one_register_o(RF_o_B));
						
mux2to1a PC_SrcA (.I1(RF_o_A), //
						.I0(PC_o), 
						.Sel(ALU_srcA_mux), 
						.Data_out(SrcA_ALU_in));

mux4to1 PC_SrcB (.I0(RF_o_B), //
						.I1(4),
						.I2(Sign_ex),
						.I3(/*shift 2bits*/0),
						.Sel(ALU_srcB_mux), 
						.Data_out(SrcB_ALU_in));
						
ALU alu1 		(.y(ALU_result), // ZERO out pending
						.a(SrcA_ALU_in), //pending
						.b(SrcB_ALU_in), //pending
						//.c_in(0), ///////////////7
						.select(ALU_control),
						.Z(Z));
						
assign gpio_o = ALU_result;
												
One_register ALU_out_reg (.clk(clk), // Register ALU out
						.rst(reset), 
						.enable(1'b1), 
						.data(ALU_result), 
						.one_register_o(ALU_out));
						
mux2to1a ALU_o (.I1(ALU_out), //
						.I0(ALU_result), 
						.Sel(Pc_src_mux), 
						.Data_out(Mux_alu_o));
						


endmodule 