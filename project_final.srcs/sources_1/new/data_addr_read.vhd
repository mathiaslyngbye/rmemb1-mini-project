----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2020 12:23:58 PM
-- Design Name: 
-- Module Name: data_addr_read - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_addr_read is
    Port ( clk_125M : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (31 downto 0);
           addr_out : out STD_LOGIC_VECTOR (31 downto 0);
           pwm_duty_out : out STD_LOGIC_VECTOR(13 downto 0);
           led_out : out STD_LOGIC_VECTOR (3 downto 0));
end data_addr_read;

architecture Behavioral of data_addr_read is
signal counter : STD_LOGIC := '0';

begin
process (clk_125M)
begin

if(counter = '1') then
    addr_out <= x"40000004";
    pwm_duty_out <= data_in(13 downto 0);
    counter <= '0';
else 
    addr_out <= x"40000008";
    led_out <= data_in(3 downto 0);
    counter <= '1';
end if;

end process;

end Behavioral;
