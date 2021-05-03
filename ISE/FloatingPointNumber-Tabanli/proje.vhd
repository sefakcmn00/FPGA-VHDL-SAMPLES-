
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity proje is
    Port ( Clk : in  STD_LOGIC;
           Basla : in  STD_LOGIC;
           X : in  STD_LOGIC_VECTOR (31 downto 0);
           Y : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out  STD_LOGIC_VECTOR (31 downto 0);
           sonuc_hazir : out  STD_LOGIC);
end proje;

architecture Behavioral of proje is
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

cikarici1:cikarici PORT MAP (X,Y,Basla,Clk,Z,sonuc_hazir);

end Behavioral;

