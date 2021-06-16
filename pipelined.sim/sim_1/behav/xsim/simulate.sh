#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Jun 16 09:41:27 EDT 2021
# SW Build 3118627 on Tue Feb  9 05:13:49 MST 2021
#
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim pipetop_behav -key {Behavioral:sim_1:Functional:pipetop} -tclbatch pipetop.tcl -view /media/engin/StorageA/FPGA/pipelined/pipetop_behav.wcfg -log simulate.log"
xsim pipetop_behav -key {Behavioral:sim_1:Functional:pipetop} -tclbatch pipetop.tcl -view /media/engin/StorageA/FPGA/pipelined/pipetop_behav.wcfg -log simulate.log
