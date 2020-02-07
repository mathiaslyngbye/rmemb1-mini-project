// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Fri Feb  7 14:20:38 2020
// Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_count_bin_0_0/design_ps_pl_count_bin_0_0_stub.v
// Design      : design_ps_pl_count_bin_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "count_bin,Vivado 2019.1.3" *)
module design_ps_pl_count_bin_0_0(clk, count)
/* synthesis syn_black_box black_box_pad_pin="clk,count" */;
  input clk;
  output count;
endmodule
