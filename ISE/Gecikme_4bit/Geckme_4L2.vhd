
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Reg is
 port(Clk  : in std_logic;    
      Din  : in std_logic_vector(1 downto 0);       
		Cikis: out std_logic_vector(1 downto 0)); 
		end Reg; 
		architecture archi of Reg is 
		begin process (Clk)  
		begin       
		if (Clk'event and Clk='1') then   
		Cikis <= Din;     
		end if; 
		end process;
		end archi;
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Geckme_4L2 is
    Port ( G_Clk : in  STD_LOGIC;
           G_Din : in  STD_LOGIC_VECTOR (1 downto 0);
           G_Dout : out  STD_LOGIC_VECTOR (1 downto 0));
end Geckme_4L2;

architecture Behavioral of Geckme_4L2 is
signal S1,S2,S3:std_logic_vector(1 downto 0);

Component Reg
port(Clk  : in std_logic;    
      Din  : in std_logic_vector(1 downto 0);       
		Cikis: out std_logic_vector(1 downto 0)); 
		end component;
		
begin
Reg1:Reg Port map(G_Clk,G_Din,S1);
Reg2:Reg port map(G_Clk,S1,S2);
Reg3:Reg Port map(G_Clk,S2,S3);
Reg4:Reg port map(G_Clk,S3,G_Dout);


end Behavioral;

