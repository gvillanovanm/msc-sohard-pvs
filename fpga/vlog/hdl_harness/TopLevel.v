// Copyright 2012 Sriram Radhakrishnan, Varun Sampath, Shilpa Sarode
// 
// This file is part of PVS.
// 
// PVS is free software: you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
// 
// PVS is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License along with
// PVS.  If not, see <http://www.gnu.org/licenses/>.
//--------------------------------------------------------------------------//
// Title:        de0_nano_soc_baseline.v                                       //
// Rev:          Rev 0.1                                                    //
// Last Revised: 09/14/2015                                                 //
//--------------------------------------------------------------------------//
// Description: Baseline design file contains DE0 Nano SoC    				 //
//              Board pins and I/O Standards.                               //
//--------------------------------------------------------------------------//
//Copyright 2015 Altera Corporation. All rights reserved.  Altera products
//are protected under numerous U.S. and foreign patents, maskwork rights,
//copyrights and other intellectual property laws.
//                 
//This reference design file, and your use thereof, is subject to and
//governed by the terms and conditions of the applicable Altera Reference
//Design License Agreement.  By using this reference design file, you
//indicate your acceptance of such terms and conditions between you and
//Altera Corporation.  In the event that you do not agree with such terms and
//conditions, you may not use the reference design file. Please promptly                         
//destroy any copies you have made.
//
//This reference design file being provided on an "as-is" basis and as an
//accommodation and therefore all warranties, representations or guarantees
//of any kind (whether express, implied or statutory) including, without
//limitation, warranties of merchantability, non-infringement, or fitness for
//a particular purpose, are specifically disclaimed.  By making this
//reference design file available, Altera expressly does not recommend,
//suggest or require that this reference design file be used in combination 
//with any other product not provided by Altera
//----------------------------------------------------------------------------

//Group Enable Definitions
//This lists every pinout group
//Users can enable any group by uncommenting the corresponding line below:
//`define enable_ADC
`define enable_ARDUINO
`define enable_GPIO0
//`define enable_GPIO1
//`define enable_HPS


