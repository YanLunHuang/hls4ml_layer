// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_ST_fsm_state1 = "1";
const sc_lv<3> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_ST_fsm_state5 = "100";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_boolean_1 = true;
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_1 = "1";
const bool normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_boolean_0 = false;
const sc_lv<1> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv1_0 = "0";
const sc_lv<1> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv1_1 = "1";
const sc_lv<14> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv14_0 = "00000000000000";
const sc_lv<14> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv14_3020 = "11000000100000";
const sc_lv<14> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv14_1 = "1";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_10000 = "10000000000000000";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_20000 = "100000000000000000";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_30000 = "110000000000000000";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_40000 = "1000000000000000000";
const sc_lv<32> normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::ap_const_lv32_2 = "10";

normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s(sc_module_name name) : sc_module(name), mVcdFile(0) {
    p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80 = new product_dense_ap_fixed_ap_fixed_ap_fixed_s("p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80");
    p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80->ap_ready(p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_ready);
    p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80->a_V(data_V_V_TDATA_int);
    p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80->w_V(tmp_1_fu_103_p6);
    p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80->ap_return(p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return);
    myproject_mux_42_32_1_1_U5 = new myproject_mux_42_32_1_1<1,1,32,32,32,32,2,32>("myproject_mux_42_32_1_1_U5");
    myproject_mux_42_32_1_1_U5->din0(ap_var_for_const0);
    myproject_mux_42_32_1_1_U5->din1(ap_var_for_const0);
    myproject_mux_42_32_1_1_U5->din2(ap_var_for_const0);
    myproject_mux_42_32_1_1_U5->din3(ap_var_for_const0);
    myproject_mux_42_32_1_1_U5->din4(trunc_ln59_fu_99_p1);
    myproject_mux_42_32_1_1_U5->dout(tmp_1_fu_103_p6);
    myproject_mux_42_32_1_1_U6 = new myproject_mux_42_32_1_1<1,1,32,32,32,32,2,32>("myproject_mux_42_32_1_1_U6");
    myproject_mux_42_32_1_1_U6->din0(ap_var_for_const0);
    myproject_mux_42_32_1_1_U6->din1(ap_var_for_const1);
    myproject_mux_42_32_1_1_U6->din2(ap_var_for_const2);
    myproject_mux_42_32_1_1_U6->din3(ap_var_for_const3);
    myproject_mux_42_32_1_1_U6->din4(trunc_ln59_fu_99_p1);
    myproject_mux_42_32_1_1_U6->dout(p_Val2_1_fu_118_p6);
    regslice_both_data_V_V_U = new regslice_both<32>("regslice_both_data_V_V_U");
    regslice_both_data_V_V_U->ap_clk(ap_clk);
    regslice_both_data_V_V_U->ap_rst(ap_rst);
    regslice_both_data_V_V_U->data_in(data_V_V_TDATA);
    regslice_both_data_V_V_U->vld_in(data_V_V_TVALID);
    regslice_both_data_V_V_U->ack_in(regslice_both_data_V_V_U_ack_in);
    regslice_both_data_V_V_U->data_out(data_V_V_TDATA_int);
    regslice_both_data_V_V_U->vld_out(data_V_V_TVALID_int);
    regslice_both_data_V_V_U->ack_out(data_V_V_TREADY_int);
    regslice_both_data_V_V_U->apdone_blk(regslice_both_data_V_V_U_apdone_blk);
    regslice_both_res_V_V_U = new regslice_both<32>("regslice_both_res_V_V_U");
    regslice_both_res_V_V_U->ap_clk(ap_clk);
    regslice_both_res_V_V_U->ap_rst(ap_rst);
    regslice_both_res_V_V_U->data_in(out_data_V_reg_147);
    regslice_both_res_V_V_U->vld_in(res_V_V_TVALID_int);
    regslice_both_res_V_V_U->ack_in(res_V_V_TREADY_int);
    regslice_both_res_V_V_U->data_out(res_V_V_TDATA);
    regslice_both_res_V_V_U->vld_out(regslice_both_res_V_V_U_vld_out);
    regslice_both_res_V_V_U->ack_out(res_V_V_TREADY);
    regslice_both_res_V_V_U->apdone_blk(regslice_both_res_V_V_U_apdone_blk);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( data_V_V_TVALID_int );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state3_io );
    sensitive << ( ap_block_state4_io );
    sensitive << ( data_V_V_TVALID_int );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_state3_io );
    sensitive << ( ap_block_state4_io );
    sensitive << ( data_V_V_TVALID_int );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( data_V_V_TVALID_int );

    SC_METHOD(thread_ap_block_state3_io);
    sensitive << ( icmp_ln48_reg_138 );
    sensitive << ( res_V_V_TREADY_int );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_io);
    sensitive << ( icmp_ln48_reg_138_pp0_iter1_reg );
    sensitive << ( res_V_V_TREADY_int );

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln48_fu_87_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( regslice_both_res_V_V_U_apdone_blk );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( regslice_both_res_V_V_U_apdone_blk );

    SC_METHOD(thread_data_V_V_TDATA_blk_n);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( data_V_V_TVALID_int );

    SC_METHOD(thread_data_V_V_TREADY);
    sensitive << ( data_V_V_TVALID );
    sensitive << ( regslice_both_data_V_V_U_ack_in );

    SC_METHOD(thread_data_V_V_TREADY_int);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_i_fu_93_p2);
    sensitive << ( i_0_reg_69 );

    SC_METHOD(thread_icmp_ln48_fu_87_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( i_0_reg_69 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_out_data_V_fu_132_p2);
    sensitive << ( p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return );
    sensitive << ( p_Val2_1_fu_118_p6 );

    SC_METHOD(thread_res_V_V_TDATA_blk_n);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln48_reg_138 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( icmp_ln48_reg_138_pp0_iter1_reg );
    sensitive << ( res_V_V_TREADY_int );

    SC_METHOD(thread_res_V_V_TVALID);
    sensitive << ( regslice_both_res_V_V_U_vld_out );

    SC_METHOD(thread_res_V_V_TVALID_int);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln48_reg_138 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_trunc_ln59_fu_99_p1);
    sensitive << ( i_0_reg_69 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( icmp_ln48_fu_87_p2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( regslice_both_res_V_V_U_apdone_blk );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    SC_THREAD(thread_ap_var_for_const3);

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_V_V_TDATA, "(port)data_V_V_TDATA");
    sc_trace(mVcdFile, data_V_V_TVALID, "(port)data_V_V_TVALID");
    sc_trace(mVcdFile, data_V_V_TREADY, "(port)data_V_V_TREADY");
    sc_trace(mVcdFile, res_V_V_TDATA, "(port)res_V_V_TDATA");
    sc_trace(mVcdFile, res_V_V_TVALID, "(port)res_V_V_TVALID");
    sc_trace(mVcdFile, res_V_V_TREADY, "(port)res_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, data_V_V_TDATA_blk_n, "data_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln48_fu_87_p2, "icmp_ln48_fu_87_p2");
    sc_trace(mVcdFile, res_V_V_TDATA_blk_n, "res_V_V_TDATA_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, icmp_ln48_reg_138, "icmp_ln48_reg_138");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, icmp_ln48_reg_138_pp0_iter1_reg, "icmp_ln48_reg_138_pp0_iter1_reg");
    sc_trace(mVcdFile, i_0_reg_69, "i_0_reg_69");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_io, "ap_block_state3_io");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state4_io, "ap_block_state4_io");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_fu_93_p2, "i_fu_93_p2");
    sc_trace(mVcdFile, out_data_V_fu_132_p2, "out_data_V_fu_132_p2");
    sc_trace(mVcdFile, out_data_V_reg_147, "out_data_V_reg_147");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_ready, "p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_ready");
    sc_trace(mVcdFile, p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return, "p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return");
    sc_trace(mVcdFile, tmp_1_fu_103_p6, "tmp_1_fu_103_p6");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, trunc_ln59_fu_99_p1, "trunc_ln59_fu_99_p1");
    sc_trace(mVcdFile, p_Val2_1_fu_118_p6, "p_Val2_1_fu_118_p6");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, regslice_both_res_V_V_U_apdone_blk, "regslice_both_res_V_V_U_apdone_blk");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, regslice_both_data_V_V_U_apdone_blk, "regslice_both_data_V_V_U_apdone_blk");
    sc_trace(mVcdFile, data_V_V_TDATA_int, "data_V_V_TDATA_int");
    sc_trace(mVcdFile, data_V_V_TVALID_int, "data_V_V_TVALID_int");
    sc_trace(mVcdFile, data_V_V_TREADY_int, "data_V_V_TREADY_int");
    sc_trace(mVcdFile, regslice_both_data_V_V_U_ack_in, "regslice_both_data_V_V_U_ack_in");
    sc_trace(mVcdFile, res_V_V_TVALID_int, "res_V_V_TVALID_int");
    sc_trace(mVcdFile, res_V_V_TREADY_int, "res_V_V_TREADY_int");
    sc_trace(mVcdFile, regslice_both_res_V_V_U_vld_out, "regslice_both_res_V_V_U_vld_out");
