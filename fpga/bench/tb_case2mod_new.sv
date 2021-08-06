`timescale 1 us / 1 ns


module tb_case2mod_new ();

// inputs
reg CLOCK_1_5 = 0;
reg reset = 1;
wire clk_enable = 1'b1;
wire AP = 0;
wire VP = 0;


wire [15:0] SArest = 16'd700; // default tempo de descanso // is 700 in simulink model
wire [15:0] AVforw = 16'd200;  // default tempo propagacao // is 200 in simulink model

reg PAC_en = 0;
reg PVC_en = 0;

// outputs
wire ce_out;
wire NA1Out;
wire NA2Out;
wire NA3Out;
wire NA4Out;
wire NA5Out;
wire NA6Out;
wire NA7Out;

case2mod_new dut
(
  // inputs
  .clk(CLOCK_1_5),
  .reset(reset),
  .clk_enable(clk_enable),
  .AP(AP),
  .VP(VP),
  .SArest(SArest),
  .AVforw(AVforw),
  .PAC_en(PAC_en),
  .PVC_en(PVC_en),

  // outputs
  .ce_out(ce_out),
  .NA1Out(NA1Out),
  .NA2Out(NA2Out),
  .NA3Out(NA3Out),
  .NA4Out(NA4Out),
  .NA5Out(NA5Out),
  .NA6Out(NA6Out),
  .NA7Out(NA7Out)
);

initial begin 
	forever #1 CLOCK_1_5 = ~CLOCK_1_5;
end

int count = 10;
int i=0;

initial begin 
	#5
	reset = 0;

	/* os sinais que causam disturbio no coração
	 * PAC e PVC, mantendo eles em 0, o coração 
	 * deve comportar-se de forma saudável */
	// #5
	// PAC_en = 1;
	// #1
	// PAC_en = 0;
	// #100

	#3300
	PAC_en = 1;
	#10
	PAC_en = 0;
	#100

	#4000
	/* gatilhará nó SA */
	// $display("Inicio do disturbiu PAC_en\n");
	// $display($time, "is current time.");
	// for (i = 0; i < count; i++) begin
	// 	#1 // 1us*
	// 	PAC_en = 1;
	// 	#1
	// 	PAC_en = 0;
	// 	#1000;
	// end		
	
	// /* gatilhará nó RV */
	// $display("Inicio do disturbiu PVC_en\n");
	// $display($time, "is current time us.");
	// for (i = 0; i < count; i++) begin
	// 	#10 // 1us*
	// 	PVC_en = 1;
	// 	#1
	// 	PVC_en = 0;
	// end // for (int i = 0; i < count; i++)
	
	#10
	$finish();
end // initial

endmodule