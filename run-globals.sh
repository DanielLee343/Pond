#!/bin/bash

TOPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export VTUNE="/opt/intel/oneapi/vtune/2021.1.2/bin64/vtune"
export EMON="/opt/intel/oneapi/vtune/2021.1.2/bin64/emon"
export EMON_EVENT_FILE="$TOPDIR/clx-2s-events.txt"
export DAMON="$TOPDIR/damo" # user-space tool

RUNDIR="${TOPDIR}"

MEMEATER="$RUNDIR/memeater"

TIME_FORMAT="\n\n\nReal: %e %E\nUser: %U\nSys: %S\nCmdline: %C\nAvg-total-Mem-kb: %K\nMax-RSS-kb: %M\nSys-pgsize-kb: %Z\nNr-voluntary-context-switches: %w\nCmd-exit-status: %x"
[[ ! -e /usr/bin/time ]] && echo "===> Please install GNU time first!" && exit
