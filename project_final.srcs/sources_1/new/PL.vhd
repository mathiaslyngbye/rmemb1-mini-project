----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2019 03:39:07 PM
-- Design Name: 
-- Module Name: PL - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PL is
    Port ( 
           clk_125MHz        : in STD_LOGIC;
           BRAM_PORTB_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
           BRAM_PORTB_0_en   : out STD_LOGIC;
           BRAM_PORTB_0_rst  : out STD_LOGIC;
           BRAM_PORTB_0_din  : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
           BRAM_PORTB_0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );               
           BRAM_PORTB_0_we   : out STD_LOGIC_VECTOR ( 3 downto 0 );
           toggle_in        : in STD_LOGIC;
           led_out          : out STD_LOGIC_VECTOR ( 3 downto 0 );
           pwm_out          : out STD_LOGIC_VECTOR ( 13 downto 0 )
     );
end PL;

architecture Behavioral of PL is

signal pwm_tmp                 : STD_LOGIC_VECTOR( 13 downto 0) := (others => '0');
signal led_tmp                 : STD_LOGIC_VECTOR( 3 downto 0) := (others => '0');

begin
    process(clk_125MHz)
    begin   
            if (toggle_in = '1') then   
                BRAM_PORTB_0_addr<=x"40000004";
                --Enable the BRAM
                BRAM_PORTB_0_en <='1';
                --Reset the BRAM
                BRAM_PORTB_0_rst <='0';    
                --DATA to write. In this case just zeros since we only read
                BRAM_PORTB_0_din <=(others=>'0');
                -- Write enable input. In this case just zeros since we only read 
                BRAM_PORTB_0_we  <=(others=>'0');
                --Data to visualize on the LED
                pwm_tmp <= BRAM_PORTB_0_dout(13 downto 0);
                --pwm_out<=BRAM_PORTB_0_dout(13 downto 0);
            else
                BRAM_PORTB_0_addr<=x"40000008";
                --Enable the BRAM
                BRAM_PORTB_0_en <='1';
                --Reset the BRAM
                BRAM_PORTB_0_rst <='0';    
                --DATA to write. In this case just zeros since we only read
                BRAM_PORTB_0_din <=(others=>'0');
                -- Write enable input. In this case just zeros since we only read 
                BRAM_PORTB_0_we  <=(others=>'0');
                --Data to visualize on the LED
                led_tmp <= BRAM_PORTB_0_dout(3 downto 0);
                --led_out<=BRAM_PORTB_0_dout(3 downto 0);
            end if;
    end process;
    pwm_out <= pwm_tmp;
    led_out <= led_tmp;
end Behavioral;
