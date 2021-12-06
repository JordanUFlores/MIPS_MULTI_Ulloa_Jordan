module One_register
(
	input clk,
	input rst,
	input enable,
	input [31:0] data,
	
	output reg [31:0] one_register_o
);
	
always @ (negedge rst or posedge clk)
begin
	// Reset whenever the reset signal goes low, regardless of the clock
	// or the clock enable
	if (!rst)
	begin
		one_register_o <= 32'h00400000;
	end
	// If not resetting, and the clock signal is enabled on this register,
	// update the register output on the clock's rising edge
	else
	begin
		if (enable)
		begin
			one_register_o <= data;
		end
	end
end
endmodule 