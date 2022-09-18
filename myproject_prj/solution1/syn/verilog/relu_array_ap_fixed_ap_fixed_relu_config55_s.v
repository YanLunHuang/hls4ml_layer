// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module relu_array_ap_fixed_ap_fixed_relu_config55_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_0_V_V_TDATA,
        data_0_V_V_TVALID,
        data_0_V_V_TREADY,
        data_1_V_V_TDATA,
        data_1_V_V_TVALID,
        data_1_V_V_TREADY,
        data_2_V_V_TDATA,
        data_2_V_V_TVALID,
        data_2_V_V_TREADY,
        data_3_V_V_TDATA,
        data_3_V_V_TVALID,
        data_3_V_V_TREADY,
        res_0_V_V_TDATA,
        res_0_V_V_TVALID,
        res_0_V_V_TREADY,
        res_1_V_V_TDATA,
        res_1_V_V_TVALID,
        res_1_V_V_TREADY,
        res_2_V_V_TDATA,
        res_2_V_V_TVALID,
        res_2_V_V_TREADY,
        res_3_V_V_TDATA,
        res_3_V_V_TVALID,
        res_3_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] data_0_V_V_TDATA;
input   data_0_V_V_TVALID;
output   data_0_V_V_TREADY;
input  [15:0] data_1_V_V_TDATA;
input   data_1_V_V_TVALID;
output   data_1_V_V_TREADY;
input  [15:0] data_2_V_V_TDATA;
input   data_2_V_V_TVALID;
output   data_2_V_V_TREADY;
input  [15:0] data_3_V_V_TDATA;
input   data_3_V_V_TVALID;
output   data_3_V_V_TREADY;
output  [15:0] res_0_V_V_TDATA;
output   res_0_V_V_TVALID;
input   res_0_V_V_TREADY;
output  [15:0] res_1_V_V_TDATA;
output   res_1_V_V_TVALID;
input   res_1_V_V_TREADY;
output  [15:0] res_2_V_V_TDATA;
output   res_2_V_V_TVALID;
input   res_2_V_V_TREADY;
output  [15:0] res_3_V_V_TDATA;
output   res_3_V_V_TVALID;
input   res_3_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_0_V_V_TREADY;
reg data_1_V_V_TREADY;
reg data_2_V_V_TREADY;
reg data_3_V_V_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    data_0_V_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln79_fu_121_p2;
reg    data_1_V_V_TDATA_blk_n;
reg    data_2_V_V_TDATA_blk_n;
reg    data_3_V_V_TDATA_blk_n;
reg    res_0_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln79_reg_221;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln79_reg_221_pp0_iter1_reg;
reg    res_1_V_V_TDATA_blk_n;
reg    res_2_V_V_TDATA_blk_n;
reg    res_3_V_V_TDATA_blk_n;
reg   [9:0] i_0_reg_110;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] i_fu_127_p2;
wire   [14:0] tmp_V_fu_155_p3;
reg   [14:0] tmp_V_reg_230;
wire   [14:0] tmp_V_2_fu_169_p3;
reg   [14:0] tmp_V_2_reg_235;
wire   [14:0] tmp_V_4_fu_183_p3;
reg   [14:0] tmp_V_4_reg_240;
wire   [14:0] tmp_V_6_fu_197_p3;
reg   [14:0] tmp_V_6_reg_245;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln1494_fu_149_p2;
wire   [14:0] trunc_ln203_fu_133_p1;
wire   [0:0] icmp_ln1494_1_fu_163_p2;
wire   [14:0] trunc_ln203_1_fu_137_p1;
wire   [0:0] icmp_ln1494_2_fu_177_p2;
wire   [14:0] trunc_ln203_2_fu_141_p1;
wire   [0:0] icmp_ln1494_3_fu_191_p2;
wire   [14:0] trunc_ln203_3_fu_145_p1;
wire    ap_CS_fsm_state5;
wire    regslice_both_res_0_V_V_U_apdone_blk;
wire    regslice_both_res_1_V_V_U_apdone_blk;
wire    regslice_both_res_2_V_V_U_apdone_blk;
wire    regslice_both_res_3_V_V_U_apdone_blk;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_data_0_V_V_U_apdone_blk;
wire   [15:0] data_0_V_V_TDATA_int;
wire    data_0_V_V_TVALID_int;
reg    data_0_V_V_TREADY_int;
wire    regslice_both_data_0_V_V_U_ack_in;
wire    regslice_both_data_1_V_V_U_apdone_blk;
wire   [15:0] data_1_V_V_TDATA_int;
wire    data_1_V_V_TVALID_int;
reg    data_1_V_V_TREADY_int;
wire    regslice_both_data_1_V_V_U_ack_in;
wire    regslice_both_data_2_V_V_U_apdone_blk;
wire   [15:0] data_2_V_V_TDATA_int;
wire    data_2_V_V_TVALID_int;
reg    data_2_V_V_TREADY_int;
wire    regslice_both_data_2_V_V_U_ack_in;
wire    regslice_both_data_3_V_V_U_apdone_blk;
wire   [15:0] data_3_V_V_TDATA_int;
wire    data_3_V_V_TVALID_int;
reg    data_3_V_V_TREADY_int;
wire    regslice_both_data_3_V_V_U_ack_in;
wire   [15:0] res_0_V_V_TDATA_int;
reg    res_0_V_V_TVALID_int;
wire    res_0_V_V_TREADY_int;
wire    regslice_both_res_0_V_V_U_vld_out;
wire   [15:0] res_1_V_V_TDATA_int;
reg    res_1_V_V_TVALID_int;
wire    res_1_V_V_TREADY_int;
wire    regslice_both_res_1_V_V_U_vld_out;
wire   [15:0] res_2_V_V_TDATA_int;
reg    res_2_V_V_TVALID_int;
wire    res_2_V_V_TREADY_int;
wire    regslice_both_res_2_V_V_U_vld_out;
wire   [15:0] res_3_V_V_TDATA_int;
reg    res_3_V_V_TVALID_int;
wire    res_3_V_V_TREADY_int;
wire    regslice_both_res_3_V_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

