
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ikiye_bol is
    Port ( clk : in  STD_LOGIC;
	        rst: in std_logic;
           sayi : in  STD_LOGIC_VECTOR (15 downto 0);
           sayi1: out STD_LOGIC_VECTOR (7 downto 0);
           sayi2: out STD_LOGIC_VECTOR (7 downto 0));
end ikiye_bol;

architecture Behavioral of ikiye_bol is
begin
process(clk,rst)
begin
if(rst='1')then
sayi1<=(others=>'0');
sayi2<=(others=>'0');
elsif(rising_edge(clk))then
sayi1<=sayi(7 downto 0);
sayi2<=sayi(15 downto 8);
end if;
end process;
end Behavioral;

