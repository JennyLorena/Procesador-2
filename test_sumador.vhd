--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:06:10 04/05/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test_Sumador.vhd
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
 
ENTITY Test_Sumador IS
END Test_Sumador;
 
ARCHITECTURE behavior OF Test_Sumador IS 
 
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
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          entrada_sum1 => entrada_sum1,
          entrada_sum2 => entrada_sum2,
          salida_sumador => salida_sumador
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
		entrada_sum1 <= x"00000002";
		entrada_sum2 <= x"00000004";
		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		entrada_sum1 <= x"00000004";
		entrada_sum2 <= x"00000004";
		wait for 30 ns;
		entrada_sum1 <= x"00000008";
		entrada_sum2 <= x"00000004";
		wait for 30 ns;
		entrada_sum1 <= x"000000010";
		entrada_sum2 <= x"00000004";
    
      wait;
   end process;

END;