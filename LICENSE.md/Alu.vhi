
-- VHDL Instantiation Created from source file Alu.vhd -- 19:32:04 04/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Alu
	PORT(
		Entrada_Uc : IN std_logic_vector(5 downto 0);
		Entrada_rF1 : IN std_logic_vector(31 downto 0);
		Entrada_rF2 : IN std_logic_vector(31 downto 0);          
		dwr_aLu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Alu: Alu PORT MAP(
		Entrada_Uc => ,
		Entrada_rF1 => ,
		Entrada_rF2 => ,
		dwr_aLu => 
	);


