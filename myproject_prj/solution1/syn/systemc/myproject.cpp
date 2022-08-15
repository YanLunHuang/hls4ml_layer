// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "myproject.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<16> myproject::ap_const_lv16_0 = "0000000000000000";
const sc_logic myproject::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic myproject::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> myproject::ap_const_lv2_0 = "00";
const sc_lv<2> myproject::ap_const_lv2_1 = "1";
const bool myproject::ap_const_boolean_1 = true;

myproject::myproject(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Block_proc_U0 = new Block_proc("Block_proc_U0");
    Block_proc_U0->ap_clk(ap_clk);
    Block_proc_U0->ap_rst(ap_rst_n_inv);
    Block_proc_U0->ap_start(Block_proc_U0_ap_start);
    Block_proc_U0->ap_done(Block_proc_U0_ap_done);
    Block_proc_U0->ap_continue(Block_proc_U0_ap_continue);
    Block_proc_U0->ap_idle(Block_proc_U0_ap_idle);
    Block_proc_U0->ap_ready(Block_proc_U0_ap_ready);
    Block_proc_U0->const_size_in_1(Block_proc_U0_const_size_in_1);
    Block_proc_U0->const_size_in_1_ap_vld(Block_proc_U0_const_size_in_1_ap_vld);
    Block_proc_U0->const_size_out_1(Block_proc_U0_const_size_out_1);
    Block_proc_U0->const_size_out_1_ap_vld(Block_proc_U0_const_size_out_1_ap_vld);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0 = new resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_s("resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0");
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_clk(ap_clk);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_rst(ap_rst_n_inv);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_start(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_done(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_continue(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_idle(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->ap_ready(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->image_V_V_TDATA(input_1_V_V_TDATA);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->image_V_V_TVALID(input_1_V_V_TVALID);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->image_V_V_TREADY(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->resized_V_V_TDATA(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->resized_V_V_TVALID(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID);
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0->resized_V_V_TREADY(layer2_out_V_V_TREADY);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Block_proc_U0_ap_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_Block_proc_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_Block_proc_U0_ap_ready );

    SC_METHOD(thread_Block_proc_U0_start_full_n);

    SC_METHOD(thread_Block_proc_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( Block_proc_U0_ap_idle );
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sync_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_Block_proc_U0_ap_ready);
    sensitive << ( Block_proc_U0_ap_ready );
    sensitive << ( ap_sync_reg_Block_proc_U0_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Block_proc_U0_ap_done );
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( ap_sync_Block_proc_U0_ap_ready );
    sensitive << ( ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready );

    SC_METHOD(thread_ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready);
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready );
    sensitive << ( ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready );

    SC_METHOD(thread_const_size_in_1);
    sensitive << ( Block_proc_U0_const_size_in_1 );

    SC_METHOD(thread_const_size_in_1_ap_vld);
    sensitive << ( Block_proc_U0_const_size_in_1_ap_vld );

    SC_METHOD(thread_const_size_out_1);
    sensitive << ( Block_proc_U0_const_size_out_1 );

    SC_METHOD(thread_const_size_out_1_ap_vld);
    sensitive << ( Block_proc_U0_const_size_out_1_ap_vld );

    SC_METHOD(thread_input_1_V_V_TREADY);
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY );

    SC_METHOD(thread_layer2_out_V_V_TDATA);
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA );

    SC_METHOD(thread_layer2_out_V_V_TVALID);
    sensitive << ( resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID );

    SC_METHOD(thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready );

    SC_METHOD(thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n);

    SC_METHOD(thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_sync_reg_Block_proc_U0_ap_ready = SC_LOGIC_0;
    Block_proc_U0_ap_ready_count = "00";
    ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = SC_LOGIC_0;
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "myproject_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, input_1_V_V_TDATA, "(port)input_1_V_V_TDATA");
    sc_trace(mVcdFile, layer2_out_V_V_TDATA, "(port)layer2_out_V_V_TDATA");
    sc_trace(mVcdFile, const_size_in_1, "(port)const_size_in_1");
    sc_trace(mVcdFile, const_size_out_1, "(port)const_size_out_1");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, const_size_in_1_ap_vld, "(port)const_size_in_1_ap_vld");
    sc_trace(mVcdFile, const_size_out_1_ap_vld, "(port)const_size_out_1_ap_vld");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, input_1_V_V_TVALID, "(port)input_1_V_V_TVALID");
    sc_trace(mVcdFile, input_1_V_V_TREADY, "(port)input_1_V_V_TREADY");
    sc_trace(mVcdFile, layer2_out_V_V_TVALID, "(port)layer2_out_V_V_TVALID");
    sc_trace(mVcdFile, layer2_out_V_V_TREADY, "(port)layer2_out_V_V_TREADY");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, Block_proc_U0_ap_start, "Block_proc_U0_ap_start");
    sc_trace(mVcdFile, Block_proc_U0_ap_done, "Block_proc_U0_ap_done");
    sc_trace(mVcdFile, Block_proc_U0_ap_continue, "Block_proc_U0_ap_continue");
    sc_trace(mVcdFile, Block_proc_U0_ap_idle, "Block_proc_U0_ap_idle");
    sc_trace(mVcdFile, Block_proc_U0_ap_ready, "Block_proc_U0_ap_ready");
    sc_trace(mVcdFile, Block_proc_U0_const_size_in_1, "Block_proc_U0_const_size_in_1");
    sc_trace(mVcdFile, Block_proc_U0_const_size_in_1_ap_vld, "Block_proc_U0_const_size_in_1_ap_vld");
    sc_trace(mVcdFile, Block_proc_U0_const_size_out_1, "Block_proc_U0_const_size_out_1");
    sc_trace(mVcdFile, Block_proc_U0_const_size_out_1_ap_vld, "Block_proc_U0_const_size_out_1_ap_vld");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, ap_sync_reg_Block_proc_U0_ap_ready, "ap_sync_reg_Block_proc_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_Block_proc_U0_ap_ready, "ap_sync_Block_proc_U0_ap_ready");
    sc_trace(mVcdFile, Block_proc_U0_ap_ready_count, "Block_proc_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready, "ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready, "ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count");
    sc_trace(mVcdFile, Block_proc_U0_start_full_n, "Block_proc_U0_start_full_n");
    sc_trace(mVcdFile, Block_proc_U0_start_write, "Block_proc_U0_start_write");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n");
    sc_trace(mVcdFile, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write, "resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write");
#endif

    }
    mHdltvinHandle.open("myproject.hdltvin.dat");
    mHdltvoutHandle.open("myproject.hdltvout.dat");
}

