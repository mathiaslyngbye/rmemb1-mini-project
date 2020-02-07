-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Fri Feb  7 12:04:43 2020
-- Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_pwm_14bit_0_0/design_ps_pl_pwm_14bit_0_0_stub.vhdl
-- Design      : design_ps_pl_pwm_14bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_ps_pl_pwm_14bit_0_0 is
  Port ( 
    clk_125M_in : in STD_LOGIC;
    duty_cycle_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    enable_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    pwm_out : out STD_LOGIC
  );

end design_ps_pl_pwm_14bit_0_0;

architecture stub of design_ps_pl_pwm_14bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_125M_in,duty_cycle_in[13:0],enable_in,reset_in,pwm_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pwm_14bit,Vivado 2019.1.3";
begin
end;
