library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 2-bit right shifter
entity RightShifter2Bit is 
	port (A: in std_logic_vector(0 to 7); 
				b: in std_logic;
				Y: out std_logic_vector(0 to 7));
end entity RightShifter2Bit;

-- Structural description of the 2-bit right shifter
architecture Struct of RightShifter2Bit is
	component Mux2x1 is 
		port (I1, I0, S: in std_logic; Y: out std_logic);
	end component Mux2x1;
begin
	n2_bit : for i in 0 to 7 generate
	
		lsb: if i < 6 generate
			b2: Mux2x1 
				port map(I1 => A(i+2), I0 => A(i), S => b, Y => Y(i));
		end generate lsb;
	
		msb: if i > 5 generate
			b2: Mux2x1 
				port map(I1 => '0', I0 => A(i), S => b, Y => Y(i));
		end generate msb;
		
	end generate ; 
end Struct;