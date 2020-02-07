LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ENTITY count_bin IS
-- Declarations
	port(clk : in std_logic ;
	      count     : out std_logic);
END count_bin ;

-- hds interface_end
ARCHITECTURE rtl OF count_bin IS
signal count_sig : unsigned(15 downto 0) := (others=>'0');
BEGIN
  process(clk)
    begin
        if(rising_edge(clk))then
	       count_sig<= count_sig +1;
        end if;
    end process;
count<= count_sig(15);
END rtl;