library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 3 to 8 Decoder
entity Decoder3to8 is 
	-- A2, A1, A0 are address lines 
	-- E is the enable input
	port (A2, A1, A0, E: in std_logic; 
			Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
end Decoder3to8;

-- Structural Description of the 3 to 8 Decoder
architecture Struct of Decoder3to8 is
	signal A2bar, A2andE, A2barAndE: std_logic;
	
	component Decoder2to4 is 
		port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
	end component Decoder2to4;
begin 
	-- The architecture consists of two 2 to 4 Decoders
	-- The enable inputs of the decoders are controlled by A2
	-- A2 determines which decoder to use
	
	-- Get inverted value of A2
	-- If A2 = 0, we choose between I3, I2, I1, I0
	-- If A2 = 1, we choose between I4, I5, I6, I7
	notA2: INVERTER 
		port map (A => A2, Y => A2bar);
		
	-- Modify enable of lower decoder depending on A2 and E
	selectIotoI3: AND_2
		port map (A => A2bar, B => E, Y => A2barAndE);
		
	-- Modify enable of upper decoder depending on A2 and E	
	selectI4toI7: AND_2
		port map (A => A2, B => E, Y => A2andE);
		
	I0toI3: Decoder2to4 
		port map (A1 => A1, A0 => A0, E => A2barAndE, 
					Y3 => Y3, Y2 => Y2, Y1 => Y1, Y0 => Y0);
		
	I4toI7: Decoder2to4 
		port map (A1 => A1, A0 => A0, E => A2AndE, 
					Y3 => Y7, Y2 => Y6, Y1 => Y5, Y0 => Y4);
end Struct;