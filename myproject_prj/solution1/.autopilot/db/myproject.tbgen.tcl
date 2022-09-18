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
	{ input_1_0_V_V int 16 regular {axi_s 0 volatile  { input_1_0_V_V Data } }  }
	{ input_1_1_V_V int 16 regular {axi_s 0 volatile  { input_1_1_V_V Data } }  }
	{ input_1_2_V_V int 16 regular {axi_s 0 volatile  { input_1_2_V_V Data } }  }
	{ input_1_3_V_V int 16 regular {axi_s 0 volatile  { input_1_3_V_V Data } }  }
	{ layer2_out_0_V_V int 16 regular {axi_s 1 volatile  { layer2_out_0_V_V Data } }  }
	{ layer2_out_1_V_V int 16 regular {axi_s 1 volatile  { layer2_out_1_V_V Data } }  }
	{ layer2_out_2_V_V int 16 regular {axi_s 1 volatile  { layer2_out_2_V_V Data } }  }
	{ layer2_out_3_V_V int 16 regular {axi_s 1 volatile  { layer2_out_3_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_1_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ input_1_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ input_1_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ input_1_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ input_1_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ layer2_out_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ layer2_out_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ layer2_out_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ layer2_out_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 8 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ input_1_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_1_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ input_1_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_1_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ input_1_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ input_1_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ input_1_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_1_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ layer2_out_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ layer2_out_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ layer2_out_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ layer2_out_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ layer2_out_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ layer2_out_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ layer2_out_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ layer2_out_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_1_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_0_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_1_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_2_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_3_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_0_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_1_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_2_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_3_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "input_1_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_0_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_0_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_1_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_1_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_2_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_2_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_3_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_3_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_0_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_0_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_1_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_1_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_2_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_2_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_3_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_3_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "ReadyCount" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0"}],
		"Port" : [
			{"Name" : "input_1_0_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_0_V_V"}]},
			{"Name" : "input_1_1_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_1_V_V"}]},
			{"Name" : "input_1_2_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_2_V_V"}]},
			{"Name" : "input_1_3_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_3_V_V"}]},
			{"Name" : "layer2_out_0_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_0_V_V"}]},
			{"Name" : "layer2_out_1_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_1_V_V"}]},
			{"Name" : "layer2_out_2_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_2_V_V"}]},
			{"Name" : "layer2_out_3_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_3_V_V"}]},
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_0_V_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_1_V_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_2_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_3_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_0_V_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_1_V_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_2_V_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_3_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input_1_0_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_1_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_2_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_3_V_V {Type I LastRead 1 FirstWrite -1}
		layer2_out_0_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_1_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_2_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_3_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
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
	, {"Name" : "Interval", "Min" : "620", "Max" : "620"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_1_0_V_V { axis {  { input_1_0_V_V_TDATA in_data 0 16 }  { input_1_0_V_V_TVALID in_vld 0 1 }  { input_1_0_V_V_TREADY in_acc 1 1 } } }
	input_1_1_V_V { axis {  { input_1_1_V_V_TDATA in_data 0 16 }  { input_1_1_V_V_TVALID in_vld 0 1 }  { input_1_1_V_V_TREADY in_acc 1 1 } } }
	input_1_2_V_V { axis {  { input_1_2_V_V_TDATA in_data 0 16 }  { input_1_2_V_V_TVALID in_vld 0 1 }  { input_1_2_V_V_TREADY in_acc 1 1 } } }
	input_1_3_V_V { axis {  { input_1_3_V_V_TDATA in_data 0 16 }  { input_1_3_V_V_TVALID in_vld 0 1 }  { input_1_3_V_V_TREADY in_acc 1 1 } } }
	layer2_out_0_V_V { axis {  { layer2_out_0_V_V_TDATA out_data 1 16 }  { layer2_out_0_V_V_TVALID out_vld 1 1 }  { layer2_out_0_V_V_TREADY out_acc 0 1 } } }
	layer2_out_1_V_V { axis {  { layer2_out_1_V_V_TDATA out_data 1 16 }  { layer2_out_1_V_V_TVALID out_vld 1 1 }  { layer2_out_1_V_V_TREADY out_acc 0 1 } } }
	layer2_out_2_V_V { axis {  { layer2_out_2_V_V_TDATA out_data 1 16 }  { layer2_out_2_V_V_TVALID out_vld 1 1 }  { layer2_out_2_V_V_TREADY out_acc 0 1 } } }
	layer2_out_3_V_V { axis {  { layer2_out_3_V_V_TDATA out_data 1 16 }  { layer2_out_3_V_V_TVALID out_vld 1 1 }  { layer2_out_3_V_V_TREADY out_acc 0 1 } } }
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
	{ input_1_0_V_V int 16 regular {axi_s 0 volatile  { input_1_0_V_V Data } }  }
	{ input_1_1_V_V int 16 regular {axi_s 0 volatile  { input_1_1_V_V Data } }  }
	{ input_1_2_V_V int 16 regular {axi_s 0 volatile  { input_1_2_V_V Data } }  }
	{ input_1_3_V_V int 16 regular {axi_s 0 volatile  { input_1_3_V_V Data } }  }
	{ layer2_out_0_V_V int 16 regular {axi_s 1 volatile  { layer2_out_0_V_V Data } }  }
	{ layer2_out_1_V_V int 16 regular {axi_s 1 volatile  { layer2_out_1_V_V Data } }  }
	{ layer2_out_2_V_V int 16 regular {axi_s 1 volatile  { layer2_out_2_V_V Data } }  }
	{ layer2_out_3_V_V int 16 regular {axi_s 1 volatile  { layer2_out_3_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_1_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ input_1_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ input_1_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ input_1_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ input_1_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ layer2_out_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ layer2_out_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ layer2_out_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ layer2_out_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 8 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ input_1_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_1_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ input_1_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_1_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ input_1_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ input_1_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ input_1_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_1_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ layer2_out_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ layer2_out_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ layer2_out_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ layer2_out_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ layer2_out_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ layer2_out_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ layer2_out_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ layer2_out_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_1_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_0_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_1_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_2_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_3_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_0_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_1_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_2_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_3_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "input_1_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_0_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_0_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_1_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_1_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_2_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_2_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_3_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_3_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_0_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_0_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_1_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_1_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_2_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_2_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_3_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_3_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "ReadyCount" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0"}],
		"Port" : [
			{"Name" : "input_1_0_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_0_V_V"}]},
			{"Name" : "input_1_1_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_1_V_V"}]},
			{"Name" : "input_1_2_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_2_V_V"}]},
			{"Name" : "input_1_3_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_3_V_V"}]},
			{"Name" : "layer2_out_0_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_0_V_V"}]},
			{"Name" : "layer2_out_1_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_1_V_V"}]},
			{"Name" : "layer2_out_2_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_2_V_V"}]},
			{"Name" : "layer2_out_3_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_3_V_V"}]},
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_0_V_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_1_V_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_2_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_3_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_0_V_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_1_V_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_2_V_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_3_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input_1_0_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_1_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_2_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_3_V_V {Type I LastRead 1 FirstWrite -1}
		layer2_out_0_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_1_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_2_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_3_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
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
	, {"Name" : "Interval", "Min" : "620", "Max" : "620"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_1_0_V_V { axis {  { input_1_0_V_V_TDATA in_data 0 16 }  { input_1_0_V_V_TVALID in_vld 0 1 }  { input_1_0_V_V_TREADY in_acc 1 1 } } }
	input_1_1_V_V { axis {  { input_1_1_V_V_TDATA in_data 0 16 }  { input_1_1_V_V_TVALID in_vld 0 1 }  { input_1_1_V_V_TREADY in_acc 1 1 } } }
	input_1_2_V_V { axis {  { input_1_2_V_V_TDATA in_data 0 16 }  { input_1_2_V_V_TVALID in_vld 0 1 }  { input_1_2_V_V_TREADY in_acc 1 1 } } }
	input_1_3_V_V { axis {  { input_1_3_V_V_TDATA in_data 0 16 }  { input_1_3_V_V_TVALID in_vld 0 1 }  { input_1_3_V_V_TREADY in_acc 1 1 } } }
	layer2_out_0_V_V { axis {  { layer2_out_0_V_V_TDATA out_data 1 16 }  { layer2_out_0_V_V_TVALID out_vld 1 1 }  { layer2_out_0_V_V_TREADY out_acc 0 1 } } }
	layer2_out_1_V_V { axis {  { layer2_out_1_V_V_TDATA out_data 1 16 }  { layer2_out_1_V_V_TVALID out_vld 1 1 }  { layer2_out_1_V_V_TREADY out_acc 0 1 } } }
	layer2_out_2_V_V { axis {  { layer2_out_2_V_V_TDATA out_data 1 16 }  { layer2_out_2_V_V_TVALID out_vld 1 1 }  { layer2_out_2_V_V_TREADY out_acc 0 1 } } }
	layer2_out_3_V_V { axis {  { layer2_out_3_V_V_TDATA out_data 1 16 }  { layer2_out_3_V_V_TVALID out_vld 1 1 }  { layer2_out_3_V_V_TREADY out_acc 0 1 } } }
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
	{ input_1_0_V_V int 16 regular {axi_s 0 volatile  { input_1_0_V_V Data } }  }
	{ input_1_1_V_V int 16 regular {axi_s 0 volatile  { input_1_1_V_V Data } }  }
	{ input_1_2_V_V int 16 regular {axi_s 0 volatile  { input_1_2_V_V Data } }  }
	{ input_1_3_V_V int 16 regular {axi_s 0 volatile  { input_1_3_V_V Data } }  }
	{ layer2_out_0_V_V int 16 regular {axi_s 1 volatile  { layer2_out_0_V_V Data } }  }
	{ layer2_out_1_V_V int 16 regular {axi_s 1 volatile  { layer2_out_1_V_V Data } }  }
	{ layer2_out_2_V_V int 16 regular {axi_s 1 volatile  { layer2_out_2_V_V Data } }  }
	{ layer2_out_3_V_V int 16 regular {axi_s 1 volatile  { layer2_out_3_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_1_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ input_1_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ input_1_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ input_1_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ input_1_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ layer2_out_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ layer2_out_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ layer2_out_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ layer2_out_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 8 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ input_1_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_1_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ input_1_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_1_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ input_1_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ input_1_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ input_1_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_1_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ layer2_out_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ layer2_out_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ layer2_out_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ layer2_out_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ layer2_out_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ layer2_out_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ layer2_out_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ layer2_out_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_1_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_0_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_1_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_2_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_3_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_0_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_1_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_2_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_3_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "input_1_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_0_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_0_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_1_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_1_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_2_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_2_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_3_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_3_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_0_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_0_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_1_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_1_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_2_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_2_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_3_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_3_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "ReadyCount" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0"}],
		"Port" : [
			{"Name" : "input_1_0_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_0_V_V"}]},
			{"Name" : "input_1_1_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_1_V_V"}]},
			{"Name" : "input_1_2_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_2_V_V"}]},
			{"Name" : "input_1_3_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_3_V_V"}]},
			{"Name" : "layer2_out_0_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_0_V_V"}]},
			{"Name" : "layer2_out_1_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_1_V_V"}]},
			{"Name" : "layer2_out_2_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_2_V_V"}]},
			{"Name" : "layer2_out_3_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_3_V_V"}]},
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_0_V_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_1_V_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_2_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_3_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_0_V_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_1_V_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_2_V_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_3_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input_1_0_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_1_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_2_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_3_V_V {Type I LastRead 1 FirstWrite -1}
		layer2_out_0_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_1_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_2_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_3_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
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
	, {"Name" : "Interval", "Min" : "620", "Max" : "620"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_1_0_V_V { axis {  { input_1_0_V_V_TDATA in_data 0 16 }  { input_1_0_V_V_TVALID in_vld 0 1 }  { input_1_0_V_V_TREADY in_acc 1 1 } } }
	input_1_1_V_V { axis {  { input_1_1_V_V_TDATA in_data 0 16 }  { input_1_1_V_V_TVALID in_vld 0 1 }  { input_1_1_V_V_TREADY in_acc 1 1 } } }
	input_1_2_V_V { axis {  { input_1_2_V_V_TDATA in_data 0 16 }  { input_1_2_V_V_TVALID in_vld 0 1 }  { input_1_2_V_V_TREADY in_acc 1 1 } } }
	input_1_3_V_V { axis {  { input_1_3_V_V_TDATA in_data 0 16 }  { input_1_3_V_V_TVALID in_vld 0 1 }  { input_1_3_V_V_TREADY in_acc 1 1 } } }
	layer2_out_0_V_V { axis {  { layer2_out_0_V_V_TDATA out_data 1 16 }  { layer2_out_0_V_V_TVALID out_vld 1 1 }  { layer2_out_0_V_V_TREADY out_acc 0 1 } } }
	layer2_out_1_V_V { axis {  { layer2_out_1_V_V_TDATA out_data 1 16 }  { layer2_out_1_V_V_TVALID out_vld 1 1 }  { layer2_out_1_V_V_TREADY out_acc 0 1 } } }
	layer2_out_2_V_V { axis {  { layer2_out_2_V_V_TDATA out_data 1 16 }  { layer2_out_2_V_V_TVALID out_vld 1 1 }  { layer2_out_2_V_V_TREADY out_acc 0 1 } } }
	layer2_out_3_V_V { axis {  { layer2_out_3_V_V_TDATA out_data 1 16 }  { layer2_out_3_V_V_TVALID out_vld 1 1 }  { layer2_out_3_V_V_TREADY out_acc 0 1 } } }
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
	{ input_1_0_V_V int 16 regular {axi_s 0 volatile  { input_1_0_V_V Data } }  }
	{ input_1_1_V_V int 16 regular {axi_s 0 volatile  { input_1_1_V_V Data } }  }
	{ input_1_2_V_V int 16 regular {axi_s 0 volatile  { input_1_2_V_V Data } }  }
	{ input_1_3_V_V int 16 regular {axi_s 0 volatile  { input_1_3_V_V Data } }  }
	{ layer2_out_0_V_V int 16 regular {axi_s 1 volatile  { layer2_out_0_V_V Data } }  }
	{ layer2_out_1_V_V int 16 regular {axi_s 1 volatile  { layer2_out_1_V_V Data } }  }
	{ layer2_out_2_V_V int 16 regular {axi_s 1 volatile  { layer2_out_2_V_V Data } }  }
	{ layer2_out_3_V_V int 16 regular {axi_s 1 volatile  { layer2_out_3_V_V Data } }  }
	{ const_size_in_1 int 16 regular {pointer 1}  }
	{ const_size_out_1 int 16 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_1_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "input_1_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_1.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_0_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_1_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_2_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "layer2_out_3_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "layer2_out.V.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "const_size_in_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_in_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "const_size_out_1", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "const_size_out_1","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ input_1_0_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ input_1_1_V_V_TDATA sc_in sc_lv 16 signal 1 } 
	{ input_1_2_V_V_TDATA sc_in sc_lv 16 signal 2 } 
	{ input_1_3_V_V_TDATA sc_in sc_lv 16 signal 3 } 
	{ layer2_out_0_V_V_TDATA sc_out sc_lv 16 signal 4 } 
	{ layer2_out_1_V_V_TDATA sc_out sc_lv 16 signal 5 } 
	{ layer2_out_2_V_V_TDATA sc_out sc_lv 16 signal 6 } 
	{ layer2_out_3_V_V_TDATA sc_out sc_lv 16 signal 7 } 
	{ const_size_in_1 sc_out sc_lv 16 signal 8 } 
	{ const_size_out_1 sc_out sc_lv 16 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ const_size_in_1_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ const_size_out_1_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ input_1_0_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_1_0_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ input_1_1_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ input_1_1_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ input_1_2_V_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ input_1_2_V_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ input_1_3_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_1_3_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ layer2_out_0_V_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ layer2_out_0_V_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ layer2_out_1_V_V_TVALID sc_out sc_logic 1 outvld 5 } 
	{ layer2_out_1_V_V_TREADY sc_in sc_logic 1 outacc 5 } 
	{ layer2_out_2_V_V_TVALID sc_out sc_logic 1 outvld 6 } 
	{ layer2_out_2_V_V_TREADY sc_in sc_logic 1 outacc 6 } 
	{ layer2_out_3_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ layer2_out_3_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_1_0_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_0_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_1_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_1_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_2_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_2_V_V", "role": "TDATA" }} , 
 	{ "name": "input_1_3_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_3_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_0_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_0_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_1_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_1_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_2_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_2_V_V", "role": "TDATA" }} , 
 	{ "name": "layer2_out_3_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer2_out_3_V_V", "role": "TDATA" }} , 
 	{ "name": "const_size_in_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_in_1", "role": "default" }} , 
 	{ "name": "const_size_out_1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "const_size_out_1", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "const_size_in_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_in_1", "role": "ap_vld" }} , 
 	{ "name": "const_size_out_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "const_size_out_1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "input_1_0_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_0_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_0_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_0_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_1_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_1_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_1_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_1_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_2_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_2_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_2_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_2_V_V", "role": "TREADY" }} , 
 	{ "name": "input_1_3_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_1_3_V_V", "role": "TVALID" }} , 
 	{ "name": "input_1_3_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_1_3_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_0_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_0_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_0_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_0_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_1_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_1_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_1_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_1_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_2_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_2_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_2_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_2_V_V", "role": "TREADY" }} , 
 	{ "name": "layer2_out_3_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer2_out_3_V_V", "role": "TVALID" }} , 
 	{ "name": "layer2_out_3_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer2_out_3_V_V", "role": "TREADY" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "619", "EstimateLatencyMax" : "619",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0", "ReadyCount" : "Block_proc_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "ReadyCount" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "Block_proc_U0"},
			{"ID" : "2", "Name" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0"}],
		"Port" : [
			{"Name" : "input_1_0_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_0_V_V"}]},
			{"Name" : "input_1_1_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_1_V_V"}]},
			{"Name" : "input_1_2_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_2_V_V"}]},
			{"Name" : "input_1_3_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "data_3_V_V"}]},
			{"Name" : "layer2_out_0_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_0_V_V"}]},
			{"Name" : "layer2_out_1_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_1_V_V"}]},
			{"Name" : "layer2_out_2_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_2_V_V"}]},
			{"Name" : "layer2_out_3_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Port" : "res_3_V_V"}]},
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_0_V_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_1_V_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_2_V_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_data_3_V_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_0_V_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_1_V_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_2_V_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_ap_fixed_relu_config55_U0.regslice_both_res_3_V_V_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input_1_0_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_1_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_2_V_V {Type I LastRead 1 FirstWrite -1}
		input_1_3_V_V {Type I LastRead 1 FirstWrite -1}
		layer2_out_0_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_1_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_2_V_V {Type O LastRead -1 FirstWrite 2}
		layer2_out_3_V_V {Type O LastRead -1 FirstWrite 2}
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		const_size_in_1 {Type O LastRead -1 FirstWrite 0}
		const_size_out_1 {Type O LastRead -1 FirstWrite 0}}
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
	, {"Name" : "Interval", "Min" : "620", "Max" : "620"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_1_0_V_V { axis {  { input_1_0_V_V_TDATA in_data 0 16 }  { input_1_0_V_V_TVALID in_vld 0 1 }  { input_1_0_V_V_TREADY in_acc 1 1 } } }
	input_1_1_V_V { axis {  { input_1_1_V_V_TDATA in_data 0 16 }  { input_1_1_V_V_TVALID in_vld 0 1 }  { input_1_1_V_V_TREADY in_acc 1 1 } } }
	input_1_2_V_V { axis {  { input_1_2_V_V_TDATA in_data 0 16 }  { input_1_2_V_V_TVALID in_vld 0 1 }  { input_1_2_V_V_TREADY in_acc 1 1 } } }
	input_1_3_V_V { axis {  { input_1_3_V_V_TDATA in_data 0 16 }  { input_1_3_V_V_TVALID in_vld 0 1 }  { input_1_3_V_V_TREADY in_acc 1 1 } } }
	layer2_out_0_V_V { axis {  { layer2_out_0_V_V_TDATA out_data 1 16 }  { layer2_out_0_V_V_TVALID out_vld 1 1 }  { layer2_out_0_V_V_TREADY out_acc 0 1 } } }
	layer2_out_1_V_V { axis {  { layer2_out_1_V_V_TDATA out_data 1 16 }  { layer2_out_1_V_V_TVALID out_vld 1 1 }  { layer2_out_1_V_V_TREADY out_acc 0 1 } } }
	layer2_out_2_V_V { axis {  { layer2_out_2_V_V_TDATA out_data 1 16 }  { layer2_out_2_V_V_TVALID out_vld 1 1 }  { layer2_out_2_V_V_TREADY out_acc 0 1 } } }
	layer2_out_3_V_V { axis {  { layer2_out_3_V_V_TDATA out_data 1 16 }  { layer2_out_3_V_V_TVALID out_vld 1 1 }  { layer2_out_3_V_V_TREADY out_acc 0 1 } } }
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
