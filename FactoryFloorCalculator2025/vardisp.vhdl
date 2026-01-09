------- Varerdura dos Displays -------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vardisp is

port (  	Clk : in std_logic; 
			mil, cent, dez, uni : in std_logic_vector(3 downto 0);
			an : out std_logic_vector(3 downto 0);
			seg : out std_logic_vector(0 to 6);
			Led0 : out std_logic 
    );
end vardisp;

architecture Behavioral of vardisp is
	
	component bcd7seg 
		port( 
			sw : in std_logic_vector(5 downto 0);
			an : out std_logic_vector(3 downto 0);
			seg : out std_logic_vector(0 to 6)
		);

	end component;
	
	component timer
		generic ( TC : natural);
		port (   Clk   : in STD_LOGIC;
					Led0  : out STD_LOGIC;
					sw0 : in std_logic;
					sw1 : in STD_LOGIC
		);
	end component; 
	
		signal disp	:	std_logic_vector( 1 downto 0);
		signal num	:	std_logic_vector( 3 downto 0);
		signal estouro, zera	: std_logic;
  
begin

process(Clk)
begin
  if (Clk'event and Clk = '1') then
    if (estouro = '1') then 
      disp <= disp + 1;
		zera <= '1';
	else
		zera <= '0';
    end if;
  end if;
end process;
	with disp select

	num	<= 	mil when "00", -- milhar 
					cent when "01",-- centena
					dez when "10", -- dezena
					uni when "11"; -- unidade
					
	u0 : bcd7seg port map ((disp&num),an,seg);
	u1 : timer generic map(100000) port map(Clk, estouro, '1', zera);
	u2 : timer generic map(100000000) port map(Clk, Led0, '1', zera);

end Behavioral;
