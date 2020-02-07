// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Fri Feb  7 14:23:47 2020
// Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_ps_pl_PL_0_0_stub.v
// Design      : design_ps_pl_PL_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PL,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_125MHz, BRAM_PORTB_0_dout, 
  BRAM_PORTB_0_en, BRAM_PORTB_0_rst, BRAM_PORTB_0_din, BRAM_PORTB_0_addr, BRAM_PORTB_0_we, 
  toggle_in, led_out, pwm_out)
/* synthesis syn_black_box black_box_pad_pin="clk_125MHz,BRAM_PORTB_0_dout[31:0],BRAM_PORTB_0_en,BRAM_PORTB_0_rst,BRAM_PORTB_0_din[31:0],BRAM_PORTB_0_addr[31:0],BRAM_PORTB_0_we[3:0],toggle_in,led_out[3:0],pwm_out[13:0]" */;
  input clk_125MHz;
  input [31:0]BRAM_PORTB_0_dout;
  output BRAM_PORTB_0_en;
  output BRAM_PORTB_0_rst;
  output [31:0]BRAM_PORTB_0_din;
  output [31:0]BRAM_PORTB_0_addr;
  output [3:0]BRAM_PORTB_0_we;
  input toggle_in;
  output [3:0]led_out;
  output [13:0]pwm_out;
endmodule
