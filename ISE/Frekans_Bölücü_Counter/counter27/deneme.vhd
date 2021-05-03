--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:37:39 03/30/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/ISE/counter27/counter27/deneme.vhd
-- Project Name:  counter27
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vhdl4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY deneme IS
END deneme;
 
ARCHITECTURE behavior OF deneme IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vhdl4
    PORT(
         G_clk : IN  std_logic;
         start : IN  std_logic;
         cikis : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal G_clk : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal cikis : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant G_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vhdl4 PORT MAP (
          G_clk => G_clk,
          start => start,
          cikis => cikis
        );

   -- Clock process definitions
   G_clk_process :process
   begin
		G_clk <= '0';
		wait for G_clk_period/2;
		G_clk <= '1';
		wait for G_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
      start<='1';
      

      -- insert stimulus here 

      wait;
   end process;

END;
