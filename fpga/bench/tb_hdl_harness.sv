`timescale 1 ns / 1 ns

module tb_hdl_harness ();

reg clk = 0;
reg rst = 0;

wire [7:0] led;
wire [33:0] pin;
wire [1:0] pin_in = 2'b0;
wire CLOCK_1_5_DEBUG;

TopLevel top(
	//////////// CLOCK //////////
	.CLOCK_50(clk),

	//////////// LED //////////
	.LED(led),

	//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
	.PIN(pin),
	.PIN_IN(pin_in),
	.CLOCK_1_5_DEBUG(CLOCK_1_5_DEBUG),
	.RESET(rst) // not used in original version
);

initial begin
	forever #1 clk <= ~clk;
end // initial

initial begin 
	#12
	rst <= 1;
	#1
	rst <= 0;

	#100000;
	$finish();
end

endmodule