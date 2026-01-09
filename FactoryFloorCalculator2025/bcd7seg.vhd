library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bcd7seg is


port( sw : in std_logic_vector(5 downto 0);
		an : out std_logic_vector(3 downto 0);
		seg : out std_logic_vector(0 to 6)
);

end bcd7seg;


architecture Behavioral of bcd7seg is

begin
with sw(3 downto 0) select

seg	<= 	"0000001" when "0000", --0
				"1001111" when "0001", --1
				"0010010" when "0010", --2
				"0000110" when "0011", --3
				"1001100" when "0100", --4
				"0100100" when "0101", --5
				"0100000" when "0110", --6
				"0001111" when "0111", --7
				"0000000" when "1000", --8
				"0000100" when "1001", --9
				"0001000" when "1010", --A
				
				"1111111" when others;
				
with sw(5 downto 4) select

an		<= 	"0111" when "00", -- milhar 
				"1011" when "01",	-- centena
				"1101" when "10",
				"1110" when "11";

end Behavioral;

