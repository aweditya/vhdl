library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a Full Adder constructed using 3 to 8 Decoders
entity FullAdder is 
	-- A, B are the 1-bit numbers to add
	-- Cin is the input carry
	port (A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity FullAdder;

-- Structural Description of the Full Adder
architecture Struct of FullAdder is
	signal t0, t1, t2, t3, t4, t5, t6, t7: std_logic;
	signal t1ORt2, t4ORt7, t3ORt5, t6ORt7: std_logic;
	
	component Decoder3to8 is
		port (A2, A1, A0, E: in std_logic; 
			Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
	end component Decoder3to8;
begin
	-- The o/p of the decoder is an indicator function
	-- Depending on the i/p for which S = 1, C = 1,
	-- we OR those lines of the decoder
	
	decoder: Decoder3to8
		port map (A2 => Cin, 
						A1 => B, 
						A0 => A, 
						E => '1',  
						Y7 => t7, 
						Y6 => t6, 
						Y5 => t5, 
						Y4 => t4, 
						Y3 => t3, 
						Y2 => t2, 
						Y1 => t1, 
						Y0 => t0);
						
	-- Route selected o/p of decoder
	-- Compute SUM
	t1t2: OR_2
		port map (A => t1, B => t2, Y => t1ORt2);
		
	t4t7: OR_2
		port map (A => t4, B => t7, Y => t4ORt7);

	sum: OR_2
		port map (A => t1ORt2, B => t4ORt7, Y => S);
		
	-- Compute CARRY
	t3t5: OR_2
		port map (A => t3, B => t5, Y => t3ORt5);
		
	t6t7: OR_2
		port map (A => t6, B => t7, Y => t6ORt7);

	carry: OR_2
		port map (A => t3ORt5, B => t6ORt7, Y => Cout);
	
end Struct;