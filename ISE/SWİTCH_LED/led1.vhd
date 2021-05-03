library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
 
entity led1 is
  port (clk,reset : in std_logic; 
        led : out std_logic 
    );
end led1;
 
architecture Behavioral of led1 is
 
signal count : unsigned(27 downto 0) := (others => '0');
 
begin
 
process(clk,reset)
begin
    if(reset = '0') then
        led <= '0';
        count <= (others => '0');
    elsif(rising_edge(clk)) then
          if(count = 250000000-1) then 
            count <= (others => '0');
            led <= '1';
        else
            led <= '0';
            count <= count +1;   --increment counter otherwise.
        end if; 
    end if;

end process;
end Behavioral;