--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:53 04/08/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test_aLu.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.All;
--use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_aLu IS
END Test_aLu;
 
ARCHITECTURE behavior OF Test_aLu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         Entrada_Uc : IN  std_logic_vector(5 downto 0);
         Entrada_rF1 : IN  std_logic_vector(31 downto 0);
         Entrada_rF2 : IN  std_logic_vector(31 downto 0);
         dwr_aLu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada_Uc : std_logic_vector(5 downto 0) := (others => '0');
   signal Entrada_rF1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Entrada_rF2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dwr_aLu : std_logic_vector(31 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          Entrada_Uc => Entrada_Uc,
          Entrada_rF1 => Entrada_rF1,
          Entrada_rF2 => Entrada_rF2,
          dwr_aLu => dwr_aLu
        );

 
   -- Stimulus process
   stim_proc: process
   begin		
     
	   Entrada_Uc <= "000011";
		Entrada_rF1<= x"00000003";
      Entrada_rF2 <= x"00000004";
		wait;
		
   end process;

END;
