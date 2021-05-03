
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity odev3 is
    Port ( Basla : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Se : in  STD_LOGIC_VECTOR (31 downto 0);
           Fa : in  STD_LOGIC_VECTOR (31 downto 0);
           Ko : inout  STD_LOGIC_VECTOR (31 downto 0);
           Ca: out  STD_LOGIC_VECTOR (31 downto 0);
           Ma : out  STD_LOGIC);
end odev3;

architecture Behavioral of odev3 is
COMPONENT Carpma
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    operation_nd : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
COMPONENT Toplama
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    operation_nd : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rdy : OUT STD_LOGIC
  );
END COMPONENT;
COMPONENT Reg
 PORT(
  Clk : IN std_logic;
  Din : IN std_logic_vector(31 downto 0);          
  Dout : OUT std_logic_vector(31 downto 0)
  );
END COMPONENT;
signal s1,s2,s3,s4: std_logic_vector(31 downto 0);
constant alfa :std_logic_vector(31 downto 0) :=x"40A00000";
begin
Carpma1: Carpma PORT MAP (Se,alfa,Basla,Clk,Ko);
Toplama1: Toplama PORT MAP (Ko,s4,Basla,Clk,Ca,Ma);
Reg1: Reg PORT MAP(Clk,Fa,s1);
Reg2: Reg PORT MAP(Clk,s1,s2);
Reg3: Reg PORT MAP(Clk,s2,s3);
Reg4: Reg PORT MAP(Clk,s3,s4);

end Behavioral;
----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Reg is
    Port ( Clk : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end Reg;
architecture Behavioral of Reg is
begin
process (Clk)
begin
 if (rising_edge(Clk)) then
 Dout<= Din;
 end if;
end process;
end Behavioral;
