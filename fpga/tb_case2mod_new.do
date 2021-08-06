vsim     			  	\
lib_VLOG.case2mod_new 	\
lib_BENCH.tb_case2mod_new;

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/clk
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/reset
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/clk_enable
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/AP
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/VP
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/SArest
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/AVforw
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/PAC_en
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/PVC_en
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/ce_out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA1Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA2Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA3Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA4Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA5Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA6Out
add wave -noupdate -expand -group Interface_case2mod_new /tb_case2mod_new/dut/NA7Out
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/clk
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/reset
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/enb
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/inActive
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/Trest_def
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/Active
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/State
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/path_timer
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/activeMem_out1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/Logical_Operator1_out1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/Active_1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/state_1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/path_timer_1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/inActiveMem_out1
add wave -noupdate -expand -group NA1_SA /tb_case2mod_new/dut/u_NA1_SA/path_timer_2
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/state
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/reset
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/pathTimerEx
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/pathTimerEn
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/outActive2
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/outActive1
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/inActive2
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/inActive1
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/forw_param
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/enb
add wave -noupdate -expand -group PA_1to2 /tb_case2mod_new/dut/u_PA1_1to2/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {918065 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ns} {9450 ns}

run -all