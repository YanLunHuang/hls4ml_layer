#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/YL_HUANG/8_12/resize_test/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
