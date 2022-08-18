// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_HH_
#define _conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s.h"
#include "product_dense_ap_fixed_ap_fixed_ap_fixed_s.h"
#include "conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_layrcU.h"

namespace ap_rtl {

struct conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > data_V_V_dout;
    sc_in< sc_logic > data_V_V_empty_n;
    sc_out< sc_logic > data_V_V_read;
    sc_out< sc_lv<16> > res_V_V_TDATA;
    sc_out< sc_logic > res_V_V_TVALID;
    sc_in< sc_logic > res_V_V_TREADY;
    sc_out< sc_lv<7> > weights_V_address0;
    sc_out< sc_logic > weights_V_ce0;
    sc_in< sc_lv<128> > weights_V_q0;


    // Module declarations
    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s(sc_module_name name);
    SC_HAS_PROCESS(conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s);

    ~conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s();

    sc_trace_file* mVcdFile;

    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_layrcU* layer_in_V_U;
    cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s* grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286;
    product_dense_ap_fixed_ap_fixed_ap_fixed_s* grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325;
    regslice_both<16>* regslice_both_res_V_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<33> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > layer_in_V_address0;
    sc_signal< sc_logic > layer_in_V_ce0;
    sc_signal< sc_logic > layer_in_V_we0;
    sc_signal< sc_lv<128> > layer_in_V_q0;
    sc_signal< sc_logic > layer_in_V_ce1;
    sc_signal< sc_logic > layer_in_V_we1;
    sc_signal< sc_lv<128> > layer_in_V_q1;
    sc_signal< sc_lv<32> > sX;
    sc_signal< sc_lv<32> > sY;
    sc_signal< sc_lv<32> > pY;
    sc_signal< sc_lv<32> > pX;
    sc_signal< sc_logic > data_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln157_fu_437_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > res_V_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_lv<1> > and_ln166_2_reg_1026;
    sc_signal< sc_lv<128> > layer_out_i_1_reg_230;
    sc_signal< sc_lv<7> > i_in_0_i_i_reg_242;
    sc_signal< sc_lv<15> > phi_mul_reg_253;
    sc_signal< sc_lv<7> > phi_urem_reg_265;
    sc_signal< sc_lv<16> > reg_402;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state19_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<1> > icmp_ln291_reg_1030;
    sc_signal< sc_lv<16> > reg_407;
    sc_signal< sc_lv<16> > reg_412;
    sc_signal< sc_lv<16> > reg_417;
    sc_signal< sc_lv<16> > reg_422;
    sc_signal< sc_lv<16> > reg_427;
    sc_signal< sc_lv<16> > reg_432;
    sc_signal< sc_lv<5> > i_fu_443_p2;
    sc_signal< sc_lv<5> > i_reg_944;
    sc_signal< sc_logic > regslice_both_res_V_V_U_apdone_blk;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<16> > tmp_V_reg_949;
    sc_signal< sc_lv<16> > tmp_V_8_reg_954;
    sc_signal< sc_lv<16> > tmp_V_9_reg_959;
    sc_signal< sc_lv<16> > tmp_V_10_reg_964;
    sc_signal< sc_lv<16> > tmp_V_11_reg_969;
    sc_signal< sc_lv<16> > tmp_V_12_reg_974;
    sc_signal< sc_lv<16> > tmp_V_13_reg_979;
    sc_signal< sc_lv<16> > tmp_V_14_reg_984;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > sX_load_reg_994;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<1> > icmp_ln166_fu_466_p2;
    sc_signal< sc_lv<1> > icmp_ln166_reg_999;
    sc_signal< sc_lv<32> > sY_load_reg_1004;
    sc_signal< sc_lv<1> > icmp_ln166_1_fu_476_p2;
    sc_signal< sc_lv<1> > icmp_ln166_1_reg_1009;
    sc_signal< sc_lv<32> > pY_load_reg_1014;
    sc_signal< sc_lv<32> > pX_load_reg_1020;
    sc_signal< sc_lv<1> > and_ln166_2_fu_534_p2;
    sc_signal< sc_lv<1> > icmp_ln291_fu_540_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state25_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln291_reg_1030_pp0_iter1_reg;
    sc_signal< sc_lv<7> > i_in_fu_546_p2;
    sc_signal< sc_lv<7> > i_in_reg_1034;
    sc_signal< sc_lv<7> > add_ln291_1_fu_552_p2;
    sc_signal< sc_lv<7> > add_ln291_1_reg_1039;
    sc_signal< sc_lv<3> > tmp_18_reg_1050;
    sc_signal< sc_lv<8> > sub_ln293_2_fu_657_p2;
    sc_signal< sc_lv<8> > sub_ln293_2_reg_1060;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state18_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state26_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<128> > lshr_ln293_fu_667_p2;
    sc_signal< sc_lv<128> > lshr_ln293_reg_1065;
    sc_signal< sc_lv<16> > trunc_ln299_fu_673_p1;
    sc_signal< sc_lv<16> > trunc_ln299_reg_1070;
    sc_signal< sc_lv<16> > tmp_3_reg_1075;
    sc_signal< sc_lv<16> > tmp_5_reg_1080;
    sc_signal< sc_lv<16> > tmp_7_reg_1085;
    sc_signal< sc_lv<16> > tmp_9_reg_1090;
    sc_signal< sc_lv<16> > tmp_11_reg_1095;
    sc_signal< sc_lv<16> > tmp_13_reg_1100;
    sc_signal< sc_lv<16> > tmp_15_reg_1105;
    sc_signal< sc_lv<16> > tmpt_V_fu_761_p1;
    sc_signal< sc_lv<16> > tmpt_V_reg_1110;
    sc_signal< sc_lv<16> > add_ln703_fu_770_p2;
    sc_signal< sc_lv<16> > add_ln703_reg_1115;
    sc_signal< sc_lv<16> > add_ln703_1_fu_776_p2;
    sc_signal< sc_lv<16> > add_ln703_1_reg_1120;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state20_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<16> > add_ln703_2_fu_782_p2;
    sc_signal< sc_lv<16> > add_ln703_2_reg_1125;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state21_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<16> > add_ln703_3_fu_788_p2;
    sc_signal< sc_lv<16> > add_ln703_3_reg_1130;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_state22_pp0_stage5_iter0;
    sc_signal< bool > ap_block_pp0_stage5_11001;
    sc_signal< sc_lv<16> > add_ln703_4_fu_794_p2;
    sc_signal< sc_lv<16> > add_ln703_4_reg_1135;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_state23_pp0_stage6_iter0;
    sc_signal< bool > ap_block_pp0_stage6_11001;
    sc_signal< sc_lv<7> > select_ln291_fu_805_p3;
    sc_signal< sc_lv<7> > select_ln291_reg_1140;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_state24_pp0_stage7_iter0;
    sc_signal< bool > ap_block_pp0_stage7_11001;
    sc_signal< sc_lv<15> > add_ln293_fu_812_p2;
    sc_signal< sc_lv<15> > add_ln293_reg_1145;
    sc_signal< sc_lv<16> > add_ln703_5_fu_818_p2;
    sc_signal< sc_lv<16> > add_ln703_5_reg_1150;
    sc_signal< sc_lv<16> > add_ln703_6_fu_824_p2;
    sc_signal< sc_lv<16> > add_ln703_6_reg_1155;
    sc_signal< sc_lv<128> > tmp_17_fu_836_p9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<16> > tmp_V_15_fu_849_p1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state17;
    sc_signal< bool > ap_block_pp0_stage7_subdone;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_start;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_done;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_idle;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_ready;
    sc_signal< sc_lv<128> > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_data_V_read;
    sc_signal< sc_lv<4> > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_address0;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_ce0;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_we0;
    sc_signal< sc_lv<128> > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_d0;
    sc_signal< sc_lv<4> > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_address1;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_ce1;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_we1;
    sc_signal< sc_lv<128> > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_output_V_d1;
    sc_signal< sc_logic > grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_ap_ready;
    sc_signal< sc_lv<16> > grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_a_V;
    sc_signal< sc_lv<16> > grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_w_V;
    sc_signal< sc_lv<16> > grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_ap_return;
    sc_signal< sc_lv<5> > i_0_i_reg_219;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_state35_io;
    sc_signal< sc_lv<128> > ap_phi_mux_layer_out_i_1_phi_fu_234_p4;
    sc_signal< sc_lv<7> > ap_phi_mux_i_in_0_i_i_phi_fu_246_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<15> > ap_phi_mux_phi_mul_phi_fu_257_p4;
    sc_signal< sc_lv<7> > ap_phi_mux_phi_urem_phi_fu_269_p4;
    sc_signal< sc_lv<32> > select_ln197_fu_921_p3;
    sc_signal< sc_lv<32> > ap_phi_mux_storemerge_i_phi_fu_279_p4;
    sc_signal< sc_lv<1> > icmp_ln187_fu_854_p2;
    sc_signal< sc_lv<1> > icmp_ln191_fu_900_p2;
    sc_signal< sc_logic > grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_start_reg;
    sc_signal< sc_lv<33> > ap_NS_fsm;
    sc_signal< sc_logic > ap_NS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< bool > ap_block_pp0_stage5;
    sc_signal< bool > ap_block_pp0_stage6;
    sc_signal< bool > ap_block_pp0_stage7;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<64> > zext_ln293_fu_558_p1;
    sc_signal< sc_lv<64> > zext_ln299_fu_573_p1;
    sc_signal< sc_lv<32> > select_ln202_fu_875_p3;
    sc_signal< sc_lv<32> > add_ln195_fu_905_p2;
    sc_signal< sc_lv<32> > add_ln200_fu_859_p2;
    sc_signal< sc_lv<128> > grp_fu_331_p1;
    sc_signal< sc_lv<128> > grp_fu_342_p1;
    sc_signal< sc_lv<128> > grp_fu_352_p1;
    sc_signal< sc_lv<128> > grp_fu_362_p1;
    sc_signal< sc_lv<128> > grp_fu_372_p1;
    sc_signal< sc_lv<128> > grp_fu_382_p1;
    sc_signal< sc_lv<128> > grp_fu_392_p1;
    sc_signal< sc_lv<31> > tmp_1_fu_486_p4;
    sc_signal< sc_lv<31> > tmp_2_fu_506_p4;
    sc_signal< sc_lv<1> > icmp_ln166_2_fu_496_p2;
    sc_signal< sc_lv<1> > icmp_ln166_3_fu_516_p2;
    sc_signal< sc_lv<1> > and_ln166_1_fu_528_p2;
    sc_signal< sc_lv<1> > and_ln166_fu_522_p2;
    sc_signal< sc_lv<7> > tmp_19_fu_578_p3;
    sc_signal< sc_lv<7> > empty_19_fu_585_p2;
    sc_signal< sc_lv<8> > zext_ln293_1_fu_597_p1;
    sc_signal< sc_lv<8> > zext_ln293_2_fu_601_p1;
    sc_signal< sc_lv<1> > icmp_ln293_fu_591_p2;
    sc_signal< sc_lv<8> > sub_ln293_fu_615_p2;
    sc_signal< sc_lv<8> > sub_ln293_1_fu_627_p2;
    sc_signal< sc_lv<128> > tmp_20_fu_605_p4;
    sc_signal< sc_lv<8> > xor_ln293_fu_621_p2;
    sc_signal< sc_lv<8> > select_ln293_fu_633_p3;
    sc_signal< sc_lv<8> > select_ln293_2_fu_649_p3;
    sc_signal< sc_lv<128> > select_ln293_1_fu_641_p3;
    sc_signal< sc_lv<128> > zext_ln293_3_fu_663_p1;
    sc_signal< sc_lv<128> > zext_ln293_4_fu_747_p1;
    sc_signal< sc_lv<128> > lshr_ln293_1_fu_750_p2;
    sc_signal< sc_lv<128> > and_ln293_fu_756_p2;
    sc_signal< sc_lv<16> > trunc_ln1265_fu_766_p1;
    sc_signal< sc_lv<1> > icmp_ln291_1_fu_800_p2;
    sc_signal< sc_lv<16> > add_ln703_7_fu_830_p2;
    sc_signal< sc_lv<32> > add_ln202_fu_870_p2;
    sc_signal< sc_lv<32> > add_ln197_fu_916_p2;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<16> > res_V_V_TDATA_int;
    sc_signal< sc_logic > res_V_V_TVALID_int;
    sc_signal< sc_logic > res_V_V_TREADY_int;
    sc_signal< sc_logic > regslice_both_res_V_V_U_vld_out;
    sc_signal< bool > ap_condition_621;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<33> ap_ST_fsm_state1;
    static const sc_lv<33> ap_ST_fsm_state2;
    static const sc_lv<33> ap_ST_fsm_state3;
    static const sc_lv<33> ap_ST_fsm_state4;
    static const sc_lv<33> ap_ST_fsm_state5;
    static const sc_lv<33> ap_ST_fsm_state6;
    static const sc_lv<33> ap_ST_fsm_state7;
    static const sc_lv<33> ap_ST_fsm_state8;
    static const sc_lv<33> ap_ST_fsm_state9;
    static const sc_lv<33> ap_ST_fsm_state10;
    static const sc_lv<33> ap_ST_fsm_state11;
    static const sc_lv<33> ap_ST_fsm_state12;
    static const sc_lv<33> ap_ST_fsm_state13;
    static const sc_lv<33> ap_ST_fsm_state14;
    static const sc_lv<33> ap_ST_fsm_state15;
    static const sc_lv<33> ap_ST_fsm_state16;
    static const sc_lv<33> ap_ST_fsm_pp0_stage0;
    static const sc_lv<33> ap_ST_fsm_pp0_stage1;
    static const sc_lv<33> ap_ST_fsm_pp0_stage2;
    static const sc_lv<33> ap_ST_fsm_pp0_stage3;
    static const sc_lv<33> ap_ST_fsm_pp0_stage4;
    static const sc_lv<33> ap_ST_fsm_pp0_stage5;
    static const sc_lv<33> ap_ST_fsm_pp0_stage6;
    static const sc_lv<33> ap_ST_fsm_pp0_stage7;
    static const sc_lv<33> ap_ST_fsm_state27;
    static const sc_lv<33> ap_ST_fsm_state28;
    static const sc_lv<33> ap_ST_fsm_state29;
    static const sc_lv<33> ap_ST_fsm_state30;
    static const sc_lv<33> ap_ST_fsm_state31;
    static const sc_lv<33> ap_ST_fsm_state32;
    static const sc_lv<33> ap_ST_fsm_state33;
    static const sc_lv<33> ap_ST_fsm_state34;
    static const sc_lv<33> ap_ST_fsm_state35;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_12;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_70;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<7> ap_const_lv7_48;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<7> ap_const_lv7_9;
    static const sc_lv<15> ap_const_lv15_E4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln195_fu_905_p2();
    void thread_add_ln197_fu_916_p2();
    void thread_add_ln200_fu_859_p2();
    void thread_add_ln202_fu_870_p2();
    void thread_add_ln291_1_fu_552_p2();
    void thread_add_ln293_fu_812_p2();
    void thread_add_ln703_1_fu_776_p2();
    void thread_add_ln703_2_fu_782_p2();
    void thread_add_ln703_3_fu_788_p2();
    void thread_add_ln703_4_fu_794_p2();
    void thread_add_ln703_5_fu_818_p2();
    void thread_add_ln703_6_fu_824_p2();
    void thread_add_ln703_7_fu_830_p2();
    void thread_add_ln703_fu_770_p2();
    void thread_and_ln166_1_fu_528_p2();
    void thread_and_ln166_2_fu_534_p2();
    void thread_and_ln166_fu_522_p2();
    void thread_and_ln293_fu_756_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_NS_fsm_state10();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5();
    void thread_ap_block_pp0_stage5_11001();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6();
    void thread_ap_block_pp0_stage6_11001();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_pp0_stage7();
    void thread_ap_block_pp0_stage7_11001();
    void thread_ap_block_pp0_stage7_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state17_pp0_stage0_iter0();
    void thread_ap_block_state18_pp0_stage1_iter0();
    void thread_ap_block_state19_pp0_stage2_iter0();
    void thread_ap_block_state2();
    void thread_ap_block_state20_pp0_stage3_iter0();
    void thread_ap_block_state21_pp0_stage4_iter0();
    void thread_ap_block_state22_pp0_stage5_iter0();
    void thread_ap_block_state23_pp0_stage6_iter0();
    void thread_ap_block_state24_pp0_stage7_iter0();
    void thread_ap_block_state25_pp0_stage0_iter1();
    void thread_ap_block_state26_pp0_stage1_iter1();
    void thread_ap_block_state35_io();
    void thread_ap_condition_621();
    void thread_ap_condition_pp0_exit_iter0_state17();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_in_0_i_i_phi_fu_246_p4();
    void thread_ap_phi_mux_layer_out_i_1_phi_fu_234_p4();
    void thread_ap_phi_mux_phi_mul_phi_fu_257_p4();
    void thread_ap_phi_mux_phi_urem_phi_fu_269_p4();
    void thread_ap_phi_mux_storemerge_i_phi_fu_279_p4();
    void thread_ap_ready();
    void thread_data_V_V_blk_n();
    void thread_data_V_V_read();
    void thread_empty_19_fu_585_p2();
    void thread_grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_ap_start();
    void thread_grp_cnnshift_arr_ap_fixed_ap_fixed_16_14_5_3_0_config2_s_fu_286_data_V_read();
    void thread_grp_fu_331_p1();
    void thread_grp_fu_342_p1();
    void thread_grp_fu_352_p1();
    void thread_grp_fu_362_p1();
    void thread_grp_fu_372_p1();
    void thread_grp_fu_382_p1();
    void thread_grp_fu_392_p1();
    void thread_grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_a_V();
    void thread_grp_product_dense_ap_fixed_ap_fixed_ap_fixed_s_fu_325_w_V();
    void thread_i_fu_443_p2();
    void thread_i_in_fu_546_p2();
    void thread_icmp_ln157_fu_437_p2();
    void thread_icmp_ln166_1_fu_476_p2();
    void thread_icmp_ln166_2_fu_496_p2();
    void thread_icmp_ln166_3_fu_516_p2();
    void thread_icmp_ln166_fu_466_p2();
    void thread_icmp_ln187_fu_854_p2();
    void thread_icmp_ln191_fu_900_p2();
    void thread_icmp_ln291_1_fu_800_p2();
    void thread_icmp_ln291_fu_540_p2();
    void thread_icmp_ln293_fu_591_p2();
    void thread_layer_in_V_address0();
    void thread_layer_in_V_ce0();
    void thread_layer_in_V_ce1();
    void thread_layer_in_V_we0();
    void thread_layer_in_V_we1();
    void thread_lshr_ln293_1_fu_750_p2();
    void thread_lshr_ln293_fu_667_p2();
    void thread_res_V_V_TDATA_blk_n();
    void thread_res_V_V_TDATA_int();
    void thread_res_V_V_TVALID();
    void thread_res_V_V_TVALID_int();
    void thread_select_ln197_fu_921_p3();
    void thread_select_ln202_fu_875_p3();
    void thread_select_ln291_fu_805_p3();
    void thread_select_ln293_1_fu_641_p3();
    void thread_select_ln293_2_fu_649_p3();
    void thread_select_ln293_fu_633_p3();
    void thread_sub_ln293_1_fu_627_p2();
    void thread_sub_ln293_2_fu_657_p2();
    void thread_sub_ln293_fu_615_p2();
    void thread_tmp_17_fu_836_p9();
    void thread_tmp_19_fu_578_p3();
    void thread_tmp_1_fu_486_p4();
    void thread_tmp_20_fu_605_p4();
    void thread_tmp_2_fu_506_p4();
    void thread_tmp_V_15_fu_849_p1();
    void thread_tmpt_V_fu_761_p1();
    void thread_trunc_ln1265_fu_766_p1();
    void thread_trunc_ln299_fu_673_p1();
    void thread_weights_V_address0();
    void thread_weights_V_ce0();
    void thread_xor_ln293_fu_621_p2();
    void thread_zext_ln293_1_fu_597_p1();
    void thread_zext_ln293_2_fu_601_p1();
    void thread_zext_ln293_3_fu_663_p1();
    void thread_zext_ln293_4_fu_747_p1();
    void thread_zext_ln293_fu_558_p1();
    void thread_zext_ln299_fu_573_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
