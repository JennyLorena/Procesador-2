--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:57:49 04/22/2018
-- Design Name:   
-- Module Name:   E:/Proyecto2/Test_Registerfile.vhd
-- Project Name:  Proyecto1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register_File
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
 
ENTITY Test_Registerfile IS
END Test_Registerfile;
 
ARCHITECTURE behavior OF Test_Registerfile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_File
    PORT(
         reg_s_1 : IN  std_logic_vector(4 downto 0);
         reg_s_2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         reset : IN  std_logic;
         dwr : IN  std_logic_vector(31 downto 0);
         salida_1 : OUT  std_logic_vector(31 downto 0);
         salida_2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reg_s_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal reg_s_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal dwr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida_1 : std_logic_vector(31 downto 0);
   signal salida_2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_File PORT MAP (
          reg_s_1 => reg_s_1,
          reg_s_2 => reg_s_2,
          rd => rd,
          reset => reset,
          dwr => dwr,
          salida_1 => salida_1,
          salida_2 => salida_2
        );

   -- Clock process definitions
  -- <clock>_process :process
 --  begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     reg_s_1 <= "01000";
	  reg_s_2 <="10010";
	  rd <= "01100";
	  reset <= '0';
	  dwr <= x"01AB5701";

      wait;
   end process;

END;
