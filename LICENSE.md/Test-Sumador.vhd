--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:00 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test-Sumador.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test-Sumador IS
END Test-Sumador;
 
ARCHITECTURE behavior OF Test-Sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         Entrada1 : IN  std_logic_vector(31 downto 0);
         Entrada2 : IN  std_logic_vector(31 downto 0);
         Salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Entrada2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          Entrada1 => Entrada1,
          Entrada2 => Entrada2,
          Salida => Salida
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
			entrada1 <= x"00000001";
			entrada2 <= x"00000011";
	
         

      -- insert stimulus here 

      wait;
   end process;

END;
