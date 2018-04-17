--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:59 04/05/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Tes_Sumador.vhd
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tes_Sumador IS
END Tes_Sumador;
 
ARCHITECTURE behavior OF Tes_Sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         entrada_sum1 : IN  std_logic_vector(31 downto 0);
         entrada_sum2 : IN  std_logic_vector(31 downto 0);
         salida_sumador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_sum1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada_sum2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida_sumador : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          entrada_sum1 => entrada_sum1,
          entrada_sum2 => entrada_sum2,
          salida_sumador => salida_sumador
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		entrada_sum1 <= x"00000001";
		entrada_sum2 <= x"00000011";
		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		entrada_sum1 <= x"00000100";
		entrada_sum2 <= x"00000101";
		wait for 30 ns;
		entrada_sum1 <= x"00000110";
		entrada_sum2 <= x"00000011";
		wait for 30 ns;
		
    
      wait;
   end process;

END;
