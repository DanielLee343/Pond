#!/bin/bash
YCSB_DIR=ycsb

VDB_RUN_DIR="/users/lyuze/Pond/voltdb"

cd ${YCSB_DIR}
bin/ycsb.sh load voltdb -s -P workloads/workloada -P $VDB_RUN_DIR/voltdb-load.properties
