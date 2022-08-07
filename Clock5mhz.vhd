library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--------------------ENTIDAD-------------------------
entity Reloj50_5 is
Port ( clk50,reset : in STD_LOGIC;
lock,clk5 : out STD_LOGIC);
end Reloj50_5;
--------------------ARQUITECTURA-------------------------
architecture arch of Reloj50_5 is
--reloj
component RelojB
port
(-- Clock in ports
CLK_IN1 : in std_logic;
-- Clock out ports
CLK_OUT1 : out std_logic;
-- Status and control signals
RESET : in std_logic;
LOCKED : out std_logic
);
end component;
begin
---copia de reloj
RelojA :RelojB
port map
(-- Clock in ports
CLK_IN1 => clk50,
-- Clock out ports
CLK_OUT1 => clk5,
-- Status and control signals
RESET => reset,
LOCKED => lock);
end arc