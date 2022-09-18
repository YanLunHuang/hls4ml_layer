// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s_HH_
#define _zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > data_V_V_TDATA;
    sc_in< sc_logic > data_V_V_TVALID;
    sc_out< sc_logic > data_V_V_TREADY;
    sc_out< sc_lv<16> > res_V_V_TDATA;
    sc_out< sc_logic > res_V_V_TVALID;
    sc_in< sc_logic > res_V_V_TREADY;


    // Module declarations
    zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s(sc_module_name name);
    SC_HAS_PROCESS(zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s);

    ~zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s();

    sc_trace_file* mVcdFile;

    regslice_both<16>* regslice_both_data_V_V_U;
    regslice_both<16>* regslice_both_res_V_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > data_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<1> > icmp_ln121_fu_202_p2;
    sc_signal< sc_logic > res_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln112_reg_238;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln112_reg_238_pp0_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > icmp_ln23_reg_256;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<1> > icmp_ln23_reg_256_pp1_iter1_reg;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_lv<1> > icmp_ln121_reg_265;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter2;
    sc_signal< sc_lv<1> > icmp_ln121_reg_265_pp2_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_pp3_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter1;
    sc_signal< bool > ap_block_pp3_stage0;
    sc_signal< sc_lv<1> > icmp_ln23_1_reg_279;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter2;
    sc_signal< sc_lv<1> > icmp_ln23_1_reg_279_pp3_iter1_reg;
    sc_signal< sc_logic > ap_CS_fsm_pp4_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp4_iter1;
    sc_signal< bool > ap_block_pp4_stage0;
    sc_signal< sc_lv<1> > icmp_ln130_reg_288;
    sc_signal< sc_logic > ap_enable_reg_pp4_iter2;
    sc_signal< sc_lv<1> > icmp_ln130_reg_288_pp4_iter1_reg;
    sc_signal< sc_lv<11> > indvar_flatten_reg_100;
    sc_signal< sc_lv<9> > c_0_i28_reg_122;
    sc_signal< sc_lv<10> > indvar_flatten11_reg_133;
    sc_signal< sc_lv<9> > c_0_i22_reg_144;
    sc_signal< sc_lv<11> > indvar_flatten23_reg_155;
    sc_signal< sc_lv<1> > icmp_ln112_fu_166_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_io;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > add_ln112_fu_172_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln117_fu_178_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > i_fu_184_p2;
    sc_signal< sc_lv<2> > i_reg_251;
    sc_signal< sc_lv<1> > icmp_ln23_fu_190_p2;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state8_io;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state9_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<9> > c_fu_196_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< bool > ap_block_state11_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state12_pp2_stage0_iter1;
    sc_signal< bool > ap_block_state12_io;
    sc_signal< bool > ap_block_state13_pp2_stage0_iter2;
    sc_signal< bool > ap_block_state13_io;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<10> > add_ln121_fu_208_p2;
    sc_signal< sc_lv<16> > tmp_V_reg_274;
    sc_signal< sc_lv<1> > icmp_ln23_1_fu_214_p2;
    sc_signal< bool > ap_block_state15_pp3_stage0_iter0;
    sc_signal< bool > ap_block_state16_pp3_stage0_iter1;
    sc_signal< bool > ap_block_state16_io;
    sc_signal< bool > ap_block_state17_pp3_stage0_iter2;
    sc_signal< bool > ap_block_state17_io;
    sc_signal< bool > ap_block_pp3_stage0_11001;
    sc_signal< sc_lv<9> > c_1_fu_220_p2;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter0;
    sc_signal< sc_lv<1> > icmp_ln130_fu_226_p2;
    sc_signal< bool > ap_block_state19_pp4_stage0_iter0;
    sc_signal< bool > ap_block_state20_pp4_stage0_iter1;
    sc_signal< bool > ap_block_state20_io;
    sc_signal< bool > ap_block_state21_pp4_stage0_iter2;
    sc_signal< bool > ap_block_state21_io;
    sc_signal< bool > ap_block_pp4_stage0_11001;
    sc_signal< sc_lv<11> > add_ln130_fu_232_p2;
    sc_signal< sc_logic > ap_enable_reg_pp4_iter0;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state7;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state11;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< bool > ap_block_pp3_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp3_exit_iter0_state15;
    sc_signal< bool > ap_block_pp4_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp4_exit_iter0_state19;
    sc_signal< sc_lv<2> > i1_0_reg_111;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< bool > ap_block_pp2_stage0_01001;
    sc_signal< bool > ap_block_pp3_stage0_01001;
    sc_signal< bool > ap_block_pp4_stage0_01001;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > regslice_both_res_V_V_U_apdone_blk;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    sc_signal< sc_logic > ap_idle_pp3;
    sc_signal< sc_logic > ap_enable_pp3;
    sc_signal< sc_logic > ap_idle_pp4;
    sc_signal< sc_logic > ap_enable_pp4;
    sc_signal< sc_logic > regslice_both_data_V_V_U_apdone_blk;
    sc_signal< sc_lv<16> > data_V_V_TDATA_int;
    sc_signal< sc_logic > data_V_V_TVALID_int;
    sc_signal< sc_logic > data_V_V_TREADY_int;
    sc_signal< sc_logic > regslice_both_data_V_V_U_ack_in;
    sc_signal< sc_lv<16> > res_V_V_TDATA_int;
    sc_signal< sc_logic > res_V_V_TVALID_int;
    sc_signal< sc_logic > res_V_V_TREADY_int;
    sc_signal< sc_logic > regslice_both_res_V_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_pp0_stage0;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_pp1_stage0;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_pp2_stage0;
    static const sc_lv<12> ap_ST_fsm_state14;
    static const sc_lv<12> ap_ST_fsm_pp3_stage0;
    static const sc_lv<12> ap_ST_fsm_state18;
    static const sc_lv<12> ap_ST_fsm_pp4_stage0;
    static const sc_lv<12> ap_ST_fsm_state22;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<11> ap_const_lv11_500;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<10> ap_const_lv10_300;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_B;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln112_fu_172_p2();
    void thread_add_ln121_fu_208_p2();
    void thread_add_ln130_fu_232_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_pp3_stage0();
    void thread_ap_CS_fsm_pp4_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_01001();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_pp3_stage0();
    void thread_ap_block_pp3_stage0_01001();
    void thread_ap_block_pp3_stage0_11001();
    void thread_ap_block_pp3_stage0_subdone();
    void thread_ap_block_pp4_stage0();
    void thread_ap_block_pp4_stage0_01001();
    void thread_ap_block_pp4_stage0_11001();
    void thread_ap_block_pp4_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state11_pp2_stage0_iter0();
    void thread_ap_block_state12_io();
    void thread_ap_block_state12_pp2_stage0_iter1();
    void thread_ap_block_state13_io();
    void thread_ap_block_state13_pp2_stage0_iter2();
    void thread_ap_block_state15_pp3_stage0_iter0();
    void thread_ap_block_state16_io();
    void thread_ap_block_state16_pp3_stage0_iter1();
    void thread_ap_block_state17_io();
    void thread_ap_block_state17_pp3_stage0_iter2();
    void thread_ap_block_state19_pp4_stage0_iter0();
    void thread_ap_block_state20_io();
    void thread_ap_block_state20_pp4_stage0_iter1();
    void thread_ap_block_state21_io();
    void thread_ap_block_state21_pp4_stage0_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_io();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state7_pp1_stage0_iter0();
    void thread_ap_block_state8_io();
    void thread_ap_block_state8_pp1_stage0_iter1();
    void thread_ap_block_state9_io();
    void thread_ap_block_state9_pp1_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state7();
    void thread_ap_condition_pp2_exit_iter0_state11();
    void thread_ap_condition_pp3_exit_iter0_state15();
    void thread_ap_condition_pp4_exit_iter0_state19();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_enable_pp3();
    void thread_ap_enable_pp4();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_idle_pp3();
    void thread_ap_idle_pp4();
    void thread_ap_ready();
    void thread_c_1_fu_220_p2();
    void thread_c_fu_196_p2();
    void thread_data_V_V_TDATA_blk_n();
    void thread_data_V_V_TREADY();
    void thread_data_V_V_TREADY_int();
    void thread_i_fu_184_p2();
    void thread_icmp_ln112_fu_166_p2();
    void thread_icmp_ln117_fu_178_p2();
    void thread_icmp_ln121_fu_202_p2();
    void thread_icmp_ln130_fu_226_p2();
    void thread_icmp_ln23_1_fu_214_p2();
    void thread_icmp_ln23_fu_190_p2();
    void thread_res_V_V_TDATA_blk_n();
    void thread_res_V_V_TDATA_int();
    void thread_res_V_V_TVALID();
    void thread_res_V_V_TVALID_int();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif