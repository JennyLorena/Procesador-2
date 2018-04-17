--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:12:28 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test-Pc.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pC
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
 
ENTITY Test-Pc IS
END Test-Pc;
 
ARCHITECTURE behavior OF Test-Pc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pC
    PORT(
         EntradaPc : IN  std_logic_vector(31 downto 0);
         clkPc : IN  std_logic;
         rstPc : IN  std_logic;
         SalidaPc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EntradaPc : std_logic_vector(31 downto 0) := (others => '0');
   signal clkPc : std_logic := '0';
   signal rstPc : std_logic := '0';

 	--Outputs
   signal SalidaPc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clkPc_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pC PORT MAP (
          EntradaPc => EntradaPc,
          clkPc => clkPc,
          rstPc => rstPc,
          SalidaPc => SalidaPc
        );

   -- Clock process definitions
   clkPc_process :process
   begin
		clkPc <= '0';
		wait for clkPc_period/2;
		clkPc <= '1';
		wait for clkPc_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clkPc_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
