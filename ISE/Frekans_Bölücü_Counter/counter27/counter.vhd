----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:17 03/27/2021 
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
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

entity counter is
Port(Clk,basla:in std_logic;
	  counter_out:out std_logic_vector(1 downto 0));
end counter;


architecture Behavioral of counter is
signal S1: std_logic_vector(1 downto 0):="00";

begin
process(Clk)
begin
if(Clk='1' and Clk'event) then
if basla = '1' then
S1<=S1 + 1;
else
S1<="00";
end if;
end if;
end process;
Counter_out<=S1;
end Behavioral;

