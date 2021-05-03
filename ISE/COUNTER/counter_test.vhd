
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT COUNTER
    PORT(
         Basla : IN  std_logic;
         CLK : IN  std_logic;
         Cikis : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Basla : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Cikis : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: COUNTER PORT MAP (
          Basla => Basla,
          CLK => CLK,
          Cikis => Cikis
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      wait for 10 ns;	
		basla<='1';

      wait for CLK_period*10;
		basla<='0';

      

      wait;
   end process;

END;
