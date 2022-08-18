#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("input_1_V_V_TDATA", 16, hls_in, 0, "axis", "in_data", 1),
	Port_Property("layer2_out_V_V_TDATA", 16, hls_out, 1, "axis", "out_data", 1),
	Port_Property("const_size_in_1", 16, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("const_size_out_1", 16, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("w2_V_address0", 12, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("w2_V_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("w2_V_d0", 4096, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("w2_V_q0", 4096, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("w2_V_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("w2_V_address1", 12, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("w2_V_ce1", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("w2_V_d1", 4096, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("w2_V_q1", 4096, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("w2_V_we1", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("const_size_in_1_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("const_size_out_1_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("input_1_V_V_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("input_1_V_V_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("layer2_out_V_V_TVALID", 1, hls_out, 1, "axis", "out_vld", 1),
	Port_Property("layer2_out_V_V_TREADY", 1, hls_in, 1, "axis", "out_acc", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "myproject";