regslice_both #(
    .DataWidth( 16 ))
regslice_both_data_0_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(data_0_V_V_TDATA),
    .vld_in(data_0_V_V_TVALID),
    .ack_in(regslice_both_data_0_V_V_U_ack_in),
    .data_out(data_0_V_V_TDATA_int),
    .vld_out(data_0_V_V_TVALID_int),
    .ack_out(data_0_V_V_TREADY_int),
    .apdone_blk(regslice_both_data_0_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_data_1_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(data_1_V_V_TDATA),
    .vld_in(data_1_V_V_TVALID),
    .ack_in(regslice_both_data_1_V_V_U_ack_in),
    .data_out(data_1_V_V_TDATA_int),
    .vld_out(data_1_V_V_TVALID_int),
    .ack_out(data_1_V_V_TREADY_int),
    .apdone_blk(regslice_both_data_1_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_data_2_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(data_2_V_V_TDATA),
    .vld_in(data_2_V_V_TVALID),
    .ack_in(regslice_both_data_2_V_V_U_ack_in),
    .data_out(data_2_V_V_TDATA_int),
    .vld_out(data_2_V_V_TVALID_int),
    .ack_out(data_2_V_V_TREADY_int),
    .apdone_blk(regslice_both_data_2_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_data_3_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(data_3_V_V_TDATA),
    .vld_in(data_3_V_V_TVALID),
    .ack_in(regslice_both_data_3_V_V_U_ack_in),
    .data_out(data_3_V_V_TDATA_int),
    .vld_out(data_3_V_V_TVALID_int),
    .ack_out(data_3_V_V_TREADY_int),
    .apdone_blk(regslice_both_data_3_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_res_0_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(res_0_V_V_TDATA_int),
    .vld_in(res_0_V_V_TVALID_int),
    .ack_in(res_0_V_V_TREADY_int),
    .data_out(res_0_V_V_TDATA),
    .vld_out(regslice_both_res_0_V_V_U_vld_out),
    .ack_out(res_0_V_V_TREADY),
    .apdone_blk(regslice_both_res_0_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_res_1_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(res_1_V_V_TDATA_int),
    .vld_in(res_1_V_V_TVALID_int),
    .ack_in(res_1_V_V_TREADY_int),
    .data_out(res_1_V_V_TDATA),
    .vld_out(regslice_both_res_1_V_V_U_vld_out),
    .ack_out(res_1_V_V_TREADY),
    .apdone_blk(regslice_both_res_1_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_res_2_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(res_2_V_V_TDATA_int),
    .vld_in(res_2_V_V_TVALID_int),
    .ack_in(res_2_V_V_TREADY_int),
    .data_out(res_2_V_V_TDATA),
    .vld_out(regslice_both_res_2_V_V_U_vld_out),
    .ack_out(res_2_V_V_TREADY),
    .apdone_blk(regslice_both_res_2_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_res_3_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(res_3_V_V_TDATA_int),
    .vld_in(res_3_V_V_TVALID_int),
    .ack_in(res_3_V_V_TREADY_int),
    .data_out(res_3_V_V_TDATA),
    .vld_out(regslice_both_res_3_V_V_U_vld_out),
    .ack_out(res_3_V_V_TREADY),
    .apdone_blk(regslice_both_res_3_V_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((regslice_both_res_3_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_2_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_1_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_0_V_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_0_reg_110 <= i_fu_127_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_110 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln79_reg_221 <= icmp_ln79_fu_121_p2;
        icmp_ln79_reg_221_pp0_iter1_reg <= icmp_ln79_reg_221;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_2_reg_235 <= tmp_V_2_fu_169_p3;
        tmp_V_4_reg_240 <= tmp_V_4_fu_183_p3;
        tmp_V_6_reg_245 <= tmp_V_6_fu_197_p3;
        tmp_V_reg_230 <= tmp_V_fu_155_p3;
    end
end

always @ (*) begin
    if ((icmp_ln79_fu_121_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_both_res_3_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_2_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_1_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_0_V_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((regslice_both_res_3_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_2_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_1_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_0_V_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_0_V_V_TDATA_blk_n = data_0_V_V_TVALID_int;
    end else begin
        data_0_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_data_0_V_V_U_ack_in == 1'b1) & (data_0_V_V_TVALID == 1'b1))) begin
        data_0_V_V_TREADY = 1'b1;
    end else begin
        data_0_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_0_V_V_TREADY_int = 1'b1;
    end else begin
        data_0_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_1_V_V_TDATA_blk_n = data_1_V_V_TVALID_int;
    end else begin
        data_1_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_data_1_V_V_U_ack_in == 1'b1) & (data_1_V_V_TVALID == 1'b1))) begin
        data_1_V_V_TREADY = 1'b1;
    end else begin
        data_1_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_1_V_V_TREADY_int = 1'b1;
    end else begin
        data_1_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_2_V_V_TDATA_blk_n = data_2_V_V_TVALID_int;
    end else begin
        data_2_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_data_2_V_V_U_ack_in == 1'b1) & (data_2_V_V_TVALID == 1'b1))) begin
        data_2_V_V_TREADY = 1'b1;
    end else begin
        data_2_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_2_V_V_TREADY_int = 1'b1;
    end else begin
        data_2_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_3_V_V_TDATA_blk_n = data_3_V_V_TVALID_int;
    end else begin
        data_3_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((regslice_both_data_3_V_V_U_ack_in == 1'b1) & (data_3_V_V_TVALID == 1'b1))) begin
        data_3_V_V_TREADY = 1'b1;
    end else begin
        data_3_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln79_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_3_V_V_TREADY_int = 1'b1;
    end else begin
        data_3_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln79_reg_221 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        res_0_V_V_TDATA_blk_n = res_0_V_V_TREADY_int;
    end else begin
        res_0_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln79_reg_221 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        res_0_V_V_TVALID_int = 1'b1;
    end else begin
        res_0_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln79_reg_221 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        res_1_V_V_TDATA_blk_n = res_1_V_V_TREADY_int;
    end else begin
        res_1_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln79_reg_221 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        res_1_V_V_TVALID_int = 1'b1;
    end else begin
        res_1_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln79_reg_221 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        res_2_V_V_TDATA_blk_n = res_2_V_V_TREADY_int;
    end else begin
        res_2_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln79_reg_221 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        res_2_V_V_TVALID_int = 1'b1;
    end else begin
        res_2_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln79_reg_221 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        res_3_V_V_TDATA_blk_n = res_3_V_V_TREADY_int;
    end else begin
        res_3_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln79_reg_221 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        res_3_V_V_TVALID_int = 1'b1;
    end else begin
        res_3_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln79_fu_121_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln79_fu_121_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((regslice_both_res_3_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_2_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_1_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_0_V_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln79_fu_121_p2 == 1'd0) & (data_3_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_2_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_1_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_0_V_V_TVALID_int == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln79_fu_121_p2 == 1'd0) & (data_3_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_2_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_1_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_0_V_V_TVALID_int == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln79_fu_121_p2 == 1'd0) & (data_3_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_2_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_1_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_0_V_V_TVALID_int == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = (((icmp_ln79_fu_121_p2 == 1'd0) & (data_3_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_2_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_1_V_V_TVALID_int == 1'b0)) | ((icmp_ln79_fu_121_p2 == 1'd0) & (data_0_V_V_TVALID_int == 1'b0)));
end

always @ (*) begin
    ap_block_state3_io = (((icmp_ln79_reg_221 == 1'd0) & (res_3_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221 == 1'd0) & (res_2_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221 == 1'd0) & (res_1_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221 == 1'd0) & (res_0_V_V_TREADY_int == 1'b0)));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = (((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (res_3_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (res_2_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (res_1_V_V_TREADY_int == 1'b0)) | ((icmp_ln79_reg_221_pp0_iter1_reg == 1'd0) & (res_0_V_V_TREADY_int == 1'b0)));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((regslice_both_res_3_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_2_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_1_V_V_U_apdone_blk == 1'b1) | (regslice_both_res_0_V_V_U_apdone_blk == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_127_p2 = (i_0_reg_110 + 10'd1);

assign icmp_ln1494_1_fu_163_p2 = (($signed(data_1_V_V_TDATA_int) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1494_2_fu_177_p2 = (($signed(data_2_V_V_TDATA_int) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1494_3_fu_191_p2 = (($signed(data_3_V_V_TDATA_int) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1494_fu_149_p2 = (($signed(data_0_V_V_TDATA_int) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln79_fu_121_p2 = ((i_0_reg_110 == 10'd616) ? 1'b1 : 1'b0);

assign res_0_V_V_TDATA_int = tmp_V_reg_230;

assign res_0_V_V_TVALID = regslice_both_res_0_V_V_U_vld_out;

assign res_1_V_V_TDATA_int = tmp_V_2_reg_235;

assign res_1_V_V_TVALID = regslice_both_res_1_V_V_U_vld_out;

assign res_2_V_V_TDATA_int = tmp_V_4_reg_240;

assign res_2_V_V_TVALID = regslice_both_res_2_V_V_U_vld_out;

assign res_3_V_V_TDATA_int = tmp_V_6_reg_245;

assign res_3_V_V_TVALID = regslice_both_res_3_V_V_U_vld_out;

assign tmp_V_2_fu_169_p3 = ((icmp_ln1494_1_fu_163_p2[0:0] === 1'b1) ? trunc_ln203_1_fu_137_p1 : 15'd0);

assign tmp_V_4_fu_183_p3 = ((icmp_ln1494_2_fu_177_p2[0:0] === 1'b1) ? trunc_ln203_2_fu_141_p1 : 15'd0);

assign tmp_V_6_fu_197_p3 = ((icmp_ln1494_3_fu_191_p2[0:0] === 1'b1) ? trunc_ln203_3_fu_145_p1 : 15'd0);

assign tmp_V_fu_155_p3 = ((icmp_ln1494_fu_149_p2[0:0] === 1'b1) ? trunc_ln203_fu_133_p1 : 15'd0);

assign trunc_ln203_1_fu_137_p1 = data_1_V_V_TDATA_int[14:0];

assign trunc_ln203_2_fu_141_p1 = data_2_V_V_TDATA_int[14:0];

assign trunc_ln203_3_fu_145_p1 = data_3_V_V_TDATA_int[14:0];

assign trunc_ln203_fu_133_p1 = data_0_V_V_TDATA_int[14:0];

endmodule //relu_array_ap_fixed_ap_fixed_relu_config55_s
