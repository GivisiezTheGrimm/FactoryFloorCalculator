------- Calculadora -------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity calc is

port (  	Clk : in std_logic; 
			sw : in std_logic_vector(7 downto 0);
			btn : in std_logic_vector(4 downto 0);
			an : out std_logic_vector(3 downto 0);
			seg : out std_logic_vector(0 to 6);
			Led0 : out std_logic			
    );
end calc;

architecture Behavioral of calc is
	component numdisp
		port (Clk : in std_logic; 
				num : in natural range 0 to 9999;
				an : out std_logic_vector(3 downto 0);
				seg : out std_logic_vector(0 to 6);
				Led0 : out std_logic 
		);
	end component;

		signal sw1, A, B, X, C, D, E : natural range 0 to 9999;
		
begin
sw1 	<= 	to_integer(unsigned(sw));
A 		<= 	to_integer(unsigned(sw(6 downto 0)))
					when (sw(7) = '0') else A;
B 		<= 	to_integer(unsigned(sw(6 downto 0))) 
					when (sw(7) = '1') else B;
C		<=  	(A-B) when (A >= B) else (B - A);
D		<= 	A when (sw(7) = '0') else B;
E 		<=		B when (sw(7) = '0') else A;

with btn select
	X <= 	A+B 		when "00001",
			C 			when "00010",
			A*B 		when "00100",
			A/B 		when "01000",
			E 			when "10000",
			A rem B 	when "00011",
			B/A		when "01001",
			D 	 		when others;
		
u0: numdisp port map (Clk, X, an, seg, Led0);
end Behavioral;
