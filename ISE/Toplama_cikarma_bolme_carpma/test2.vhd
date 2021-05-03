--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:48:08 04/07/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/ISE/Toplama_cikarma_bolme_carpma/test2.vhd
-- Project Name:  Toplama_cikarma_bolme_carpma
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: matematik
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
 
ENTITY test2 IS
END test2;
 
ARCHITECTURE behavior OF test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT matematik
    PORT(
         giris_1 : IN  std_logic_vector(3 downto 0);
         giris_2 : IN  std_logic_vector(3 downto 0);
         giris_3 : IN  std_logic;
         toplama : OUT  std_logic_vector(3 downto 0);
         cikarma : OUT  std_logic_vector(3 downto 0);
         carpma : OUT  std_logic_vector(7 downto 0);
         bolme : OUT  std_logic;
         mod_alma : OUT  std_logic;
         rem_alma : OUT  std_logic;
         ekleme : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal giris_1 : std_logic_vector(3 downto 0) := (others => '0');
   signal giris_2 : std_logic_vector(3 downto 0) := (others => '0');
   signal giris_3 : std_logic := '0';

 	--Outputs
   signal toplama : std_logic_vector(3 downto 0);
   signal cikarma : std_logic_vector(3 downto 0);
   signal carpma : std_logic_vector(7 downto 0);
   signal bolme : std_logic;
   signal mod_alma : std_logic;
   signal rem_alma : std_logic;
   signal ekleme : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: matematik PORT MAP (
          giris_1 => giris_1,
          giris_2 => giris_2,
          giris_3 => giris_3,
          toplama => toplama,
          cikarma => cikarma,
          carpma => carpma,
          bolme => bolme,
          mod_alma => mod_alma,
          rem_alma => rem_alma,
          ekleme => ekleme
        );

   -- Clock process definitions
 --  <clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
