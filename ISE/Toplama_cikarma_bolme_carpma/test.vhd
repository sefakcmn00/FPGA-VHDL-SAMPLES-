--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:25:52 04/07/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/ISE/Toplama_cikarma_bolme_carpma/test.vhd
-- Project Name:  Toplama_cikarma_bolme_carpma
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: oparatorler
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT oparatorler
    PORT(
         giris_1 : IN  std_logic_vector(3 downto 0);
         giris_2 : IN  std_logic_vector(3 downto 0);
         toplama : OUT  std_logic_vector(3 downto 0);
         cikarma : OUT  std_logic_vector(3 downto 0);
         ekleme : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal giris_1 : std_logic_vector(3 downto 0) := (others => '0');
   signal giris_2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal toplama : std_logic_vector(3 downto 0);
   signal cikarma : std_logic_vector(3 downto 0);
   signal ekleme : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: oparatorler PORT MAP (
          giris_1 => giris_1,
          giris_2 => giris_2,
          toplama => toplama,
          cikarma => cikarma,
          ekleme => ekleme
        );

   -- Clock process definitions
  -- <clock>_process :process
 --  begin
		--<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	---	wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
      giris_1<="0011";
		giris_2<="1100";
     

      -- insert stimulus here 

      wait;
   end process;

END;
