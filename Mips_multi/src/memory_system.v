module memory_system
#(
	parameter DATA_WIDTH=32, 
	parameter ADDR_WIDTH=32
)(
	input 							 write_enable_i,
	input [DATA_WIDTH-1:0]		 write_data,
	input [DATA_WIDTH-1:0] 		 address_i,
	output [DATA_WIDTH-1:0] instruction_o
);
wire [DATA_WIDTH-1:0] rom_addr, ram_addr, rom_addr_o, ram_addr_o;
wire selec_mux;

addr_dir DIR0 (.addr_in(address_i), .addr_ram(ram_addr), .addr_rom(rom_addr), .selec(selec_mux));

single_port_rom rom0(.addr(rom_addr), .q(ram_addr_o));

single_port_ram ram0 (.data(write_data), .addr(ram_addr), .we(write_enable_i), .clk(1'b0), .q(rom_addr_o));

mux2to1a muxa0 (.I1(ram_addr_o), .I0(rom_addr_o), .Sel(selec_mux), .Data_out(instruction_o));

endmodule 