module TopLevel(
	//////////// CLOCK //////////
	input 		          		FPGA_CLK_50, // don't works with that...
	input 		          		FPGA_CLK2_50,
	input 		          		FPGA_CLK3_50, // don't works with that...

`ifdef enable_ADC
	//////////// ADC //////////
	/* 3.3-V LVTTL */
	output		          		ADC_CONVST,
	output		          		ADC_SCLK,
	output		          		ADC_SDI,
	input 		          		ADC_SDO,
`endif
	
`ifdef enable_ARDUINO
	//////////// ARDUINO ////////////
	/* 3.3-V LVTTL */
	inout					[15:0]	ARDUINO_IO,
	inout								ARDUINO_RESET_N,
`endif
	
`ifdef enable_GPIO0
	//////////// GPIO 0 ////////////
	/* 3.3-V LVTTL */
	inout				[35:0]		GPIO_0,
`endif

`ifdef enable_GPIO1	
	//////////// GPIO 1 ////////////
	/* 3.3-V LVTTL */
	inout				[35:0]		GPIO_1,
`endif

`ifdef enable_HPS
	//////////// HPS //////////
	/* 3.3-V LVTTL */
	inout 		          		HPS_CONV_USB_N,
	
	/* SSTL-15 Class I */
	output		    [14:0]		HPS_DDR3_ADDR,
	output		     [2:0]		HPS_DDR3_BA,
	output		          		HPS_DDR3_CAS_N,
	output		          		HPS_DDR3_CKE,
	output		          		HPS_DDR3_CS_N,
	output		     [3:0]		HPS_DDR3_DM,
	inout 		    [31:0]		HPS_DDR3_DQ,
	output		          		HPS_DDR3_ODT,
	output		          		HPS_DDR3_RAS_N,
	output		          		HPS_DDR3_RESET_N,
	input 		          		HPS_DDR3_RZQ,
	output		          		HPS_DDR3_WE_N,
	/* DIFFERENTIAL 1.5-V SSTL CLASS I */
	output		          		HPS_DDR3_CK_N,
	output		          		HPS_DDR3_CK_P,
	inout 		     [3:0]		HPS_DDR3_DQS_N,
	inout 		     [3:0]		HPS_DDR3_DQS_P,
	
	/* 3.3-V LVTTL */
	output		          		HPS_ENET_GTX_CLK,
	inout 		          		HPS_ENET_INT_N,
	output		          		HPS_ENET_MDC,
	inout 		          		HPS_ENET_MDIO,
	input 		          		HPS_ENET_RX_CLK,
	input 		     [3:0]		HPS_ENET_RX_DATA,
	input 		          		HPS_ENET_RX_DV,
	output		     [3:0]		HPS_ENET_TX_DATA,
	output		          		HPS_ENET_TX_EN,
	inout 		          		HPS_GSENSOR_INT,
	inout 		          		HPS_I2C0_SCLK,
	inout 		          		HPS_I2C0_SDAT,
	inout 		          		HPS_I2C1_SCLK,
	inout 		          		HPS_I2C1_SDAT,
	inout 		          		HPS_KEY,
	inout 		          		HPS_LED,
	inout 		          		HPS_LTC_GPIO,
	output		          		HPS_SD_CLK,
	inout 		          		HPS_SD_CMD,
	inout 		     [3:0]		HPS_SD_DATA,
	output		          		HPS_SPIM_CLK,
	input 		          		HPS_SPIM_MISO,
	output		          		HPS_SPIM_MOSI,
	inout 		          		HPS_SPIM_SS,
	input 		          		HPS_UART_RX,
	output		          		HPS_UART_TX,
	input 		          		HPS_USB_CLKOUT,
	inout 		     [7:0]		HPS_USB_DATA,
	input 		          		HPS_USB_DIR,
	input 		          		HPS_USB_NXT,
	output		          		HPS_USB_STP,
`endif
	
	//////////// KEY ////////////
	/* 3.3-V LVTTL */
	input [1:0] KEY,
	
	//////////// LED ////////////
	/* 3.3-V LVTTL */
	output [7:0] LED,
	
	//////////// SW ////////////
	/* 3.3-V LVTTL */
	input [3:0] SW
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  ORIGINAL PORT declarations
//=======================================================
	
//////////// CLOCK //////////
//input CLOCK_50; [change to FPGA_CLK2_50 - OK]

//////////// LED //////////
//output [7:0] LED; [OK]

//////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
//inout [33:0] PIN; [change to GPIO_0]
//input [1:0]  PIN_IN [];

//=======================================================
//  Custom clock generate 50M Hz to 1.5k Hz
//=======================================================
reg [15:0] counter_div_freq;
reg CLOCK_1_5;

always @(posedge FPGA_CLK2_50) begin : proc_
	if(~KEY[1]) begin
		counter_div_freq <= 0;
		CLOCK_1_5 <= 0;
	end else begin
		counter_div_freq <= counter_div_freq + 1;
		
		if(counter_div_freq == 16667) begin
			CLOCK_1_5 <= ~CLOCK_1_5;
			counter_div_freq <= 0;
		end
	end
end
// to debug
assign GPIO_0[35] = CLOCK_1_5;

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire NA1out;
wire NA2out;
wire NA3out;
wire NA4out;
wire NA5out;
wire NA6out;
wire NA7out;

wire NA1widened;
wire NA2widened;
wire NA3widened;
wire NA4widened;
wire NA5widened;
wire NA6widened;
wire NA7widened;

wire pace_en;
// wire apace_in;
// wire vpace_in;
reg apace_in;
reg vpace_in;

reg apace;
reg vpace;
wire apace_widened;
wire vpace_widened;
wire vhm_apace_input;
wire vhm_vpace_input;
reg apace_latch;
reg vpace_latch;
reg apace_latch_prev;
reg vpace_latch_prev;

reg[31:0] counter = 32'd0;
reg tx_go;
reg tx_go_prev;
wire tx_go_shortened;
reg [7:0] header;
wire transmit_done;
wire tx;

wire tachyLEDout;
wire bradyLEDout;
wire normalLEDout;

wire rx;
wire recv_pulse;
wire [15:0] SA_rest;
wire [15:0] AV_forw;
wire PACen;
wire PVCen;


//=======================================================
//  PLL to divisior_freq -> don't works...
//=======================================================
// setup PLL for clock division
// altpll0 pll0
// 	(
// 	.inclk0 (FPGA_CLK2_50),
// 	.c0(CLOCK_1_5)
// 	);
// we use divisor_freq (50Mhz -> 1.5kHz), but why 1.5kHz? it's used as reference in automatons.

//divisor_freq div_freq (
//	.clk (FPGA_CLK2_50),    // Clock 50Mhz (FPGA osc)
//	.rst(RESET),    
//	.clk_out(CLOCK_1_5) // Clock 1.5kHz used in HoC.
//);
//assign CLOCK_1_5_DEBUG = CLOCK_1_5;

//=======================================================
//  Structural coding
//=======================================================
// setup VHM 
case2mod_new heart
          (
           .clk(CLOCK_1_5),
           .reset(), // not used in original version then... removed..
		   .AP(vhm_apace_input),
		   .VP(vhm_vpace_input),
           .SArest(),
           .AVforw(AV_forw), 
           .PAC_en(PACen),
           .PVC_en(PVCen),			  
		   .clk_enable(1'b1),
		   .ce_out(), // not used in original version
           .NA1Out(NA1out),
           .NA2Out(NA2out),
           .NA3Out(NA3out),
           .NA4Out(NA4out),
           .NA5Out(NA5out),
           .NA6Out(NA6out),
           .NA7Out(NA7out)
          );

// widen NA1 pulse	
output_pulse NA1_SA_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA1out),
			  .signal_o(NA1widened)
          );

