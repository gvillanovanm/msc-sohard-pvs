// -------------------------------------------------------------
// 
// File Name: case2mod_new\hdlsrc\case2mod_new\path_aut_block1.v
// Created: 2018-10-23 15:33:09
// 
// Generated by MATLAB 9.0 and HDL Coder 3.8
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: path_aut_block1
// Source Path: case2mod_new/PA3_1to4/path_aut
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module path_aut_block1
          (
           clk,
           reset,
           enb,
           inActive1,
           inActive2,
           forw_param,
           pathTimerEn,
           pathTimerEx,
           outActive1,
           outActive2,
           state
          );


  input   clk;
  input   reset;
  input   enb;
  input   inActive1;
  input   inActive2;
  input   [15:0] forw_param;  // uint16
  input   [15:0] pathTimerEn;  // uint16
  input   [15:0] pathTimerEx;  // uint16
  output  outActive1;
  output  outActive2;
  output  [7:0] state;  // uint8

  parameter [15:0] bck_param = 32767;  // uint16
  parameter is_PathAutomaton2_IN_AntegradeConduction = 3'd0, is_PathAutomaton2_IN_Conflict = 3'd1, is_PathAutomaton2_IN_Double = 3'd2, is_PathAutomaton2_IN_Idle = 3'd3, is_PathAutomaton2_IN_RetrogradeConduction = 3'd4;

  reg [2:0] is_PathAutomaton;  // uint8
  reg [15:0] forw_timer_cur;  // uint16
  reg [15:0] bck_timer_cur;  // uint16
  reg [15:0] bck_timer_def;  // uint16
  reg [15:0] forw_timer_def;  // uint16
  reg  idle_st;
  reg  outActive1_reg;
  reg  outActive2_reg;
  reg [7:0] state_reg;  // uint8
  reg [2:0] is_PathAutomaton_next;  // enum type is_PathAutomaton2 (5 enums)
  reg [15:0] forw_timer_cur_next;  // uint16
  reg [15:0] bck_timer_cur_next;  // uint16
  reg [15:0] bck_timer_def_next;  // uint16
  reg [15:0] forw_timer_def_next;  // uint16
  reg  idle_st_next;
  reg  outActive1_reg_next;
  reg  outActive2_reg_next;
  reg [7:0] state_reg_next;  // uint8
  reg [15:0] forw_timer_cur_temp;  // uint16
  reg [15:0] bck_timer_cur_temp;  // uint16
  reg [15:0] bck_timer_def_temp;  // uint16
  reg [15:0] forw_timer_def_temp;  // uint16
  reg [31:0] mul_temp;  // ufix32
  reg signed [31:0] cast;  // sfix32
  reg [31:0] mul_temp_0;  // ufix32
  reg signed [31:0] cast_0;  // sfix32
  reg [31:0] mul_temp_1;  // ufix32
  reg [31:0] mul_temp_2;  // ufix32


  always @(posedge clk or posedge reset)
    begin : SimpleModeling_c5_sfdxFIRurZ8Vejj6LPq2lUG_path_aut_process
      if (reset == 1'b1) begin
        forw_timer_cur <= 16'd0;
        bck_timer_cur <= 16'd0;
        bck_timer_def <= 16'd0;
        forw_timer_def <= 16'd0;
        state_reg <= 8'd0;
        outActive1_reg <= 1'b0;
        outActive2_reg <= 1'b0;
        is_PathAutomaton <= is_PathAutomaton2_IN_Idle;
        idle_st <= 1'b1;
      end
      else begin
        if (enb) begin
          is_PathAutomaton <= is_PathAutomaton_next;
          forw_timer_cur <= forw_timer_cur_next;
          bck_timer_cur <= bck_timer_cur_next;
          bck_timer_def <= bck_timer_def_next;
          forw_timer_def <= forw_timer_def_next;
          idle_st <= idle_st_next;
          outActive1_reg <= outActive1_reg_next;
          outActive2_reg <= outActive2_reg_next;
          state_reg <= state_reg_next;
        end
      end
    end

  always @(is_PathAutomaton, forw_timer_cur, bck_timer_cur, inActive1, inActive2,
       bck_timer_def, forw_timer_def, forw_param, idle_st, pathTimerEn,
       pathTimerEx, outActive1_reg, outActive2_reg, state_reg) begin
    forw_timer_cur_temp = forw_timer_cur;
    bck_timer_cur_temp = bck_timer_cur;
    bck_timer_def_temp = bck_timer_def;
    forw_timer_def_temp = forw_timer_def;
    outActive1_reg_next = outActive1_reg;
    outActive2_reg_next = outActive2_reg;
    state_reg_next = state_reg;
    is_PathAutomaton_next = is_PathAutomaton;
    idle_st_next = idle_st;
    if ((pathTimerEn > 16'b0000000000000000) && idle_st) begin
      mul_temp = forw_param * pathTimerEn;
      cast = mul_temp;
      forw_timer_def_temp = cast[15:0];
      forw_timer_cur_temp = forw_timer_def_temp;
    end
    else if ((pathTimerEn > 16'b0000000000000000) &&  ! idle_st) begin
      mul_temp_0 = forw_param * pathTimerEn;
      cast_0 = mul_temp_0;
      forw_timer_def_temp = cast_0[15:0];
    end
    if ((pathTimerEx > 16'b0000000000000000) && idle_st) begin
      mul_temp_1 = bck_param * pathTimerEx;
      bck_timer_def_temp = mul_temp_1[15:0];
      bck_timer_cur_temp = bck_timer_def_temp;
    end
    else if ((pathTimerEx > 16'b0000000000000000) &&  ! idle_st) begin
      mul_temp_2 = bck_param * pathTimerEx;
      bck_timer_def_temp = mul_temp_2[15:0];
    end
    case ( is_PathAutomaton)
      is_PathAutomaton2_IN_AntegradeConduction :
        begin
          if (inActive2) begin
            is_PathAutomaton_next = is_PathAutomaton2_IN_Double;
          end
          else if ((forw_timer_cur_temp == 16'b0000000000000000) &&  ! inActive2) begin
            forw_timer_cur_temp = forw_timer_def_temp;
            outActive2_reg_next = 1'b1;
            is_PathAutomaton_next = is_PathAutomaton2_IN_Conflict;
          end
          else begin
            forw_timer_cur_temp = forw_timer_cur_temp - 16'd1;
            outActive1_reg_next = 1'b0;
            idle_st_next = 1'b0;
            state_reg_next = 8'd2;
          end
        end
      is_PathAutomaton2_IN_Conflict :
        begin
          outActive2_reg_next = 1'b0;
          outActive1_reg_next = 1'b0;
          is_PathAutomaton_next = is_PathAutomaton2_IN_Idle;
          idle_st_next = 1'b1;
        end
      is_PathAutomaton2_IN_Double :
        begin
          if (bck_timer_cur_temp == 16'b0000000000000000) begin
            bck_timer_cur_temp = bck_timer_def_temp;
            outActive1_reg_next = 1'b1;
            is_PathAutomaton_next = is_PathAutomaton2_IN_AntegradeConduction;
          end
          else if ((forw_timer_cur_temp != 16'b0000000000000000) && (bck_timer_cur_temp != 16'b0000000000000000)) begin
            forw_timer_cur_temp = forw_timer_def_temp;
            bck_timer_cur_temp = bck_timer_def_temp;
            is_PathAutomaton_next = is_PathAutomaton2_IN_Conflict;
          end
          else if (forw_timer_cur_temp == 16'b0000000000000000) begin
            forw_timer_cur_temp = forw_timer_def_temp;
            outActive2_reg_next = 1'b1;
            is_PathAutomaton_next = is_PathAutomaton2_IN_RetrogradeConduction;
          end
          else begin
            forw_timer_cur_temp = forw_timer_cur_temp - 16'b0000000000000001;
            bck_timer_cur_temp = bck_timer_cur_temp - 16'b0000000000000001;
            state_reg_next = 8'd5;
          end
        end
      is_PathAutomaton2_IN_Idle :
        begin
          if (inActive1) begin
            is_PathAutomaton_next = is_PathAutomaton2_IN_AntegradeConduction;
          end
          else if (( ! inActive1) && inActive2) begin
            is_PathAutomaton_next = is_PathAutomaton2_IN_RetrogradeConduction;
          end
          else begin
            state_reg_next = 8'd1;
          end
        end
      default :
        begin
          if ((bck_timer_cur_temp == 16'b0000000000000000) &&  ! inActive1) begin
            bck_timer_cur_temp = bck_timer_def_temp;
            outActive1_reg_next = 1'b1;
            is_PathAutomaton_next = is_PathAutomaton2_IN_Conflict;
          end
          else if (inActive1) begin
            is_PathAutomaton_next = is_PathAutomaton2_IN_Double;
          end
          else begin
            bck_timer_cur_temp = bck_timer_cur_temp - 16'd1;
            outActive2_reg_next = 1'b0;
            state_reg_next = 8'd3;
          end
        end
    endcase
    forw_timer_cur_next = forw_timer_cur_temp;
    bck_timer_cur_next = bck_timer_cur_temp;
    bck_timer_def_next = bck_timer_def_temp;
    forw_timer_def_next = forw_timer_def_temp;
  end

  assign outActive1 = outActive1_reg_next;
  assign outActive2 = outActive2_reg_next;
  assign state = state_reg_next;



endmodule  // path_aut_block1

