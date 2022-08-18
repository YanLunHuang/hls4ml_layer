#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/YL_HUANG/8_19/conv2d_256filter/big_conv2d/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
