vsim \
lib_VLOG.TopLevel \
lib_BENCH.tb_hdl_harness

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/clk
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/rst
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/led
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/pin
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/pin_in
add wave -noupdate -expand -group TopLevel /tb_hdl_harness/CLOCK_1_5_DEBUG
add wave -noupdate -expand -group DivisorFreq /tb_hdl_harness/top/div_freq/clk
add wave -noupdate -expand -group DivisorFreq /tb_hdl_harness/top/div_freq/rst
add wave -noupdate -expand -group DivisorFreq /tb_hdl_harness/top/div_freq/clk_out
add wave -noupdate -expand -group DivisorFreq /tb_hdl_harness/top/div_freq/counter
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/clk
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/reset
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/enb
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/inActive
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/Trest_def
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/Active
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/State
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/path_timer
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/activeMem_out1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/Logical_Operator1_out1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/Active_1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/state_1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/path_timer_1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/inActiveMem_out1
add wave -noupdate -expand -group NA1_SA /tb_hdl_harness/top/heart/u_NA1_SA/path_timer_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/clk
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/reset
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/clk_enable
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/AP
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/VP
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/SArest
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/AVforw
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PAC_en
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC_en
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/ce_out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA1Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA2Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA3Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA4Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA5Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA6Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA7Out
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC_count_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA3_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA2_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA1_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA4_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA6_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA6_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA7_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA7_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA5_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA5_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA4_tRest_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PA3_forw_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PAC_count_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_3
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_4
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_5
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_6
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_3
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_7
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_8
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_9
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_4
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_5
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_10
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_11
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_12
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_3
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_13
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_14
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_4
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_5
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_6
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_6
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_7
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_3
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA6_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_7
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_8
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_9
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA7_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_3
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_8
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_9
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_10
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_4
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_4
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_5
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA5_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_5
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_11
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_12
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_13
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_6
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_6
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_7
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA4_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_7
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_14
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_15
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_8
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_8
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_9
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_15
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_16
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_17
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_10
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_11
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_18
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_19
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/path_timer_20
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_16
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_17
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/PVC_2
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_12
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive2_13
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA3_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_9
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_18
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_19
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_20
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_10
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_10
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_11
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA2_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_11
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_21
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_22
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_12
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_12
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/outActive1_13
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/NA1_OR_out1
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/state_13
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_23
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_24
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_25
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_26
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_27
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_28
add wave -noupdate -group Heart /tb_hdl_harness/top/heart/Active_29
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {33347 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 217
configure wave -valuecolwidth 128
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ns} {367513 ns}

run -all