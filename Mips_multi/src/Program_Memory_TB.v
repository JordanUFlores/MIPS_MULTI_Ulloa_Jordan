module single_port_rom_tb;
	reg clk_tb = 0;
	reg [31:0] Address_i_tb;
	wire [31:0] Instruction_o_tb;
 
single_port_rom DUV (.addr(Address_i_tb), .q(Instruction_o_tb));
initial // Clock generator
  begin
    forever #2 clk_tb = ~clk_tb;
  end
/*
initial begin
	#0  Address_i_tb = 0;
	#50 Address_i_tb = 1;
	#50 Address_i_tb = 2;
	#50 Address_i_tb = 3;
	#50 Address_i_tb = 4;
	#50 Address_i_tb = 5;
	#50 Address_i_tb = 6;
	#50 Address_i_tb = 7;
end*/
initial begin
	#0  Address_i_tb = 32'h00400000;
	#50 Address_i_tb = 32'h00400004;
	#50 Address_i_tb = 32'h00400008;
	#50 Address_i_tb = 32'h0040000c;
	#50 Address_i_tb = 32'h00400010;
	#50 Address_i_tb = 32'h00400014;
	#50 Address_i_tb = 32'h00400018;
	#50 Address_i_tb = 32'h0040001c;
end
endmodule 