module addr_dir
#(
	parameter width = 32
)( 
	input [width-1:0] addr_in,
	output reg [width-1:0] addr_ram, addr_rom,
	output reg selec
);

always@(addr_in) begin
	if (addr_in >= 32'h1000_0000) begin
		addr_ram <= addr_in;
		selec <= 1'b0;
		end
	else begin
		addr_rom <= addr_in;
		selec <= 1'b1;		
		end
	end
endmodule 