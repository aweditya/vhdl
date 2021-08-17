library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

-- Entity to model a 4-Bit 4 x 1 Multiplexer
entity Mux4Bit4x1 is  
	-- A, B, C, D : 4-bit inputs
	-- sel : select lines
	port (A, B, C, D: in std_logic_vector(3 downto 0); 
			sel: in std_logic_vector(1 downto 0);
			Y: out std_logic_vector(3 downto 0));
end entity Mux4Bit4x1;

-- Structural Description of the 4-Bit 4 x 1 MUX
architecture Struct of Mux4Bit4x1 is
	component Mux4x1 is
		port (I4, I3, I2, I1, S2, S1: in std_logic; Y: out std_logic);
	end component Mux4x1;
	
begin
	-- Use one 4x1 MUX for each bit
	bit3: Mux4x1 
		port map(I4 => D(3), I3 => C(3), I2 => B(3), I1 => A(3), S2 => sel(1), S1 => sel(0), Y => Y(3));
		
	bit2: Mux4x1 
		port map(I4 => D(2), I3 => C(2), I2 => B(2), I1 => A(2), S2 => sel(1), S1 => sel(0), Y => Y(2));
		
	bit1: Mux4x1 
		port map(I4 => D(1), I3 => C(1), I2 => B(1), I1 => A(1), S2 => sel(1), S1 => sel(0), Y => Y(1));
		
	bit0: Mux4x1 
		port map(I4 => D(0), I3 => C(0), I2 => B(0), I1 => A(0), S2 => sel(1), S1 => sel(0), Y => Y(0));
end Struct;