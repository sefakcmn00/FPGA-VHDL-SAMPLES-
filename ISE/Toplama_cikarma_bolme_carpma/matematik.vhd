
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;




entity matematik is
    Port ( giris_1 : in  STD_LOGIC_VECTOR (3 downto 0):="0011";
           giris_2 : in  STD_LOGIC_VECTOR (3 downto 0):="0100";
			  giris_3: in integer :=19;
           toplama : out  STD_LOGIC_VECTOR (3 downto 0);
           cikarma : out  STD_LOGIC_VECTOR (3 downto 0);
			  carpma: out std_logic_vector(7 downto 0);
			  bolme:out integer;
			  mod_alma:out integer;
			  rem_alma:out integer;
           ekleme : out  STD_LOGIC_VECTOR (7 downto 0));
end matematik;

architecture Behavioral of matematik is

begin
process(giris_1,giris_2,giris_3)
begin
toplama<=giris_1+giris_2;
cikarma<=giris_1-giris_2;
ekleme<=giris_1&giris_2;
carpma<=giris_1*giris_2;
bolme <=giris_3 / conv_integer(giris_2);
mod_alma<=giris_3 mod conv_integer(giris_2);
rem_alma<=giris_3 rem conv_integer(giris_2);
end process;

end Behavioral;

