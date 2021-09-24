library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 2 to 4 Decoder
entity Decoder2to4 is 
	-- A1, A0 are address lines 
	-- E is the enable input
	port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
end Decoder2to4;

-- Structural Description of the 2 to 4 Decoder
architecture Struct of Decoder2to4 is
	signal A1bar, A0bar, Y_3, Y_2, Y_1, Y_0: std_logic;
begin 
	-- Get inverted values of A1, A0
	notA1: INVERTER 
		port map (A => A1, Y => A1bar);
		
	notA0: INVERTER 
		port map (A => A0, Y => A0bar);
		
	-- Select appropriate Y_i
	Y3and: AND_2
		port map (A => A1, B => A0, Y => Y_3);
		
	Y2and: AND_2
		port map (A => A1, B => A0bar, Y => Y_2);
		
	Y1and: AND_2
		port map (A => A1bar, B => A0, Y => Y_1);
		
	Y0and: AND_2
		port map (A => A1bar, B => A0bar, Y => Y_0);
		
	-- Pass output if E = 1
	Y_3and: AND_2
		port map (A => Y_3, B => E, Y => Y3);
		
	Y_2and: AND_2
		port map (A => Y_2, B => E, Y => Y2);
		
	Y_1and: AND_2
		port map (A => Y_1, B => E, Y => Y1);
		
	Y_0and: AND_2
		port map (A => Y_0, B => E, Y => Y0);
		
end Struct;