----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:08 04/08/2018 
-- Design Name: 
-- Module Name:    Register_File - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_File is
    Port ( rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           reset : in  STD_LOGIC;
           crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : out  STD_LOGIC_VECTOR (31 downto 0);
           dwr : in  STD_LOGIC_VECTOR (31 downto 0);
           rd : in  STD_LOGIC_VECTOR (4 downto 0);
			  crd : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end Register_File;

architecture Behavioral of Register_File is

type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal reg : rom_type :=(  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"0000000a",
												  x"0000000b",
												  x"0000000c",
												  x"0000000d",
												  x"0000000e",
												  x"0000000f",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000",
												  x"00000000"
												  );

begin
process(rs1,rs2,reset, rd,dwr)
begin
	if(reset = '1')then
				crs1 <= (others=>'0');
				crs2 <= (others=>'0');
				crd <= (others=>'0');
			
				reg <= (others => x"00000000");
			else
				crs1 <= reg(conv_integer(rs1)); 
				crs2 <= reg(conv_integer(rs1)); 
				crd <= reg(conv_integer(rd));
				
			if(rd  /= "00000")then
					reg(conv_integer(rd)) <= dwr;
					
					
				end if;
			end if;
	
end process;

end Behavioral;

