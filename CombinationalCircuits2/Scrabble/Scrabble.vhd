library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model the Scrabble game
-- Instead of 26 alphabets, we will only check for 16
entity Scrabble is 
	-- X3, X2, X1, X0 are the inputs for representing the alphabets in binary
	-- Y is the output 
	-- 	Y = 1 if the alphabet has a value of 3 (B, C, N, O)
	-- 	Y = 0 otherwise 
	port (X3, X2, X1, X0: in std_logic; Y: out std_logic);
end entity Scrabble;

-- Structural Description of Scrabble
architecture Struct of Scrabble is
	signal X3_xnor_X2, X1_xor_X0: std_logic;
begin
	-- Compute X3 XNOR X2
	o1 : XNOR_2 port map(A => X3, B => X2, Y => X3_xnor_X2);
	
	-- Compute X1 XOR X0
	o2 : XOR_2 port map(A => X1, B => X0, Y => X1_xor_X0);
	
	-- Compute the final answer
	o3 : AND_2 port map(A => X3_xnor_X2, B => X1_xor_X0, Y => Y);
end Struct;