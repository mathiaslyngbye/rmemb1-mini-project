-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Fri Feb  7 14:23:47 2020
-- Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_ps_pl_PL_0_0_sim_netlist.vhdl
-- Design      : design_ps_pl_PL_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PL is
  port (
    led_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 13 downto 0 );
    toggle_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PL is
  signal \^bram_portb_0_addr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \led_tmp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_tmp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_tmp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \led_tmp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_tmp_reg[9]\ : label is "LD";
begin
  BRAM_PORTB_0_addr(0) <= \^bram_portb_0_addr\(0);
\BRAM_PORTB_0_addr[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle_in,
      O => \^bram_portb_0_addr\(0)
    );
\led_tmp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(0),
      G => \^bram_portb_0_addr\(0),
      GE => '1',
      Q => led_out(0)
    );
\led_tmp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(1),
      G => \^bram_portb_0_addr\(0),
      GE => '1',
      Q => led_out(1)
    );
\led_tmp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(2),
      G => \^bram_portb_0_addr\(0),
      GE => '1',
      Q => led_out(2)
    );
\led_tmp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(3),
      G => \^bram_portb_0_addr\(0),
      GE => '1',
      Q => led_out(3)
    );
\pwm_tmp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(0),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(0)
    );
\pwm_tmp_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(10),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(10)
    );
\pwm_tmp_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(11),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(11)
    );
\pwm_tmp_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(12),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(12)
    );
\pwm_tmp_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(13),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(13)
    );
\pwm_tmp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(1),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(1)
    );
\pwm_tmp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(2),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(2)
    );
\pwm_tmp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(3),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(3)
    );
\pwm_tmp_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(4),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(4)
    );
\pwm_tmp_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(5),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(5)
    );
\pwm_tmp_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(6),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(6)
    );
\pwm_tmp_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(7),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(7)
    );
\pwm_tmp_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(8),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(8)
    );
