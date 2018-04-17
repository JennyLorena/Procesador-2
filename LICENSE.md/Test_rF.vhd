--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:59:06 04/08/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test_rF.vhd
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
 
ENTITY Test_rF IS
END Test_rF;
 
ARCHITECTURE behavior OF Test_rF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register_File
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         reset : IN  std_logic;
         crs1 : OUT  std_logic_vector(31 downto 0);
         crs2 : OUT  std_logic_vector(31 downto 0);
         dwr : IN  std_logic_vector(31 downto 0);
         rd : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal dwr : std_logic_vector(31 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal crs1 : std_logic_vector(31 downto 0);
   signal crs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register_File PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          reset => reset,
          crs1 => crs1,
          crs2 => crs2,
          dwr => dwr,
          rd => rd
        );

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
			reset <='0';
			rs1 <= "10000";
			rs2 <= "10001";
			rd <= "10010";
			dwr <= x"00010110";
			
   end process;

END;
