library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 1-bit right shifter
entity RightShifter1Bit is 
	port (A: in std_logic_vector(0 to 7); 
				b: in std_logic;
				Y: out std_logic_vector(0 to 7));
end entity RightShifter1Bit;

-- Structural description of the 1-bit right shifter
architecture Struct of RightShifter1Bit is
	component Mux2x1 is 
		port (I1, I0, S: in std_logic; Y: out std_logic);
	end component Mux2x1;
begin
	n1_bit : for i in 0 to 7 generate
	
		lsb: if i < 7 generate
			b0: Mux2x1 
				port map(I1 => A(i+1), I0 => A(i), S => b, Y => Y(i));
		end generate lsb;
	
		msb: if i > 6 generate
			b0: Mux2x1 
				port map(I1 => '0', I0 => A(i), S => b, Y => Y(i));
		end generate msb;
		
	end generate ; 
end Struct;