set moduleName zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s
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
set C_modelName {zeropad2d_cl_me<ap_fixed,ap_fixed,config4>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {axi_s 0 volatile  { data_V_V Data } }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "TDATA" }} , 
 	{ "name": "data_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_V_V", "role": "TVALID" }} , 
 	{ "name": "data_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_V_V", "role": "TREADY" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6428", "EstimateLatencyMax" : "6428",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s {
		data_V_V {Type I LastRead 514 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6428", "Max" : "6428"}
	, {"Name" : "Interval", "Min" : "6428", "Max" : "6428"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V_V { axis {  { data_V_V_TDATA in_data 0 16 }  { data_V_V_TVALID in_vld 0 1 }  { data_V_V_TREADY in_acc 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
}
set moduleName zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s
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
set C_modelName {zeropad2d_cl_me<ap_fixed,ap_fixed,config4>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_V int 16 regular {axi_s 0 volatile  { data_V_V Data } }  }
	{ res_V_V int 16 regular {axi_s 1 volatile  { res_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ res_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ res_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ res_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_V_V", "role": "TDATA" }} , 
 	{ "name": "data_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_V_V", "role": "TVALID" }} , 
 	{ "name": "data_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_V_V", "role": "TREADY" }} , 
 	{ "name": "res_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "res_V_V", "role": "TDATA" }} , 
 	{ "name": "res_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "res_V_V", "role": "TVALID" }} , 
 	{ "name": "res_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "res_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6437", "EstimateLatencyMax" : "6437",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_res_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s {
		data_V_V {Type I LastRead 6 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6437", "Max" : "6437"}
	, {"Name" : "Interval", "Min" : "6437", "Max" : "6437"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
]}

set Spec2ImplPortList { 
	data_V_V { axis {  { data_V_V_TDATA in_data 0 16 }  { data_V_V_TVALID in_vld 0 1 }  { data_V_V_TREADY in_acc 1 1 } } }
	res_V_V { axis {  { res_V_V_TDATA out_data 1 16 }  { res_V_V_TVALID out_vld 1 1 }  { res_V_V_TREADY out_acc 0 1 } } }
}
