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


// wrapc file define: "input_1_V_V"
#define AUTOTB_TVIN_input_1_V_V  "../tv/cdatafile/c.myproject.autotvin_input_1_V_V.dat"
#define WRAPC_STREAM_SIZE_IN_input_1_V_V  "../tv/stream_size/stream_size_in_input_1_V_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_input_1_V_V  "../tv/stream_size/stream_ingress_status_input_1_V_V.dat"
// wrapc file define: "layer2_out_V_V"
#define AUTOTB_TVOUT_layer2_out_V_V  "../tv/cdatafile/c.myproject.autotvout_layer2_out_V_V.dat"
#define AUTOTB_TVIN_layer2_out_V_V  "../tv/cdatafile/c.myproject.autotvin_layer2_out_V_V.dat"
#define WRAPC_STREAM_SIZE_OUT_layer2_out_V_V  "../tv/stream_size/stream_size_out_layer2_out_V_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_layer2_out_V_V  "../tv/stream_size/stream_egress_status_layer2_out_V_V.dat"
// wrapc file define: "const_size_in_1"
#define AUTOTB_TVOUT_const_size_in_1  "../tv/cdatafile/c.myproject.autotvout_const_size_in_1.dat"
// wrapc file define: "const_size_out_1"
#define AUTOTB_TVOUT_const_size_out_1  "../tv/cdatafile/c.myproject.autotvout_const_size_out_1.dat"
// wrapc file define: "w2_V"
#define AUTOTB_TVIN_w2_V  "../tv/cdatafile/c.myproject.autotvin_w2_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "layer2_out_V_V"
#define AUTOTB_TVOUT_PC_layer2_out_V_V  "../tv/rtldatafile/rtl.myproject.autotvout_layer2_out_V_V.dat"
// tvout file define: "const_size_in_1"
#define AUTOTB_TVOUT_PC_const_size_in_1  "../tv/rtldatafile/rtl.myproject.autotvout_const_size_in_1.dat"
// tvout file define: "const_size_out_1"
#define AUTOTB_TVOUT_PC_const_size_out_1  "../tv/rtldatafile/rtl.myproject.autotvout_const_size_out_1.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_1_V_V_depth = 0;
			layer2_out_V_V_depth = 0;
			const_size_in_1_depth = 0;
			const_size_out_1_depth = 0;
			w2_V_depth = 0;
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
			total_list << "{input_1_V_V " << input_1_V_V_depth << "}\n";
			total_list << "{layer2_out_V_V " << layer2_out_V_V_depth << "}\n";
			total_list << "{const_size_in_1 " << const_size_in_1_depth << "}\n";
			total_list << "{const_size_out_1 " << const_size_out_1_depth << "}\n";
			total_list << "{w2_V " << w2_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_1_V_V_depth;
		int layer2_out_V_V_depth;
		int const_size_in_1_depth;
		int const_size_out_1_depth;
		int w2_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void myproject (
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > (&input_1),
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > (&layer2_out),
unsigned short (&const_size_in_1),
unsigned short (&const_size_out_1),
ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> w2[589824]);

