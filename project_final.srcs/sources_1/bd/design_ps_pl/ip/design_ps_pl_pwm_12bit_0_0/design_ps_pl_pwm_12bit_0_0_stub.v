// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Fri Jan 31 13:21:15 2020
// Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_pwm_12bit_0_0/design_ps_pl_pwm_12bit_0_0_stub.v
// Design      : design_ps_pl_pwm_12bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_12bit,Vivado 2019.1.3" *)
module design_ps_pl_pwm_12bit_0_0(clk_200M_in, duty_cycle_in, enable_in, 
  reset_in, pwm_out)
/* synthesis syn_black_box black_box_pad_pin="clk_200M_in,duty_cycle_in[11:0],enable_in,reset_in,pwm_out" */;
  input clk_200M_in;
  input [11:0]duty_cycle_in;
  input enable_in;
  input reset_in;
  output pwm_out;
endmodule
