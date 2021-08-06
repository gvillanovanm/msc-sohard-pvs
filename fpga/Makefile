heartmodel: init_hm tb_heartmodel

init_hm:
	vdel -lib  libs/lib_HEARTM -all -rf
	vlib libs/lib_HEARTM
	vmap lib_HEARTM libs/lib_HEARTM 

tb_heartmodel:
	vlog -quiet -work lib_HEARTM vlog/heartmodel/node_aut_block1.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/node_aut_block2.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/node_aut_block.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/node_aut.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA1_SA.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA2_AV.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA3_RV.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA4_F1.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA5_F2.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA6_S1.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/NA7_S2.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA1_1to2.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA2_2to3.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA3_1to4.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA4_1to6.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA5_4to5.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA6_6to7.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PA7_5to7.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/PAC.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block1.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block2.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block3.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block4.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block5.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/path_aut_block.v
	vlog -quiet -work lib_HEARTM vlog/heartmodel/case2mod_new.v
	vlog -sv -quiet -work lib_HEARTM bench/tb_case2mod_new.sv

divisor_freq: init_div tb_divisor_freq

init_div:
	vdel -lib libs/lib_DIV -all -rf
	vlib libs/lib_DIV
	vmap lib_DIV libs/lib_DIV

tb_divisor_freq:
	vlog -quiet -work lib_DIV vlog/hdl_harness/divisor_freq.v
	vlog -quiet -work lib_DIV bench/tb_divisor_freq.v

hdl_harness: init_hdl_har tb_hdl_harness

init_hdl_har:
	vdel -lib libs/lib_VLOG -all
	vlib libs/lib_VLOG
	vmap lib_VLOG libs/lib_VLOG

tb_hdl_harness:
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/node_aut_block1.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/node_aut_block2.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/node_aut_block.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/node_aut.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA1_SA.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA2_AV.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA3_RV.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA4_F1.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA5_F2.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA6_S1.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/NA7_S2.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/PA1_1to2.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/PA2_2to3.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/PA3_1to4.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/PA4_1to6.v
	vlog -quiet -work lib_VLOG ./vlog/heartmodel/PA5_4to5.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/PA6_6to7.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/PA7_5to7.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/PAC.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block1.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block2.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block3.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block4.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block5.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/path_aut_block.v
	vlog -quiet -work lib_VLOG vlog/heartmodel/case2mod_new.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/async_receiver.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/async_transmitter.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/clock_transmitter.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/divisor_freq.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/led_flasher.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/light_up.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/mode_setter.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/output_pulse.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/pace_catcher.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/rising_edge_detect.v
	vlog -quiet -work lib_VLOG vlog/hdl_harness/TopLevel.v
	vlog -sv -quiet -work lib_VLOG bench/tb_hdl_harness.sv
	#vsim +nowarn3116 -batch -do "run -all" lib_VLOG.tb_

clean:
	rm -rf modelsim.ini
	rm -rf transcript
	rm -rf vsim.wlf
	rm -rf wlftE7szf4
	rm -rf libs/lib_VLOG/*
	rm -rf libs/lib_BENCH/*
	rm -rf vlog/hdl_harness/*.bak
	rm -rf bench/*.bak
	rm -rf quartus/hdl_harness/*.bak
	rm -rf quartus/hdl_harness/simulation/
	rm -rf quartus/hdl_harness/cr_ie_info.json