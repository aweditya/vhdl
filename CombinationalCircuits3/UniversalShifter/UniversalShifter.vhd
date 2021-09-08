library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model the universal shifter
entity UniversalShifter is
	port (A: in std_logic_vector(0 to 7);
			L: in std_logic;
			B: in std_logic_vector(0 to 2);
			S: out std_logic_vector(0 to 7));
end entity UniversalShifter;

-- Structural description of the universal shifter
architecture Struct of UniversalShifter is
	signal T0, T1, T2, T3: std_logic_vector(0 to 7);
	
	component BitReverser is 
		port (A: in std_logic_vector(0 to 7); 
				L: in std_logic;
				Y: out std_logic_vector(0 to 7));
	end component BitReverser;
	
	component RightShifter4Bit is 
		port (A: in std_logic_vector(0 to 7); 
				b: in std_logic;
				Y: out std_logic_vector(0 to 7));
	end component RightShifter4Bit;
	
	component RightShifter2Bit is 
		port (A: in std_logic_vector(0 to 7); 
				b: in std_logic;
				Y: out std_logic_vector(0 to 7));
	end component RightShifter2Bit;
	
	component RightShifter1Bit is 
		port (A: in std_logic_vector(0 to 7); 
				b: in std_logic;
				Y: out std_logic_vector(0 to 7));
	end component RightShifter1Bit;
begin 
	-- Conditionally reverse bits depending on
	-- left shift (L = 1) or right shift (L = 0)
	-- In the next stages, this influences whether
	-- the input is right/left shifted
	init_rev: BitReverser
		port map(A => A, L => L, Y => T0);
		
	-- Conditionally right shift by 4 bits
	-- Shift if b2 = 1, else don't 
	shift4: RightShifter4Bit
		port map(A => T0, b => B(2), Y => T1);
	
	-- Conditionally right shift by 2 bits
	-- Shift if b1 = 1, else don't 
	shift2: RightShifter2Bit
		port map(A => T1, b => B(1), Y => T2);
	
	-- Conditionally right shift by 1 bits
	-- Shift if b0 = 1, else don't 
	shift1: RightShifter1Bit
		port map(A => T2, b => B(0), Y => T3);
	
	-- Conditionally reverse bits to recover
	final_rev: BitReverser
		port map(A => T3, L => L, Y => S);
end Struct;