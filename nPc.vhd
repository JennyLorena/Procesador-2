----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:05 04/05/2018 
-- Design Name: 
-- Module Name:    nPc - Behavioral 
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

entity nPc is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           entrada_nPc : in  STD_LOGIC_VECTOR (31 downto 0);
           salida_nPc : out  STD_LOGIC_VECTOR (31 downto 0));
end nPc;

architecture Behavioral of nPc is

begin

process (clk,reset,entrada_nPc)
	begin
	if(rising_edge(clk))then
			if reset='1' then
			salida_nPC<=x"00000000";
		else
		salida_nPC <=entrada_nPc;		
		end if;
	end if;
end process;

end Behavioral;

