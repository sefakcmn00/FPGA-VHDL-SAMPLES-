
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT proje
    PORT(
         Clk : IN  std_logic;
         Basla : IN  std_logic;
         X : IN  std_logic_vector(31 downto 0);
         Y : IN  std_logic_vector(31 downto 0);
         Z : OUT  std_logic_vector(31 downto 0);
         sonuc_hazir : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Basla : std_logic := '0';
   signal X : std_logic_vector(31 downto 0) := (others => '0');
   signal Y : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(31 downto 0);
   signal sonuc_hazir : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: proje PORT MAP (
          Clk => Clk,
          Basla => Basla,
          X => X,
          Y => Y,
          Z => Z,
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
      wait for 100 ns;	

      x<=x"3F800000";
		y<=x"00000000";
		Basla<='1';
		wait for 10 ns;
		
      x<=x"3F800000";
		y<=x"00000000";

		wait for 10 ns;
		
      x<=x"C0A00000";
		y<=x"3F4CCCCD";
		wait for 10 ns;
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
