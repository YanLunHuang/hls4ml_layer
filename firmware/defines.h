#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 56
#define N_INPUT_2_1 55
#define N_INPUT_3_1 4

#define N_LAYER_53 56*55*4

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<32,16> model_default_t;
typedef ap_fixed<32,16> input_t;
typedef ap_fixed<32,16> result_t;

#endif
