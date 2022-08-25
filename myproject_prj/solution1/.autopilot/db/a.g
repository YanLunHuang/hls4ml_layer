#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/YL_HUANG/9_2/upsampling/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
