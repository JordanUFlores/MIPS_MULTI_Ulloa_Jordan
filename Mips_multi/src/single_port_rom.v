module single_port_rom// Quartus Prime Verilog Template, Single Port ROM
#(
	parameter DATA_WIDTH=32,
	parameter ADDR_WIDTH=32
)(
	input [(ADDR_WIDTH-1):0] addr, 
	output reg [(DATA_WIDTH-1):0] q
);
	// Declare the ROM variable
	reg [DATA_WIDTH-1:0] rom [ADDR_WIDTH-1:0];
	// Initialize the ROM with $readmemb.  Put the memory contents
	// in the file single_port_rom_init.txt.  Without this file,
	// this design will not compile.
	initial
		begin
			$readmemb("C:/Proyectos Iteso/Mips_multi/src/single_port_rom_init.txt", rom);
		end
	
	always @ (addr)
		begin
			q <= rom[(addr-32'h0040_0000)/4];
			$display("Valor de q %h", q);
		end
endmodule 