set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_84", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_84", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_84", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_82", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_82", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12323", "Max" : "12323"}
	, {"Name" : "Interval", "Min" : "12324", "Max" : "12324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "b3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
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
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.b3_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_87", "Parent" : "2",
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
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}
		b3_V {Type I LastRead -1 FirstWrite -1}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}
		b3_V {Type I LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12323", "Max" : "12323"}
	, {"Name" : "Interval", "Min" : "12324", "Max" : "12324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12324", "EstimateLatencyMax" : "12324",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]},
			{"Name" : "s3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "s3_V"}]},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "b3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12324", "EstimateLatencyMax" : "12324",
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
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.s3_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.b3_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 3}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}
		s3_V {Type I LastRead -1 FirstWrite -1}
		b3_V {Type I LastRead -1 FirstWrite -1}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 3}
		s3_V {Type I LastRead -1 FirstWrite -1}
		b3_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12324", "Max" : "12324"}
	, {"Name" : "Interval", "Min" : "12325", "Max" : "12325"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12323", "Max" : "12323"}
	, {"Name" : "Interval", "Min" : "12324", "Max" : "12324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_82", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36962", "EstimateLatencyMax" : "36962",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36962", "EstimateLatencyMax" : "36962",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_82", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 2 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 2 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36962", "Max" : "36962"}
	, {"Name" : "Interval", "Min" : "36963", "Max" : "36963"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "b3_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
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
					{"Name" : "res_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.b3_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_87", "Parent" : "2",
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
			{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}
		b3_V {Type I LastRead -1 FirstWrite -1}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}
		b3_V {Type I LastRead -1 FirstWrite -1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12323", "Max" : "12323"}
	, {"Name" : "Interval", "Min" : "12324", "Max" : "12324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24641", "EstimateLatencyMax" : "24641",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_82", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 1}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 1}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24641", "Max" : "24641"}
	, {"Name" : "Interval", "Min" : "24642", "Max" : "24642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ em_barrel_V_V int 32 regular {axi_s 0 volatile  { em_barrel_V_V Data } }  }
	{ layer55_out_V_V int 32 regular {axi_s 1 volatile  { layer55_out_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "em_barrel_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "em_barrel.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "layer55_out_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "layer55_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ em_barrel_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ layer55_out_V_V_TDATA sc_out sc_lv 32 signal 1 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 2 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ em_barrel_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ em_barrel_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ layer55_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer55_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "em_barrel_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "em_barrel_V_V", "role": "TDATA" }} , 
 	{ "name": "layer55_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer55_out_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "em_barrel_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_barrel_V_V", "role": "TVALID" }} , 
 	{ "name": "em_barrel_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "em_barrel_V_V", "role": "TREADY" }} , 
 	{ "name": "layer55_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer55_out_V_V", "role": "TVALID" }} , 
 	{ "name": "layer55_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer55_out_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "ReadyCount" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0"}],
		"Port" : [
			{"Name" : "em_barrel_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "data_V_V"}]},
			{"Name" : "layer55_out_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Port" : "res_V_V"}]},
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_in_1"}]},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Block_proc_U0", "Port" : "const_size_out_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "const_size_in_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "const_size_out_1", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12323", "EstimateLatencyMax" : "12323",
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80", "Parent" : "2",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U5", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.myproject_mux_42_32_1_1_U6", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_data_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_U0.regslice_both_res_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		em_barrel_V_V {Type I LastRead 1 FirstWrite -1}
		layer55_out_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s {
		data_V_V {Type I LastRead 1 FirstWrite -1}
		res_V_V {Type O LastRead -1 FirstWrite 2}}
	product_dense_ap_fixed_ap_fixed_ap_fixed_s {
		a_V {Type I LastRead 0 FirstWrite -1}
		w_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12323", "Max" : "12323"}
	, {"Name" : "Interval", "Min" : "12324", "Max" : "12324"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	em_barrel_V_V { axis {  { em_barrel_V_V_TDATA in_data 0 32 }  { em_barrel_V_V_TVALID in_vld 0 1 }  { em_barrel_V_V_TREADY in_acc 1 1 } } }
	layer55_out_V_V { axis {  { layer55_out_V_V_TDATA out_data 1 32 }  { layer55_out_V_V_TVALID out_vld 1 1 }  { layer55_out_V_V_TREADY out_acc 0 1 } } }
	const_size_in_1 { ap_vld {  { const_size_in_1 out_data 1 16 }  { const_size_in_1_ap_vld out_vld 1 1 } } }
	const_size_out_1 { ap_vld {  { const_size_out_1 out_data 1 16 }  { const_size_out_1_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
