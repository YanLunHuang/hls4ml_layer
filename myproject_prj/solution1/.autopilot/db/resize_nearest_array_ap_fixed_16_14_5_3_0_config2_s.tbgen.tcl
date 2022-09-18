set moduleName resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s
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
set C_modelName {resize_nearest_array<ap_fixed<16, 14, 5, 3, 0>, config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_0_V_V int 16 regular {axi_s 0 volatile  { image_0_V_V Data } }  }
	{ image_1_V_V int 16 regular {axi_s 0 volatile  { image_1_V_V Data } }  }
	{ image_2_V_V int 16 regular {axi_s 0 volatile  { image_2_V_V Data } }  }
	{ image_3_V_V int 16 regular {axi_s 0 volatile  { image_3_V_V Data } }  }
	{ resized_0_V_V int 16 regular {axi_s 1 volatile  { resized_0_V_V Data } }  }
	{ resized_1_V_V int 16 regular {axi_s 1 volatile  { resized_1_V_V Data } }  }
	{ resized_2_V_V int 16 regular {axi_s 1 volatile  { resized_2_V_V Data } }  }
	{ resized_3_V_V int 16 regular {axi_s 1 volatile  { resized_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "resized_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ image_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ image_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ image_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ image_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ image_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ image_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ image_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ image_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ image_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ image_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ image_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ image_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ resized_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ resized_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ resized_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ resized_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ resized_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ resized_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ resized_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ resized_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ resized_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ resized_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ resized_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ resized_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_0_V_V", "role": "TDATA" }} , 
 	{ "name": "image_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_0_V_V", "role": "TVALID" }} , 
 	{ "name": "image_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_0_V_V", "role": "TREADY" }} , 
 	{ "name": "image_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_1_V_V", "role": "TDATA" }} , 
 	{ "name": "image_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_1_V_V", "role": "TVALID" }} , 
 	{ "name": "image_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_1_V_V", "role": "TREADY" }} , 
 	{ "name": "image_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_2_V_V", "role": "TDATA" }} , 
 	{ "name": "image_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_2_V_V", "role": "TVALID" }} , 
 	{ "name": "image_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_2_V_V", "role": "TREADY" }} , 
 	{ "name": "image_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_3_V_V", "role": "TDATA" }} , 
 	{ "name": "image_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_3_V_V", "role": "TVALID" }} , 
 	{ "name": "image_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_3_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_0_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_0_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_0_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_1_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_1_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_1_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_2_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_2_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_2_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_3_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_3_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3083", "EstimateLatencyMax" : "3083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s {
		image_0_V_V {Type I LastRead 12 FirstWrite -1}
		image_1_V_V {Type I LastRead 12 FirstWrite -1}
		image_2_V_V {Type I LastRead 12 FirstWrite -1}
		image_3_V_V {Type I LastRead 12 FirstWrite -1}
		resized_0_V_V {Type O LastRead -1 FirstWrite 2}
		resized_1_V_V {Type O LastRead -1 FirstWrite 2}
		resized_2_V_V {Type O LastRead -1 FirstWrite 2}
		resized_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3083", "Max" : "3083"}
	, {"Name" : "Interval", "Min" : "3083", "Max" : "3083"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_0_V_V { axis {  { image_0_V_V_TDATA in_data 0 16 }  { image_0_V_V_TVALID in_vld 0 1 }  { image_0_V_V_TREADY in_acc 1 1 } } }
	image_1_V_V { axis {  { image_1_V_V_TDATA in_data 0 16 }  { image_1_V_V_TVALID in_vld 0 1 }  { image_1_V_V_TREADY in_acc 1 1 } } }
	image_2_V_V { axis {  { image_2_V_V_TDATA in_data 0 16 }  { image_2_V_V_TVALID in_vld 0 1 }  { image_2_V_V_TREADY in_acc 1 1 } } }
	image_3_V_V { axis {  { image_3_V_V_TDATA in_data 0 16 }  { image_3_V_V_TVALID in_vld 0 1 }  { image_3_V_V_TREADY in_acc 1 1 } } }
	resized_0_V_V { axis {  { resized_0_V_V_TDATA out_data 1 16 }  { resized_0_V_V_TVALID out_vld 1 1 }  { resized_0_V_V_TREADY out_acc 0 1 } } }
	resized_1_V_V { axis {  { resized_1_V_V_TDATA out_data 1 16 }  { resized_1_V_V_TVALID out_vld 1 1 }  { resized_1_V_V_TREADY out_acc 0 1 } } }
	resized_2_V_V { axis {  { resized_2_V_V_TDATA out_data 1 16 }  { resized_2_V_V_TVALID out_vld 1 1 }  { resized_2_V_V_TREADY out_acc 0 1 } } }
	resized_3_V_V { axis {  { resized_3_V_V_TDATA out_data 1 16 }  { resized_3_V_V_TVALID out_vld 1 1 }  { resized_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s
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
set C_modelName {resize_nearest_array<ap_fixed<16, 14, 5, 3, 0>, config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_0_V_V int 16 regular {axi_s 0 volatile  { image_0_V_V Data } }  }
	{ image_1_V_V int 16 regular {axi_s 0 volatile  { image_1_V_V Data } }  }
	{ image_2_V_V int 16 regular {axi_s 0 volatile  { image_2_V_V Data } }  }
	{ image_3_V_V int 16 regular {axi_s 0 volatile  { image_3_V_V Data } }  }
	{ resized_0_V_V int 16 regular {axi_s 1 volatile  { resized_0_V_V Data } }  }
	{ resized_1_V_V int 16 regular {axi_s 1 volatile  { resized_1_V_V Data } }  }
	{ resized_2_V_V int 16 regular {axi_s 1 volatile  { resized_2_V_V Data } }  }
	{ resized_3_V_V int 16 regular {axi_s 1 volatile  { resized_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "resized_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ image_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ image_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ image_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ image_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ image_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ image_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ image_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ image_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ image_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ image_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ image_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ image_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ resized_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ resized_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ resized_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ resized_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ resized_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ resized_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ resized_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ resized_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ resized_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ resized_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ resized_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ resized_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_0_V_V", "role": "TDATA" }} , 
 	{ "name": "image_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_0_V_V", "role": "TVALID" }} , 
 	{ "name": "image_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_0_V_V", "role": "TREADY" }} , 
 	{ "name": "image_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_1_V_V", "role": "TDATA" }} , 
 	{ "name": "image_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_1_V_V", "role": "TVALID" }} , 
 	{ "name": "image_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_1_V_V", "role": "TREADY" }} , 
 	{ "name": "image_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_2_V_V", "role": "TDATA" }} , 
 	{ "name": "image_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_2_V_V", "role": "TVALID" }} , 
 	{ "name": "image_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_2_V_V", "role": "TREADY" }} , 
 	{ "name": "image_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_3_V_V", "role": "TDATA" }} , 
 	{ "name": "image_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_3_V_V", "role": "TVALID" }} , 
 	{ "name": "image_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_3_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_0_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_0_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_0_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_1_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_1_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_1_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_2_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_2_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_2_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_3_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_3_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3083", "EstimateLatencyMax" : "3083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s {
		image_0_V_V {Type I LastRead 12 FirstWrite -1}
		image_1_V_V {Type I LastRead 12 FirstWrite -1}
		image_2_V_V {Type I LastRead 12 FirstWrite -1}
		image_3_V_V {Type I LastRead 12 FirstWrite -1}
		resized_0_V_V {Type O LastRead -1 FirstWrite 2}
		resized_1_V_V {Type O LastRead -1 FirstWrite 2}
		resized_2_V_V {Type O LastRead -1 FirstWrite 2}
		resized_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3083", "Max" : "3083"}
	, {"Name" : "Interval", "Min" : "3083", "Max" : "3083"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_0_V_V { axis {  { image_0_V_V_TDATA in_data 0 16 }  { image_0_V_V_TVALID in_vld 0 1 }  { image_0_V_V_TREADY in_acc 1 1 } } }
	image_1_V_V { axis {  { image_1_V_V_TDATA in_data 0 16 }  { image_1_V_V_TVALID in_vld 0 1 }  { image_1_V_V_TREADY in_acc 1 1 } } }
	image_2_V_V { axis {  { image_2_V_V_TDATA in_data 0 16 }  { image_2_V_V_TVALID in_vld 0 1 }  { image_2_V_V_TREADY in_acc 1 1 } } }
	image_3_V_V { axis {  { image_3_V_V_TDATA in_data 0 16 }  { image_3_V_V_TVALID in_vld 0 1 }  { image_3_V_V_TREADY in_acc 1 1 } } }
	resized_0_V_V { axis {  { resized_0_V_V_TDATA out_data 1 16 }  { resized_0_V_V_TVALID out_vld 1 1 }  { resized_0_V_V_TREADY out_acc 0 1 } } }
	resized_1_V_V { axis {  { resized_1_V_V_TDATA out_data 1 16 }  { resized_1_V_V_TVALID out_vld 1 1 }  { resized_1_V_V_TREADY out_acc 0 1 } } }
	resized_2_V_V { axis {  { resized_2_V_V_TDATA out_data 1 16 }  { resized_2_V_V_TVALID out_vld 1 1 }  { resized_2_V_V_TREADY out_acc 0 1 } } }
	resized_3_V_V { axis {  { resized_3_V_V_TDATA out_data 1 16 }  { resized_3_V_V_TVALID out_vld 1 1 }  { resized_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s
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
set C_modelName {resize_nearest_array<ap_fixed<16, 14, 5, 3, 0>, config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_0_V_V int 16 regular {axi_s 0 volatile  { image_0_V_V Data } }  }
	{ image_1_V_V int 16 regular {axi_s 0 volatile  { image_1_V_V Data } }  }
	{ image_2_V_V int 16 regular {axi_s 0 volatile  { image_2_V_V Data } }  }
	{ image_3_V_V int 16 regular {axi_s 0 volatile  { image_3_V_V Data } }  }
	{ resized_0_V_V int 16 regular {axi_s 1 volatile  { resized_0_V_V Data } }  }
	{ resized_1_V_V int 16 regular {axi_s 1 volatile  { resized_1_V_V Data } }  }
	{ resized_2_V_V int 16 regular {axi_s 1 volatile  { resized_2_V_V Data } }  }
	{ resized_3_V_V int 16 regular {axi_s 1 volatile  { resized_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "resized_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ image_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ image_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ image_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ image_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ image_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ image_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ image_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ image_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ image_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ image_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ image_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ image_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ resized_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ resized_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ resized_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ resized_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ resized_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ resized_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ resized_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ resized_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ resized_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ resized_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ resized_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ resized_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_0_V_V", "role": "TDATA" }} , 
 	{ "name": "image_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_0_V_V", "role": "TVALID" }} , 
 	{ "name": "image_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_0_V_V", "role": "TREADY" }} , 
 	{ "name": "image_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_1_V_V", "role": "TDATA" }} , 
 	{ "name": "image_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_1_V_V", "role": "TVALID" }} , 
 	{ "name": "image_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_1_V_V", "role": "TREADY" }} , 
 	{ "name": "image_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_2_V_V", "role": "TDATA" }} , 
 	{ "name": "image_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_2_V_V", "role": "TVALID" }} , 
 	{ "name": "image_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_2_V_V", "role": "TREADY" }} , 
 	{ "name": "image_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_3_V_V", "role": "TDATA" }} , 
 	{ "name": "image_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_3_V_V", "role": "TVALID" }} , 
 	{ "name": "image_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_3_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_0_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_0_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_0_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_1_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_1_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_1_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_2_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_2_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_2_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_3_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_3_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3083", "EstimateLatencyMax" : "3083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s {
		image_0_V_V {Type I LastRead 12 FirstWrite -1}
		image_1_V_V {Type I LastRead 12 FirstWrite -1}
		image_2_V_V {Type I LastRead 12 FirstWrite -1}
		image_3_V_V {Type I LastRead 12 FirstWrite -1}
		resized_0_V_V {Type O LastRead -1 FirstWrite 2}
		resized_1_V_V {Type O LastRead -1 FirstWrite 2}
		resized_2_V_V {Type O LastRead -1 FirstWrite 2}
		resized_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3083", "Max" : "3083"}
	, {"Name" : "Interval", "Min" : "3083", "Max" : "3083"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_0_V_V { axis {  { image_0_V_V_TDATA in_data 0 16 }  { image_0_V_V_TVALID in_vld 0 1 }  { image_0_V_V_TREADY in_acc 1 1 } } }
	image_1_V_V { axis {  { image_1_V_V_TDATA in_data 0 16 }  { image_1_V_V_TVALID in_vld 0 1 }  { image_1_V_V_TREADY in_acc 1 1 } } }
	image_2_V_V { axis {  { image_2_V_V_TDATA in_data 0 16 }  { image_2_V_V_TVALID in_vld 0 1 }  { image_2_V_V_TREADY in_acc 1 1 } } }
	image_3_V_V { axis {  { image_3_V_V_TDATA in_data 0 16 }  { image_3_V_V_TVALID in_vld 0 1 }  { image_3_V_V_TREADY in_acc 1 1 } } }
	resized_0_V_V { axis {  { resized_0_V_V_TDATA out_data 1 16 }  { resized_0_V_V_TVALID out_vld 1 1 }  { resized_0_V_V_TREADY out_acc 0 1 } } }
	resized_1_V_V { axis {  { resized_1_V_V_TDATA out_data 1 16 }  { resized_1_V_V_TVALID out_vld 1 1 }  { resized_1_V_V_TREADY out_acc 0 1 } } }
	resized_2_V_V { axis {  { resized_2_V_V_TDATA out_data 1 16 }  { resized_2_V_V_TVALID out_vld 1 1 }  { resized_2_V_V_TREADY out_acc 0 1 } } }
	resized_3_V_V { axis {  { resized_3_V_V_TDATA out_data 1 16 }  { resized_3_V_V_TVALID out_vld 1 1 }  { resized_3_V_V_TREADY out_acc 0 1 } } }
}
set moduleName resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s
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
set C_modelName {resize_nearest_array<ap_fixed<16, 14, 5, 3, 0>, config2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_0_V_V int 16 regular {axi_s 0 volatile  { image_0_V_V Data } }  }
	{ image_1_V_V int 16 regular {axi_s 0 volatile  { image_1_V_V Data } }  }
	{ image_2_V_V int 16 regular {axi_s 0 volatile  { image_2_V_V Data } }  }
	{ image_3_V_V int 16 regular {axi_s 0 volatile  { image_3_V_V Data } }  }
	{ resized_0_V_V int 16 regular {axi_s 1 volatile  { resized_0_V_V Data } }  }
	{ resized_1_V_V int 16 regular {axi_s 1 volatile  { resized_1_V_V Data } }  }
	{ resized_2_V_V int 16 regular {axi_s 1 volatile  { resized_2_V_V Data } }  }
	{ resized_3_V_V int 16 regular {axi_s 1 volatile  { resized_3_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "image_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "resized_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ image_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ image_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ image_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ image_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ image_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ image_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ image_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ image_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ image_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ image_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ image_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ image_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ resized_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ resized_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ resized_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ resized_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ resized_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ resized_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ resized_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ resized_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ resized_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ resized_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ resized_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ resized_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_0_V_V", "role": "TDATA" }} , 
 	{ "name": "image_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_0_V_V", "role": "TVALID" }} , 
 	{ "name": "image_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_0_V_V", "role": "TREADY" }} , 
 	{ "name": "image_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_1_V_V", "role": "TDATA" }} , 
 	{ "name": "image_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_1_V_V", "role": "TVALID" }} , 
 	{ "name": "image_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_1_V_V", "role": "TREADY" }} , 
 	{ "name": "image_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_2_V_V", "role": "TDATA" }} , 
 	{ "name": "image_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_2_V_V", "role": "TVALID" }} , 
 	{ "name": "image_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_2_V_V", "role": "TREADY" }} , 
 	{ "name": "image_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "image_3_V_V", "role": "TDATA" }} , 
 	{ "name": "image_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "image_3_V_V", "role": "TVALID" }} , 
 	{ "name": "image_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "image_3_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_0_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_0_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_0_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_1_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_1_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_1_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_2_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_2_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_2_V_V", "role": "TREADY" }} , 
 	{ "name": "resized_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "resized_3_V_V", "role": "TDATA" }} , 
 	{ "name": "resized_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "resized_3_V_V", "role": "TVALID" }} , 
 	{ "name": "resized_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "resized_3_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3083", "EstimateLatencyMax" : "3083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_0_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_1_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_2_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_3_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "image_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_0_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_0_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_1_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_1_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_2_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_2_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_3_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_3_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_0_V_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_1_V_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_2_V_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_image_3_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_0_V_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_1_V_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_2_V_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_resized_3_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	resize_nearest_array_ap_fixed_16_14_5_3_0_config2_s {
		image_0_V_V {Type I LastRead 12 FirstWrite -1}
		image_1_V_V {Type I LastRead 12 FirstWrite -1}
		image_2_V_V {Type I LastRead 12 FirstWrite -1}
		image_3_V_V {Type I LastRead 12 FirstWrite -1}
		resized_0_V_V {Type O LastRead -1 FirstWrite 2}
		resized_1_V_V {Type O LastRead -1 FirstWrite 2}
		resized_2_V_V {Type O LastRead -1 FirstWrite 2}
		resized_3_V_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3083", "Max" : "3083"}
	, {"Name" : "Interval", "Min" : "3083", "Max" : "3083"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_0_V_V { axis {  { image_0_V_V_TDATA in_data 0 16 }  { image_0_V_V_TVALID in_vld 0 1 }  { image_0_V_V_TREADY in_acc 1 1 } } }
	image_1_V_V { axis {  { image_1_V_V_TDATA in_data 0 16 }  { image_1_V_V_TVALID in_vld 0 1 }  { image_1_V_V_TREADY in_acc 1 1 } } }
	image_2_V_V { axis {  { image_2_V_V_TDATA in_data 0 16 }  { image_2_V_V_TVALID in_vld 0 1 }  { image_2_V_V_TREADY in_acc 1 1 } } }
	image_3_V_V { axis {  { image_3_V_V_TDATA in_data 0 16 }  { image_3_V_V_TVALID in_vld 0 1 }  { image_3_V_V_TREADY in_acc 1 1 } } }
	resized_0_V_V { axis {  { resized_0_V_V_TDATA out_data 1 16 }  { resized_0_V_V_TVALID out_vld 1 1 }  { resized_0_V_V_TREADY out_acc 0 1 } } }
	resized_1_V_V { axis {  { resized_1_V_V_TDATA out_data 1 16 }  { resized_1_V_V_TVALID out_vld 1 1 }  { resized_1_V_V_TREADY out_acc 0 1 } } }
	resized_2_V_V { axis {  { resized_2_V_V_TDATA out_data 1 16 }  { resized_2_V_V_TVALID out_vld 1 1 }  { resized_2_V_V_TREADY out_acc 0 1 } } }
	resized_3_V_V { axis {  { resized_3_V_V_TDATA out_data 1 16 }  { resized_3_V_V_TVALID out_vld 1 1 }  { resized_3_V_V_TREADY out_acc 0 1 } } }
}
