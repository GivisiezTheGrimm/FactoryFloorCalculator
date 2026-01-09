------ Timer ------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity timer is
generic ( TC : natural);
port (   
    Clk   : in STD_LOGIC;
    Led0  : out STD_LOGIC;
    sw0 : in std_logic;
	 sw1 : in STD_LOGIC
    );
end timer;

architecture Behavioral of timer is

  signal COUNT : natural := 0;
  
begin

process(Clk, sw1)
begin
  if (sw1='1') then
    COUNT <=  0;
	 Led0 <= '0';

  elsif (Clk'event and Clk = '1') then
    if (sw0='1') then 
      COUNT <= COUNT+1;
		if (COUNT >= TC) then
			Led0 <= '1';
		end if;
    end if;
  end if;
end process;

end Behavioral;
