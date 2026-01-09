------- Varerdura dos Displays -------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity numdisp is

port (  	Clk : in std_logic; 
			num : in natural range 0 to 9999;			
			an : out std_logic_vector(3 downto 0);
			seg : out std_logic_vector(0 to 6);
			Led0 : out std_logic
			
			
    );
end numdisp;

architecture Behavioral of numdisp is
	component vardisp
		port (Clk : in std_logic; 
				mil, cent, dez, uni : in std_logic_vector(3 downto 0);
				an : out std_logic_vector(3 downto 0);
				seg : out std_logic_vector(0 to 6);
				Led0 : out std_logic 
		);
	end component;
	
	signal mil, cent, dez, uni : std_logic_vector(3 downto 0);
	signal mil1, cent1, dez1, uni1 : natural range 0 to 9999;
	
begin

mil1 	<=  num/1000; 
cent1 <= (num rem 1000)/100; 
dez1 	<= ((num rem 1000) rem 100)/10;
uni1 	<= (( num rem 1000) rem 100) rem 10;
mil	<= std_logic_vector(to_unsigned(mil1, 4));
cent	<= std_logic_vector(to_unsigned(cent1, 4));
dez	<= std_logic_vector(to_unsigned(dez1, 4));
uni	<= std_logic_vector(to_unsigned(uni1, 4));

u0: vardisp port map (Clk, mil, cent, dez, uni, an, seg, Led0);
end Behavioral;
