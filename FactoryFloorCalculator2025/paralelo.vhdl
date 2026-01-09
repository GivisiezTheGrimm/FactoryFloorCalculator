------- Varerdura dos Displays -------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity paralelo is

port (  	Clk : in std_logic; 
			sw : in std_logic;
			led : out std_logic_vector (7 downto 0)
    );
end paralelo;

architecture Behavioral of paralelo is
	
	component timer
		generic ( TC : natural);
		port (   Clk   : in STD_LOGIC;
					Led0  : out STD_LOGIC;
					sw0 : in std_logic;
					sw1 : in STD_LOGIC
		);
	end component; 
	
  
begin
repetir:

for I in 0 to 7 generate
	u1 : timer generic map((I+1)*100000000) port map(Clk, led(I), '1', sw);
end generate;

end Behavioral;
