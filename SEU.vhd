----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:41 04/16/2018 
-- Design Name: 
-- Module Name:    SEU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SEU is
    Port ( Entrada_Seu : in  STD_LOGIC_VECTOR (12 downto 0);
           Salida_Mux : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture Behavioral of SEU is

begin
process(Entrada_Seu)
begin

if(Entrada_Seu(12) = '1')then--Verifica si es numero ingresado es negativo
	Salida_Mux(12 downto 0) <= Entrada_Seu;
	Salida_Mux(31 downto 13) <= (others=>'1');--Complementa el numero con unos por ser negativo

else
	Salida_Mux(12 downto 0) <= Entrada_Seu;
	Salida_Mux(31 downto 13) <= (others=>'0');--Complementa el numero con ceros por no ser numero negativo

end if;

end process; 

end Behavioral;

