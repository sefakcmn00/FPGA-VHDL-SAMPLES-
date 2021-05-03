----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:13 03/23/2021 
-- Design Name: 
-- Module Name:    Clk - Behavioral 
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

entity Clk is
    Port ( clk : in  STD_LOGIC;
           basla : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (1 downto 0));
end Clk;

architecture Behavioral of Clk is

begin


end Behavioral;
---------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Clk is
Port ( clk,basla: in STD_LOGIC;
q: out STD_LOGIC_VECTOR (1 downto 0));
end Clk;

architecture Behavioral of counter is