// widen NA2 pulse	
output_pulse NA2_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA2out),
			  .signal_o(NA2widened)
          );
			 
// widen NA3 pulse	
output_pulse NA3_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA3out),
			  .signal_o(NA3widened)
          );
			 
// widen NA4 pulse	
output_pulse NA4_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA4out),
			  .signal_o(NA4widened)
          );
			 
// widen NA5 pulse	
output_pulse NA5_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA5out),
			  .signal_o(NA5widened)
          );
			 
// widen NA6 pulse	
output_pulse NA6_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA6out),
			  .signal_o(NA6widened)
          );
			 
// widen NA7 pulse	
output_pulse NA7_pulse
          (
           .clk(CLOCK_1_5),
			  .signal_i(NA7out),
			  .signal_o(NA7widened)
          );
			 
// counter increments every heart clk beat
always @(posedge CLOCK_1_5) begin
	counter <= counter + 32'd1;
end

//=======================================================
//  header ---> ORIGINAL
//=======================================================
// set up clock serial transmitter for SA node & AP
// Note: NA1out and apace_widened are apparently
// exclusive, although this conclusion does not make sense.
// ANDing with tx_go_shortened makes sure the header is only
// available for 1 cycle
// always @(posedge CLOCK_1_5) begin
// 	tx_go <=  (NA1out | NA3out | apace_latch | vpace_latch) && !tx_go_prev;
// 	header <= (NA1out && !apace_latch) ? 8'd1 :
// 				 (!NA1out && apace_latch) ? 8'd2 :
// 				 (NA1out && apace_latch) ? 8'd3 :
// 				 (NA3out && !vpace_latch) ? 8'd4 :
// 				 (!NA3out && vpace_latch) ? 8'd5 :
// 				 (NA3out && vpace_latch) ? 8'd6 :
// 				 8'd0;
// 	tx_go_prev <= tx_go;
// end
//=======================================================
//  header ---> MODIFIED: add tx_go_shortened in the AND operation
//=======================================================

/* draw_new_point_gui.m define: */
// VERIFY THIS VALUES IN MATLAB CONSOLE
// Header values: 
// 0 - bad value
// 1 - SA node activation and no APace
// 2 - no SA node activation and APace
// 3 - SA node activation and APace
// 4 - RV node activation and no VPace
// 5 - no RV node activation and VPace
// 6 - RV node activation and VPace

