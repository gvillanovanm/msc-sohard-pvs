// -------------------------------------------------------------
// 
// File Name: case2mod_hdl_gen/hdlsrc/case2mod_new/PA1_1to2.v
// Created: 2019-06-20 13:20:44
// 
// Generated by MATLAB 9.5 and HDL Coder 3.13
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PA1_1to2
// Source Path: case2mod_new/PA1_1to2
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PA1_1to2
          (clk,
           reset,
           enb,
           inActive1,
           inActive2,
           pathTimerEn,
           pathTimerEx,
           forw_param,
           outActive1,
           outActive2,
           state);


  input   clk;
  input   reset;
  input   enb;
  input   inActive1;
  input   inActive2;
  input   [15:0] pathTimerEn;  // uint16
  input   [15:0] pathTimerEx;  // uint16
  input   [15:0] forw_param;  // uint16
  output  outActive1;
  output  outActive2;
  output  [7:0] state;  // uint8




  path_aut u_path_aut (.clk(clk),
                       .reset(reset),
                       .enb(enb),
                       .inActive1(inActive1),
                       .inActive2(inActive2),
                       .forw_param(forw_param),  // uint16
                       .pathTimerEn(pathTimerEn),  // uint16
                       .pathTimerEx(pathTimerEx),  // uint16
                       .outActive1(outActive1),
                       .outActive2(outActive2),
                       .state(state)  // uint8
                       );

endmodule  // PA1_1to2

