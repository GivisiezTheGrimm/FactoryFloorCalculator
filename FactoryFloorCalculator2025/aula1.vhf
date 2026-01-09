--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : aula1.vhf
-- /___/   /\     Timestamp : 09/11/2025 09:28:00
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl aula1.vhf -w D:/FactoryFloorCalculator2025/aula1.sch
--Design Name: aula1
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB4CE_HXILINX_aula1 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_aula1 is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_aula1;

architecture Behavioral of CB4CE_HXILINX_aula1 is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL AND12_HXILINX_aula1 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND12_HXILINX_aula1 is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic;
    I7  : in std_logic;
    I8  : in std_logic;
    I9  : in std_logic;
    I10  : in std_logic;
    I11  : in std_logic
  );
end AND12_HXILINX_aula1;

architecture AND12_HXILINX_aula1_V of AND12_HXILINX_aula1 is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5 and I6 and I7 and I8 and I9 and I10 and I11;
end AND12_HXILINX_aula1_V;
----- CELL CB16CE_HXILINX_aula1 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB16CE_HXILINX_aula1 is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB16CE_HXILINX_aula1;

architecture Behavioral of CB16CE_HXILINX_aula1 is

  signal COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(15 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;

----- CELL CB8CE_HXILINX_aula1 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB8CE_HXILINX_aula1 is
port (
    CEO : out STD_LOGIC;
    Q   : out STD_LOGIC_VECTOR(7 downto 0);
    TC  : out STD_LOGIC;
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC
    );
end CB8CE_HXILINX_aula1;

architecture Behavioral of CB8CE_HXILINX_aula1 is

  signal COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(7 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC  <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';
Q   <= COUNT;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity aula1 is
   port ( clk  : in    std_logic; 
          sw1  : in    std_logic; 
          sw2  : in    std_logic; 
          Led  : out   std_logic_vector (7 downto 4); 
          Led0 : out   std_logic; 
          Led2 : out   std_logic);
end aula1;

architecture BEHAVIORAL of aula1 is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_2     : std_logic;
   signal XLXN_3     : std_logic;
   signal XLXN_36    : std_logic;
   signal XLXN_37    : std_logic;
   signal XLXN_43    : std_logic_vector (7 downto 0);
   signal XLXN_44    : std_logic_vector (15 downto 0);
   signal XLXN_64    : std_logic;
   signal Led0_DUMMY : std_logic;
   signal Led_DUMMY  : std_logic_vector (7 downto 4);
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component CB4CE_HXILINX_aula1
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component CB16CE_HXILINX_aula1
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component CB8CE_HXILINX_aula1
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component AND12_HXILINX_aula1
      port ( I0  : in    std_logic; 
             I1  : in    std_logic; 
             I10 : in    std_logic; 
             I11 : in    std_logic; 
             I2  : in    std_logic; 
             I3  : in    std_logic; 
             I4  : in    std_logic; 
             I5  : in    std_logic; 
             I6  : in    std_logic; 
             I7  : in    std_logic; 
             I8  : in    std_logic; 
             I9  : in    std_logic; 
             O   : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_2";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_0";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_1";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_3";
begin
   Led(7 downto 4) <= Led_DUMMY(7 downto 4);
   Led0 <= Led0_DUMMY;
   XLXI_1 : AND2
      port map (I0=>sw2,
                I1=>sw1,
                O=>XLXN_2);
   
   XLXI_3 : INV
      port map (I=>sw2,
                O=>XLXN_3);
   
   XLXI_4 : XNOR2
      port map (I0=>XLXN_3,
                I1=>XLXN_2,
                O=>Led2);
   
   XLXI_5 : CB4CE_HXILINX_aula1
      port map (C=>clk,
                CE=>XLXN_37,
                CLR=>sw1,
                CEO=>open,
                Q0=>Led_DUMMY(4),
                Q1=>Led_DUMMY(5),
                Q2=>Led_DUMMY(6),
                Q3=>Led_DUMMY(7),
                TC=>open);
   
   XLXI_7 : CB16CE_HXILINX_aula1
      port map (C=>clk,
                CE=>Led0_DUMMY,
                CLR=>sw1,
                CEO=>XLXN_36,
                Q(15 downto 0)=>XLXN_44(15 downto 0),
                TC=>open);
   
   XLXI_8 : CB8CE_HXILINX_aula1
      port map (C=>clk,
                CE=>XLXN_36,
                CLR=>sw1,
                CEO=>XLXN_37,
                Q(7 downto 0)=>XLXN_43(7 downto 0),
                TC=>open);
   
   XLXI_9 : AND12_HXILINX_aula1
      port map (I0=>Led_DUMMY(6),
                I1=>Led_DUMMY(4),
                I2=>XLXN_43(7),
                I3=>XLXN_43(6),
                I4=>XLXN_43(5),
                I5=>XLXN_43(4),
                I6=>XLXN_43(2),
                I7=>XLXN_43(0),
                I8=>XLXN_44(15),
                I9=>XLXN_44(14),
                I10=>XLXN_44(13),
                I11=>XLXN_44(8),
                O=>XLXN_64);
   
   XLXI_11 : INV
      port map (I=>XLXN_64,
                O=>Led0_DUMMY);
   
end BEHAVIORAL;


