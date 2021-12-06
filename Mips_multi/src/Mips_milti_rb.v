`timescale 1ns/1ns
module Mips_milti_rb;
	reg clk;
	reg reset;
	reg PC_write;
	reg Mem_write;
	reg lorD_mux;
 	reg IR_write;
	reg Reg_Dst_mux;
	reg Mem_reg_mux;
	reg Reg_write;
	reg ALU_srcA_mux;
	reg [1:0] ALU_srcB_mux;
	reg [3:0] ALU_control;
	reg Pc_src_mux;
	reg Branch;
	wire [7:0] gpio_o;
	wire [5:0] Funct;
	wire [5:0] Op;
	
Mips_multi DUV0 (.clk(clk),//
	.reset(reset),//
	.PC_write(PC_write),
	.Mem_write(Mem_write),
	.lorD_mux(lorD_mux),
	.IR_write(IR_write),
	.Reg_Dst_mux(Reg_Dst_mux),
	.Mem_reg_mux(Mem_reg_mux),
	.Reg_write(Reg_write),
	.ALU_srcA_mux(ALU_srcA_mux),
	.ALU_srcB_mux(ALU_srcB_mux),
	.ALU_control(ALU_control),
	.Pc_src_mux(Pc_src_mux),
	.Branch(Branch),
	.gpio_o(gpio_o),
	.Funct(Funct),
	.Op(Op)
	);

initial begin
	clk = 0;
	reset = 1;
	forever #10 clk = ~clk;
	end

initial begin
	#0
	PC_write = 0;
	Mem_write = 0;
	lorD_mux = 0;
	IR_write = 0;
	Reg_Dst_mux = 0;
	Mem_reg_mux = 0;
	Reg_write = 0;
	ALU_srcA_mux = 0;
	ALU_srcB_mux = 0;
	ALU_control = 0;
	Pc_src_mux = 0;
	Branch = 0;
end
initial begin
	if (Op == 4'b0000)begin
		if (Funct == 6'b100000)begin
			lorD_mux = 1;
			IR_write = 1;
			#5
			IR_write = 0;
			#5;
			Reg_Dst_mux = 1;
			Mem_reg_mux = 0;
			Reg_write = 1;
			#5
			Reg_write = 0;
			#5
			ALU_srcA_mux = 1;
			ALU_srcB_mux = 0;
			ALU_control = 0010;
			Pc_src_mux = 0;
			#5
			#5
			PC_write = 1;
			#5
			PC_write = 0;
			end
	end
end

initial begin
	if (Op == 4'b1000)begin
			lorD_mux = 0;
			IR_write = 1;
			#5
			IR_write = 0;
			#5;
			Reg_Dst_mux = 0;
			Mem_reg_mux = 0;
			Reg_write = 1;
			#5
			Reg_write = 0;
			#5
			ALU_srcA_mux = 1;
			ALU_srcB_mux = 10;
			ALU_control = 0010;
			Pc_src_mux = 0;
			#5
			#5
			PC_write = 1;
			#5
			PC_write = 0;
			end
	end
endmodule 
	