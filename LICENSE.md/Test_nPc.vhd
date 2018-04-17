--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:41:51 04/05/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test_nPc.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPc
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_nPc IS
END Test_nPc;
 
ARCHITECTURE behavior OF Test_nPc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         entrada_nPc : IN  std_logic_vector(31 downto 0);
         salida_nPc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal entrada_nPc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida_nPc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPc PORT MAP (
          clk => clk,
          reset => reset,
          entrada_nPc => entrada_nPc,
          salida_nPc => salida_nPc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
    begin		
		reset<='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;
		reset<='0';
		entrada_nPc <=  x"00000010"; 
		wait for 30 ns;
		entrada_nPc <=  x"00000011";
		wait for 30 ns;
		entrada_nPc <=  x"00000012";

      wait;
   end process;

END;
