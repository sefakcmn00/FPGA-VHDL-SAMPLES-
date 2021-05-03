
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity COUNTER is
    Port ( Basla : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Cikis : out  STD_LOGIC_VECTOR (1 downto 0));
end COUNTER;

architecture Behavioral of COUNTER is
signal counter:std_logic_vector(1 downto 0):=(others=>'0');
begin
process(BASLA,CLK)
begin
if(rising_edge(CLK))then
if(BASLA='1')then
counter<=counter+1;
else
counter<="00";
end if;
end if;
end process;
Cikis<=counter;
end Behavioral;