\pwm_tmp_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => BRAM_PORTB_0_dout(9),
      G => toggle_in,
      GE => '1',
      Q => pwm_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_125MHz : in STD_LOGIC;
    BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_en : out STD_LOGIC;
    BRAM_PORTB_0_rst : out STD_LOGIC;
    BRAM_PORTB_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTB_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    toggle_in : in STD_LOGIC;
    led_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_ps_pl_PL_0_0,PL,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PL,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^bram_portb_0_addr\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^toggle_in\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of BRAM_PORTB_0_rst : signal is "xilinx.com:signal:reset:1.0 BRAM_PORTB_0_rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of BRAM_PORTB_0_rst : signal is "XIL_INTERFACENAME BRAM_PORTB_0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  BRAM_PORTB_0_addr(31) <= \<const0>\;
  BRAM_PORTB_0_addr(30) <= \<const1>\;
  BRAM_PORTB_0_addr(29) <= \<const0>\;
  BRAM_PORTB_0_addr(28) <= \<const0>\;
  BRAM_PORTB_0_addr(27) <= \<const0>\;
  BRAM_PORTB_0_addr(26) <= \<const0>\;
  BRAM_PORTB_0_addr(25) <= \<const0>\;
  BRAM_PORTB_0_addr(24) <= \<const0>\;
  BRAM_PORTB_0_addr(23) <= \<const0>\;
  BRAM_PORTB_0_addr(22) <= \<const0>\;
  BRAM_PORTB_0_addr(21) <= \<const0>\;
  BRAM_PORTB_0_addr(20) <= \<const0>\;
  BRAM_PORTB_0_addr(19) <= \<const0>\;
  BRAM_PORTB_0_addr(18) <= \<const0>\;
  BRAM_PORTB_0_addr(17) <= \<const0>\;
  BRAM_PORTB_0_addr(16) <= \<const0>\;
  BRAM_PORTB_0_addr(15) <= \<const0>\;
  BRAM_PORTB_0_addr(14) <= \<const0>\;
  BRAM_PORTB_0_addr(13) <= \<const0>\;
  BRAM_PORTB_0_addr(12) <= \<const0>\;
  BRAM_PORTB_0_addr(11) <= \<const0>\;
  BRAM_PORTB_0_addr(10) <= \<const0>\;
  BRAM_PORTB_0_addr(9) <= \<const0>\;
  BRAM_PORTB_0_addr(8) <= \<const0>\;
  BRAM_PORTB_0_addr(7) <= \<const0>\;
  BRAM_PORTB_0_addr(6) <= \<const0>\;
  BRAM_PORTB_0_addr(5) <= \<const0>\;
  BRAM_PORTB_0_addr(4) <= \<const0>\;
  BRAM_PORTB_0_addr(3) <= \^bram_portb_0_addr\(3);
  BRAM_PORTB_0_addr(2) <= \^toggle_in\;
  BRAM_PORTB_0_addr(1) <= \<const0>\;
  BRAM_PORTB_0_addr(0) <= \<const0>\;
  BRAM_PORTB_0_din(31) <= \<const0>\;
  BRAM_PORTB_0_din(30) <= \<const0>\;
  BRAM_PORTB_0_din(29) <= \<const0>\;
  BRAM_PORTB_0_din(28) <= \<const0>\;
  BRAM_PORTB_0_din(27) <= \<const0>\;
  BRAM_PORTB_0_din(26) <= \<const0>\;
  BRAM_PORTB_0_din(25) <= \<const0>\;
  BRAM_PORTB_0_din(24) <= \<const0>\;
  BRAM_PORTB_0_din(23) <= \<const0>\;
  BRAM_PORTB_0_din(22) <= \<const0>\;
  BRAM_PORTB_0_din(21) <= \<const0>\;
  BRAM_PORTB_0_din(20) <= \<const0>\;
  BRAM_PORTB_0_din(19) <= \<const0>\;
  BRAM_PORTB_0_din(18) <= \<const0>\;
  BRAM_PORTB_0_din(17) <= \<const0>\;
  BRAM_PORTB_0_din(16) <= \<const0>\;
  BRAM_PORTB_0_din(15) <= \<const0>\;
  BRAM_PORTB_0_din(14) <= \<const0>\;
  BRAM_PORTB_0_din(13) <= \<const0>\;
  BRAM_PORTB_0_din(12) <= \<const0>\;
  BRAM_PORTB_0_din(11) <= \<const0>\;
  BRAM_PORTB_0_din(10) <= \<const0>\;
  BRAM_PORTB_0_din(9) <= \<const0>\;
  BRAM_PORTB_0_din(8) <= \<const0>\;
  BRAM_PORTB_0_din(7) <= \<const0>\;
  BRAM_PORTB_0_din(6) <= \<const0>\;
  BRAM_PORTB_0_din(5) <= \<const0>\;
  BRAM_PORTB_0_din(4) <= \<const0>\;
  BRAM_PORTB_0_din(3) <= \<const0>\;
  BRAM_PORTB_0_din(2) <= \<const0>\;
  BRAM_PORTB_0_din(1) <= \<const0>\;
  BRAM_PORTB_0_din(0) <= \<const0>\;
  BRAM_PORTB_0_en <= \<const1>\;
  BRAM_PORTB_0_rst <= \<const0>\;
  BRAM_PORTB_0_we(3) <= \<const0>\;
  BRAM_PORTB_0_we(2) <= \<const0>\;
  BRAM_PORTB_0_we(1) <= \<const0>\;
  BRAM_PORTB_0_we(0) <= \<const0>\;
  \^toggle_in\ <= toggle_in;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PL
     port map (
      BRAM_PORTB_0_addr(0) => \^bram_portb_0_addr\(3),
      BRAM_PORTB_0_dout(13 downto 0) => BRAM_PORTB_0_dout(13 downto 0),
      led_out(3 downto 0) => led_out(3 downto 0),
      pwm_out(13 downto 0) => pwm_out(13 downto 0),
      toggle_in => \^toggle_in\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
