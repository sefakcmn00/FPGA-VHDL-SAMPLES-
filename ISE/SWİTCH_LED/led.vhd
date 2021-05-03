----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:59 03/31/2021 
-- Design Name: 
-- Module Name:    led - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led is
    Port ( clk : in  STD_LOGIC;
           switch : in  STD_LOGIC;
           led : out  STD_LOGIC);
end led;

architecture Behavioral of led is
signal counter:integer 0 to 99999:
begin
process(clk,switch)
begin
if(switch='1')then
led<=(others=>'0');
elsif(rising_edge(clk))then

end Behavioral;

