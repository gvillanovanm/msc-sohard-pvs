// -------------------------------------------------------------
// 
// File Name: case2mod_new\hdlsrc\case2mod_new\NA3_RV.v
// Created: 2018-10-23 15:33:09
// 
// Generated by MATLAB 9.0 and HDL Coder 3.8
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: NA3_RV
// Source Path: case2mod_new/NA3_RV
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module NA3_RV
          (
           clk,
           reset,
           enb,
           inActive,
           Trest_def,
           Active,
           State,
           path_timer
          );


  input   clk;
  input   reset;
  input   enb;
  input   inActive;
  input   [15:0] Trest_def;  // uint16
  output  Active;
  output  [7:0] State;  // uint8
  output  [15:0] path_timer;  // uint16


  reg  activeMem_out1;
  wire Logical_Operator1_out1;
  wire Active_1;
  wire [7:0] state_1;  // uint8
  wire [15:0] path_timer_1;  // uint16
  reg  inActiveMem_out1;
  reg [15:0] path_timer_2;  // uint16


  assign Logical_Operator1_out1 = activeMem_out1 | inActive;



  node_aut_block1   u_node_aut   (.clk(clk),
                                  .reset(reset),
                                  .enb(enb),
                                  .inActive(Logical_Operator1_out1),
                                  .Trest_def(Trest_def),  // uint16
                                  .Active(Active_1),
                                  .state(state_1),  // uint8
                                  .path_timer(path_timer_1)  // uint16
                                  );

  always @(posedge clk or posedge reset)
    begin : activeMem_process
      if (reset == 1'b1) begin
        activeMem_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          activeMem_out1 <= Active_1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : inActiveMem_process
      if (reset == 1'b1) begin
        inActiveMem_out1 <= 1'b0;
      end
      else begin
        if (enb) begin
          inActiveMem_out1 <= inActive;
        end
      end
    end



  assign Active = activeMem_out1 | inActiveMem_out1;



  assign State = state_1;

  always @(posedge clk or posedge reset)
    begin : pathMem_process
      if (reset == 1'b1) begin
        path_timer_2 <= 16'b0000000000000000;
      end
      else begin
        if (enb) begin
          path_timer_2 <= path_timer_1;
        end
      end
    end



  assign path_timer = path_timer_2;

endmodule  // NA3_RV