myproject::~myproject() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete Block_proc_U0;
    delete resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0;
}

void myproject::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(Block_proc_U0_ap_ready.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()))) {
        Block_proc_U0_ap_ready_count = (!Block_proc_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(Block_proc_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(Block_proc_U0_ap_ready.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_sync_ready.read(), ap_const_logic_0))) {
        Block_proc_U0_ap_ready_count = (!Block_proc_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(Block_proc_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_Block_proc_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_Block_proc_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_Block_proc_U0_ap_ready = ap_sync_Block_proc_U0_ap_ready.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (ap_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()) && 
         esl_seteq<1,1,1>(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read(), ap_const_logic_0))) {
        resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count = (!resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_sync_ready.read(), ap_const_logic_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read()))) {
        resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count = (!resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
}

void myproject::thread_Block_proc_U0_ap_continue() {
    Block_proc_U0_ap_continue = ap_sync_done.read();
}

void myproject::thread_Block_proc_U0_ap_start() {
    Block_proc_U0_ap_start = (ap_start.read() & (ap_sync_reg_Block_proc_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void myproject::thread_Block_proc_U0_start_full_n() {
    Block_proc_U0_start_full_n = ap_const_logic_1;
}

void myproject::thread_Block_proc_U0_start_write() {
    Block_proc_U0_start_write = ap_const_logic_0;
}

void myproject::thread_ap_done() {
    ap_done = ap_sync_done.read();
}

void myproject::thread_ap_idle() {
    ap_idle = (Block_proc_U0_ap_idle.read() & resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_idle.read());
}

void myproject::thread_ap_ready() {
    ap_ready = ap_sync_ready.read();
}

void myproject::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void myproject::thread_ap_sync_Block_proc_U0_ap_ready() {
    ap_sync_Block_proc_U0_ap_ready = (Block_proc_U0_ap_ready.read() | ap_sync_reg_Block_proc_U0_ap_ready.read());
}

void myproject::thread_ap_sync_continue() {
    ap_sync_continue = ap_sync_done.read();
}

void myproject::thread_ap_sync_done() {
    ap_sync_done = (Block_proc_U0_ap_done.read() & resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_done.read());
}

void myproject::thread_ap_sync_ready() {
    ap_sync_ready = (ap_sync_Block_proc_U0_ap_ready.read() & ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read());
}

void myproject::thread_ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready() {
    ap_sync_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready = (resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read() | ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read());
}

void myproject::thread_const_size_in_1() {
    const_size_in_1 = Block_proc_U0_const_size_in_1.read();
}

void myproject::thread_const_size_in_1_ap_vld() {
    const_size_in_1_ap_vld = Block_proc_U0_const_size_in_1_ap_vld.read();
}

void myproject::thread_const_size_out_1() {
    const_size_out_1 = Block_proc_U0_const_size_out_1.read();
}

void myproject::thread_const_size_out_1_ap_vld() {
    const_size_out_1_ap_vld = Block_proc_U0_const_size_out_1_ap_vld.read();
}

void myproject::thread_input_1_V_V_TREADY() {
    input_1_V_V_TREADY = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_image_V_V_TREADY.read();
}

void myproject::thread_layer2_out_V_V_TDATA() {
    layer2_out_V_V_TDATA = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TDATA.read();
}

void myproject::thread_layer2_out_V_V_TVALID() {
    layer2_out_V_V_TVALID = resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_resized_V_V_TVALID.read();
}

void myproject::thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue() {
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_continue = ap_sync_done.read();
}

void myproject::thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start() {
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_start = (ap_start.read() & (ap_sync_reg_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void myproject::thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n() {
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_full_n = ap_const_logic_1;
}

void myproject::thread_resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write() {
    resize_nearest_v2_ap_fixed_16_14_5_3_0_config2_U0_start_write = ap_const_logic_0;
}

void myproject::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"input_1_V_V_TDATA\" :  \"" << input_1_V_V_TDATA.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"layer2_out_V_V_TDATA\" :  \"" << layer2_out_V_V_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"const_size_in_1\" :  \"" << const_size_in_1.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"const_size_out_1\" :  \"" << const_size_out_1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"const_size_in_1_ap_vld\" :  \"" << const_size_in_1_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"const_size_out_1_ap_vld\" :  \"" << const_size_out_1_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_1_V_V_TVALID\" :  \"" << input_1_V_V_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"input_1_V_V_TREADY\" :  \"" << input_1_V_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"layer2_out_V_V_TVALID\" :  \"" << layer2_out_V_V_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"layer2_out_V_V_TREADY\" :  \"" << layer2_out_V_V_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
