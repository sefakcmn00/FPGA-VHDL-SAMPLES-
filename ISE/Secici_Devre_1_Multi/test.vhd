
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multix_4bit
    PORT(
         Clk : IN  std_logic;
         Basla : IN  std_logic;
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         Cikis : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Basla : std_logic := '0';
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Cikis : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multix_4bit PORT MAP (
          Clk => Clk,
          Basla => Basla,
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          S => S,
          Cikis => Cikis
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
      Basla<='1';
		A0<='0';
		A1<='1';
		A2<='0';
		A3<='1';
		S<="00";
      wait for 10 ns;	
		A0<='0';
		A1<='1';
		A2<='0';
		A3<='1';
		S<="01";
      wait for 10 ns;	
		A0<='0';
		A1<='1';
		A2<='0';
		A3<='1';
		S<="10";
      wait for 10 ns;	
		A0<='0';
		A1<='1';
		A2<='0';
		A3<='1';
		S<="11";
      wait for 10 ns;	

     

      -- insert stimulus here 

      wait;
   end process;

END;
