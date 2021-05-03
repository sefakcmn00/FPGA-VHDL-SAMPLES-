
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity Multi_6x1 is    
 Port ( Basla : in  STD_LOGIC;            
 Clk : in  STD_LOGIC;          
 A0 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);        
 A1 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);         
 A2 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);          
 A3 : in  STD_LOGIC_VECTOR(15 DOWNTO 0);  
A4:in std_logic_VECTOR(15 DOWNTO 0); 
A5:in std_logic_VECTOR(15 DOWNTO 0);
 S: in  STD_LOGIC_VECTOR(2 downto 0); 
 Cikis : out  STD_LOGIC_vector(15 downto 0)); 
 end Multi_6x1;
architecture Behavioral of Multi_6x1 is
 begin 
 process(Clk,Basla) 
 begin 
 if(rising_edge(Clk)) then 
 if(Basla='1') then
 if(S="000") then
 Cikis<=A0; 
 elsif(S="001") then
 Cikis<=A1;
 elsif(S="010") then 
 Cikis<=A2; 
 elsif(S="100") then 
 Cikis<=A3; 
 elsif(S="110") then
 Cikis<=A4;
 else 
 Cikis<=A5; 
 end if; 
 end if; 
 end if; 
 end process;
 end Behavioral;