#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/YL_HUANG/9_23/hls4ml_layer/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
