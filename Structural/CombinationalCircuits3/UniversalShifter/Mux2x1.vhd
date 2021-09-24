library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 2 x 1 Multiplexer
entity Mux2x1 is  
	-- IO, I1 : data lines 
	-- S : select line
	port (I1, I0, S: in std_logic; Y: out std_logic);
end entity Mux2x1;

-- Structural Description of the 2 x 1 MUX
architecture Struct of Mux2x1 is
	signal tI0, tI1, notS: std_logic;
begin
	-- Invert S for I0 line
	invert : INVERTER port map(A => S, Y => notS);
	
	-- Select appropriate line using AND gates
	a1 : AND_2 port map(A => I0, B => notS, Y => tI0);
	a2 : AND_2 port map(A => I1, B => S, Y => tI1);

	-- Copy I0 or I1 to o/p of MUX
	o1: OR_2 port map(A => tI0, B => tI1, Y => Y);
end Struct;