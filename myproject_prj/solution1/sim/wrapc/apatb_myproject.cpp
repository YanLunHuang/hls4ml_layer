// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "input_1_0_V_V"
#define AUTOTB_TVIN_input_1_0_V_V  "../tv/cdatafile/c.myproject.autotvin_input_1_0_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_1_0_V_V  "../tv/stream_size/stream_size_in_input_1_0_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V  "../tv/stream_size/stream_ingress_status_input_1_0_V_V.dat"
// wrapc file define: "input_1_1_V_V"
#define AUTOTB_TVIN_input_1_1_V_V  "../tv/cdatafile/c.myproject.autotvin_input_1_1_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_1_1_V_V  "../tv/stream_size/stream_size_in_input_1_1_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V  "../tv/stream_size/stream_ingress_status_input_1_1_V_V.dat"
// wrapc file define: "input_1_2_V_V"
#define AUTOTB_TVIN_input_1_2_V_V  "../tv/cdatafile/c.myproject.autotvin_input_1_2_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_1_2_V_V  "../tv/stream_size/stream_size_in_input_1_2_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V  "../tv/stream_size/stream_ingress_status_input_1_2_V_V.dat"
// wrapc file define: "input_1_3_V_V"
#define AUTOTB_TVIN_input_1_3_V_V  "../tv/cdatafile/c.myproject.autotvin_input_1_3_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_1_3_V_V  "../tv/stream_size/stream_size_in_input_1_3_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V  "../tv/stream_size/stream_ingress_status_input_1_3_V_V.dat"
// wrapc file define: "layer2_out_0_V_V"
#define AUTOTB_TVOUT_layer2_out_0_V_V  "../tv/cdatafile/c.myproject.autotvout_layer2_out_0_V_V.dat"
#define AUTOTB_TVIN_layer2_out_0_V_V  "../tv/cdatafile/c.myproject.autotvin_layer2_out_0_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V  "../tv/stream_size/stream_size_out_layer2_out_0_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer2_out_0_V_V  "../tv/stream_size/stream_egress_status_layer2_out_0_V_V.dat"
// wrapc file define: "layer2_out_1_V_V"
#define AUTOTB_TVOUT_layer2_out_1_V_V  "../tv/cdatafile/c.myproject.autotvout_layer2_out_1_V_V.dat"
#define AUTOTB_TVIN_layer2_out_1_V_V  "../tv/cdatafile/c.myproject.autotvin_layer2_out_1_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer2_out_1_V_V  "../tv/stream_size/stream_size_out_layer2_out_1_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer2_out_1_V_V  "../tv/stream_size/stream_egress_status_layer2_out_1_V_V.dat"
// wrapc file define: "layer2_out_2_V_V"
#define AUTOTB_TVOUT_layer2_out_2_V_V  "../tv/cdatafile/c.myproject.autotvout_layer2_out_2_V_V.dat"
#define AUTOTB_TVIN_layer2_out_2_V_V  "../tv/cdatafile/c.myproject.autotvin_layer2_out_2_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer2_out_2_V_V  "../tv/stream_size/stream_size_out_layer2_out_2_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer2_out_2_V_V  "../tv/stream_size/stream_egress_status_layer2_out_2_V_V.dat"
// wrapc file define: "layer2_out_3_V_V"
#define AUTOTB_TVOUT_layer2_out_3_V_V  "../tv/cdatafile/c.myproject.autotvout_layer2_out_3_V_V.dat"
#define AUTOTB_TVIN_layer2_out_3_V_V  "../tv/cdatafile/c.myproject.autotvin_layer2_out_3_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer2_out_3_V_V  "../tv/stream_size/stream_size_out_layer2_out_3_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer2_out_3_V_V  "../tv/stream_size/stream_egress_status_layer2_out_3_V_V.dat"
// wrapc file define: "const_size_in_1"
#define AUTOTB_TVOUT_const_size_in_1  "../tv/cdatafile/c.myproject.autotvout_const_size_in_1.dat"
// wrapc file define: "const_size_out_1"
#define AUTOTB_TVOUT_const_size_out_1  "../tv/cdatafile/c.myproject.autotvout_const_size_out_1.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "layer2_out_0_V_V"
#define AUTOTB_TVOUT_PC_layer2_out_0_V_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer2_out_0_V_V.dat"
// tvout file define: "layer2_out_1_V_V"
#define AUTOTB_TVOUT_PC_layer2_out_1_V_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer2_out_1_V_V.dat"
// tvout file define: "layer2_out_2_V_V"
#define AUTOTB_TVOUT_PC_layer2_out_2_V_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer2_out_2_V_V.dat"
// tvout file define: "layer2_out_3_V_V"
#define AUTOTB_TVOUT_PC_layer2_out_3_V_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer2_out_3_V_V.dat"
// tvout file define: "const_size_in_1"
#define AUTOTB_TVOUT_PC_const_size_in_1  "../tv/rtldatafile/rtl.myproject.autotvout_const_size_in_1.dat"
// tvout file define: "const_size_out_1"
#define AUTOTB_TVOUT_PC_const_size_out_1  "../tv/rtldatafile/rtl.myproject.autotvout_const_size_out_1.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_1_0_V_V_depth = 0;
			input_1_1_V_V_depth = 0;
			input_1_2_V_V_depth = 0;
			input_1_3_V_V_depth = 0;
			layer2_out_0_V_V_depth = 0;
			layer2_out_1_V_V_depth = 0;
			layer2_out_2_V_V_depth = 0;
			layer2_out_3_V_V_depth = 0;
			const_size_in_1_depth = 0;
			const_size_out_1_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{input_1_0_V_V " << input_1_0_V_V_depth << "}\n";
			total_list << "{input_1_1_V_V " << input_1_1_V_V_depth << "}\n";
			total_list << "{input_1_2_V_V " << input_1_2_V_V_depth << "}\n";
			total_list << "{input_1_3_V_V " << input_1_3_V_V_depth << "}\n";
			total_list << "{layer2_out_0_V_V " << layer2_out_0_V_V_depth << "}\n";
			total_list << "{layer2_out_1_V_V " << layer2_out_1_V_V_depth << "}\n";
			total_list << "{layer2_out_2_V_V " << layer2_out_2_V_V_depth << "}\n";
			total_list << "{layer2_out_3_V_V " << layer2_out_3_V_V_depth << "}\n";
			total_list << "{const_size_in_1 " << const_size_in_1_depth << "}\n";
			total_list << "{const_size_out_1 " << const_size_out_1_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_1_0_V_V_depth;
		int input_1_1_V_V_depth;
		int input_1_2_V_V_depth;
		int input_1_3_V_V_depth;
		int layer2_out_0_V_V_depth;
		int layer2_out_1_V_V_depth;
		int layer2_out_2_V_V_depth;
		int layer2_out_3_V_V_depth;
		int const_size_in_1_depth;
		int const_size_out_1_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void myproject (
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > input_1[4],
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > layer2_out[4],
unsigned short (&const_size_in_1),
unsigned short (&const_size_out_1));

