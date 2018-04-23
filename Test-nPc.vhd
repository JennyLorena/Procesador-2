--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:22:47 04/03/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario pc/Proyecto1/Test-nPc.vhd
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
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test-nPc IS
END Test-nPc;
 
ARCHITECTURE behavior OF Test-nPc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPc
    PORT(
         EntadanPc : IN  std_logic_vector(31 downto 0);
         clknPc : IN  std_logic;
         rstnPc : IN  std_logic;
         SalidanPc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal EntadanPc : std_logic_vector(31 downto 0) := (others => '0');
   signal clknPc : std_logic := '0';
   signal rstnPc : std_logic := '0';

 	--Outputs
   signal SalidanPc : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clknPc_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPc PORT MAP (
          EntadanPc => EntadanPc,
          clknPc => clknPc,
          rstnPc => rstnPc,
          SalidanPc => SalidanPc
        );

   -- Clock process definitions
   clknPc_process :process
   begin
		clknPc <= '0';
		wait for clknPc_period/2;
		clknPc <= '1';
		wait for clknPc_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
			rstnPc <='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;	
			rstnPc <= '0';
			EntadanPc <= x"00000010";
			wait for 30 ns;
			EntadanPc <= x"00000010";
			wait for 30 ns;
			EntadanPc <= x"00000010";
         wait for 30 ns;
			EntadanPc <= x"00000010";			

    
      wait;
   end process;

END;
