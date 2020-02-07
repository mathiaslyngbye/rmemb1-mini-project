-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Fri Feb  7 14:20:38 2020
-- Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_ps_pl_count_bin_0_0_sim_netlist.vhdl
-- Design      : design_ps_pl_count_bin_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_bin is
  port (
    count : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_bin;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_bin is
  signal \^count\ : STD_LOGIC;
  signal \count_sig[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_sig_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_count_sig_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  count <= \^count\;
\count_sig[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_sig_reg_n_0_[0]\,
      O => \count_sig[0]_i_2_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[0]_i_1_n_7\,
      Q => \count_sig_reg_n_0_[0]\,
      R => '0'
    );
\count_sig_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[0]_i_1_n_0\,
      CO(2) => \count_sig_reg[0]_i_1_n_1\,
      CO(1) => \count_sig_reg[0]_i_1_n_2\,
      CO(0) => \count_sig_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_sig_reg[0]_i_1_n_4\,
      O(2) => \count_sig_reg[0]_i_1_n_5\,
      O(1) => \count_sig_reg[0]_i_1_n_6\,
      O(0) => \count_sig_reg[0]_i_1_n_7\,
      S(3) => \count_sig_reg_n_0_[3]\,
      S(2) => \count_sig_reg_n_0_[2]\,
      S(1) => \count_sig_reg_n_0_[1]\,
      S(0) => \count_sig[0]_i_2_n_0\
    );
\count_sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[8]_i_1_n_5\,
      Q => \count_sig_reg_n_0_[10]\,
      R => '0'
    );
\count_sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[8]_i_1_n_4\,
      Q => \count_sig_reg_n_0_[11]\,
      R => '0'
    );
\count_sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[15]_i_1_n_7\,
      Q => \count_sig_reg_n_0_[12]\,
      R => '0'
    );
\count_sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[15]_i_1_n_6\,
      Q => \count_sig_reg_n_0_[13]\,
      R => '0'
    );
\count_sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[15]_i_1_n_5\,
      Q => \count_sig_reg_n_0_[14]\,
      R => '0'
    );
\count_sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[15]_i_1_n_4\,
      Q => \^count\,
      R => '0'
    );
\count_sig_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_sig_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_sig_reg[15]_i_1_n_1\,
      CO(1) => \count_sig_reg[15]_i_1_n_2\,
      CO(0) => \count_sig_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[15]_i_1_n_4\,
      O(2) => \count_sig_reg[15]_i_1_n_5\,
      O(1) => \count_sig_reg[15]_i_1_n_6\,
      O(0) => \count_sig_reg[15]_i_1_n_7\,
      S(3) => \^count\,
      S(2) => \count_sig_reg_n_0_[14]\,
      S(1) => \count_sig_reg_n_0_[13]\,
      S(0) => \count_sig_reg_n_0_[12]\
    );
\count_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[0]_i_1_n_6\,
      Q => \count_sig_reg_n_0_[1]\,
      R => '0'
    );
\count_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[0]_i_1_n_5\,
      Q => \count_sig_reg_n_0_[2]\,
      R => '0'
    );
\count_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[0]_i_1_n_4\,
      Q => \count_sig_reg_n_0_[3]\,
      R => '0'
    );
\count_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[4]_i_1_n_7\,
      Q => \count_sig_reg_n_0_[4]\,
      R => '0'
    );
\count_sig_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[0]_i_1_n_0\,
      CO(3) => \count_sig_reg[4]_i_1_n_0\,
      CO(2) => \count_sig_reg[4]_i_1_n_1\,
      CO(1) => \count_sig_reg[4]_i_1_n_2\,
      CO(0) => \count_sig_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[4]_i_1_n_4\,
      O(2) => \count_sig_reg[4]_i_1_n_5\,
      O(1) => \count_sig_reg[4]_i_1_n_6\,
      O(0) => \count_sig_reg[4]_i_1_n_7\,
      S(3) => \count_sig_reg_n_0_[7]\,
      S(2) => \count_sig_reg_n_0_[6]\,
      S(1) => \count_sig_reg_n_0_[5]\,
      S(0) => \count_sig_reg_n_0_[4]\
    );
\count_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[4]_i_1_n_6\,
      Q => \count_sig_reg_n_0_[5]\,
      R => '0'
    );
\count_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[4]_i_1_n_5\,
      Q => \count_sig_reg_n_0_[6]\,
      R => '0'
    );
\count_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[4]_i_1_n_4\,
      Q => \count_sig_reg_n_0_[7]\,
      R => '0'
    );
\count_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[8]_i_1_n_7\,
      Q => \count_sig_reg_n_0_[8]\,
      R => '0'
    );
\count_sig_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[4]_i_1_n_0\,
      CO(3) => \count_sig_reg[8]_i_1_n_0\,
      CO(2) => \count_sig_reg[8]_i_1_n_1\,
      CO(1) => \count_sig_reg[8]_i_1_n_2\,
      CO(0) => \count_sig_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[8]_i_1_n_4\,
      O(2) => \count_sig_reg[8]_i_1_n_5\,
      O(1) => \count_sig_reg[8]_i_1_n_6\,
      O(0) => \count_sig_reg[8]_i_1_n_7\,
      S(3) => \count_sig_reg_n_0_[11]\,
      S(2) => \count_sig_reg_n_0_[10]\,
      S(1) => \count_sig_reg_n_0_[9]\,
      S(0) => \count_sig_reg_n_0_[8]\
    );
\count_sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_sig_reg[8]_i_1_n_6\,
      Q => \count_sig_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    count : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_ps_pl_count_bin_0_0,count_bin,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "count_bin,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_bin
     port map (
      clk => clk,
      count => count
    );
end STRUCTURE;