always @(posedge CLOCK_1_5) begin
	// ordem nao importa, esta assim para lembrar codigo original
	tx_go <=  (NA1out | NA3out | apace_latch | vpace_latch) && !tx_go_prev;
	
	if(~KEY[1]) 
		header <= 8'd2; // apace
	else begin
		header <= (NA1out    && !apace_latch) ? 8'd1 : 
					 (!NA1out && apace_latch ) ? 8'd2 :
					 (NA1out  && apace_latch ) ? 8'd3 :
					 (NA3out  && !vpace_latch) ? 8'd4 :
					 (!NA3out && vpace_latch ) ? 8'd5 :
					 (NA3out  && vpace_latch ) ? 8'd6 :
					  8'd0;
	end
	
	tx_go_prev <= tx_go;
end
// set up warning LED for brady/tachycardia
light_up warning_lighter
          (
              .clk(CLOCK_1_5),
			  .header(header),
			  .counter(counter),
			  .tachy_pin(tachyLEDout),
			  .brady_pin(bradyLEDout),
			  .normal_pin(normalLEDout)
          );		 

//=======================================================
//  ORIGINAL RISING_EDGE MODULE -> yes, leave commented!
//=======================================================
// shorten the go signal so it's 1 cycle in width
// this prevents simultaneous events of different
// widths from messing up serial					 
/*
rising_edge_detect go_shortener
				(
				 .clk(CLOCK_1_5),
				 .signal(tx_go),
				 .pulse(tx_go_shortened)
				);
*/
//=======================================================
//  MODIFIED RISING_EDGE MODULE -> just uncomment
//=======================================================
//rising_edge_detect go_shortener
// 				(
// 				 .clk(CLOCK_1_5),
// 				 .signal(tx_go),
// 				 .pulse(tx_go_shortened)
// 				);
// COLOCAR IMPLEMENTACAO DESSE MODULO AQUI P/ VERIFICAR SE AINDA CONTINUA DANDO HEADER = 0
					 
clock_transmitter transmitter
          (
              .clk_fast (FPGA_CLK2_50),
			  .clk_slow(CLOCK_1_5),
			  .counter(counter),
			  .header(header),
              .go(tx_go),//.go(tx_go_shortened), // ORIGINAL
              //.go(tx_go_shortened), // MODIFIED
			  .TxD(tx),
			  .done(transmit_done)
          );
	
// latch input pace pins with FF
always @(posedge FPGA_CLK2_50) begin
	apace <= apace_in;
	vpace <= vpace_in;
end

// one cycle wide pace signals for serial
always @(posedge CLOCK_1_5) begin
	apace_latch <= apace_widened && !apace_latch_prev && pace_en;
	vpace_latch <= vpace_widened && !vpace_latch_prev && pace_en;
	apace_latch_prev <= apace_latch;
	vpace_latch_prev <= vpace_latch;
end

// widen apace pulse
// the widen amount should be less than ERP
pace_catcher #(2) apace_widener
          (
           .clk_fast (FPGA_CLK2_50),
			  .clk_slow(CLOCK_1_5),
			  .signal_i(apace),
			  .signal_o(apace_widened)
          );

// widen vpace pulse	
// the widen amount should be less than ERP 
pace_catcher #(2) vpace_widener
          (
           .clk_fast (FPGA_CLK2_50),
			  .clk_slow(CLOCK_1_5),
			  .signal_i(vpace),
			  .signal_o(vpace_widened)
          );
		
// only give pace inputs if enabled		
assign vhm_apace_input = apace_widened && pace_en;
assign vhm_vpace_input = vpace_widened && pace_en;
			 
mode_setter ms
          (
           	  .clk_fast (FPGA_CLK2_50),
			  .clk_slow(CLOCK_1_5),
			  .rx(rx),
			  .recv_pulse(recv_pulse),
			  .pace_en(pace_en),
			  .(SA_rest),
			  .AV_forw(AV_forw),
			  .PACen(PACen),
			  .PVCen(PVCen)
          );


//=======================================================
// ASSIGNMENTS 
//=======================================================

// LED[5..0]: NA6..1 widened
// LED[6]: toggles with serial reception
// LED[7]: toggles with serial transmission
reg LED7_toggle = 0; 
always @(posedge FPGA_CLK2_50) begin
	if (transmit_done) LED7_toggle <= LED7_toggle ^ 1;
