module single_port_ram_tb;
	reg clk_tb = 1;
	reg 	   we = 1;
	reg [31:0] data;
	reg [31:0] Address_i_tb;
	wire [31:0] q;
 
single_port_ram DUV (.we(we), .data(data), .addr(Address_i_tb), .q(q), .clk(clk_tb));
initial // Clock generator
  begin
    forever #2 clk_tb = ~clk_tb;
  end
initial // Clock generator
  begin
    forever #25 we = ~we;
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
	#0  Address_i_tb = 32'h10010000;
	#50 Address_i_tb = 32'h10010004;
	#50 Address_i_tb = 32'h10010008;
	#50 Address_i_tb = 32'h1001000c;
	#50 Address_i_tb = 32'h10010010;
	#50 Address_i_tb = 32'h10010014;
	#50 Address_i_tb = 32'h10010018;
	#50 Address_i_tb = 32'h1001001c;
end
initial begin
	#0  data = 32'hFFFFFFFF;
	#50 data = 32'h12345678;
	#50 data = 32'h98761234;
	#50 data = 32'h10A0A0A0;
	#50 data = 32'hABCDEF12;
	#50 data = 32'h10010A14;
	#50 data = 32'h10A10018;
	#50 data = 32'h1001A01c;
end
endmodule 