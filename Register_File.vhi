
-- VHDL Instantiation Created from source file Register_File.vhd -- 19:03:11 04/22/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Register_File
	PORT(
		reg_s_1 : IN std_logic_vector(4 downto 0);
		reg_s_2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		dwr : IN std_logic_vector(31 downto 0);          
		salida_1 : OUT std_logic_vector(31 downto 0);
		salida_2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Register_File: Register_File PORT MAP(
		reg_s_1 => ,
		reg_s_2 => ,
		rd => ,
		reset => ,
		dwr => ,
		salida_1 => ,
		salida_2 => 
	);


