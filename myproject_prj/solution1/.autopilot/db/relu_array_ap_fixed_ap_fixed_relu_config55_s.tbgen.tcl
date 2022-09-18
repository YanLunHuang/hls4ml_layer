set moduleName relu_array_ap_fixed_ap_fixed_relu_config55_s
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
set C_modelName {relu_array<ap_fixed,ap_fixed,relu_config55>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_0_V_V int 16 regular {axi_s 0 volatile  { data_0_V_V Data } }  }
	{ data_1_V_V int 16 regular {axi_s 0 volatile  { data_1_V_V Data } }  }
	{ data_2_V_V int 16 regular {axi_s 0 volatile  { data_2_V_V Data } }  }
	{ data_3_V_V int 16 regular {axi_s 0 volatile  { data_3_V_V Data } }  }
	{ res_0_V_V int 16 regular {axi_s 1 volatile  { res_0_V_V Data } }  }
	{ res_1_V_V int 16 regular {axi_s 1 volatile  { res_1_V_V Data } }  }
	{ res_2_V_V int 16 regular {axi_s 1 volatile  { res_2_V_V Data } }  }
	{ res_3_V_V int 16 regular {axi_s 1 volatile  { res_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ data_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ data_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ data_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ data_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ res_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ res_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ res_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ res_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ res_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ res_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ res_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ res_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ res_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ res_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ res_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ res_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_0_V_V", "role": "TDATA" }} , 
 	{ "name": "data_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_0_V_V", "role": "TVALID" }} , 
 	{ "name": "data_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_0_V_V", "role": "TREADY" }} , 
 	{ "name": "data_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_1_V_V", "role": "TDATA" }} , 
 	{ "name": "data_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_1_V_V", "role": "TVALID" }} , 
 	{ "name": "data_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_1_V_V", "role": "TREADY" }} , 
 	{ "name": "data_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_2_V_V", "role": "TDATA" }} , 
 	{ "name": "data_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_2_V_V", "role": "TVALID" }} , 
 	{ "name": "data_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_2_V_V", "role": "TREADY" }} , 
 	{ "name": "data_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_3_V_V", "role": "TDATA" }} , 
 	{ "name": "data_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_3_V_V", "role": "TVALID" }} , 
 	{ "name": "data_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_3_V_V", "role": "TREADY" }} , 
 	{ "name": "res_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_0_V_V", "role": "TDATA" }} , 
 	{ "name": "res_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_0_V_V", "role": "TVALID" }} , 
 	{ "name": "res_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_0_V_V", "role": "TREADY" }} , 
 	{ "name": "res_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_1_V_V", "role": "TDATA" }} , 
 	{ "name": "res_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_1_V_V", "role": "TVALID" }} , 
 	{ "name": "res_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_1_V_V", "role": "TREADY" }} , 
 	{ "name": "res_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_2_V_V", "role": "TDATA" }} , 
 	{ "name": "res_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_2_V_V", "role": "TVALID" }} , 
 	{ "name": "res_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_2_V_V", "role": "TREADY" }} , 
 	{ "name": "res_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_3_V_V", "role": "TDATA" }} , 
 	{ "name": "res_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_3_V_V", "role": "TVALID" }} , 
 	{ "name": "res_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "relu_array_ap_fixed_ap_fixed_relu_config55_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_ap_fixed_relu_config55_s {
		data_0_V_V {Type I LastRead 1 FirstWrite -1}
		data_1_V_V {Type I LastRead 1 FirstWrite -1}
		data_2_V_V {Type I LastRead 1 FirstWrite -1}
		data_3_V_V {Type I LastRead 1 FirstWrite -1}
		res_0_V_V {Type O LastRead -1 FirstWrite 2}
		res_1_V_V {Type O LastRead -1 FirstWrite 2}
		res_2_V_V {Type O LastRead -1 FirstWrite 2}
		res_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619", "Max" : "619"}
	, {"Name" : "Interval", "Min" : "619", "Max" : "619"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_V_V { axis {  { data_0_V_V_TDATA in_data 0 16 }  { data_0_V_V_TVALID in_vld 0 1 }  { data_0_V_V_TREADY in_acc 1 1 } } }
	data_1_V_V { axis {  { data_1_V_V_TDATA in_data 0 16 }  { data_1_V_V_TVALID in_vld 0 1 }  { data_1_V_V_TREADY in_acc 1 1 } } }
	data_2_V_V { axis {  { data_2_V_V_TDATA in_data 0 16 }  { data_2_V_V_TVALID in_vld 0 1 }  { data_2_V_V_TREADY in_acc 1 1 } } }
	data_3_V_V { axis {  { data_3_V_V_TDATA in_data 0 16 }  { data_3_V_V_TVALID in_vld 0 1 }  { data_3_V_V_TREADY in_acc 1 1 } } }
	res_0_V_V { axis {  { res_0_V_V_TDATA out_data 1 16 }  { res_0_V_V_TVALID out_vld 1 1 }  { res_0_V_V_TREADY out_acc 0 1 } } }
	res_1_V_V { axis {  { res_1_V_V_TDATA out_data 1 16 }  { res_1_V_V_TVALID out_vld 1 1 }  { res_1_V_V_TREADY out_acc 0 1 } } }
	res_2_V_V { axis {  { res_2_V_V_TDATA out_data 1 16 }  { res_2_V_V_TVALID out_vld 1 1 }  { res_2_V_V_TREADY out_acc 0 1 } } }
	res_3_V_V { axis {  { res_3_V_V_TDATA out_data 1 16 }  { res_3_V_V_TVALID out_vld 1 1 }  { res_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName relu_array_ap_fixed_ap_fixed_relu_config55_s
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
set C_modelName {relu_array<ap_fixed,ap_fixed,relu_config55>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_0_V_V int 16 regular {axi_s 0 volatile  { data_0_V_V Data } }  }
	{ data_1_V_V int 16 regular {axi_s 0 volatile  { data_1_V_V Data } }  }
	{ data_2_V_V int 16 regular {axi_s 0 volatile  { data_2_V_V Data } }  }
	{ data_3_V_V int 16 regular {axi_s 0 volatile  { data_3_V_V Data } }  }
	{ res_0_V_V int 16 regular {axi_s 1 volatile  { res_0_V_V Data } }  }
	{ res_1_V_V int 16 regular {axi_s 1 volatile  { res_1_V_V Data } }  }
	{ res_2_V_V int 16 regular {axi_s 1 volatile  { res_2_V_V Data } }  }
	{ res_3_V_V int 16 regular {axi_s 1 volatile  { res_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ data_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ data_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ data_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ data_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ res_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ res_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ res_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ res_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ res_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ res_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ res_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ res_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ res_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ res_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ res_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ res_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_0_V_V", "role": "TDATA" }} , 
 	{ "name": "data_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_0_V_V", "role": "TVALID" }} , 
 	{ "name": "data_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_0_V_V", "role": "TREADY" }} , 
 	{ "name": "data_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_1_V_V", "role": "TDATA" }} , 
 	{ "name": "data_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_1_V_V", "role": "TVALID" }} , 
 	{ "name": "data_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_1_V_V", "role": "TREADY" }} , 
 	{ "name": "data_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_2_V_V", "role": "TDATA" }} , 
 	{ "name": "data_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_2_V_V", "role": "TVALID" }} , 
 	{ "name": "data_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_2_V_V", "role": "TREADY" }} , 
 	{ "name": "data_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_3_V_V", "role": "TDATA" }} , 
 	{ "name": "data_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_3_V_V", "role": "TVALID" }} , 
 	{ "name": "data_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_3_V_V", "role": "TREADY" }} , 
 	{ "name": "res_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_0_V_V", "role": "TDATA" }} , 
 	{ "name": "res_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_0_V_V", "role": "TVALID" }} , 
 	{ "name": "res_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_0_V_V", "role": "TREADY" }} , 
 	{ "name": "res_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_1_V_V", "role": "TDATA" }} , 
 	{ "name": "res_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_1_V_V", "role": "TVALID" }} , 
 	{ "name": "res_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_1_V_V", "role": "TREADY" }} , 
 	{ "name": "res_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_2_V_V", "role": "TDATA" }} , 
 	{ "name": "res_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_2_V_V", "role": "TVALID" }} , 
 	{ "name": "res_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_2_V_V", "role": "TREADY" }} , 
 	{ "name": "res_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_3_V_V", "role": "TDATA" }} , 
 	{ "name": "res_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_3_V_V", "role": "TVALID" }} , 
 	{ "name": "res_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "relu_array_ap_fixed_ap_fixed_relu_config55_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_ap_fixed_relu_config55_s {
		data_0_V_V {Type I LastRead 1 FirstWrite -1}
		data_1_V_V {Type I LastRead 1 FirstWrite -1}
		data_2_V_V {Type I LastRead 1 FirstWrite -1}
		data_3_V_V {Type I LastRead 1 FirstWrite -1}
		res_0_V_V {Type O LastRead -1 FirstWrite 2}
		res_1_V_V {Type O LastRead -1 FirstWrite 2}
		res_2_V_V {Type O LastRead -1 FirstWrite 2}
		res_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619", "Max" : "619"}
	, {"Name" : "Interval", "Min" : "619", "Max" : "619"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_V_V { axis {  { data_0_V_V_TDATA in_data 0 16 }  { data_0_V_V_TVALID in_vld 0 1 }  { data_0_V_V_TREADY in_acc 1 1 } } }
	data_1_V_V { axis {  { data_1_V_V_TDATA in_data 0 16 }  { data_1_V_V_TVALID in_vld 0 1 }  { data_1_V_V_TREADY in_acc 1 1 } } }
	data_2_V_V { axis {  { data_2_V_V_TDATA in_data 0 16 }  { data_2_V_V_TVALID in_vld 0 1 }  { data_2_V_V_TREADY in_acc 1 1 } } }
	data_3_V_V { axis {  { data_3_V_V_TDATA in_data 0 16 }  { data_3_V_V_TVALID in_vld 0 1 }  { data_3_V_V_TREADY in_acc 1 1 } } }
	res_0_V_V { axis {  { res_0_V_V_TDATA out_data 1 16 }  { res_0_V_V_TVALID out_vld 1 1 }  { res_0_V_V_TREADY out_acc 0 1 } } }
	res_1_V_V { axis {  { res_1_V_V_TDATA out_data 1 16 }  { res_1_V_V_TVALID out_vld 1 1 }  { res_1_V_V_TREADY out_acc 0 1 } } }
	res_2_V_V { axis {  { res_2_V_V_TDATA out_data 1 16 }  { res_2_V_V_TVALID out_vld 1 1 }  { res_2_V_V_TREADY out_acc 0 1 } } }
	res_3_V_V { axis {  { res_3_V_V_TDATA out_data 1 16 }  { res_3_V_V_TVALID out_vld 1 1 }  { res_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName relu_array_ap_fixed_ap_fixed_relu_config55_s
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
set C_modelName {relu_array<ap_fixed,ap_fixed,relu_config55>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_0_V_V int 16 regular {axi_s 0 volatile  { data_0_V_V Data } }  }
	{ data_1_V_V int 16 regular {axi_s 0 volatile  { data_1_V_V Data } }  }
	{ data_2_V_V int 16 regular {axi_s 0 volatile  { data_2_V_V Data } }  }
	{ data_3_V_V int 16 regular {axi_s 0 volatile  { data_3_V_V Data } }  }
	{ res_0_V_V int 16 regular {axi_s 1 volatile  { res_0_V_V Data } }  }
	{ res_1_V_V int 16 regular {axi_s 1 volatile  { res_1_V_V Data } }  }
	{ res_2_V_V int 16 regular {axi_s 1 volatile  { res_2_V_V Data } }  }
	{ res_3_V_V int 16 regular {axi_s 1 volatile  { res_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ data_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ data_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ data_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ data_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ res_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ res_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ res_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ res_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ res_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ res_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ res_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ res_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ res_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ res_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ res_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ res_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_0_V_V", "role": "TDATA" }} , 
 	{ "name": "data_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_0_V_V", "role": "TVALID" }} , 
 	{ "name": "data_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_0_V_V", "role": "TREADY" }} , 
 	{ "name": "data_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_1_V_V", "role": "TDATA" }} , 
 	{ "name": "data_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_1_V_V", "role": "TVALID" }} , 
 	{ "name": "data_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_1_V_V", "role": "TREADY" }} , 
 	{ "name": "data_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_2_V_V", "role": "TDATA" }} , 
 	{ "name": "data_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_2_V_V", "role": "TVALID" }} , 
 	{ "name": "data_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_2_V_V", "role": "TREADY" }} , 
 	{ "name": "data_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_3_V_V", "role": "TDATA" }} , 
 	{ "name": "data_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_3_V_V", "role": "TVALID" }} , 
 	{ "name": "data_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_3_V_V", "role": "TREADY" }} , 
 	{ "name": "res_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_0_V_V", "role": "TDATA" }} , 
 	{ "name": "res_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_0_V_V", "role": "TVALID" }} , 
 	{ "name": "res_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_0_V_V", "role": "TREADY" }} , 
 	{ "name": "res_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_1_V_V", "role": "TDATA" }} , 
 	{ "name": "res_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_1_V_V", "role": "TVALID" }} , 
 	{ "name": "res_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_1_V_V", "role": "TREADY" }} , 
 	{ "name": "res_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_2_V_V", "role": "TDATA" }} , 
 	{ "name": "res_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_2_V_V", "role": "TVALID" }} , 
 	{ "name": "res_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_2_V_V", "role": "TREADY" }} , 
 	{ "name": "res_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_3_V_V", "role": "TDATA" }} , 
 	{ "name": "res_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_3_V_V", "role": "TVALID" }} , 
 	{ "name": "res_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "relu_array_ap_fixed_ap_fixed_relu_config55_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_ap_fixed_relu_config55_s {
		data_0_V_V {Type I LastRead 1 FirstWrite -1}
		data_1_V_V {Type I LastRead 1 FirstWrite -1}
		data_2_V_V {Type I LastRead 1 FirstWrite -1}
		data_3_V_V {Type I LastRead 1 FirstWrite -1}
		res_0_V_V {Type O LastRead -1 FirstWrite 2}
		res_1_V_V {Type O LastRead -1 FirstWrite 2}
		res_2_V_V {Type O LastRead -1 FirstWrite 2}
		res_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619", "Max" : "619"}
	, {"Name" : "Interval", "Min" : "619", "Max" : "619"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_V_V { axis {  { data_0_V_V_TDATA in_data 0 16 }  { data_0_V_V_TVALID in_vld 0 1 }  { data_0_V_V_TREADY in_acc 1 1 } } }
	data_1_V_V { axis {  { data_1_V_V_TDATA in_data 0 16 }  { data_1_V_V_TVALID in_vld 0 1 }  { data_1_V_V_TREADY in_acc 1 1 } } }
	data_2_V_V { axis {  { data_2_V_V_TDATA in_data 0 16 }  { data_2_V_V_TVALID in_vld 0 1 }  { data_2_V_V_TREADY in_acc 1 1 } } }
	data_3_V_V { axis {  { data_3_V_V_TDATA in_data 0 16 }  { data_3_V_V_TVALID in_vld 0 1 }  { data_3_V_V_TREADY in_acc 1 1 } } }
	res_0_V_V { axis {  { res_0_V_V_TDATA out_data 1 16 }  { res_0_V_V_TVALID out_vld 1 1 }  { res_0_V_V_TREADY out_acc 0 1 } } }
	res_1_V_V { axis {  { res_1_V_V_TDATA out_data 1 16 }  { res_1_V_V_TVALID out_vld 1 1 }  { res_1_V_V_TREADY out_acc 0 1 } } }
	res_2_V_V { axis {  { res_2_V_V_TDATA out_data 1 16 }  { res_2_V_V_TVALID out_vld 1 1 }  { res_2_V_V_TREADY out_acc 0 1 } } }
	res_3_V_V { axis {  { res_3_V_V_TDATA out_data 1 16 }  { res_3_V_V_TVALID out_vld 1 1 }  { res_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName relu_array_ap_fixed_ap_fixed_relu_config55_s
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
set C_modelName {relu_array<ap_fixed,ap_fixed,relu_config55>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_0_V_V int 16 regular {axi_s 0 volatile  { data_0_V_V Data } }  }
	{ data_1_V_V int 16 regular {axi_s 0 volatile  { data_1_V_V Data } }  }
	{ data_2_V_V int 16 regular {axi_s 0 volatile  { data_2_V_V Data } }  }
	{ data_3_V_V int 16 regular {axi_s 0 volatile  { data_3_V_V Data } }  }
	{ res_0_V_V int 16 regular {axi_s 1 volatile  { res_0_V_V Data } }  }
	{ res_1_V_V int 16 regular {axi_s 1 volatile  { res_1_V_V Data } }  }
	{ res_2_V_V int 16 regular {axi_s 1 volatile  { res_2_V_V Data } }  }
	{ res_3_V_V int 16 regular {axi_s 1 volatile  { res_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ data_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ data_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ data_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ data_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ res_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ res_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ res_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ res_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ res_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ res_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ res_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ res_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ res_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ res_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ res_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ res_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_0_V_V", "role": "TDATA" }} , 
 	{ "name": "data_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_0_V_V", "role": "TVALID" }} , 
 	{ "name": "data_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_0_V_V", "role": "TREADY" }} , 
 	{ "name": "data_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_1_V_V", "role": "TDATA" }} , 
 	{ "name": "data_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_1_V_V", "role": "TVALID" }} , 
 	{ "name": "data_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_1_V_V", "role": "TREADY" }} , 
 	{ "name": "data_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_2_V_V", "role": "TDATA" }} , 
 	{ "name": "data_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_2_V_V", "role": "TVALID" }} , 
 	{ "name": "data_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_2_V_V", "role": "TREADY" }} , 
 	{ "name": "data_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_3_V_V", "role": "TDATA" }} , 
 	{ "name": "data_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_3_V_V", "role": "TVALID" }} , 
 	{ "name": "data_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_3_V_V", "role": "TREADY" }} , 
 	{ "name": "res_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_0_V_V", "role": "TDATA" }} , 
 	{ "name": "res_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_0_V_V", "role": "TVALID" }} , 
 	{ "name": "res_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_0_V_V", "role": "TREADY" }} , 
 	{ "name": "res_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_1_V_V", "role": "TDATA" }} , 
 	{ "name": "res_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_1_V_V", "role": "TVALID" }} , 
 	{ "name": "res_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_1_V_V", "role": "TREADY" }} , 
 	{ "name": "res_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_2_V_V", "role": "TDATA" }} , 
 	{ "name": "res_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_2_V_V", "role": "TVALID" }} , 
 	{ "name": "res_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_2_V_V", "role": "TREADY" }} , 
 	{ "name": "res_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_3_V_V", "role": "TDATA" }} , 
 	{ "name": "res_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_3_V_V", "role": "TVALID" }} , 
 	{ "name": "res_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "relu_array_ap_fixed_ap_fixed_relu_config55_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_ap_fixed_relu_config55_s {
		data_0_V_V {Type I LastRead 1 FirstWrite -1}
		data_1_V_V {Type I LastRead 1 FirstWrite -1}
		data_2_V_V {Type I LastRead 1 FirstWrite -1}
		data_3_V_V {Type I LastRead 1 FirstWrite -1}
		res_0_V_V {Type O LastRead -1 FirstWrite 2}
		res_1_V_V {Type O LastRead -1 FirstWrite 2}
		res_2_V_V {Type O LastRead -1 FirstWrite 2}
		res_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "619", "Max" : "619"}
	, {"Name" : "Interval", "Min" : "619", "Max" : "619"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_V_V { axis {  { data_0_V_V_TDATA in_data 0 16 }  { data_0_V_V_TVALID in_vld 0 1 }  { data_0_V_V_TREADY in_acc 1 1 } } }
	data_1_V_V { axis {  { data_1_V_V_TDATA in_data 0 16 }  { data_1_V_V_TVALID in_vld 0 1 }  { data_1_V_V_TREADY in_acc 1 1 } } }
	data_2_V_V { axis {  { data_2_V_V_TDATA in_data 0 16 }  { data_2_V_V_TVALID in_vld 0 1 }  { data_2_V_V_TREADY in_acc 1 1 } } }
	data_3_V_V { axis {  { data_3_V_V_TDATA in_data 0 16 }  { data_3_V_V_TVALID in_vld 0 1 }  { data_3_V_V_TREADY in_acc 1 1 } } }
	res_0_V_V { axis {  { res_0_V_V_TDATA out_data 1 16 }  { res_0_V_V_TVALID out_vld 1 1 }  { res_0_V_V_TREADY out_acc 0 1 } } }
	res_1_V_V { axis {  { res_1_V_V_TDATA out_data 1 16 }  { res_1_V_V_TVALID out_vld 1 1 }  { res_1_V_V_TREADY out_acc 0 1 } } }
	res_2_V_V { axis {  { res_2_V_V_TDATA out_data 1 16 }  { res_2_V_V_TVALID out_vld 1 1 }  { res_2_V_V_TREADY out_acc 0 1 } } }
	res_3_V_V { axis {  { res_3_V_V_TDATA out_data 1 16 }  { res_3_V_V_TVALID out_vld 1 1 }  { res_3_V_V_TREADY out_acc 0 1 } } }
}
