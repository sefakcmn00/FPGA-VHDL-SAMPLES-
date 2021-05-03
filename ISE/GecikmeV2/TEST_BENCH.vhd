--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:35:38 01/14/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Gecikme_7/TEST_BENCH.vhd
-- Project Name:  Gecikme_7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Gecikme_7
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
 
ENTITY TEST_BENCH IS
END TEST_BENCH;
 
ARCHITECTURE behavior OF TEST_BENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Gecikme_7
    PORT(
         G_Clk : IN  std_logic;
         G_Din : IN  std_logic_vector(31 downto 0);
         G_Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal G_Clk : std_logic := '0';
   signal G_Din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal G_Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant G_Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Gecikme_7 PORT MAP (
          G_Clk => G_Clk,
          G_Din => G_Din,
          G_Dout => G_Dout
        );

   -- Clock process definitions
   G_Clk_process :process
   begin
		G_Clk <= '0';
		wait for G_Clk_period/2;
		G_Clk <= '1';
		wait for G_Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      wait for 10 ns;	

      G_Din<=x"BABA00DE";
		wait for 10ns; 
		G_Din<=x"BEBE00DE";
		wait for 10ns;
		G_Din<=x"DEDE00DE";
		wait for 10ns; 
		G_Din<=x"ABCD00DE";
		wait for 10ns;

      wait;
   end process;

END;