void AESL_WRAP_myproject (
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > (&input_1),
hls::stream<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > (&layer2_out),
unsigned short (&const_size_in_1),
unsigned short (&const_size_out_1),
ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> w2[589824])
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

		// pop stream input: "input_1"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_V_V, AESL_token); // pop_size
			int aesl_tmp_7 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_7; i++)
			{
				input_1.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_1_V_V, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "layer2_out"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_9;
		int aesl_tmp_10;
		int aesl_tmp_11 = 0;

		// read output stream size: "layer2_out"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, AESL_token); // pop_size
			aesl_tmp_10 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, AESL_token); // [[/transaction]]
		}

		// output port post check: "layer2_out_V_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_V_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_V_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_V_V, AESL_token); // data

			std::vector<sc_bv<16> > layer2_out_V_V_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'layer2_out_V_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					layer2_out_V_V_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_layer2_out_V_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_layer2_out_V_V))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_10)
			{
				aesl_tmp_10 = i;
			}

			if (aesl_tmp_10 > 0 && aesl_tmp_9.size() < aesl_tmp_10)
			{
				int aesl_tmp_9_size = aesl_tmp_9.size();

				for (int tmp_aesl_tmp_9 = 0; tmp_aesl_tmp_9 < aesl_tmp_10 - aesl_tmp_9_size; tmp_aesl_tmp_9++)
				{
					ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> tmp;
					aesl_tmp_9.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: layer2_out_V_V
				{
					// bitslice(15, 0)
					// {
						// celement: layer2_out.V.V(15, 0)
						// {
							sc_lv<16>* layer2_out_V_V_lv0_0_0_1 = new sc_lv<16>[aesl_tmp_10 - aesl_tmp_11];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: layer2_out.V.V(15, 0)
						{
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									layer2_out_V_V_lv0_0_0_1[hls_map_index].range(15, 0) = sc_bv<16>(layer2_out_V_V_pc_buffer[hls_map_index].range(15, 0));
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
							// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
							for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : aesl_tmp_9[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : aesl_tmp_9[0]
								// output_left_conversion : (aesl_tmp_9[i_0]).range()
								// output_type_conversion : (layer2_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
								{
									(aesl_tmp_9[i_0]).range() = (layer2_out_V_V_lv0_0_0_1[hls_map_index]).to_string(SC_BIN).c_str();
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

		// push back output stream: "layer2_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			layer2_out.write(aesl_tmp_9[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_1_V_V"
		char* tvin_input_1_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_1_V_V);
		char* wrapc_stream_size_in_input_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_input_1_V_V);
		char* wrapc_stream_ingress_status_input_1_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V);

		// "layer2_out_V_V"
		char* tvin_layer2_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_layer2_out_V_V);
		char* tvout_layer2_out_V_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_layer2_out_V_V);
		char* wrapc_stream_size_out_layer2_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V);
		char* wrapc_stream_egress_status_layer2_out_V_V = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_layer2_out_V_V);

		// "const_size_in_1"
		char* tvout_const_size_in_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_const_size_in_1);

		// "const_size_out_1"
		char* tvout_const_size_out_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_const_size_out_1);

		// "w2_V"
		char* tvin_w2_V = new char[1029];
		aesl_fh.touch(AUTOTB_TVIN_w2_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "input_1"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_6;
		int aesl_tmp_7 = 0;
		while (!input_1.empty())
		{
			aesl_tmp_6.push_back(input_1.read());
			aesl_tmp_7++;
		}

		// dump stream tvin: "layer2_out"
		std::vector<ap_fixed<16, 14, (ap_q_mode) 5, (ap_o_mode)3, 0> > aesl_tmp_9;
		int aesl_tmp_10 = 0;
		while (!layer2_out.empty())
		{
			aesl_tmp_9.push_back(layer2_out.read());
			aesl_tmp_10++;
		}

		// [[transaction]]
		sprintf(tvin_w2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_w2_V, tvin_w2_V);

		sc_bv<4096>* w2_V_tvin_wrapc_buffer = new sc_bv<4096>[2304];

		// RTL Name: w2_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (0) => (2303) @ (1)
					for (int i_0 = 0; i_0 <= 2303; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(31, 16)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (2304) => (4607) @ (1)
					for (int i_0 = 2304; i_0 <= 4607; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(31, 16) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(47, 32)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (4608) => (6911) @ (1)
					for (int i_0 = 4608; i_0 <= 6911; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(47, 32) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(63, 48)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (6912) => (9215) @ (1)
					for (int i_0 = 6912; i_0 <= 9215; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(63, 48) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(79, 64)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (9216) => (11519) @ (1)
					for (int i_0 = 9216; i_0 <= 11519; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(79, 64) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(95, 80)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (11520) => (13823) @ (1)
					for (int i_0 = 11520; i_0 <= 13823; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(95, 80) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(111, 96)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (13824) => (16127) @ (1)
					for (int i_0 = 13824; i_0 <= 16127; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(111, 96) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(127, 112)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (16128) => (18431) @ (1)
					for (int i_0 = 16128; i_0 <= 18431; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(127, 112) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(143, 128)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (18432) => (20735) @ (1)
					for (int i_0 = 18432; i_0 <= 20735; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(143, 128) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(159, 144)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (20736) => (23039) @ (1)
					for (int i_0 = 20736; i_0 <= 23039; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(159, 144) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(175, 160)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (23040) => (25343) @ (1)
					for (int i_0 = 23040; i_0 <= 25343; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(175, 160) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(191, 176)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (25344) => (27647) @ (1)
					for (int i_0 = 25344; i_0 <= 27647; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(191, 176) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(207, 192)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (27648) => (29951) @ (1)
					for (int i_0 = 27648; i_0 <= 29951; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(207, 192) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(223, 208)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (29952) => (32255) @ (1)
					for (int i_0 = 29952; i_0 <= 32255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(223, 208) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(239, 224)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (32256) => (34559) @ (1)
					for (int i_0 = 32256; i_0 <= 34559; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(239, 224) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(255, 240)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (34560) => (36863) @ (1)
					for (int i_0 = 34560; i_0 <= 36863; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(255, 240) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(271, 256)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (36864) => (39167) @ (1)
					for (int i_0 = 36864; i_0 <= 39167; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(271, 256) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(287, 272)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (39168) => (41471) @ (1)
					for (int i_0 = 39168; i_0 <= 41471; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(287, 272) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(303, 288)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (41472) => (43775) @ (1)
					for (int i_0 = 41472; i_0 <= 43775; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(303, 288) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(319, 304)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (43776) => (46079) @ (1)
					for (int i_0 = 43776; i_0 <= 46079; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(319, 304) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(335, 320)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (46080) => (48383) @ (1)
					for (int i_0 = 46080; i_0 <= 48383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(335, 320) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(351, 336)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (48384) => (50687) @ (1)
					for (int i_0 = 48384; i_0 <= 50687; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(351, 336) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(367, 352)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (50688) => (52991) @ (1)
					for (int i_0 = 50688; i_0 <= 52991; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(367, 352) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(383, 368)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (52992) => (55295) @ (1)
					for (int i_0 = 52992; i_0 <= 55295; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(383, 368) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(399, 384)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (55296) => (57599) @ (1)
					for (int i_0 = 55296; i_0 <= 57599; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(399, 384) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(415, 400)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (57600) => (59903) @ (1)
					for (int i_0 = 57600; i_0 <= 59903; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(415, 400) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(431, 416)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (59904) => (62207) @ (1)
					for (int i_0 = 59904; i_0 <= 62207; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(431, 416) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(447, 432)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (62208) => (64511) @ (1)
					for (int i_0 = 62208; i_0 <= 64511; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(447, 432) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(463, 448)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (64512) => (66815) @ (1)
					for (int i_0 = 64512; i_0 <= 66815; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(463, 448) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(479, 464)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (66816) => (69119) @ (1)
					for (int i_0 = 66816; i_0 <= 69119; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(479, 464) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(495, 480)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (69120) => (71423) @ (1)
					for (int i_0 = 69120; i_0 <= 71423; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(495, 480) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(511, 496)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (71424) => (73727) @ (1)
					for (int i_0 = 71424; i_0 <= 73727; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(511, 496) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(527, 512)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (73728) => (76031) @ (1)
					for (int i_0 = 73728; i_0 <= 76031; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(527, 512) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(543, 528)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (76032) => (78335) @ (1)
					for (int i_0 = 76032; i_0 <= 78335; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(543, 528) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(559, 544)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (78336) => (80639) @ (1)
					for (int i_0 = 78336; i_0 <= 80639; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(559, 544) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(575, 560)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (80640) => (82943) @ (1)
					for (int i_0 = 80640; i_0 <= 82943; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(575, 560) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(591, 576)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (82944) => (85247) @ (1)
					for (int i_0 = 82944; i_0 <= 85247; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(591, 576) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(607, 592)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (85248) => (87551) @ (1)
					for (int i_0 = 85248; i_0 <= 87551; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(607, 592) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(623, 608)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (87552) => (89855) @ (1)
					for (int i_0 = 87552; i_0 <= 89855; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(623, 608) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(639, 624)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (89856) => (92159) @ (1)
					for (int i_0 = 89856; i_0 <= 92159; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(639, 624) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(655, 640)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (92160) => (94463) @ (1)
					for (int i_0 = 92160; i_0 <= 94463; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(655, 640) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(671, 656)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (94464) => (96767) @ (1)
					for (int i_0 = 94464; i_0 <= 96767; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(671, 656) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(687, 672)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (96768) => (99071) @ (1)
					for (int i_0 = 96768; i_0 <= 99071; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(687, 672) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(703, 688)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (99072) => (101375) @ (1)
					for (int i_0 = 99072; i_0 <= 101375; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(703, 688) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(719, 704)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (101376) => (103679) @ (1)
					for (int i_0 = 101376; i_0 <= 103679; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(719, 704) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(735, 720)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (103680) => (105983) @ (1)
					for (int i_0 = 103680; i_0 <= 105983; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(735, 720) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(751, 736)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (105984) => (108287) @ (1)
					for (int i_0 = 105984; i_0 <= 108287; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(751, 736) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(767, 752)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (108288) => (110591) @ (1)
					for (int i_0 = 108288; i_0 <= 110591; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(767, 752) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(783, 768)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (110592) => (112895) @ (1)
					for (int i_0 = 110592; i_0 <= 112895; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(783, 768) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(799, 784)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (112896) => (115199) @ (1)
					for (int i_0 = 112896; i_0 <= 115199; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(799, 784) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(815, 800)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (115200) => (117503) @ (1)
					for (int i_0 = 115200; i_0 <= 117503; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(815, 800) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(831, 816)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (117504) => (119807) @ (1)
					for (int i_0 = 117504; i_0 <= 119807; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(831, 816) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(847, 832)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (119808) => (122111) @ (1)
					for (int i_0 = 119808; i_0 <= 122111; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(847, 832) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(863, 848)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (122112) => (124415) @ (1)
					for (int i_0 = 122112; i_0 <= 124415; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(863, 848) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(879, 864)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (124416) => (126719) @ (1)
					for (int i_0 = 124416; i_0 <= 126719; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(879, 864) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(895, 880)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (126720) => (129023) @ (1)
					for (int i_0 = 126720; i_0 <= 129023; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(895, 880) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(911, 896)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (129024) => (131327) @ (1)
					for (int i_0 = 129024; i_0 <= 131327; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(911, 896) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(927, 912)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (131328) => (133631) @ (1)
					for (int i_0 = 131328; i_0 <= 133631; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(927, 912) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(943, 928)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (133632) => (135935) @ (1)
					for (int i_0 = 133632; i_0 <= 135935; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(943, 928) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(959, 944)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (135936) => (138239) @ (1)
					for (int i_0 = 135936; i_0 <= 138239; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(959, 944) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(975, 960)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (138240) => (140543) @ (1)
					for (int i_0 = 138240; i_0 <= 140543; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(975, 960) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(991, 976)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (140544) => (142847) @ (1)
					for (int i_0 = 140544; i_0 <= 142847; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(991, 976) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1007, 992)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (142848) => (145151) @ (1)
					for (int i_0 = 142848; i_0 <= 145151; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1007, 992) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1023, 1008)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (145152) => (147455) @ (1)
					for (int i_0 = 145152; i_0 <= 147455; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1023, 1008) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1039, 1024)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (147456) => (149759) @ (1)
					for (int i_0 = 147456; i_0 <= 149759; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1039, 1024) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1055, 1040)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (149760) => (152063) @ (1)
					for (int i_0 = 149760; i_0 <= 152063; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1055, 1040) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1071, 1056)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (152064) => (154367) @ (1)
					for (int i_0 = 152064; i_0 <= 154367; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1071, 1056) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1087, 1072)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (154368) => (156671) @ (1)
					for (int i_0 = 154368; i_0 <= 156671; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1087, 1072) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1103, 1088)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (156672) => (158975) @ (1)
					for (int i_0 = 156672; i_0 <= 158975; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1103, 1088) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1119, 1104)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (158976) => (161279) @ (1)
					for (int i_0 = 158976; i_0 <= 161279; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1119, 1104) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1135, 1120)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (161280) => (163583) @ (1)
					for (int i_0 = 161280; i_0 <= 163583; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1135, 1120) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1151, 1136)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (163584) => (165887) @ (1)
					for (int i_0 = 163584; i_0 <= 165887; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1151, 1136) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1167, 1152)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (165888) => (168191) @ (1)
					for (int i_0 = 165888; i_0 <= 168191; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1167, 1152) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1183, 1168)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (168192) => (170495) @ (1)
					for (int i_0 = 168192; i_0 <= 170495; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1183, 1168) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1199, 1184)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (170496) => (172799) @ (1)
					for (int i_0 = 170496; i_0 <= 172799; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1199, 1184) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1215, 1200)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (172800) => (175103) @ (1)
					for (int i_0 = 172800; i_0 <= 175103; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1215, 1200) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1231, 1216)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (175104) => (177407) @ (1)
					for (int i_0 = 175104; i_0 <= 177407; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1231, 1216) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1247, 1232)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (177408) => (179711) @ (1)
					for (int i_0 = 177408; i_0 <= 179711; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1247, 1232) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1263, 1248)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (179712) => (182015) @ (1)
					for (int i_0 = 179712; i_0 <= 182015; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1263, 1248) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1279, 1264)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (182016) => (184319) @ (1)
					for (int i_0 = 182016; i_0 <= 184319; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1279, 1264) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1295, 1280)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (184320) => (186623) @ (1)
					for (int i_0 = 184320; i_0 <= 186623; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1295, 1280) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1311, 1296)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (186624) => (188927) @ (1)
					for (int i_0 = 186624; i_0 <= 188927; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1311, 1296) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1327, 1312)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (188928) => (191231) @ (1)
					for (int i_0 = 188928; i_0 <= 191231; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1327, 1312) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1343, 1328)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (191232) => (193535) @ (1)
					for (int i_0 = 191232; i_0 <= 193535; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1343, 1328) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1359, 1344)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (193536) => (195839) @ (1)
					for (int i_0 = 193536; i_0 <= 195839; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1359, 1344) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1375, 1360)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (195840) => (198143) @ (1)
					for (int i_0 = 195840; i_0 <= 198143; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1375, 1360) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1391, 1376)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (198144) => (200447) @ (1)
					for (int i_0 = 198144; i_0 <= 200447; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1391, 1376) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1407, 1392)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (200448) => (202751) @ (1)
					for (int i_0 = 200448; i_0 <= 202751; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1407, 1392) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1423, 1408)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (202752) => (205055) @ (1)
					for (int i_0 = 202752; i_0 <= 205055; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1423, 1408) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1439, 1424)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (205056) => (207359) @ (1)
					for (int i_0 = 205056; i_0 <= 207359; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1439, 1424) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1455, 1440)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (207360) => (209663) @ (1)
					for (int i_0 = 207360; i_0 <= 209663; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1455, 1440) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1471, 1456)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (209664) => (211967) @ (1)
					for (int i_0 = 209664; i_0 <= 211967; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1471, 1456) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1487, 1472)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (211968) => (214271) @ (1)
					for (int i_0 = 211968; i_0 <= 214271; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1487, 1472) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1503, 1488)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (214272) => (216575) @ (1)
					for (int i_0 = 214272; i_0 <= 216575; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1503, 1488) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1519, 1504)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (216576) => (218879) @ (1)
					for (int i_0 = 216576; i_0 <= 218879; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1519, 1504) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1535, 1520)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (218880) => (221183) @ (1)
					for (int i_0 = 218880; i_0 <= 221183; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1535, 1520) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1551, 1536)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (221184) => (223487) @ (1)
					for (int i_0 = 221184; i_0 <= 223487; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1551, 1536) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1567, 1552)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (223488) => (225791) @ (1)
					for (int i_0 = 223488; i_0 <= 225791; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1567, 1552) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1583, 1568)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (225792) => (228095) @ (1)
					for (int i_0 = 225792; i_0 <= 228095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1583, 1568) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1599, 1584)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (228096) => (230399) @ (1)
					for (int i_0 = 228096; i_0 <= 230399; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1599, 1584) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1615, 1600)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (230400) => (232703) @ (1)
					for (int i_0 = 230400; i_0 <= 232703; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1615, 1600) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1631, 1616)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (232704) => (235007) @ (1)
					for (int i_0 = 232704; i_0 <= 235007; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1631, 1616) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1647, 1632)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (235008) => (237311) @ (1)
					for (int i_0 = 235008; i_0 <= 237311; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1647, 1632) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1663, 1648)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (237312) => (239615) @ (1)
					for (int i_0 = 237312; i_0 <= 239615; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1663, 1648) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1679, 1664)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (239616) => (241919) @ (1)
					for (int i_0 = 239616; i_0 <= 241919; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1679, 1664) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1695, 1680)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (241920) => (244223) @ (1)
					for (int i_0 = 241920; i_0 <= 244223; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1695, 1680) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1711, 1696)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (244224) => (246527) @ (1)
					for (int i_0 = 244224; i_0 <= 246527; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1711, 1696) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1727, 1712)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (246528) => (248831) @ (1)
					for (int i_0 = 246528; i_0 <= 248831; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1727, 1712) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1743, 1728)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (248832) => (251135) @ (1)
					for (int i_0 = 248832; i_0 <= 251135; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1743, 1728) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1759, 1744)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (251136) => (253439) @ (1)
					for (int i_0 = 251136; i_0 <= 253439; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1759, 1744) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1775, 1760)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (253440) => (255743) @ (1)
					for (int i_0 = 253440; i_0 <= 255743; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1775, 1760) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1791, 1776)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (255744) => (258047) @ (1)
					for (int i_0 = 255744; i_0 <= 258047; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1791, 1776) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1807, 1792)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (258048) => (260351) @ (1)
					for (int i_0 = 258048; i_0 <= 260351; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1807, 1792) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1823, 1808)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (260352) => (262655) @ (1)
					for (int i_0 = 260352; i_0 <= 262655; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1823, 1808) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1839, 1824)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (262656) => (264959) @ (1)
					for (int i_0 = 262656; i_0 <= 264959; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1839, 1824) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1855, 1840)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (264960) => (267263) @ (1)
					for (int i_0 = 264960; i_0 <= 267263; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1855, 1840) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1871, 1856)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (267264) => (269567) @ (1)
					for (int i_0 = 267264; i_0 <= 269567; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1871, 1856) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1887, 1872)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (269568) => (271871) @ (1)
					for (int i_0 = 269568; i_0 <= 271871; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1887, 1872) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1903, 1888)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (271872) => (274175) @ (1)
					for (int i_0 = 271872; i_0 <= 274175; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1903, 1888) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1919, 1904)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (274176) => (276479) @ (1)
					for (int i_0 = 274176; i_0 <= 276479; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1919, 1904) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1935, 1920)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (276480) => (278783) @ (1)
					for (int i_0 = 276480; i_0 <= 278783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1935, 1920) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1951, 1936)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (278784) => (281087) @ (1)
					for (int i_0 = 278784; i_0 <= 281087; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1951, 1936) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1967, 1952)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (281088) => (283391) @ (1)
					for (int i_0 = 281088; i_0 <= 283391; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1967, 1952) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1983, 1968)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (283392) => (285695) @ (1)
					for (int i_0 = 283392; i_0 <= 285695; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1983, 1968) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(1999, 1984)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (285696) => (287999) @ (1)
					for (int i_0 = 285696; i_0 <= 287999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(1999, 1984) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2015, 2000)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (288000) => (290303) @ (1)
					for (int i_0 = 288000; i_0 <= 290303; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2015, 2000) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2031, 2016)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (290304) => (292607) @ (1)
					for (int i_0 = 290304; i_0 <= 292607; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2031, 2016) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2047, 2032)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (292608) => (294911) @ (1)
					for (int i_0 = 292608; i_0 <= 294911; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2047, 2032) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2063, 2048)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (294912) => (297215) @ (1)
					for (int i_0 = 294912; i_0 <= 297215; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2063, 2048) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2079, 2064)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (297216) => (299519) @ (1)
					for (int i_0 = 297216; i_0 <= 299519; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2079, 2064) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2095, 2080)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (299520) => (301823) @ (1)
					for (int i_0 = 299520; i_0 <= 301823; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2095, 2080) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2111, 2096)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (301824) => (304127) @ (1)
					for (int i_0 = 301824; i_0 <= 304127; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2111, 2096) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2127, 2112)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (304128) => (306431) @ (1)
					for (int i_0 = 304128; i_0 <= 306431; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2127, 2112) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2143, 2128)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (306432) => (308735) @ (1)
					for (int i_0 = 306432; i_0 <= 308735; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2143, 2128) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2159, 2144)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (308736) => (311039) @ (1)
					for (int i_0 = 308736; i_0 <= 311039; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2159, 2144) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2175, 2160)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (311040) => (313343) @ (1)
					for (int i_0 = 311040; i_0 <= 313343; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2175, 2160) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2191, 2176)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (313344) => (315647) @ (1)
					for (int i_0 = 313344; i_0 <= 315647; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2191, 2176) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2207, 2192)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (315648) => (317951) @ (1)
					for (int i_0 = 315648; i_0 <= 317951; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2207, 2192) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2223, 2208)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (317952) => (320255) @ (1)
					for (int i_0 = 317952; i_0 <= 320255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2223, 2208) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2239, 2224)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (320256) => (322559) @ (1)
					for (int i_0 = 320256; i_0 <= 322559; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2239, 2224) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2255, 2240)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (322560) => (324863) @ (1)
					for (int i_0 = 322560; i_0 <= 324863; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2255, 2240) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2271, 2256)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (324864) => (327167) @ (1)
					for (int i_0 = 324864; i_0 <= 327167; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2271, 2256) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2287, 2272)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (327168) => (329471) @ (1)
					for (int i_0 = 327168; i_0 <= 329471; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2287, 2272) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2303, 2288)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (329472) => (331775) @ (1)
					for (int i_0 = 329472; i_0 <= 331775; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2303, 2288) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2319, 2304)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (331776) => (334079) @ (1)
					for (int i_0 = 331776; i_0 <= 334079; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2319, 2304) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2335, 2320)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (334080) => (336383) @ (1)
					for (int i_0 = 334080; i_0 <= 336383; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2335, 2320) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2351, 2336)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (336384) => (338687) @ (1)
					for (int i_0 = 336384; i_0 <= 338687; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2351, 2336) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2367, 2352)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (338688) => (340991) @ (1)
					for (int i_0 = 338688; i_0 <= 340991; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2367, 2352) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2383, 2368)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (340992) => (343295) @ (1)
					for (int i_0 = 340992; i_0 <= 343295; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2383, 2368) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2399, 2384)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (343296) => (345599) @ (1)
					for (int i_0 = 343296; i_0 <= 345599; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2399, 2384) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2415, 2400)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (345600) => (347903) @ (1)
					for (int i_0 = 345600; i_0 <= 347903; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2415, 2400) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2431, 2416)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (347904) => (350207) @ (1)
					for (int i_0 = 347904; i_0 <= 350207; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2431, 2416) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2447, 2432)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (350208) => (352511) @ (1)
					for (int i_0 = 350208; i_0 <= 352511; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2447, 2432) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2463, 2448)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (352512) => (354815) @ (1)
					for (int i_0 = 352512; i_0 <= 354815; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2463, 2448) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2479, 2464)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (354816) => (357119) @ (1)
					for (int i_0 = 354816; i_0 <= 357119; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2479, 2464) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2495, 2480)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (357120) => (359423) @ (1)
					for (int i_0 = 357120; i_0 <= 359423; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2495, 2480) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2511, 2496)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (359424) => (361727) @ (1)
					for (int i_0 = 359424; i_0 <= 361727; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2511, 2496) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2527, 2512)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (361728) => (364031) @ (1)
					for (int i_0 = 361728; i_0 <= 364031; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2527, 2512) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2543, 2528)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (364032) => (366335) @ (1)
					for (int i_0 = 364032; i_0 <= 366335; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2543, 2528) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2559, 2544)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (366336) => (368639) @ (1)
					for (int i_0 = 366336; i_0 <= 368639; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2559, 2544) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2575, 2560)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (368640) => (370943) @ (1)
					for (int i_0 = 368640; i_0 <= 370943; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2575, 2560) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2591, 2576)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (370944) => (373247) @ (1)
					for (int i_0 = 370944; i_0 <= 373247; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2591, 2576) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2607, 2592)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (373248) => (375551) @ (1)
					for (int i_0 = 373248; i_0 <= 375551; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2607, 2592) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2623, 2608)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (375552) => (377855) @ (1)
					for (int i_0 = 375552; i_0 <= 377855; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2623, 2608) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2639, 2624)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (377856) => (380159) @ (1)
					for (int i_0 = 377856; i_0 <= 380159; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2639, 2624) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2655, 2640)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (380160) => (382463) @ (1)
					for (int i_0 = 380160; i_0 <= 382463; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2655, 2640) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2671, 2656)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (382464) => (384767) @ (1)
					for (int i_0 = 382464; i_0 <= 384767; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2671, 2656) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2687, 2672)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (384768) => (387071) @ (1)
					for (int i_0 = 384768; i_0 <= 387071; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2687, 2672) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2703, 2688)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (387072) => (389375) @ (1)
					for (int i_0 = 387072; i_0 <= 389375; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2703, 2688) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2719, 2704)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (389376) => (391679) @ (1)
					for (int i_0 = 389376; i_0 <= 391679; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2719, 2704) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2735, 2720)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (391680) => (393983) @ (1)
					for (int i_0 = 391680; i_0 <= 393983; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2735, 2720) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2751, 2736)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (393984) => (396287) @ (1)
					for (int i_0 = 393984; i_0 <= 396287; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2751, 2736) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2767, 2752)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (396288) => (398591) @ (1)
					for (int i_0 = 396288; i_0 <= 398591; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2767, 2752) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2783, 2768)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (398592) => (400895) @ (1)
					for (int i_0 = 398592; i_0 <= 400895; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2783, 2768) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2799, 2784)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (400896) => (403199) @ (1)
					for (int i_0 = 400896; i_0 <= 403199; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2799, 2784) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2815, 2800)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (403200) => (405503) @ (1)
					for (int i_0 = 403200; i_0 <= 405503; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2815, 2800) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2831, 2816)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (405504) => (407807) @ (1)
					for (int i_0 = 405504; i_0 <= 407807; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2831, 2816) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2847, 2832)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (407808) => (410111) @ (1)
					for (int i_0 = 407808; i_0 <= 410111; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2847, 2832) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2863, 2848)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (410112) => (412415) @ (1)
					for (int i_0 = 410112; i_0 <= 412415; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2863, 2848) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2879, 2864)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (412416) => (414719) @ (1)
					for (int i_0 = 412416; i_0 <= 414719; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2879, 2864) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2895, 2880)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (414720) => (417023) @ (1)
					for (int i_0 = 414720; i_0 <= 417023; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2895, 2880) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2911, 2896)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (417024) => (419327) @ (1)
					for (int i_0 = 417024; i_0 <= 419327; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2911, 2896) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2927, 2912)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (419328) => (421631) @ (1)
					for (int i_0 = 419328; i_0 <= 421631; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2927, 2912) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2943, 2928)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (421632) => (423935) @ (1)
					for (int i_0 = 421632; i_0 <= 423935; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2943, 2928) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2959, 2944)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (423936) => (426239) @ (1)
					for (int i_0 = 423936; i_0 <= 426239; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2959, 2944) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2975, 2960)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (426240) => (428543) @ (1)
					for (int i_0 = 426240; i_0 <= 428543; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2975, 2960) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(2991, 2976)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (428544) => (430847) @ (1)
					for (int i_0 = 428544; i_0 <= 430847; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(2991, 2976) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3007, 2992)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (430848) => (433151) @ (1)
					for (int i_0 = 430848; i_0 <= 433151; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3007, 2992) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3023, 3008)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (433152) => (435455) @ (1)
					for (int i_0 = 433152; i_0 <= 435455; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3023, 3008) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3039, 3024)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (435456) => (437759) @ (1)
					for (int i_0 = 435456; i_0 <= 437759; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3039, 3024) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3055, 3040)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (437760) => (440063) @ (1)
					for (int i_0 = 437760; i_0 <= 440063; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3055, 3040) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3071, 3056)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (440064) => (442367) @ (1)
					for (int i_0 = 440064; i_0 <= 442367; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3071, 3056) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3087, 3072)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (442368) => (444671) @ (1)
					for (int i_0 = 442368; i_0 <= 444671; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3087, 3072) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3103, 3088)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (444672) => (446975) @ (1)
					for (int i_0 = 444672; i_0 <= 446975; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3103, 3088) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3119, 3104)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (446976) => (449279) @ (1)
					for (int i_0 = 446976; i_0 <= 449279; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3119, 3104) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3135, 3120)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (449280) => (451583) @ (1)
					for (int i_0 = 449280; i_0 <= 451583; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3135, 3120) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3151, 3136)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (451584) => (453887) @ (1)
					for (int i_0 = 451584; i_0 <= 453887; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3151, 3136) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3167, 3152)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (453888) => (456191) @ (1)
					for (int i_0 = 453888; i_0 <= 456191; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3167, 3152) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3183, 3168)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (456192) => (458495) @ (1)
					for (int i_0 = 456192; i_0 <= 458495; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3183, 3168) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3199, 3184)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (458496) => (460799) @ (1)
					for (int i_0 = 458496; i_0 <= 460799; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3199, 3184) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3215, 3200)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (460800) => (463103) @ (1)
					for (int i_0 = 460800; i_0 <= 463103; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3215, 3200) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3231, 3216)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (463104) => (465407) @ (1)
					for (int i_0 = 463104; i_0 <= 465407; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3231, 3216) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3247, 3232)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (465408) => (467711) @ (1)
					for (int i_0 = 465408; i_0 <= 467711; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3247, 3232) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3263, 3248)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (467712) => (470015) @ (1)
					for (int i_0 = 467712; i_0 <= 470015; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3263, 3248) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3279, 3264)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (470016) => (472319) @ (1)
					for (int i_0 = 470016; i_0 <= 472319; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3279, 3264) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3295, 3280)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (472320) => (474623) @ (1)
					for (int i_0 = 472320; i_0 <= 474623; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3295, 3280) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3311, 3296)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (474624) => (476927) @ (1)
					for (int i_0 = 474624; i_0 <= 476927; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3311, 3296) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3327, 3312)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (476928) => (479231) @ (1)
					for (int i_0 = 476928; i_0 <= 479231; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3327, 3312) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3343, 3328)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (479232) => (481535) @ (1)
					for (int i_0 = 479232; i_0 <= 481535; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3343, 3328) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3359, 3344)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (481536) => (483839) @ (1)
					for (int i_0 = 481536; i_0 <= 483839; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3359, 3344) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3375, 3360)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (483840) => (486143) @ (1)
					for (int i_0 = 483840; i_0 <= 486143; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3375, 3360) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3391, 3376)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (486144) => (488447) @ (1)
					for (int i_0 = 486144; i_0 <= 488447; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3391, 3376) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3407, 3392)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (488448) => (490751) @ (1)
					for (int i_0 = 488448; i_0 <= 490751; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3407, 3392) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3423, 3408)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (490752) => (493055) @ (1)
					for (int i_0 = 490752; i_0 <= 493055; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3423, 3408) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3439, 3424)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (493056) => (495359) @ (1)
					for (int i_0 = 493056; i_0 <= 495359; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3439, 3424) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3455, 3440)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (495360) => (497663) @ (1)
					for (int i_0 = 495360; i_0 <= 497663; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3455, 3440) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3471, 3456)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (497664) => (499967) @ (1)
					for (int i_0 = 497664; i_0 <= 499967; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3471, 3456) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3487, 3472)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (499968) => (502271) @ (1)
					for (int i_0 = 499968; i_0 <= 502271; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3487, 3472) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3503, 3488)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (502272) => (504575) @ (1)
					for (int i_0 = 502272; i_0 <= 504575; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3503, 3488) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3519, 3504)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (504576) => (506879) @ (1)
					for (int i_0 = 504576; i_0 <= 506879; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3519, 3504) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3535, 3520)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (506880) => (509183) @ (1)
					for (int i_0 = 506880; i_0 <= 509183; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3535, 3520) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3551, 3536)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (509184) => (511487) @ (1)
					for (int i_0 = 509184; i_0 <= 511487; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3551, 3536) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3567, 3552)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (511488) => (513791) @ (1)
					for (int i_0 = 511488; i_0 <= 513791; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3567, 3552) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3583, 3568)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (513792) => (516095) @ (1)
					for (int i_0 = 513792; i_0 <= 516095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3583, 3568) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3599, 3584)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (516096) => (518399) @ (1)
					for (int i_0 = 516096; i_0 <= 518399; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3599, 3584) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3615, 3600)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (518400) => (520703) @ (1)
					for (int i_0 = 518400; i_0 <= 520703; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3615, 3600) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3631, 3616)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (520704) => (523007) @ (1)
					for (int i_0 = 520704; i_0 <= 523007; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3631, 3616) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3647, 3632)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (523008) => (525311) @ (1)
					for (int i_0 = 523008; i_0 <= 525311; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3647, 3632) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3663, 3648)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (525312) => (527615) @ (1)
					for (int i_0 = 525312; i_0 <= 527615; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3663, 3648) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3679, 3664)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (527616) => (529919) @ (1)
					for (int i_0 = 527616; i_0 <= 529919; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3679, 3664) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3695, 3680)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (529920) => (532223) @ (1)
					for (int i_0 = 529920; i_0 <= 532223; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3695, 3680) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3711, 3696)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (532224) => (534527) @ (1)
					for (int i_0 = 532224; i_0 <= 534527; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3711, 3696) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3727, 3712)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (534528) => (536831) @ (1)
					for (int i_0 = 534528; i_0 <= 536831; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3727, 3712) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3743, 3728)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (536832) => (539135) @ (1)
					for (int i_0 = 536832; i_0 <= 539135; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3743, 3728) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3759, 3744)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (539136) => (541439) @ (1)
					for (int i_0 = 539136; i_0 <= 541439; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3759, 3744) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3775, 3760)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (541440) => (543743) @ (1)
					for (int i_0 = 541440; i_0 <= 543743; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3775, 3760) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3791, 3776)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (543744) => (546047) @ (1)
					for (int i_0 = 543744; i_0 <= 546047; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3791, 3776) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3807, 3792)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (546048) => (548351) @ (1)
					for (int i_0 = 546048; i_0 <= 548351; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3807, 3792) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3823, 3808)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (548352) => (550655) @ (1)
					for (int i_0 = 548352; i_0 <= 550655; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3823, 3808) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3839, 3824)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (550656) => (552959) @ (1)
					for (int i_0 = 550656; i_0 <= 552959; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3839, 3824) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3855, 3840)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (552960) => (555263) @ (1)
					for (int i_0 = 552960; i_0 <= 555263; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3855, 3840) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3871, 3856)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (555264) => (557567) @ (1)
					for (int i_0 = 555264; i_0 <= 557567; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3871, 3856) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3887, 3872)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (557568) => (559871) @ (1)
					for (int i_0 = 557568; i_0 <= 559871; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3887, 3872) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3903, 3888)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (559872) => (562175) @ (1)
					for (int i_0 = 559872; i_0 <= 562175; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3903, 3888) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3919, 3904)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (562176) => (564479) @ (1)
					for (int i_0 = 562176; i_0 <= 564479; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3919, 3904) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3935, 3920)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (564480) => (566783) @ (1)
					for (int i_0 = 564480; i_0 <= 566783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3935, 3920) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3951, 3936)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (566784) => (569087) @ (1)
					for (int i_0 = 566784; i_0 <= 569087; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3951, 3936) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3967, 3952)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (569088) => (571391) @ (1)
					for (int i_0 = 569088; i_0 <= 571391; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3967, 3952) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3983, 3968)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (571392) => (573695) @ (1)
					for (int i_0 = 571392; i_0 <= 573695; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3983, 3968) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(3999, 3984)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (573696) => (575999) @ (1)
					for (int i_0 = 573696; i_0 <= 575999; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(3999, 3984) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4015, 4000)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (576000) => (578303) @ (1)
					for (int i_0 = 576000; i_0 <= 578303; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4015, 4000) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4031, 4016)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (578304) => (580607) @ (1)
					for (int i_0 = 578304; i_0 <= 580607; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4031, 4016) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4047, 4032)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (580608) => (582911) @ (1)
					for (int i_0 = 580608; i_0 <= 582911; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4047, 4032) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4063, 4048)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (582912) => (585215) @ (1)
					for (int i_0 = 582912; i_0 <= 585215; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4063, 4048) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4079, 4064)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (585216) => (587519) @ (1)
					for (int i_0 = 585216; i_0 <= 587519; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4079, 4064) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
			// bitslice(4095, 4080)
			{
				int hls_map_index = 0;
				// celement: w2.V(15, 0)
				{
					// carray: (587520) => (589823) @ (1)
					for (int i_0 = 587520; i_0 <= 589823; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : w2[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : w2[0]
						// regulate_c_name       : w2_V
						// input_type_conversion : (w2[i_0]).range().to_string(SC_BIN).c_str()
						if (&(w2[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> w2_V_tmp_mem;
							w2_V_tmp_mem = (w2[i_0]).range().to_string(SC_BIN).c_str();
							w2_V_tvin_wrapc_buffer[hls_map_index].range(4095, 4080) = w2_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 2304; i++)
		{
			sprintf(tvin_w2_V, "%s\n", (w2_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_w2_V, tvin_w2_V);
		}

		tcl_file.set_num(2304, &tcl_file.w2_V_depth);
		sprintf(tvin_w2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_w2_V, tvin_w2_V);

		// release memory allocation
		delete [] w2_V_tvin_wrapc_buffer;

		// push back input stream: "input_1"
		for (int i = 0; i < aesl_tmp_7; i++)
		{
			input_1.write(aesl_tmp_6[i]);
		}

		// push back input stream: "layer2_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			layer2_out.write(aesl_tmp_9[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		myproject(input_1, layer2_out, const_size_in_1, const_size_out_1, w2);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "input_1"
		int aesl_tmp_8 = input_1.size();

		// pop output stream: "layer2_out"
		int aesl_tmp_11 = aesl_tmp_10;
		aesl_tmp_10 = 0;
     aesl_tmp_9.clear();
		while (!layer2_out.empty())
		{
			aesl_tmp_9.push_back(layer2_out.read());
			aesl_tmp_10++;
		}

		// [[transaction]]
		sprintf(tvin_input_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_1_V_V, tvin_input_1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, tvin_input_1_V_V);

		sc_bv<16>* input_1_V_V_tvin_wrapc_buffer = new sc_bv<16>[aesl_tmp_7 - aesl_tmp_8];

		// RTL Name: input_1_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: input_1.V.V(15, 0)
				{
					// carray: (0) => (aesl_tmp_7 - aesl_tmp_8 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_7 - aesl_tmp_8 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_6[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_6[0]
						// regulate_c_name       : input_1_V_V
						// input_type_conversion : (aesl_tmp_6[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_6[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> input_1_V_V_tmp_mem;
							input_1_V_V_tmp_mem = (aesl_tmp_6[i_0]).range().to_string(SC_BIN).c_str();
							input_1_V_V_tvin_wrapc_buffer[hls_map_index].range(15, 0) = input_1_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			sprintf(tvin_input_1_V_V, "%s\n", (input_1_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_1_V_V, tvin_input_1_V_V);
		}

		// dump stream ingress status to file
     if (aesl_tmp_7 > aesl_tmp_8)
     {
		sc_int<32> stream_ingress_size_input_1_V_V = aesl_tmp_7;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, stream_ingress_size_input_1_V_V.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, "\n");

		for (int i = 0; i < aesl_tmp_7 - aesl_tmp_8; i++)
		{
			stream_ingress_size_input_1_V_V--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, stream_ingress_size_input_1_V_V.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_input_1_V_V = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, stream_ingress_size_input_1_V_V.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, "\n");
     }

		tcl_file.set_num(aesl_tmp_7 - aesl_tmp_8, &tcl_file.input_1_V_V_depth);
		sprintf(tvin_input_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_1_V_V, tvin_input_1_V_V);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_input_1_V_V, tvin_input_1_V_V);

		// release memory allocation
		delete [] input_1_V_V_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_input_1_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_V_V, wrapc_stream_size_in_input_1_V_V);
		sprintf(wrapc_stream_size_in_input_1_V_V, "%d\n", aesl_tmp_7 - aesl_tmp_8);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_V_V, wrapc_stream_size_in_input_1_V_V);
		sprintf(wrapc_stream_size_in_input_1_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_1_V_V, wrapc_stream_size_in_input_1_V_V);

		// [[transaction]]
		sprintf(tvout_layer2_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_V_V, tvout_layer2_out_V_V);

		sc_bv<16>* layer2_out_V_V_tvout_wrapc_buffer = new sc_bv<16>[aesl_tmp_10 - aesl_tmp_11];

		// RTL Name: layer2_out_V_V
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: layer2_out.V.V(15, 0)
				{
					// carray: (aesl_tmp_11) => (aesl_tmp_10 - 1) @ (1)
					for (int i_0 = aesl_tmp_11; i_0 <= aesl_tmp_10 - 1; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : aesl_tmp_9[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : aesl_tmp_9[0]
						// regulate_c_name       : layer2_out_V_V
						// input_type_conversion : (aesl_tmp_9[i_0]).range().to_string(SC_BIN).c_str()
						if (&(aesl_tmp_9[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> layer2_out_V_V_tmp_mem;
							layer2_out_V_V_tmp_mem = (aesl_tmp_9[i_0]).range().to_string(SC_BIN).c_str();
							layer2_out_V_V_tvout_wrapc_buffer[hls_map_index].range(15, 0) = layer2_out_V_V_tmp_mem.range(15, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_10 - aesl_tmp_11; i++)
		{
			sprintf(tvout_layer2_out_V_V, "%s\n", (layer2_out_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_layer2_out_V_V, tvout_layer2_out_V_V);
		}

		tcl_file.set_num(aesl_tmp_10 - aesl_tmp_11, &tcl_file.layer2_out_V_V_depth);
		sprintf(tvout_layer2_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_layer2_out_V_V, tvout_layer2_out_V_V);

		// release memory allocation
		delete [] layer2_out_V_V_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_layer2_out_V_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, wrapc_stream_size_out_layer2_out_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_V_V, "%d\n", aesl_tmp_10 - aesl_tmp_11);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, wrapc_stream_size_out_layer2_out_V_V);
		sprintf(wrapc_stream_size_out_layer2_out_V_V, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_layer2_out_V_V, wrapc_stream_size_out_layer2_out_V_V);

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

		// push back output stream: "layer2_out"
		for (int i = 0; i < aesl_tmp_10; i++)
		{
			layer2_out.write(aesl_tmp_9[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_1_V_V"
		delete [] tvin_input_1_V_V;
		delete [] wrapc_stream_size_in_input_1_V_V;
		// release memory allocation: "layer2_out_V_V"
		delete [] tvout_layer2_out_V_V;
		delete [] tvin_layer2_out_V_V;
		delete [] wrapc_stream_size_out_layer2_out_V_V;
		// release memory allocation: "const_size_in_1"
		delete [] tvout_const_size_in_1;
		// release memory allocation: "const_size_out_1"
		delete [] tvout_const_size_out_1;
		// release memory allocation: "w2_V"
		delete [] tvin_w2_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

