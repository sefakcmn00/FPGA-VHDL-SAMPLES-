--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:31:08 05/03/2021
-- Design Name:   
-- Module Name:   C:/Users/ASUS/Desktop/ISE/sekizinci_hafta_2/test.vhd
-- Project Name:  sekizinci_hafta_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: odev3
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
 
    COMPONENT odev3
    PORT(
         Basla : IN  std_logic;
         Clk : IN  std_logic;
         Se : IN  std_logic_vector(31 downto 0);
         Fa : IN  std_logic_vector(31 downto 0);
         Ko : INOUT  std_logic_vector(31 downto 0);
         Ca : OUT  std_logic_vector(31 downto 0);
         Ma : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Basla : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Se : std_logic_vector(31 downto 0) := (others => '0');
   signal Fa : std_logic_vector(31 downto 0) := (others => '0');

	--BiDirs
   signal Ko : std_logic_vector(31 downto 0);

 	--Outputs
   signal Ca : std_logic_vector(31 downto 0);
   signal Ma : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: odev3 PORT MAP (
          Basla => Basla,
          Clk => Clk,
          Se => Se,
          Fa => Fa,
          Ko => Ko,
          Ca => Ca,
          Ma => Ma
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
       wait for 100 ns;	
      Se <=x"C0A00000";
		Fa <=x"3F4CCCCD";
		Basla <='1';
		wait for 10 ns;


     	Se <=x"3DCCCCCD";
		Fa <=x"3F800000";
		wait for 10 ns;

		Se <=x"40A00000";
		Fa <=x"3F99999A";
		wait for 10 ns; 

      wait;
   end process;

END;
