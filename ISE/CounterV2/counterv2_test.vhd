
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY counterv2_test IS
END counterv2_test;
 
ARCHITECTURE behavior OF counterv2_test IS 
 
   
 
    COMPONENT CounterV2
    PORT(
         Basla : IN  std_logic;
         Clk : IN  std_logic;
         Yon : IN  std_logic;
         Cýkýs : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Basla : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Yon : std_logic := '0';

 	--Outputs
   signal Cýkýs : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CounterV2 PORT MAP (
          Basla => Basla,
          Clk => Clk,
          Yon => Yon,
          Cýkýs => Cýkýs
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
Basla<='1';
Yon<='1';
       wait for  180 ns;
		Basla<='1';
		Yon<='0';
		wait for 180 ns;
		basla<='0';

      -- insert stimulus here 

      wait;
   end process;

END;
