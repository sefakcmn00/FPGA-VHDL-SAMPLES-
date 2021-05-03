
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity sayici_devresi is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           son : out  STD_LOGIC_VECTOR (3 downto 0));
end sayici_devresi;

architecture Behavioral of sayici_devresi is
signal say:std_logic_vector(3 downto 0):=(others=>'0');
begin
process(clk,rst)
begin
if(rst='1')then
say<=(others=>'0');
elsif rising_edge(clk)then
say<=say+1;
end if;
end process;
son<=say;
end Behavioral;

