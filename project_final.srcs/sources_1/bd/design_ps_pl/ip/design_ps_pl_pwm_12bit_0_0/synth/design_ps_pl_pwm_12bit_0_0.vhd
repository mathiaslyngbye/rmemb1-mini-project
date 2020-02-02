-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:pwm_12bit:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_ps_pl_pwm_12bit_0_0 IS
  PORT (
    clk_200M_in : IN STD_LOGIC;
    duty_cycle_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    enable_in : IN STD_LOGIC;
    reset_in : IN STD_LOGIC;
    pwm_out : OUT STD_LOGIC
  );
END design_ps_pl_pwm_12bit_0_0;

ARCHITECTURE design_ps_pl_pwm_12bit_0_0_arch OF design_ps_pl_pwm_12bit_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_ps_pl_pwm_12bit_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pwm_12bit IS
    GENERIC (
      bitshift_reg : INTEGER
    );
    PORT (
      clk_200M_in : IN STD_LOGIC;
      duty_cycle_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      enable_in : IN STD_LOGIC;
      reset_in : IN STD_LOGIC;
      pwm_out : OUT STD_LOGIC
    );
  END COMPONENT pwm_12bit;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_ps_pl_pwm_12bit_0_0_arch: ARCHITECTURE IS "pwm_12bit,Vivado 2019.1.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_ps_pl_pwm_12bit_0_0_arch : ARCHITECTURE IS "design_ps_pl_pwm_12bit_0_0,pwm_12bit,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_ps_pl_pwm_12bit_0_0_arch: ARCHITECTURE IS "design_ps_pl_pwm_12bit_0_0,pwm_12bit,{x_ipProduct=Vivado 2019.1.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pwm_12bit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,bitshift_reg=5}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_ps_pl_pwm_12bit_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_in: SIGNAL IS "XIL_INTERFACENAME reset_in, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_in: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_in RST";
BEGIN
  U0 : pwm_12bit
    GENERIC MAP (
      bitshift_reg => 5
    )
    PORT MAP (
      clk_200M_in => clk_200M_in,
      duty_cycle_in => duty_cycle_in,
      enable_in => enable_in,
      reset_in => reset_in,
      pwm_out => pwm_out
    );
END design_ps_pl_pwm_12bit_0_0_arch;
