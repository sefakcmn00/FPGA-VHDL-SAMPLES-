library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Frekans_bolucu is
    Port ( clk : in  STD_LOGIC;
           basla : in  STD_LOGIC;
           Frekans_bolucu_out : out  STD_LOGIC);
end Frekans_bolucu;

architecture Behavioral of Frekans_bolucu is
signal S1: std_logic_vector(31 downto 0) = x"00000000";
begin
process (Clk)
begin
if (Clk= '1' and Clk'event) then
if basla='1' then
S1<=S1+1;
else
S1<=x"00000000";
end if;
end if;
end process;
Frekans_bolucu_out<=S1(26);


end Behavioral;

