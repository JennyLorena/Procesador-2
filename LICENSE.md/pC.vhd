----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:21 04/05/2018 
-- Design Name: 
-- Module Name:    pC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           entrada_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end pC;

architecture Behavioral of pC is

begin
	process (clk,reset,entrada_PC)
	begin
	if(rising_edge(clk))then
			if reset='1' then
			salida_PC<=x"00000000";
		else
		salida_PC <=entrada_PC;		
		end if;
	end if;
end process;

end Behavioral;

