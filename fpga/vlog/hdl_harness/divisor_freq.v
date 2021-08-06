
/* Configuration used in original version */

// setup PLL for clock division
// altpll0 pll0
// 	(
// 	.inclk0(CLOCK_50),
// 	.c0(CLOCK_1_5)
// 	);

//module divisor_freq (
//	input  clk,    // Clock 50Mhz (FPGA osc)
//	input  rst,    
//	output clk_out // Clock 1.5kHz used in HoC.
//);
//
//reg [15:0] counter;
//reg CLOCK_1_5;
//
//always @(posedge clk) begin : proc_
//	if(rst) begin
//		counter <= 0;
//		CLOCK_1_5 <= 0;
//	end else begin
//		counter <= counter + 1;
//		
//		if(counter == 16667) begin 
//			CLOCK_1_5 <= ~CLOCK_1_5;
//			counter <= 0;
//		end
//	end
//end
//assign	clk_out = CLOCK_1_5;
//endmodule
