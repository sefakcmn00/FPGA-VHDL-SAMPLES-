
-- VHDL Instantiation Created from source file Reg.vhd -- 22:58:12 01/14/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Reg
	PORT(
		Clk : IN std_logic;
		Din : IN std_logic_vector(31 downto 0);          
		Cikis : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Reg: Reg PORT MAP(
		Clk => ,
		Din => ,
		Cikis => 
	);


