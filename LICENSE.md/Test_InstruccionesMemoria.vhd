--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:08:11 04/05/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test_InstruccionesMemoria.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstruccionesMemoria
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_InstruccionesMemoria IS
END Test_InstruccionesMemoria;
 
ARCHITECTURE behavior OF Test_InstruccionesMemoria IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstruccionesMemoria
    PORT(
         direccion : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         instruccion : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal instruccion : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 

 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstruccionesMemoria PORT MAP (
          direccion => direccion,
          reset => reset,
          instruccion => instruccion
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 
		
		direccion <= x"00000002";
		
		
      wait;
   end process;

END;
