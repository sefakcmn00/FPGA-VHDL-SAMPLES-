
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity vhdl4 is
    Port ( G_clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
           cikis: out  STD_LOGIC_VECTOR(1 DOWNTO 0));
			  
end vhdl4;

architecture Behavioral of vhdl4 is
signal S1:std_logic;

component Frekans_bolucu
Port(Clk: in std_logic;
		basla: in std_logic;
		Frekans_bolucu_out: out std_logic);
		end component;

component counter
Port(clk,basla:in std_logic;
	  counter_out: out std_logic_vector (1 downto 0));
	  end component;

begin
fb:Frekans_bolucu port map(G_clk,start,S1);
c1: counter port map(S1,start,Cikis);

end Behavioral;

