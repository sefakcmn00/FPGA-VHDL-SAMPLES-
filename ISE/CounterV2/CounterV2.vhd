
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;



entity CounterV2 is
    Port ( Basla : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Yon : in  STD_LOGIC;
           Cýkýs : out  STD_LOGIC_VECTOR (3 downto 0));
end CounterV2;

architecture Behavioral of CounterV2 is
signal counter:std_logic_vector(3 downto 0):=("0000");
begin
process(CLK,BASLA,YON)
begin
if(rising_edge(Clk))then
if(Basla='1')then
if(Yon='1')then
counter<=counter+1;
else
counter<=counter-1;
end if;
end if;	
end if;
end process;
Cýkýs<=counter;
end Behavioral;

