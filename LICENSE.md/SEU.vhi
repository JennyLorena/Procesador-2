
-- VHDL Instantiation Created from source file SEU.vhd -- 19:28:22 04/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU
	PORT(
		Entrada_Seu : IN std_logic_vector(12 downto 0);          
		Salida_Mux : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU: SEU PORT MAP(
		Entrada_Seu => ,
		Salida_Mux => 
	);


