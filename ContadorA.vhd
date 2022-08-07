--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:12:08 06/15/2022
-- Design Name:   
-- Module Name:   C:/MyStuff/College/Universidad Tecnologica de Panama/Year IV/Microprocesadores/Laboratorios/Clock5MHZ/ContadorA.vhd
-- Project Name:  Clock5MHZ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador0_9
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ContadorA IS
END ContadorA;
 
ARCHITECTURE behavior OF ContadorA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador0_9
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         reset : IN  std_logic;
         thresh : OUT  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