void AESL_WRAP_myproject (
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > input_1[4],
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > layer2_out[4],
unsigned short (&const_size_in_1),
unsigned short (&const_size_out_1))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "input_1[0]"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // pop_size
			int aesl_tmp_25 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_25; i++)
			{
				input_1[0].read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "input_1[1]"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // pop_size
			int aesl_tmp_28 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_28; i++)
			{
				input_1[1].read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "input_1[2]"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // pop_size
			int aesl_tmp_31 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_31; i++)
			{
				input_1[2].read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[/transaction]]
		}

		// pop stream input: "input_1[3]"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // pop_size
			int aesl_tmp_34 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_34; i++)
			{
				input_1[3].read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer2_out[0]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_36;
		int aesl_tmp_37;
		int aesl_tmp_38 = 0;

		// read output stream size: "layer2_out[0]"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // pop_size
			aesl_tmp_37 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer2_out[1]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_39;
		int aesl_tmp_40;
		int aesl_tmp_41 = 0;

		// read output stream size: "layer2_out[1]"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // pop_size
			aesl_tmp_40 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer2_out[2]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_42;
		int aesl_tmp_43;
		int aesl_tmp_44 = 0;

		// read output stream size: "layer2_out[2]"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // pop_size
			aesl_tmp_43 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer2_out[3]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_45;
		int aesl_tmp_46;
		int aesl_tmp_47 = 0;

		// read output stream size: "layer2_out[3]"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // pop_size
			aesl_tmp_46 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "layer2_out_0_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_0_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_0_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_0_V_V, AESL_token); // data

			std::vector<sc_bv<16> > layer2_out_0_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_0_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_0_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					layer2_out_0_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_0_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer2_out_0_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_37)
			{
				aesl_tmp_37 = i;
			}

			if (aesl_tmp_37 > 0 && aesl_tmp_36.size() < aesl_tmp_37)
			{
				int aesl_tmp_36_size = aesl_tmp_36.size();

				for (int tmp_aesl_tmp_36 = 0; tmp_aesl_tmp_36 < aesl_tmp_37 - aesl_tmp_36_size; tmp_aesl_tmp_36++)
				{
					ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> tmp;
					aesl_tmp_36.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer2_out_0_V_V
				{
					// bitslice(15, 0)
					// {
						// celement: layer2_out.V.V(15, 0)
						// {
							sc_lv<16>* layer2_out_V_V_lv0_0_0_2 = new sc_lv<16>[aesl_tmp_37 - aesl_tmp_38];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_38) => (aesl_tmp_37 - 1) @ (1)
							for (int i_0 = aesl_tmp_38; i_0 <= aesl_tmp_37 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_36[0]) != NULL) // check the null address if the c port is array or others
								{
									layer2_out_V_V_lv0_0_0_2[hls_map_index].range(15, 0) = sc_bv<16>(layer2_out_0_V_V_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_38) => (aesl_tmp_37 - 1) @ (1)
							for (int i_0 = aesl_tmp_38; i_0 <= aesl_tmp_37 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_36[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_36[0]
								// output_left_conversion : (aesl_tmp_36[i_0]).range()
								// output_type_conversion : (layer2_out_V_V_lv0_0_0_2[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_36[0]) != NULL) // check the null address if the c port is array or others
								{
									(aesl_tmp_36[i_0]).range() = (layer2_out_V_V_lv0_0_0_2[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "layer2_out_1_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_1_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_1_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_1_V_V, AESL_token); // data

			std::vector<sc_bv<16> > layer2_out_1_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_1_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_1_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					layer2_out_1_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_1_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer2_out_1_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_40)
			{
				aesl_tmp_40 = i;
			}

			if (aesl_tmp_40 > 0 && aesl_tmp_39.size() < aesl_tmp_40)
			{
				int aesl_tmp_39_size = aesl_tmp_39.size();

				for (int tmp_aesl_tmp_39 = 0; tmp_aesl_tmp_39 < aesl_tmp_40 - aesl_tmp_39_size; tmp_aesl_tmp_39++)
				{
					ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> tmp;
					aesl_tmp_39.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer2_out_1_V_V
				{
					// bitslice(15, 0)
					// {
						// celement: layer2_out.V.V(15, 0)
						// {
							sc_lv<16>* layer2_out_V_V_lv0_1_1_2 = new sc_lv<16>[aesl_tmp_40 - aesl_tmp_41];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_41) => (aesl_tmp_40 - 1) @ (1)
							for (int i_0 = aesl_tmp_41; i_0 <= aesl_tmp_40 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_39[0]) != NULL) // check the null address if the c port is array or others
								{
									layer2_out_V_V_lv0_1_1_2[hls_map_index].range(15, 0) = sc_bv<16>(layer2_out_1_V_V_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_41) => (aesl_tmp_40 - 1) @ (1)
							for (int i_0 = aesl_tmp_41; i_0 <= aesl_tmp_40 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_39[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_39[0]
								// output_left_conversion : (aesl_tmp_39[i_0]).range()
								// output_type_conversion : (layer2_out_V_V_lv0_1_1_2[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_39[0]) != NULL) // check the null address if the c port is array or others
								{
									(aesl_tmp_39[i_0]).range() = (layer2_out_V_V_lv0_1_1_2[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "layer2_out_2_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_2_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_2_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_2_V_V, AESL_token); // data

			std::vector<sc_bv<16> > layer2_out_2_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_2_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_2_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					layer2_out_2_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_2_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer2_out_2_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_43)
			{
				aesl_tmp_43 = i;
			}

			if (aesl_tmp_43 > 0 && aesl_tmp_42.size() < aesl_tmp_43)
			{
				int aesl_tmp_42_size = aesl_tmp_42.size();

				for (int tmp_aesl_tmp_42 = 0; tmp_aesl_tmp_42 < aesl_tmp_43 - aesl_tmp_42_size; tmp_aesl_tmp_42++)
				{
					ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> tmp;
					aesl_tmp_42.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer2_out_2_V_V
				{
					// bitslice(15, 0)
					// {
						// celement: layer2_out.V.V(15, 0)
						// {
							sc_lv<16>* layer2_out_V_V_lv0_2_2_2 = new sc_lv<16>[aesl_tmp_43 - aesl_tmp_44];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_44) => (aesl_tmp_43 - 1) @ (1)
							for (int i_0 = aesl_tmp_44; i_0 <= aesl_tmp_43 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_42[0]) != NULL) // check the null address if the c port is array or others
								{
									layer2_out_V_V_lv0_2_2_2[hls_map_index].range(15, 0) = sc_bv<16>(layer2_out_2_V_V_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_44) => (aesl_tmp_43 - 1) @ (1)
							for (int i_0 = aesl_tmp_44; i_0 <= aesl_tmp_43 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_42[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_42[0]
								// output_left_conversion : (aesl_tmp_42[i_0]).range()
								// output_type_conversion : (layer2_out_V_V_lv0_2_2_2[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_42[0]) != NULL) // check the null address if the c port is array or others
								{
									(aesl_tmp_42[i_0]).range() = (layer2_out_V_V_lv0_2_2_2[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "layer2_out_3_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_3_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_3_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_3_V_V, AESL_token); // data

			std::vector<sc_bv<16> > layer2_out_3_V_V_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_3_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_3_V_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					layer2_out_3_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_3_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer2_out_3_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_46)
			{
				aesl_tmp_46 = i;
			}

			if (aesl_tmp_46 > 0 && aesl_tmp_45.size() < aesl_tmp_46)
			{
				int aesl_tmp_45_size = aesl_tmp_45.size();

				for (int tmp_aesl_tmp_45 = 0; tmp_aesl_tmp_45 < aesl_tmp_46 - aesl_tmp_45_size; tmp_aesl_tmp_45++)
				{
					ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> tmp;
					aesl_tmp_45.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer2_out_3_V_V
				{
					// bitslice(15, 0)
					// {
						// celement: layer2_out.V.V(15, 0)
						// {
							sc_lv<16>* layer2_out_V_V_lv0_3_3_2 = new sc_lv<16>[aesl_tmp_46 - aesl_tmp_47];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_47) => (aesl_tmp_46 - 1) @ (1)
							for (int i_0 = aesl_tmp_47; i_0 <= aesl_tmp_46 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_45[0]) != NULL) // check the null address if the c port is array or others
								{
									layer2_out_V_V_lv0_3_3_2[hls_map_index].range(15, 0) = sc_bv<16>(layer2_out_3_V_V_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_47) => (aesl_tmp_46 - 1) @ (1)
							for (int i_0 = aesl_tmp_47; i_0 <= aesl_tmp_46 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_45[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_45[0]
								// output_left_conversion : (aesl_tmp_45[i_0]).range()
								// output_type_conversion : (layer2_out_V_V_lv0_3_3_2[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_45[0]) != NULL) // check the null address if the c port is array or others
								{
									(aesl_tmp_45[i_0]).range() = (layer2_out_V_V_lv0_3_3_2[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "const_size_in_1"
		aesl_fh.read(AUTOTB_TVOUT_PC_const_size_in_1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_const_size_in_1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_const_size_in_1, AESL_token); // data

			sc_bv<16> *const_size_in_1_pc_buffer = new sc_bv<16>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'const_size_in_1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'const_size_in_1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					const_size_in_1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_const_size_in_1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_const_size_in_1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: const_size_in_1
				{
					// bitslice(15, 0)
					// {
						// celement: const_size_in_1(15, 0)
						// {
							sc_lv<16>* const_size_in_1_lv0_0_0_1 = new sc_lv<16>[1];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: const_size_in_1(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(const_size_in_1) != NULL) // check the null address if the c port is array or others
								{
									const_size_in_1_lv0_0_0_1[hls_map_index].range(15, 0) = sc_bv<16>(const_size_in_1_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: const_size_in_1(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : const_size_in_1
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : const_size_in_1
								// output_left_conversion : const_size_in_1
								// output_type_conversion : (const_size_in_1_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(const_size_in_1) != NULL) // check the null address if the c port is array or others
								{
									const_size_in_1 = (const_size_in_1_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] const_size_in_1_pc_buffer;
		}

		// output port post check: "const_size_out_1"
		aesl_fh.read(AUTOTB_TVOUT_PC_const_size_out_1, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_const_size_out_1, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_const_size_out_1, AESL_token); // data

			sc_bv<16> *const_size_out_1_pc_buffer = new sc_bv<16>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'const_size_out_1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'const_size_out_1', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					const_size_out_1_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_const_size_out_1, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_const_size_out_1))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: const_size_out_1
				{
					// bitslice(15, 0)
					// {
						// celement: const_size_out_1(15, 0)
						// {
							sc_lv<16>* const_size_out_1_lv0_0_0_1 = new sc_lv<16>[1];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: const_size_out_1(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(const_size_out_1) != NULL) // check the null address if the c port is array or others
								{
									const_size_out_1_lv0_0_0_1[hls_map_index].range(15, 0) = sc_bv<16>(const_size_out_1_pc_buffer[hls_map_index].range(15, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: const_size_out_1(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : const_size_out_1
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : const_size_out_1
								// output_left_conversion : const_size_out_1
								// output_type_conversion : (const_size_out_1_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(const_size_out_1) != NULL) // check the null address if the c port is array or others
								{
									const_size_out_1 = (const_size_out_1_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] const_size_out_1_pc_buffer;
		}

		// push back output stream: "layer2_out[0]"
		for (int i = 0; i < aesl_tmp_37; i++)
		{
			layer2_out[0].write(aesl_tmp_36[i]);
		}

		// push back output stream: "layer2_out[1]"
		for (int i = 0; i < aesl_tmp_40; i++)
		{
			layer2_out[1].write(aesl_tmp_39[i]);
		}

		// push back output stream: "layer2_out[2]"
		for (int i = 0; i < aesl_tmp_43; i++)
		{
			layer2_out[2].write(aesl_tmp_42[i]);
		}

		// push back output stream: "layer2_out[3]"
		for (int i = 0; i < aesl_tmp_46; i++)
		{
			layer2_out[3].write(aesl_tmp_45[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_1_0_V_V"
		char* tvin_input_1_0_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1_0_V_V);
		char* wrapc_stream_size_in_input_1_0_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_1_0_V_V);
		char* wrapc_stream_ingress_status_input_1_0_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V);

		// "input_1_1_V_V"
		char* tvin_input_1_1_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1_1_V_V);
		char* wrapc_stream_size_in_input_1_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_1_1_V_V);
		char* wrapc_stream_ingress_status_input_1_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V);

		// "input_1_2_V_V"
		char* tvin_input_1_2_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1_2_V_V);
		char* wrapc_stream_size_in_input_1_2_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_1_2_V_V);
		char* wrapc_stream_ingress_status_input_1_2_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V);

		// "input_1_3_V_V"
		char* tvin_input_1_3_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1_3_V_V);
		char* wrapc_stream_size_in_input_1_3_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_1_3_V_V);
		char* wrapc_stream_ingress_status_input_1_3_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V);

		// "layer2_out_0_V_V"
		char* tvin_layer2_out_0_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer2_out_0_V_V);
		char* tvout_layer2_out_0_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer2_out_0_V_V);
		char* wrapc_stream_size_out_layer2_out_0_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V);
		char* wrapc_stream_egress_status_layer2_out_0_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer2_out_0_V_V);

		// "layer2_out_1_V_V"
		char* tvin_layer2_out_1_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer2_out_1_V_V);
		char* tvout_layer2_out_1_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer2_out_1_V_V);
		char* wrapc_stream_size_out_layer2_out_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer2_out_1_V_V);
		char* wrapc_stream_egress_status_layer2_out_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer2_out_1_V_V);

		// "layer2_out_2_V_V"
		char* tvin_layer2_out_2_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer2_out_2_V_V);
		char* tvout_layer2_out_2_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer2_out_2_V_V);
		char* wrapc_stream_size_out_layer2_out_2_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer2_out_2_V_V);
		char* wrapc_stream_egress_status_layer2_out_2_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer2_out_2_V_V);

		// "layer2_out_3_V_V"
		char* tvin_layer2_out_3_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer2_out_3_V_V);
		char* tvout_layer2_out_3_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer2_out_3_V_V);
		char* wrapc_stream_size_out_layer2_out_3_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer2_out_3_V_V);
		char* wrapc_stream_egress_status_layer2_out_3_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer2_out_3_V_V);

		// "const_size_in_1"
		char* tvout_const_size_in_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_const_size_in_1);

		// "const_size_out_1"
		char* tvout_const_size_out_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_const_size_out_1);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "input_1[0]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_24;
		int aesl_tmp_25 = 0;
		while (!input_1[0].empty())
		{
			aesl_tmp_24.push_back(input_1[0].read());
			aesl_tmp_25++;
		}

		// dump stream tvin: "input_1[1]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_27;
		int aesl_tmp_28 = 0;
		while (!input_1[1].empty())
		{
			aesl_tmp_27.push_back(input_1[1].read());
			aesl_tmp_28++;
		}

		// dump stream tvin: "input_1[2]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_30;
		int aesl_tmp_31 = 0;
		while (!input_1[2].empty())
		{
			aesl_tmp_30.push_back(input_1[2].read());
			aesl_tmp_31++;
		}

		// dump stream tvin: "input_1[3]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_33;
		int aesl_tmp_34 = 0;
		while (!input_1[3].empty())
		{
			aesl_tmp_33.push_back(input_1[3].read());
			aesl_tmp_34++;
		}

		// dump stream tvin: "layer2_out[0]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_36;
		int aesl_tmp_37 = 0;
		while (!layer2_out[0].empty())
		{
			aesl_tmp_36.push_back(layer2_out[0].read());
			aesl_tmp_37++;
		}

		// dump stream tvin: "layer2_out[1]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_39;
		int aesl_tmp_40 = 0;
		while (!layer2_out[1].empty())
		{
			aesl_tmp_39.push_back(layer2_out[1].read());
			aesl_tmp_40++;
		}

		// dump stream tvin: "layer2_out[2]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_42;
		int aesl_tmp_43 = 0;
		while (!layer2_out[2].empty())
		{
			aesl_tmp_42.push_back(layer2_out[2].read());
			aesl_tmp_43++;
		}

		// dump stream tvin: "layer2_out[3]"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_45;
		int aesl_tmp_46 = 0;
		while (!layer2_out[3].empty())
		{
			aesl_tmp_45.push_back(layer2_out[3].read());
			aesl_tmp_46++;
		}

		// push back input stream: "input_1[0]"
		for (int i = 0; i < aesl_tmp_25; i++)
		{
			input_1[0].write(aesl_tmp_24[i]);
		}

		// push back input stream: "input_1[1]"
		for (int i = 0; i < aesl_tmp_28; i++)
		{
			input_1[1].write(aesl_tmp_27[i]);
		}

		// push back input stream: "input_1[2]"
		for (int i = 0; i < aesl_tmp_31; i++)
		{
			input_1[2].write(aesl_tmp_30[i]);
		}

		// push back input stream: "input_1[3]"
		for (int i = 0; i < aesl_tmp_34; i++)
		{
			input_1[3].write(aesl_tmp_33[i]);
		}

		// push back input stream: "layer2_out[0]"
		for (int i = 0; i < aesl_tmp_37; i++)
		{
			layer2_out[0].write(aesl_tmp_36[i]);
		}

		// push back input stream: "layer2_out[1]"
		for (int i = 0; i < aesl_tmp_40; i++)
		{
			layer2_out[1].write(aesl_tmp_39[i]);
		}

		// push back input stream: "layer2_out[2]"
		for (int i = 0; i < aesl_tmp_43; i++)
		{
			layer2_out[2].write(aesl_tmp_42[i]);
		}

		// push back input stream: "layer2_out[3]"
		for (int i = 0; i < aesl_tmp_46; i++)
		{
			layer2_out[3].write(aesl_tmp_45[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		myproject(input_1, layer2_out, const_size_in_1, const_size_out_1);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "input_1[0]"
		int aesl_tmp_26 = input_1[0].size();

		// record input size to tv3: "input_1[1]"
		int aesl_tmp_29 = input_1[1].size();

		// record input size to tv3: "input_1[2]"
		int aesl_tmp_32 = input_1[2].size();

		// record input size to tv3: "input_1[3]"
		int aesl_tmp_35 = input_1[3].size();

		// pop output stream: "layer2_out[0]"
		int aesl_tmp_38 = aesl_tmp_37;
		aesl_tmp_37 = 0;
     aesl_tmp_36.clear();
		while (!layer2_out[0].empty())
		{
			aesl_tmp_36.push_back(layer2_out[0].read());
			aesl_tmp_37++;
		}

		// pop output stream: "layer2_out[1]"
		int aesl_tmp_41 = aesl_tmp_40;
		aesl_tmp_40 = 0;
     aesl_tmp_39.clear();
		while (!layer2_out[1].empty())
		{
			aesl_tmp_39.push_back(layer2_out[1].read());
			aesl_tmp_40++;
		}

		// pop output stream: "layer2_out[2]"
		int aesl_tmp_44 = aesl_tmp_43;
		aesl_tmp_43 = 0;
     aesl_tmp_42.clear();
		while (!layer2_out[2].empty())
		{
			aesl_tmp_42.push_back(layer2_out[2].read());
			aesl_tmp_43++;
		}

		// pop output stream: "layer2_out[3]"
		int aesl_tmp_47 = aesl_tmp_46;
		aesl_tmp_46 = 0;
     aesl_tmp_45.clear();
		while (!layer2_out[3].empty())
		{
			aesl_tmp_45.push_back(layer2_out[3].read());
			aesl_tmp_46++;
		}

		// [[transaction]]
		sprintf(tvin_input_1_0_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1_0_V_V, tvin_input_1_0_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, tvin_input_1_0_V_V);

		sc_bv<16>* input_1_0_V_V_tvin_wrapc_buffer = new sc_bv<16>[aesl_tmp_25 - aesl_tmp_26];

		// RTL Name: input_1_0_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: input_1.V.V(15, 0)
				{
					// carray: (0) => (aesl_tmp_25 - aesl_tmp_26 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_25 - aesl_tmp_26 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_24[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_24[0]
						// regulate_c_name       : input_1_V_V
						// input_type_conversion : (aesl_tmp_24[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_24[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> input_1_V_V_tmp_mem;
							input_1_V_V_tmp_mem = (aesl_tmp_24[i_0]).range().to_string(SC_BIN).c_str();
							input_1_0_V_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = input_1_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_25 - aesl_tmp_26; i++)
		{
			sprintf(tvin_input_1_0_V_V, "%s\n", (input_1_0_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1_0_V_V, tvin_input_1_0_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_25 > aesl_tmp_26)
     {
		sc_int<32> stream_ingress_size_input_1_0_V_V = aesl_tmp_25;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, stream_ingress_size_input_1_0_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, "\n");

		for (int i = 0; i < aesl_tmp_25 - aesl_tmp_26; i++)
		{
			stream_ingress_size_input_1_0_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, stream_ingress_size_input_1_0_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_1_0_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, stream_ingress_size_input_1_0_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_25 - aesl_tmp_26, &tcl_file.input_1_0_V_V_depth);
		sprintf(tvin_input_1_0_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1_0_V_V, tvin_input_1_0_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_0_V_V, tvin_input_1_0_V_V);

		// release memory allocation
		delete [] input_1_0_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_1_0_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, wrapc_stream_size_in_input_1_0_V_V);
		sprintf(wrapc_stream_size_in_input_1_0_V_V, "%d\n", aesl_tmp_25 - aesl_tmp_26);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, wrapc_stream_size_in_input_1_0_V_V);
		sprintf(wrapc_stream_size_in_input_1_0_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_0_V_V, wrapc_stream_size_in_input_1_0_V_V);

		// [[transaction]]
		sprintf(tvin_input_1_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1_1_V_V, tvin_input_1_1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, tvin_input_1_1_V_V);

		sc_bv<16>* input_1_1_V_V_tvin_wrapc_buffer = new sc_bv<16>[aesl_tmp_28 - aesl_tmp_29];

		// RTL Name: input_1_1_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: input_1.V.V(15, 0)
				{
					// carray: (0) => (aesl_tmp_28 - aesl_tmp_29 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_28 - aesl_tmp_29 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_27[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_27[0]
						// regulate_c_name       : input_1_V_V
						// input_type_conversion : (aesl_tmp_27[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_27[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> input_1_V_V_tmp_mem;
							input_1_V_V_tmp_mem = (aesl_tmp_27[i_0]).range().to_string(SC_BIN).c_str();
							input_1_1_V_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = input_1_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_28 - aesl_tmp_29; i++)
		{
			sprintf(tvin_input_1_1_V_V, "%s\n", (input_1_1_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1_1_V_V, tvin_input_1_1_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_28 > aesl_tmp_29)
     {
		sc_int<32> stream_ingress_size_input_1_1_V_V = aesl_tmp_28;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, stream_ingress_size_input_1_1_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, "\n");

		for (int i = 0; i < aesl_tmp_28 - aesl_tmp_29; i++)
		{
			stream_ingress_size_input_1_1_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, stream_ingress_size_input_1_1_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_1_1_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, stream_ingress_size_input_1_1_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_28 - aesl_tmp_29, &tcl_file.input_1_1_V_V_depth);
		sprintf(tvin_input_1_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1_1_V_V, tvin_input_1_1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_1_V_V, tvin_input_1_1_V_V);

		// release memory allocation
		delete [] input_1_1_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_1_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_1_V_V, wrapc_stream_size_in_input_1_1_V_V);
		sprintf(wrapc_stream_size_in_input_1_1_V_V, "%d\n", aesl_tmp_28 - aesl_tmp_29);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_1_V_V, wrapc_stream_size_in_input_1_1_V_V);
		sprintf(wrapc_stream_size_in_input_1_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_1_V_V, wrapc_stream_size_in_input_1_1_V_V);

		// [[transaction]]
		sprintf(tvin_input_1_2_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1_2_V_V, tvin_input_1_2_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, tvin_input_1_2_V_V);

		sc_bv<16>* input_1_2_V_V_tvin_wrapc_buffer = new sc_bv<16>[aesl_tmp_31 - aesl_tmp_32];

		// RTL Name: input_1_2_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: input_1.V.V(15, 0)
				{
					// carray: (0) => (aesl_tmp_31 - aesl_tmp_32 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_31 - aesl_tmp_32 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_30[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_30[0]
						// regulate_c_name       : input_1_V_V
						// input_type_conversion : (aesl_tmp_30[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_30[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> input_1_V_V_tmp_mem;
							input_1_V_V_tmp_mem = (aesl_tmp_30[i_0]).range().to_string(SC_BIN).c_str();
							input_1_2_V_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = input_1_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_31 - aesl_tmp_32; i++)
		{
			sprintf(tvin_input_1_2_V_V, "%s\n", (input_1_2_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1_2_V_V, tvin_input_1_2_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_31 > aesl_tmp_32)
     {
		sc_int<32> stream_ingress_size_input_1_2_V_V = aesl_tmp_31;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, stream_ingress_size_input_1_2_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, "\n");

		for (int i = 0; i < aesl_tmp_31 - aesl_tmp_32; i++)
		{
			stream_ingress_size_input_1_2_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, stream_ingress_size_input_1_2_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_1_2_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, stream_ingress_size_input_1_2_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_31 - aesl_tmp_32, &tcl_file.input_1_2_V_V_depth);
		sprintf(tvin_input_1_2_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1_2_V_V, tvin_input_1_2_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_2_V_V, tvin_input_1_2_V_V);

		// release memory allocation
		delete [] input_1_2_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_1_2_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_2_V_V, wrapc_stream_size_in_input_1_2_V_V);
		sprintf(wrapc_stream_size_in_input_1_2_V_V, "%d\n", aesl_tmp_31 - aesl_tmp_32);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_2_V_V, wrapc_stream_size_in_input_1_2_V_V);
		sprintf(wrapc_stream_size_in_input_1_2_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_2_V_V, wrapc_stream_size_in_input_1_2_V_V);

		// [[transaction]]
		sprintf(tvin_input_1_3_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1_3_V_V, tvin_input_1_3_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, tvin_input_1_3_V_V);

		sc_bv<16>* input_1_3_V_V_tvin_wrapc_buffer = new sc_bv<16>[aesl_tmp_34 - aesl_tmp_35];

		// RTL Name: input_1_3_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: input_1.V.V(15, 0)
				{
					// carray: (0) => (aesl_tmp_34 - aesl_tmp_35 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_34 - aesl_tmp_35 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_33[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_33[0]
						// regulate_c_name       : input_1_V_V
						// input_type_conversion : (aesl_tmp_33[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_33[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> input_1_V_V_tmp_mem;
							input_1_V_V_tmp_mem = (aesl_tmp_33[i_0]).range().to_string(SC_BIN).c_str();
							input_1_3_V_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = input_1_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_34 - aesl_tmp_35; i++)
		{
			sprintf(tvin_input_1_3_V_V, "%s\n", (input_1_3_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1_3_V_V, tvin_input_1_3_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_34 > aesl_tmp_35)
     {
		sc_int<32> stream_ingress_size_input_1_3_V_V = aesl_tmp_34;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, stream_ingress_size_input_1_3_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, "\n");

		for (int i = 0; i < aesl_tmp_34 - aesl_tmp_35; i++)
		{
			stream_ingress_size_input_1_3_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, stream_ingress_size_input_1_3_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_1_3_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, stream_ingress_size_input_1_3_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_34 - aesl_tmp_35, &tcl_file.input_1_3_V_V_depth);
		sprintf(tvin_input_1_3_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1_3_V_V, tvin_input_1_3_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_3_V_V, tvin_input_1_3_V_V);

		// release memory allocation
		delete [] input_1_3_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_1_3_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_3_V_V, wrapc_stream_size_in_input_1_3_V_V);
		sprintf(wrapc_stream_size_in_input_1_3_V_V, "%d\n", aesl_tmp_34 - aesl_tmp_35);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_3_V_V, wrapc_stream_size_in_input_1_3_V_V);
		sprintf(wrapc_stream_size_in_input_1_3_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_3_V_V, wrapc_stream_size_in_input_1_3_V_V);

		// [[transaction]]
		sprintf(tvout_layer2_out_0_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_0_V_V, tvout_layer2_out_0_V_V);

		sc_bv<16>* layer2_out_0_V_V_tvout_wrapc_buffer = new sc_bv<16>[aesl_tmp_37 - aesl_tmp_38];

		// RTL Name: layer2_out_0_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: layer2_out.V.V(15, 0)
				{
					// carray: (aesl_tmp_38) => (aesl_tmp_37 - 1) @ (1)
					for (int i_0 = aesl_tmp_38; i_0 <= aesl_tmp_37 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_36[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_36[0]
						// regulate_c_name       : layer2_out_V_V
						// input_type_conversion : (aesl_tmp_36[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_36[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> layer2_out_V_V_tmp_mem;
							layer2_out_V_V_tmp_mem = (aesl_tmp_36[i_0]).range().to_string(SC_BIN).c_str();
							layer2_out_0_V_V_tvout_wrapc_buffer[hls_map_index].range(15, 0) = layer2_out_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_37 - aesl_tmp_38; i++)
		{
			sprintf(tvout_layer2_out_0_V_V, "%s\n", (layer2_out_0_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer2_out_0_V_V, tvout_layer2_out_0_V_V);
		}

		tcl_file.set_num(aesl_tmp_37 - aesl_tmp_38, &tcl_file.layer2_out_0_V_V_depth);
		sprintf(tvout_layer2_out_0_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_0_V_V, tvout_layer2_out_0_V_V);

		// release memory allocation
		delete [] layer2_out_0_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer2_out_0_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, wrapc_stream_size_out_layer2_out_0_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_0_V_V, "%d\n", aesl_tmp_37 - aesl_tmp_38);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, wrapc_stream_size_out_layer2_out_0_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_0_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_0_V_V, wrapc_stream_size_out_layer2_out_0_V_V);

		// [[transaction]]
		sprintf(tvout_layer2_out_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_1_V_V, tvout_layer2_out_1_V_V);

		sc_bv<16>* layer2_out_1_V_V_tvout_wrapc_buffer = new sc_bv<16>[aesl_tmp_40 - aesl_tmp_41];

		// RTL Name: layer2_out_1_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: layer2_out.V.V(15, 0)
				{
					// carray: (aesl_tmp_41) => (aesl_tmp_40 - 1) @ (1)
					for (int i_0 = aesl_tmp_41; i_0 <= aesl_tmp_40 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_39[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_39[0]
						// regulate_c_name       : layer2_out_V_V
						// input_type_conversion : (aesl_tmp_39[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_39[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> layer2_out_V_V_tmp_mem;
							layer2_out_V_V_tmp_mem = (aesl_tmp_39[i_0]).range().to_string(SC_BIN).c_str();
							layer2_out_1_V_V_tvout_wrapc_buffer[hls_map_index].range(15, 0) = layer2_out_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_40 - aesl_tmp_41; i++)
		{
			sprintf(tvout_layer2_out_1_V_V, "%s\n", (layer2_out_1_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer2_out_1_V_V, tvout_layer2_out_1_V_V);
		}

		tcl_file.set_num(aesl_tmp_40 - aesl_tmp_41, &tcl_file.layer2_out_1_V_V_depth);
		sprintf(tvout_layer2_out_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_1_V_V, tvout_layer2_out_1_V_V);

		// release memory allocation
		delete [] layer2_out_1_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer2_out_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_1_V_V, wrapc_stream_size_out_layer2_out_1_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_1_V_V, "%d\n", aesl_tmp_40 - aesl_tmp_41);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_1_V_V, wrapc_stream_size_out_layer2_out_1_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_1_V_V, wrapc_stream_size_out_layer2_out_1_V_V);

		// [[transaction]]
		sprintf(tvout_layer2_out_2_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_2_V_V, tvout_layer2_out_2_V_V);

		sc_bv<16>* layer2_out_2_V_V_tvout_wrapc_buffer = new sc_bv<16>[aesl_tmp_43 - aesl_tmp_44];

		// RTL Name: layer2_out_2_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: layer2_out.V.V(15, 0)
				{
					// carray: (aesl_tmp_44) => (aesl_tmp_43 - 1) @ (1)
					for (int i_0 = aesl_tmp_44; i_0 <= aesl_tmp_43 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_42[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_42[0]
						// regulate_c_name       : layer2_out_V_V
						// input_type_conversion : (aesl_tmp_42[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_42[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> layer2_out_V_V_tmp_mem;
							layer2_out_V_V_tmp_mem = (aesl_tmp_42[i_0]).range().to_string(SC_BIN).c_str();
							layer2_out_2_V_V_tvout_wrapc_buffer[hls_map_index].range(15, 0) = layer2_out_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_43 - aesl_tmp_44; i++)
		{
			sprintf(tvout_layer2_out_2_V_V, "%s\n", (layer2_out_2_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer2_out_2_V_V, tvout_layer2_out_2_V_V);
		}

		tcl_file.set_num(aesl_tmp_43 - aesl_tmp_44, &tcl_file.layer2_out_2_V_V_depth);
		sprintf(tvout_layer2_out_2_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_2_V_V, tvout_layer2_out_2_V_V);

		// release memory allocation
		delete [] layer2_out_2_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer2_out_2_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_2_V_V, wrapc_stream_size_out_layer2_out_2_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_2_V_V, "%d\n", aesl_tmp_43 - aesl_tmp_44);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_2_V_V, wrapc_stream_size_out_layer2_out_2_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_2_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_2_V_V, wrapc_stream_size_out_layer2_out_2_V_V);

		// [[transaction]]
		sprintf(tvout_layer2_out_3_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_3_V_V, tvout_layer2_out_3_V_V);

		sc_bv<16>* layer2_out_3_V_V_tvout_wrapc_buffer = new sc_bv<16>[aesl_tmp_46 - aesl_tmp_47];

		// RTL Name: layer2_out_3_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: layer2_out.V.V(15, 0)
				{
					// carray: (aesl_tmp_47) => (aesl_tmp_46 - 1) @ (1)
					for (int i_0 = aesl_tmp_47; i_0 <= aesl_tmp_46 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_45[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_45[0]
						// regulate_c_name       : layer2_out_V_V
						// input_type_conversion : (aesl_tmp_45[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_45[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> layer2_out_V_V_tmp_mem;
							layer2_out_V_V_tmp_mem = (aesl_tmp_45[i_0]).range().to_string(SC_BIN).c_str();
							layer2_out_3_V_V_tvout_wrapc_buffer[hls_map_index].range(15, 0) = layer2_out_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_46 - aesl_tmp_47; i++)
		{
			sprintf(tvout_layer2_out_3_V_V, "%s\n", (layer2_out_3_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer2_out_3_V_V, tvout_layer2_out_3_V_V);
		}

		tcl_file.set_num(aesl_tmp_46 - aesl_tmp_47, &tcl_file.layer2_out_3_V_V_depth);
		sprintf(tvout_layer2_out_3_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_3_V_V, tvout_layer2_out_3_V_V);

		// release memory allocation
		delete [] layer2_out_3_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer2_out_3_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_3_V_V, wrapc_stream_size_out_layer2_out_3_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_3_V_V, "%d\n", aesl_tmp_46 - aesl_tmp_47);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_3_V_V, wrapc_stream_size_out_layer2_out_3_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_3_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_3_V_V, wrapc_stream_size_out_layer2_out_3_V_V);

		// [[transaction]]
		sprintf(tvout_const_size_in_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_const_size_in_1, tvout_const_size_in_1);

		sc_bv<16>* const_size_in_1_tvout_wrapc_buffer = new sc_bv<16>[1];

		// RTL Name: const_size_in_1
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: const_size_in_1(15, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : const_size_in_1
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : const_size_in_1
						// regulate_c_name       : const_size_in_1
						// input_type_conversion : const_size_in_1
						if (&(const_size_in_1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> const_size_in_1_tmp_mem;
							const_size_in_1_tmp_mem = const_size_in_1;
							const_size_in_1_tvout_wrapc_buffer[hls_map_index].range(15, 0) = const_size_in_1_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_const_size_in_1, "%s\n", (const_size_in_1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_const_size_in_1, tvout_const_size_in_1);
		}

		tcl_file.set_num(1, &tcl_file.const_size_in_1_depth);
		sprintf(tvout_const_size_in_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_const_size_in_1, tvout_const_size_in_1);

		// release memory allocation
		delete [] const_size_in_1_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_const_size_out_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_const_size_out_1, tvout_const_size_out_1);

		sc_bv<16>* const_size_out_1_tvout_wrapc_buffer = new sc_bv<16>[1];

		// RTL Name: const_size_out_1
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: const_size_out_1(15, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : const_size_out_1
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : const_size_out_1
						// regulate_c_name       : const_size_out_1
						// input_type_conversion : const_size_out_1
						if (&(const_size_out_1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> const_size_out_1_tmp_mem;
							const_size_out_1_tmp_mem = const_size_out_1;
							const_size_out_1_tvout_wrapc_buffer[hls_map_index].range(15, 0) = const_size_out_1_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_const_size_out_1, "%s\n", (const_size_out_1_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_const_size_out_1, tvout_const_size_out_1);
		}

		tcl_file.set_num(1, &tcl_file.const_size_out_1_depth);
		sprintf(tvout_const_size_out_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_const_size_out_1, tvout_const_size_out_1);

		// release memory allocation
		delete [] const_size_out_1_tvout_wrapc_buffer;

		// push back output stream: "layer2_out[0]"
		for (int i = 0; i < aesl_tmp_37; i++)
		{
			layer2_out[0].write(aesl_tmp_36[i]);
		}

		// push back output stream: "layer2_out[1]"
		for (int i = 0; i < aesl_tmp_40; i++)
		{
			layer2_out[1].write(aesl_tmp_39[i]);
		}

		// push back output stream: "layer2_out[2]"
		for (int i = 0; i < aesl_tmp_43; i++)
		{
			layer2_out[2].write(aesl_tmp_42[i]);
		}

		// push back output stream: "layer2_out[3]"
		for (int i = 0; i < aesl_tmp_46; i++)
		{
			layer2_out[3].write(aesl_tmp_45[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_1_0_V_V"
		delete [] tvin_input_1_0_V_V;
		delete [] wrapc_stream_size_in_input_1_0_V_V;
		// release memory allocation: "input_1_1_V_V"
		delete [] tvin_input_1_1_V_V;
		delete [] wrapc_stream_size_in_input_1_1_V_V;
		// release memory allocation: "input_1_2_V_V"
		delete [] tvin_input_1_2_V_V;
		delete [] wrapc_stream_size_in_input_1_2_V_V;
		// release memory allocation: "input_1_3_V_V"
		delete [] tvin_input_1_3_V_V;
		delete [] wrapc_stream_size_in_input_1_3_V_V;
		// release memory allocation: "layer2_out_0_V_V"
		delete [] tvout_layer2_out_0_V_V;
		delete [] tvin_layer2_out_0_V_V;
		delete [] wrapc_stream_size_out_layer2_out_0_V_V;
		// release memory allocation: "layer2_out_1_V_V"
		delete [] tvout_layer2_out_1_V_V;
		delete [] tvin_layer2_out_1_V_V;
		delete [] wrapc_stream_size_out_layer2_out_1_V_V;
		// release memory allocation: "layer2_out_2_V_V"
		delete [] tvout_layer2_out_2_V_V;
		delete [] tvin_layer2_out_2_V_V;
		delete [] wrapc_stream_size_out_layer2_out_2_V_V;
		// release memory allocation: "layer2_out_3_V_V"
		delete [] tvout_layer2_out_3_V_V;
		delete [] tvin_layer2_out_3_V_V;
		delete [] wrapc_stream_size_out_layer2_out_3_V_V;
		// release memory allocation: "const_size_in_1"
		delete [] tvout_const_size_in_1;
		// release memory allocation: "const_size_out_1"
		delete [] tvout_const_size_out_1;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

