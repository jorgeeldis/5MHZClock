LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Reloj50_5_test IS
END Reloj50_5_test;
ARCHITECTURE behavior OF Reloj50_5_test IS
COMPONENT Reloj50_5
PORT(
clk50 : IN std_logic;
reset : IN std_logic;
lock : OUT std_logic;
clk5 : OUT std_logic
);
END COMPONENT;
signal clk50 : std_logic := '0';
signal reset : std_logic := '0';
signal lock : std_logic;
signal clk5 : std_logic;
constant clk50_period : time := 20 ns;
BEGIN
uut: Reloj50_5 PORT MAP (
clk50 => clk50,
reset => reset,
lock => lock,
clk5 => clk5
);
clk500_process :process
begin
clk50 <= '0';
wait for clk50_period/2;
clk50 <= '1';
wait for clk50_period/2;
end process;
END;