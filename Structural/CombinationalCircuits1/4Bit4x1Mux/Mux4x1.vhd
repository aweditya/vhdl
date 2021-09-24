library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 4 x 1 Multiplexer
entity Mux4x1 is  
	-- I1, I2, I3, I4 : data lines 
	-- S1, S2 : select line
	port (I4, I3, I2, I1, S2, S1: in std_logic; Y: out std_logic);
end entity Mux4x1;

-- Structural Description of the 4 x 1 MUX
architecture Struct of Mux4x1 is
	signal Y1, Y2: std_logic;
	
	component Mux2x1 is
		port (I1, I0, S: in std_logic; Y: out std_logic);
	end component Mux2x1;
begin
	-- 3 2x1 MUX are required. 
	-- In layer 1, MUX 1 selects between I1, I2; MUX 2 selects between I3, I4 with S1 as select
	-- In layer 2, MUX selects from the o/p of layer 1 with S2 as select
	
	l1MUX1: Mux2x1 
		port map(I1 => I2, I0 => I1, S => S1, Y => Y1);
		
	l1MUX2: Mux2x1 
		port map(I1 => I4, I0 => I3, S => S1, Y => Y2);
		
	l2MUX: Mux2x1 
		port map(I1 => Y2, I0 => Y1, S => S2, Y => Y);
	
end Struct;