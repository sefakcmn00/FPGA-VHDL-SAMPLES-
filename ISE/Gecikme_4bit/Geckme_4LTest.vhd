--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:10:39 01/18/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Gecikme_4L2/Geckme_4LTest.vhd
-- Project Name:  Gecikme_4L2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Geckme_4L2
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
 
ENTITY Geckme_4LTest IS
END Geckme_4LTest;
 
ARCHITECTURE behavior OF Geckme_4LTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Geckme_4L2
    PORT(
         G_Clk : IN  std_logic;
         G_Din : IN  std_logic_vector(1 downto 0);
         G_Dout : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal G_Clk : std_logic := '0';
   signal G_Din : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal G_Dout : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant G_Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Geckme_4L2 PORT MAP (
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
 G_Din <="00";
 wait for 10 ns;
 G_Din <="10";
  wait for 10 ns;
 G_Din <="11";
  wait for 10 ns;
 G_Din <="10";
  wait for 10 ns;
    


      wait;
   end process;

END;
