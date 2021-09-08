library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a bit reverser
entity BitReverser is 
	port (A: in std_logic_vector(0 to 7); 
				L: in std_logic;
				Y: out std_logic_vector(0 to 7));
end entity BitReverser;

-- Structural description of the bit reverser
architecture Struct of BitReverser is
	component Mux2x1 is 
		port (I1, I0, S: in std_logic; Y: out std_logic);
	end component Mux2x1;
begin
	reverse_bit : for i in 0 to 7 generate
		reverse: Mux2x1 
			port map(I1 => A(7 - i), I0 => A(i), S => L, Y => Y(i));
	end generate ; 
end Struct;