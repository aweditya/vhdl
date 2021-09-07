library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a Multiplier circuit with one 4-bit input and one 3-bit input
entity Multiplier4x3 is 
	port (A3, A2, A1, A0: in std_logic; B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
end entity Multiplier4x3;

-- Structural Description of the Multiplier
architecture Struct of Multiplier4x3 is
	signal a1b0, a0b1: std_logic;
	signal a2b0, a1b1, a0b2: std_logic;
	signal a3b0, a2b1, a1b2: std_logic;
	signal a3b1, a2b2: std_logic;
	signal a3b2: std_logic;
	
	signal a1b0carrya0b1: std_logic;
	signal a2b0suma1b1, a2b0carrya1b1: std_logic;
	signal a3b0suma2b1, a3b0carrya2b1: std_logic;
	signal a3b1sum, a3b1carry: std_logic;
	
	signal a0b2carry, a1b2carry, a2b2carry: std_logic;
	
	component FULL_ADDER is 
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component FULL_ADDER;
begin
	-- Compute all partial products
	a0ANDb0: AND_2
		port map(A => A0, B => B0, Y => M0);
	
	a1ANDb0: AND_2
		port map(A => A1, B => B0, Y => a1b0);
		
	a0ANDb1: AND_2
		port map(A => A0, B => B1, Y => a0b1);
		
	a2ANDb0: AND_2
		port map(A => A2, B => B0, Y => a2b0);
		
	a1ANDb1: AND_2
		port map(A => A1, B => B1, Y => a1b1);
	
	a0ANDb2: AND_2
		port map(A => A0, B => B2, Y => a0b2);
		
	a3ANDb0: AND_2
		port map(A => A3, B => B0, Y => a3b0);

	a2ANDb1: AND_2
		port map(A => A2, B => B1, Y => a2b1);
		
	a1ANDb2: AND_2
		port map(A => A1, B => B2, Y => a1b2);
	
	a3ANDb1: AND_2
		port map(A => A3, B => B1, Y => a3b1);
	
	a2ANDb2: AND_2
		port map(A => A2, B => B2, Y => a2b2);
		
	a3ANDb2: AND_2
		port map(A => A3, B => B2, Y => a3b2);

	-- (A3B0 A2B0 A1B0) + (A3B1 A2B1 A1B1 A0B1)
	a1b0PLUSa0b1: HALF_ADDER
		port map(A => a1b0, B => a0b1, S => M1, C => a1b0carrya0b1);
		
	a2b0PLUSa1b1: FULL_ADDER
		port map(A => a2b0, B => a1b1, Cin => a1b0carrya0b1, S => a2b0suma1b1, Cout => a2b0carrya1b1);
		
	a3b0PLUSa2b1: FULL_ADDER
		port map(A => a3b0, B => a2b1, Cin => a2b0carrya1b1, S => a3b0suma2b1, Cout => a3b0carrya2b1);
		
	PLUSa3b1: HALF_ADDER
		port map(A => a3b1, B => a3b0carrya2b1, S => a3b1sum, C => a3b1carry);
		
	-- Compute final output
	PLUSa0b2: HALF_ADDER
		port map(A => a2b0suma1b1, B => a0b2, S => M2, C => a0b2carry);
		
	PLUSa1b2: FULL_ADDER
		port map(A => a3b0suma2b1, B => a1b2, Cin => a0b2carry, S => M3, Cout => a1b2carry);
		
	PLUSa2b2: FULL_ADDER
		port map(A => a3b1sum, B => a2b2, Cin => a1b2carry, S => M4, Cout => a2b2carry);
		
	PLUSa3b2: FULL_ADDER
		port map(A => a3b1carry, B => a3b2, Cin => a2b2carry, S => M5, Cout => M6);
	
end Struct;