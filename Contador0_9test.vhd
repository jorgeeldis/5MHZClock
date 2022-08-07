LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-----------------------ENTIDAD--------------------------
ENTITY Contador0_9_test IS
END Contador0_9_test;
-----------------------ARQUITECTURA--------------------------
ARCHITECTURE behavior OF Contador0_9_test IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT Contador0_9
PORT(
clk : IN std_logic;
enable : IN std_logic;
reset : IN std_logic;
thresh : OUT std_logic;
q : OUT std_logic_vector(3 downto 0)
);
END COMPONENT;
--Inputs
signal clk : std_logic := '0';
signal enable : std_logic := '1';
signal reset : std_logic := '0';
--Outputs
signal thresh : std_logic;
signal q : std_logic_vector(3 downto 0);
-- Clock period definitions
constant clk_period : time := 10 ns;
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: Contador0_9 PORT MAP (
clk => clk,
enable => enable,
reset => reset,
thresh => thresh,
q => q
);
-- Clock process definitions
clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;
END;