end
assign LED[0] = ~apace_widened;
assign LED[1] = ~vpace_widened;
assign LED[2] = NA1widened;
assign LED[3] = NA2widened;
assign LED[4] = NA3widened;
assign LED[5] = NA7widened;
assign LED[6] = recv_pulse;
assign LED[7] = LED7_toggle;

// assign pins
// SW[1..0]: vpace, apace
// GPIO_0[0]: tx
// GPIO_0[1]: rx
// GPIO_0[10..4]: NA7..1 widened
//assign apace_in = SW[0]; // ok! MODIFY to PCB USE -> GPIO_0[15]
//assign vpace_in = SW[1]; // ok! MODIFY to PCB USE -> GPIO_0[17]

/* Prepara pinos para rceber entrada */
assign ARDUINO_IO[13] = 1'bz;
assign ARDUINO_IO[12] = 1'bz;

always @(*) begin
	apace_in <= ARDUINO_IO[13] | (~KEY[0]);
	vpace_in <= ARDUINO_IO[12];
end
	
assign rx = GPIO_0[0];   // ok!
assign GPIO_0[1] = tx;   // ok!

// verified in oscilloscope
// assign GPIO_0[4]  = NA1widened;  // Nó - 
// assign GPIO_0[5]  = NA2widened;  // Nó -  (enviado pela serial)
// assign GPIO_0[6]  = NA3widened;  // Nó -  (enviado pela serial)
// assign GPIO_0[7]  = NA4widened;  // Nó - 
// assign GPIO_0[8]  = NA5widened;  // Nó - 
// assign GPIO_0[9]  = NA6widened;  // Nó - 
// assign GPIO_0[10] = NA7widened;  // Nó - 
assign ARDUINO_IO[6]  = NA1widened;  // Nó - SA
assign ARDUINO_IO[1]  = NA2widened;  // Nó - AV (enviado pela serial)
assign ARDUINO_IO[0]  = NA3widened;  // Nó - RV (enviado pela serial)
assign ARDUINO_IO[5]  = NA4widened;  // Nó - F1
assign ARDUINO_IO[2]  = NA5widened;  // Nó - F2
assign ARDUINO_IO[4]  = NA6widened;  // Nó - S1
assign ARDUINO_IO[3]  = NA7widened;  // Nó - S2

// warning indicators
// verified in oscilloscope - it's active when apace_in | vpace_in is activated
assign GPIO_0[16] = !normalLEDout; // active-low
assign GPIO_0[18] = !bradyLEDout;  // active-low
assign GPIO_0[20] = !tachyLEDout;  // active-low

// debug signals
assign GPIO_0[22] = tx_go;  	 // ok!
assign GPIO_0[24] = CLOCK_1_5;   // ok!
assign GPIO_0[26] = NA1out;      // ok!
assign GPIO_0[28] = apace_latch; // ok - it's actived when SW[0] is actived!
assign GPIO_0[30] = NA3out;      // ok!
assign GPIO_0[32] = vpace_latch; // ok - it's actived when SW[1] is actived!

endmodule

//=======================================================
// ASSIGNMENTS ORIGINAL VERSION
//=======================================================
// assign pins
// PIN_IN[1..0]: vpace, apace
// PIN[0]: tx
// PIN[1]: rx
// PIN[10..4]: NA7..1 widened
// assign apace_in = PIN_IN[0];
// assign vpace_in = PIN_IN[1];
// assign rx = PIN[0];
// assign PIN[1] = tx;
// assign PIN[4] = NA1widened;
// assign PIN[5] = NA2widened; 
// assign PIN[6] = NA3widened;
// assign PIN[7] = NA4widened; 
// assign PIN[8] = NA5widened;
// assign PIN[9] = NA6widened; 	
// assign PIN[10] = NA7widened;

// // warning indicators
// assign PIN[16] = !normalLEDout; // active-low
// assign PIN[18] = !bradyLEDout; // active-low
// assign PIN[20] = !tachyLEDout; // active-low

// // debug signals
// assign PIN[22] = tx_go;
// assign PIN[24] = CLOCK_1_5;
// assign PIN[26] = NA1out;
// assign PIN[28] = apace_latch;
// assign PIN[30] = NA3out;
// assign PIN[32] = vpace_latch;
