----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:56 04/08/2018 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( Entrada_Uc : in  STD_LOGIC_VECTOR (5 downto 0);
           Entrada_rF1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Entrada_rF2 : in  STD_LOGIC_VECTOR (31 downto 0);
           dwr_aLu : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin

process(Entrada_Uc, Entrada_rF1, Entrada_rF2)
begin
 case (Entrada_Uc) is 
			when "000001" => -- add
				dwr_aLu <= Entrada_rF1 + Entrada_rF2;
			when "000010" => -- sub
				dwr_aLu <= Entrada_rF1 - Entrada_rF2;
			when "000011" => --and
				dwr_aLu <= Entrada_rF1 and Entrada_rF2;
			when "000100" => --andn
				dwr_aLu <= Entrada_rF1 nand Entrada_rF2;
			when "000101" => -- or
				dwr_aLu <= Entrada_rF1 or Entrada_rF2;
			when "000110" => -- orn
				dwr_aLu <= Entrada_rF1 nor Entrada_rF2;
			when "000111" => -- xor
				dwr_aLu <= Entrada_rF1 xor Entrada_rF2;
			when "001000" => -- xorn
				dwr_aLu <= Entrada_rF1 xnor Entrada_rF2;
			when others => -- Cae el nop
				dwr_aLu <= (others=>'0');
		end case;
	end process; 


end Behavioral;

