library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------------------ENTIDAD---------------------
entity ciruito is
Port ( A: IN std_logic_vector(7 downto 0);
B: IN std_logic_vector(7 downto 0);
LPA: IN std_logic;
CLK: IN std_logic;
SEL: IN std_logic;
F: OUT std_logic_vector(7 downto 0));
end circuito;
----------------------ARQUITECTURA---------------------
architecture Behavioral of circuito is
Signal mux_out: std_logic_vector(7 downto 0);
Begin
		Process(A, B, LPA, CLK, SEL, mux_out)
				begin
						if(SEL = '0') then
								mux_out <= B;
						else
								mux_out <= A;
						end if;
						
						if(LDA = '1') then
								if(clk 'event and CLK = '1') then
									F <= mux_out;
								end if;
								
						else F <= "00000000";
						end if;
		end Process;
end Behavioral;