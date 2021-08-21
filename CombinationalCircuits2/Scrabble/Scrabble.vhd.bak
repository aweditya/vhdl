library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model the Vowel Detector
-- Instead of 26 alphabets, we will only check for 16
entity VowelDetector is 
	-- X3, X2, X1, X0 are the inputs for representing the alphabets in binary
	-- Y is the output. Y = 1 for an vowel and Y = 0 otherwise
	port (X3, X2, X1, X0: in std_logic; Y: out std_logic);
end entity VowelDetector;

-- Structural Description of the Vowel Detector
architecture Struct of VowelDetector is
	signal X2_and_X3, X1_xor_X2_and_X3: std_logic;
begin
	-- Compute X2 AND X3
	o1 : AND_2 port map(A => X2, B => X3, Y => X2_and_X3);
	
	-- Compute X1 XOR (X2 AND X3)
	o2 : XOR_2 port map(A => X1, B => X2_and_X3, Y => X1_xor_X2_and_X3);
	
	-- Compute the final answer
	o4 : NOR_2 port map(A => X0, B => X1_xor_X2_and_X3, Y => Y);
end Struct;