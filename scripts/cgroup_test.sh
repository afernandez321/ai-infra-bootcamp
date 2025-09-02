#!/bin/bash
# Simple script to test CPU limits with cgroups v2
mkdir -p /sys/fs/cgroup/mygroup
echo 25000 | sudo tee /sys/fs/cgroup/mygroup/cpu.max
bash -c 'while true; do :; done' &
LOOP=$!
echo $LOOP | sudo tee /sys/fs/cgroup/mygroup/cgroup.procs
echo "Loop started with PID $LOOP"
