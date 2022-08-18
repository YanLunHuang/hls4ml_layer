set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,14,5,3,0>,config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
	{ weights_V int 128 regular {array 72 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ weights_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_V_q0 sc_in sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "21", "23", "25", "27", "29", "31", "33", "35"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "2451",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_0"}]},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_0"}]},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_1"}]},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_1"}]},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_2"}]},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_2"}]},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_3"}]},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_3"}]},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_4"}]},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_4"}]},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_5"}]},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_5"}]},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_6"}]},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_6"}]},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_7"}]},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_7"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "output_V"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_322", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_322.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_328", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_328.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_334", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_334.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_340", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_340.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_4_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_346", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_4_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_346.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_5_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_352", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_5_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_352.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_6_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_358", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_6_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_358.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_7_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_364", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_7_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_364.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_V {Type I LastRead 8 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 17}
		weights_V {Type I LastRead 16 FirstWrite -1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_read {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "401", "Max" : "2451"}
	, {"Name" : "Interval", "Min" : "401", "Max" : "2451"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 7 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 128 } } }
}
set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,14,5,3,0>,config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
	{ weights_V int 128 regular {array 72 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ weights_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_V_q0 sc_in sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "21", "23", "25", "27", "29", "31", "33", "35"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "2451",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_0"}]},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_0"}]},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_1"}]},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_1"}]},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_2"}]},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_2"}]},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_3"}]},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_3"}]},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_4"}]},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_4"}]},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_5"}]},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_5"}]},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_6"}]},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_6"}]},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_0_7"}]},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "layer_in_row_Array_V_1_7"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Port" : "output_V"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_283.layer_in_row_Array_V_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_322", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_322.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_328", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_328.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_0_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_334", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_0_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_334.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_0_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_340", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_0_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_340.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_346", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_346.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_1_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_352", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_1_1_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_352.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_1_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_358", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_1_2_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_358.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_0_1_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_364", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_0_1_3_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_364.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_V {Type I LastRead 8 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 17}
		weights_V {Type I LastRead 16 FirstWrite -1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_read {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "401", "Max" : "2451"}
	, {"Name" : "Interval", "Min" : "401", "Max" : "2451"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 7 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 128 } } }
}
set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,14,5,3,0>,config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
	{ weights_V int 128 regular {array 72 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ weights_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_V_q0 sc_in sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "21", "23", "25", "27"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "4251",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_0"}]},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_0"}]},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_1"}]},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_1"}]},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_2"}]},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_2"}]},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_3"}]},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_3"}]},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_4"}]},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_4"}]},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_5"}]},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_5"}]},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_6"}]},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_6"}]},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_7"}]},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_7"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "output_V"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_323", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_323.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_329", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_329.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_335", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_335.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_341", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_341.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_V {Type I LastRead 8 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 17}
		weights_V {Type I LastRead 16 FirstWrite -1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_read {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "401", "Max" : "4251"}
	, {"Name" : "Interval", "Min" : "401", "Max" : "4251"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 7 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 128 } } }
}
set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,14,5,3,0>,config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
	{ weights_V int 128 regular {array 72 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ weights_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_V_q0 sc_in sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "21", "23"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "7851",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_0"}]},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_0"}]},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_1"}]},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_1"}]},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_2"}]},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_2"}]},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_3"}]},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_3"}]},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_4"}]},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_4"}]},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_5"}]},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_5"}]},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_6"}]},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_6"}]},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_0_7"}]},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "layer_in_row_Array_V_1_7"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Port" : "output_V"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_284.layer_in_row_Array_V_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_323", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_323.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_329", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_329.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_V {Type I LastRead 8 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 17}
		weights_V {Type I LastRead 16 FirstWrite -1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_read {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "401", "Max" : "7851"}
	, {"Name" : "Interval", "Min" : "401", "Max" : "7851"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 7 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 128 } } }
}
set moduleName conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl_me<ap_fixed,ap_fixed<16,14,5,3,0>,config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {fifo 0 volatile }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
	{ weights_V int 128 regular {array 72 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_V_read sc_out sc_logic 1 signal 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ weights_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights_V_q0 sc_in sc_lv 128 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "dout" }} , 
 	{ "name": "data_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "empty_n" }} , 
 	{ "name": "data_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_V", "role": "read" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "21"],
		"CDFG" : "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "15051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_0"}]},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_0"}]},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_1"}]},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_1"}]},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_2"}]},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_2"}]},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_3"}]},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_3"}]},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_4"}]},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_4"}]},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_5"}]},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_5"}]},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_6"}]},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_6"}]},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_0_7"}]},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "layer_in_row_Array_V_1_7"}]},
			{"Name" : "layer_in_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Port" : "output_V"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer_in_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "7",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_in_row_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_in_row_Array_V_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286.layer_in_row_Array_V_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "product_dense_ap_fixed_ap_fixed_ap_fixed_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325.myproject_mul_mul_16s_16s_18_1_1_U9", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_V {Type I LastRead 8 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 17}
		weights_V {Type I LastRead 16 FirstWrite -1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_V {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s {
		data_V_read {Type I LastRead 1 FirstWrite -1}
		output_V {Type IO LastRead 5 FirstWrite 1}
		layer_in_row_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_0 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_1 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_2 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_3 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_4 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_5 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_6 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_0_7 {Type X LastRead -1 FirstWrite -1}
		layer_in_row_Array_V_1_7 {Type X LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "401", "Max" : "15051"}
	, {"Name" : "Interval", "Min" : "401", "Max" : "15051"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_V { ap_fifo {  { data_V_V_dout fifo_data 0 16 }  { data_V_V_empty_n fifo_status 0 1 }  { data_V_V_read fifo_update 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 7 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 128 } } }
}
