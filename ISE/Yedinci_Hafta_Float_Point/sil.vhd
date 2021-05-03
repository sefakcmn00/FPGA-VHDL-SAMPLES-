
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sil is
    Port ( Clk : in  STD_LOGIC;
           Basla : in  STD_LOGIC;
           x : in  STD_LOGIC_VECTOR (31 downto 0);
           y : in  STD_LOGIC_VECTOR (31 downto 0);
           z : out  STD_LOGIC_VECTOR (31 downto 0);
           sonuc_hazir : out  STD_LOGIC);
end sil;

architecture Behavioral of sil is
COMPONENT cikarici
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    operation_nd : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rdy : OUT STD_LOGIC
  );
END COMPONENT;

begin
 cikarici1: cikarici PORT MAP (x,y,basla,Clk,z,sonuc_hazir);


end Behavioral;

