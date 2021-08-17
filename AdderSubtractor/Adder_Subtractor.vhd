library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Adder_Subtractor is 
	port (A, B, Cin, M: in std_logic; S, Cout: out std_logic);
end entity Adder_Subtractor;

architecture Struct of Adder_Subtractor is
	signal U: std_logic;
	
	component FULL_ADDER is
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component FULL_ADDER;
	
begin
	-- Compute one's complement if necessary 
	x1: XOR_2 port map (A => M, B => B, Y => U);
	
	-- Add/Subtract
	fa: FULL_ADDER
			port map(A => A, B => U, Cin => Cin, S => S, Cout => Cout);
		
end Struct;