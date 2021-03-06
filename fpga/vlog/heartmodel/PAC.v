// -------------------------------------------------------------
// 
// File Name: case2mod_new\hdlsrc\case2mod_new\PAC.v
// Created: 2018-10-23 15:33:09
// 
// Generated by MATLAB 9.0 and HDL Coder 3.8
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: PAC
// Source Path: case2mod_new/PAC
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module PAC
          (
           clk,
           reset,
           enb,
           st_en,
           count_def,
           act,
           PVC
          );


  input   clk;
  input   reset;
  input   enb;
  input   st_en;
  input   [15:0] count_def;  // uint16
  input   act;
  output  PVC;

  parameter is_SimpleModeling_c8_PVC_IN_Count = 2'd0, is_SimpleModeling_c8_PVC_IN_Wait = 2'd1, is_SimpleModeling_c8_PVC_IN_start = 2'd2;

  reg [1:0] is_SimpleModeling_c8_PVC;  // uint8
  reg [15:0] count;  // uint16
  reg  PVC_reg;
  reg [1:0] is_SimpleModeling_c8_PVC_next;  // enum type is_SimpleModeling_c8_PVC (3 enums)
  reg [15:0] count_next;  // uint16
  reg  PVC_reg_next;


  always @(posedge clk or posedge reset)
    begin : SimpleModeling_c8_PVC_process
      if (reset == 1'b1) begin
        count <= 16'd0;
        PVC_reg <= 1'b0;
        is_SimpleModeling_c8_PVC <= is_SimpleModeling_c8_PVC_IN_Wait;
      end
      else begin
        if (enb) begin
          is_SimpleModeling_c8_PVC <= is_SimpleModeling_c8_PVC_next;
          count <= count_next;
          PVC_reg <= PVC_reg_next;
        end
      end
    end

  always @(is_SimpleModeling_c8_PVC, st_en, count_def, act, count, PVC_reg) begin
    PVC_reg_next = PVC_reg;
    is_SimpleModeling_c8_PVC_next = is_SimpleModeling_c8_PVC;
    count_next = count;
    case ( is_SimpleModeling_c8_PVC)
      is_SimpleModeling_c8_PVC_IN_Count :
        begin
          if (count == 16'b0000000000000000) begin
            PVC_reg_next = 1'b1;
            is_SimpleModeling_c8_PVC_next = is_SimpleModeling_c8_PVC_IN_Wait;
          end
          else begin
            PVC_reg_next = 1'b0;
            count_next = count - 16'd1;
          end
        end
      is_SimpleModeling_c8_PVC_IN_Wait :
        begin
          if (st_en) begin
            is_SimpleModeling_c8_PVC_next = is_SimpleModeling_c8_PVC_IN_start;
          end
          else begin
            PVC_reg_next = 1'b0;
          end
        end
      default :
        begin
          if (act) begin
            count_next = count_def;
            is_SimpleModeling_c8_PVC_next = is_SimpleModeling_c8_PVC_IN_Count;
          end
          else begin
            PVC_reg_next = 1'b0;
          end
        end
    endcase
  end

  assign PVC = PVC_reg_next;



endmodule  // PAC

