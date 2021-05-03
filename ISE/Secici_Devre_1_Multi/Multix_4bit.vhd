
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity Multix_4bit is
    Port ( Clk : in  STD_LOGIC;
           Basla : in  STD_LOGIC;
           A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Cikis : out  STD_LOGIC);
end Multix_4bit;

architecture Behavioral of Multix_4bit is

begin
process(Clk,Basla)
begin
if(rising_edge(Clk))then
if(Basla='1')then
if(S="00")then
Cikis<=A0;
elsif(S="01") then
Cikis<=A1;
elsif(S="10")then
Cikis<=A2;
else
Cikis<=A3;
end if;
end if;
end if;
end process;
end Behavioral;

