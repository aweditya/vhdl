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
	signal X3_nand_X2, X3_nand_X2_xor_X1, not_X0: std_logic;
begin
	-- Compute X3 NAND X2
	o1 : NAND_2 port map(A => X3, B => X2, Y => X3_nand_X2);
	
	-- Compute (X3 NAND X2) XOR X1
	o2 : XOR_2 port map(A => X3_nand_X2, B => X1, Y => X3_nand_X2_xor_X1);

	-- Invert X0
	o3 : INVERTER port map(A => X0, Y => not_X0);
	
	-- Compute the final answer
	o4 : AND_2 port map(A => X3_nand_X2_xor_X1, B => not_X0, Y => Y);
end Struct;