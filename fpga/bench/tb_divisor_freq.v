//timescale <reference_time>/<precision>
`timescale 1ns/10ps

module tb_divisor_freq ();

reg clk = 0;
reg rst = 1;

divisor_freq div_freq(
	.clk(clk),    // Clock 50Mhz (FPGA osc)
	.rst(rst),    
	.clk_out(cout) // Clock 1.5kHz used in HoC.
);

initial begin 
	forever #10 clk = ~clk; // 10*1ns para mudar de estado
end

initial begin 
	#44
	rst = 0;
end

endmodule