
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bol is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           sayi_16b : in  STD_LOGIC_VECTOR (15 downto 0);
           sayi1_8b : out  STD_LOGIC_VECTOR (7 downto 0);
           sayi2_8b : out  STD_LOGIC_VECTOR (7 downto 0));
end bol;

architecture Behavioral of bol is

begin
process(clk,rst)
begin
if(rst='1')then
sayi1_8b<=(others=>'0');
sayi2_8b<=(others=>'0');
elsif(rising_edge(clk))then
sayi1_8b<=sayi_16b(7 downto 0);
sayi2_8b<=sayi_16b(15 downto 8);
end if;
end process;
end Behavioral;

