--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:25:55 05/02/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/ISE/Yedinci_Hafta_Float_Point/t1.vhd
-- Project Name:  Yedinci_Hafta_Float_Point
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sil
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
 
ENTITY t1 IS
END t1;
 
ARCHITECTURE behavior OF t1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sil
    PORT(
         Clk : IN  std_logic;
         Basla : IN  std_logic;
         x : IN  std_logic_vector(31 downto 0);
         y : IN  std_logic_vector(31 downto 0);
         z : OUT  std_logic_vector(31 downto 0);
         sonuc_hazir : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Basla : std_logic := '0';
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal y : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(31 downto 0);
   signal sonuc_hazir : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sil PORT MAP (
          Clk => Clk,
          Basla => Basla,
          x => x,
          y => y,
          z => z,
          sonuc_hazir => sonuc_hazir
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		x<=x"3F800000";
		y<=x"00000000";
		Basla<='1';
		wait for 10 ns;
		x<=x"00000000";
		y<=x"3F800000";
		wait for 10 ns;
		x<=x"C0A00000";
		y<=x"3F4CCCCD";
		wait for 10 ns;
		

      

      

      wait;
   end process;

END;
