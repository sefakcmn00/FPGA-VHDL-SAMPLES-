
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bol
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         sayi_16b : IN  std_logic_vector(15 downto 0);
         sayi1_8b : OUT  std_logic_vector(7 downto 0);
         sayi2_8b : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sayi_16b : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal sayi1_8b : std_logic_vector(7 downto 0);
   signal sayi2_8b : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bol PORT MAP (
          clk => clk,
          rst => rst,
          sayi_16b => sayi_16b,
          sayi1_8b => sayi1_8b,
          sayi2_8b => sayi2_8b
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		

     

      -- insert stimulus here 

      wait;
   end process;

END;
