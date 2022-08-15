// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="myproject,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=0.785000,HLS_SYN_LAT=12323,HLS_SYN_TPT=12324,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=823,HLS_SYN_LUT=1737,HLS_VERSION=2019_2}" *)

module myproject (
        input_1_V_V_TDATA,
        layer2_out_V_V_TDATA,
        const_size_in_1,
        const_size_out_1,
        ap_clk,
        ap_rst_n,
        const_size_in_1_ap_vld,
        const_size_out_1_ap_vld,
        ap_start,
        ap_done,
        input_1_V_V_TVALID,
        input_1_V_V_TREADY,
        layer2_out_V_V_TVALID,
        layer2_out_V_V_TREADY,
        ap_ready,
        ap_idle
);


input  [15:0] input_1_V_V_TDATA;
output  [15:0] layer2_out_V_V_TDATA;
output  [15:0] const_size_in_1;
output  [15:0] const_size_out_1;
input   ap_clk;
input   ap_rst_n;
output   const_size_in_1_ap_vld;
output   const_size_out_1_ap_vld;
input   ap_start;
output   ap_done;
input   input_1_V_V_TVALID;
output   input_1_V_V_TREADY;
output   layer2_out_V_V_TVALID;
input   layer2_out_V_V_TREADY;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    Block_proc_U0_ap_start;
wire    Block_proc_U0_ap_done;
wire    Block_proc_U0_ap_continue;
wire    Block_proc_U0_ap_idle;
wire    Block_proc_U0_ap_ready;
wire   [15:0] Block_proc_U0_const_size_in_1;
wire    Block_proc_U0_const_size_in_1_ap_vld;
wire   [15:0] Block_proc_U0_const_size_out_1;
wire    Block_proc_U0_const_size_out_1_ap_vld;
wire    ap_sync_continue;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY;
wire   [15:0] resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Block_proc_U0_ap_ready;
wire    ap_sync_Block_proc_U0_ap_ready;
reg   [1:0] Block_proc_U0_ap_ready_count;
reg    ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready;
wire    ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready;
reg   [1:0] resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count;
wire    Block_proc_U0_start_full_n;
wire    Block_proc_U0_start_write;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n;
wire    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_Block_proc_U0_ap_ready = 1'b0;
#0 Block_proc_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = 1'b0;
#0 resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count = 2'd0;
end

Block_proc Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc_U0_ap_start),
    .ap_done(Block_proc_U0_ap_done),
    .ap_continue(Block_proc_U0_ap_continue),
    .ap_idle(Block_proc_U0_ap_idle),
    .ap_ready(Block_proc_U0_ap_ready),
    .const_size_in_1(Block_proc_U0_const_size_in_1),
    .const_size_in_1_ap_vld(Block_proc_U0_const_size_in_1_ap_vld),
    .const_size_out_1(Block_proc_U0_const_size_out_1),
    .const_size_out_1_ap_vld(Block_proc_U0_const_size_out_1_ap_vld)
);

resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_s resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start),
    .ap_done(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done),
    .ap_continue(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue),
    .ap_idle(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle),
    .ap_ready(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready),
    .image_V_V_TDATA(input_1_V_V_TDATA),
    .image_V_V_TVALID(input_1_V_V_TVALID),
    .image_V_V_TREADY(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY),
    .resized_V_V_TDATA(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA),
    .resized_V_V_TVALID(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID),
    .resized_V_V_TREADY(layer2_out_V_V_TREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_proc_U0_ap_ready <= ap_sync_Block_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready <= ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == Block_proc_U0_ap_ready))) begin
        Block_proc_U0_ap_ready_count <= (Block_proc_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == Block_proc_U0_ap_ready))) begin
        Block_proc_U0_ap_ready_count <= (Block_proc_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count <= (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready == 1'b1))) begin
        resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count <= (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count + 2'd1);
    end
end

assign Block_proc_U0_ap_continue = ap_sync_done;

assign Block_proc_U0_ap_start = ((ap_sync_reg_Block_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_proc_U0_start_full_n = 1'b1;

assign Block_proc_U0_start_write = 1'b0;

assign ap_done = ap_sync_done;

assign ap_idle = (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle & Block_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Block_proc_U0_ap_ready = (ap_sync_reg_Block_proc_U0_ap_ready | Block_proc_U0_ap_ready);

assign ap_sync_continue = ap_sync_done;

assign ap_sync_done = (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done & Block_proc_U0_ap_done);

assign ap_sync_ready = (ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready & ap_sync_Block_proc_U0_ap_ready);

assign ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready | ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready);

assign const_size_in_1 = Block_proc_U0_const_size_in_1;

assign const_size_in_1_ap_vld = Block_proc_U0_const_size_in_1_ap_vld;

assign const_size_out_1 = Block_proc_U0_const_size_out_1;

assign const_size_out_1_ap_vld = Block_proc_U0_const_size_out_1_ap_vld;

assign input_1_V_V_TREADY = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY;

assign layer2_out_V_V_TDATA = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA;

assign layer2_out_V_V_TVALID = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID;

assign resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue = ap_sync_done;

assign resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start = ((ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready ^ 1'b1) & ap_start);

assign resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n = 1'b1;

assign resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write = 1'b0;

endmodule //myproject