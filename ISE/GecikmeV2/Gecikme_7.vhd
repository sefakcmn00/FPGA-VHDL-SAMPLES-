library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Reg is
generic ( boyut : integer :=128);
 port(Clk  : in std_logic;    
      Din  : in std_logic_vector(boyut-1 downto 0);       
		Cikis: out std_logic_vector(boyut-1 downto 0)); 
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



entity Gecikme_7 is
generic ( boyut: integer :=32);
    Port ( G_Clk : in  STD_LOGIC;
           G_Din : in  STD_LOGIC_VECTOR (boyut-1 downto 0);
           G_Dout : out  STD_LOGIC_VECTOR (boyut-1 downto 0));
end Gecikme_7;

architecture Behavioral of Gecikme_7 is
component Reg 
generic ( boyut : integer :=32);
 port(Clk  : in std_logic;    
      Din  : in std_logic_vector(boyut-1 downto 0);       
		Cikis: out std_logic_vector(boyut-1 downto 0)); 
		end component;
signal S1,S2,S3,S4,S5,S6,S7,S8,S9:std_logic_vector(boyut-1 downto 0);
begin
Reg1:Reg PORT MAP(
		Clk =>G_Clk,
		Din =>G_Din,
		Cikis =>S1 
	);
	Reg2:Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S1,
		Cikis =>S2
	);
	Reg3: Reg PORT MAP(
		Clk =>G_Clk ,
		Din =>S2,
		Cikis =>S3 
	);
	Reg4: Reg PORT MAP(
		Clk =>G_Clk ,
		Din =>S3,
		Cikis =>S4 
	);
	Reg5: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S4,
		Cikis =>S5 
	);
	Reg6: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S5,
		Cikis =>S6 
	);
	Reg7: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S6,
		Cikis =>S7 
	);
	Reg8: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S7,
		Cikis =>S8 
	);
	Reg9: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S8,
		Cikis =>S9 
	);
	Reg10: Reg PORT MAP(
		Clk =>G_Clk,
		Din =>S9,
		Cikis =>G_Dout 
	);
	
--	YUKARIDAKÝNÝN DAHA BASÝTE ÝNDÝREGENMÝÞ HALÝÝ
--	Reg1:Reg port map (G_Clk, G_Din, S1);
-- Reg2:Reg port map (G_Clk, S1, S2);
-- Reg3:Reg port map (G_Clk, S2, S3);
 --Reg4:Reg port map (G_Clk, S3, S4);
 --Reg5:Reg port map (G_Clk, S4, S5);
 --Reg6:Reg port map (G_Clk, S5, S6); 
-- Reg7:Reg port map (G_Clk, S6, S7);
 --Reg8:Reg port map (G_Clk, S7, S8);
-- Reg9:Reg port map (G_Clk, S8, S9);
-- Reg10:Reg port map (G_Clk, S9, G_Dout);

end Behavioral;

