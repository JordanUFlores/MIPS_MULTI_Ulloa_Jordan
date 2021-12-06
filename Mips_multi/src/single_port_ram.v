module single_port_ram // Quartus Prime Verilog Template, Single port RAM with single read/write address
#(
	parameter DATA_WIDTH=32, 
	parameter ADDR_WIDTH=32
)(
	input [(DATA_WIDTH-1):0] data,
	input [(ADDR_WIDTH-1):0] addr,
	input we, clk,
	output [(DATA_WIDTH-1):0] q
);
	// Declare the RAM variable
	reg [DATA_WIDTH-1:0] ram [ADDR_WIDTH-1:0];
	// Variable to hold the registered read address
	reg [ADDR_WIDTH-1:0] addr_reg;

	always @ (clk)
	begin
		// Write
		if (we)
			ram[(addr-32'h10010000)/4] <= data;

		addr_reg <= addr;
		$display("valor %p", ram);
	end
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign q = ram[(addr_reg-32'h10010000)/4];//addr_reg

endmodule

