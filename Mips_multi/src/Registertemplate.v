module Registertemplate(reset, clock, register_variable, clock_enable, data);
input reset;
input clock;
input clock_enable;
input data;

output reg register_variable;

always @ (negedge reset or posedge clock)
begin
	// Reset whenever the reset signal goes low, regardless of the clock
	// or the clock enable
	if (!reset)
	begin
		register_variable <= 0;
	end
	// If not resetting, and the clock signal is enabled on this register,
	// update the register output on the clock's rising edge
	else
	begin
		if (clock_enable)
		begin
			register_variable <= data;
		end
	end
end
endmodule 