#endif

    }
}

normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::~normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80;
    delete myproject_mux_42_32_1_1_U5;
    delete myproject_mux_42_32_1_1_U6;
    delete regslice_both_data_V_V_U;
    delete regslice_both_res_V_V_U;
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv32_10000;
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv32_20000;
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv32_30000;
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_var_for_const3() {
    ap_var_for_const3 = ap_const_lv32_40000;
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                    esl_seteq<1,1,1>(regslice_both_res_V_V_U_apdone_blk.read(), ap_const_logic_0))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        i_0_reg_69 = i_fu_93_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_0_reg_69 = ap_const_lv14_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln48_reg_138 = icmp_ln48_fu_87_p2.read();
        icmp_ln48_reg_138_pp0_iter1_reg = icmp_ln48_reg_138.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        out_data_V_reg_147 = out_data_V_fu_132_p2.read();
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, data_V_V_TVALID_int.read()));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state3_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, data_V_V_TVALID_int.read())));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state3_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state4_io.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, data_V_V_TVALID_int.read())));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = (esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, data_V_V_TVALID_int.read()));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state3_io() {
    ap_block_state3_io = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln48_reg_138.read()) && esl_seteq<1,1,1>(ap_const_logic_0, res_V_V_TREADY_int.read()));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state4_io() {
    ap_block_state4_io = (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln48_reg_138_pp0_iter1_reg.read()) && esl_seteq<1,1,1>(ap_const_logic_0, res_V_V_TREADY_int.read()));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(regslice_both_res_V_V_U_apdone_blk.read(), ap_const_logic_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(regslice_both_res_V_V_U_apdone_blk.read(), ap_const_logic_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_data_V_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0))) {
        data_V_V_TDATA_blk_n = data_V_V_TVALID_int.read();
    } else {
        data_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_data_V_V_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, data_V_V_TVALID.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, regslice_both_data_V_V_U_ack_in.read()))) {
        data_V_V_TREADY = ap_const_logic_1;
    } else {
        data_V_V_TREADY = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_data_V_V_TREADY_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        data_V_V_TREADY_int = ap_const_logic_1;
    } else {
        data_V_V_TREADY_int = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_i_fu_93_p2() {
    i_fu_93_p2 = (!i_0_reg_69.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(i_0_reg_69.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_icmp_ln48_fu_87_p2() {
    icmp_ln48_fu_87_p2 = (!i_0_reg_69.read().is_01() || !ap_const_lv14_3020.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_69.read() == ap_const_lv14_3020);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_out_data_V_fu_132_p2() {
    out_data_V_fu_132_p2 = (!p_Val2_1_fu_118_p6.read().is_01() || !p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return.read().is_01())? sc_lv<32>(): (sc_biguint<32>(p_Val2_1_fu_118_p6.read()) + sc_biguint<32>(p_Val2_s_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_80_ap_return.read()));
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_res_V_V_TDATA_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln48_reg_138.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln48_reg_138_pp0_iter1_reg.read())))) {
        res_V_V_TDATA_blk_n = res_V_V_TREADY_int.read();
    } else {
        res_V_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_res_V_V_TVALID() {
    res_V_V_TVALID = regslice_both_res_V_V_U_vld_out.read();
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_res_V_V_TVALID_int() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln48_reg_138.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        res_V_V_TVALID_int = ap_const_logic_1;
    } else {
        res_V_V_TVALID_int = ap_const_logic_0;
    }
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_trunc_ln59_fu_99_p1() {
    trunc_ln59_fu_99_p1 = i_0_reg_69.read().range(2-1, 0);
}

void normalize_me_ap_fixed_ap_fixed_32_16_5_3_0_config3_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln48_fu_87_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(regslice_both_res_V_V_U_apdone_blk.read(), ap_const_logic_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
