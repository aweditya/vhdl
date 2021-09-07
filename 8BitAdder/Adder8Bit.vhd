library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Adder8Bit is
	port (A, B: in std_logic_vector(0 to 7); Cout: out std_logic; S: out std_logic_vector(0 to 7));
end entity Adder8bit;

architecture Struct of Adder8Bit is
	signal tC: std_logic_vector(0 to 6);

	component FULL_ADDER is 
		port (A, B, Cin: in std_logic; S, Cout: out std_logic);
	end component FULL_ADDER;
	
begin 
	-- Start with LSB and work your way up towards the MSB
	lsb: Half_Adder
       port map (A => A(0), B => B(0), S => S(0), C => tC(0));
		 
	fa1: FULL_ADDER
		port map (A => A(1), B => B(1), Cin => tC(0), S => S(1), Cout => tC(1));
		
	fa2: FULL_ADDER
		port map (A => A(2), B => B(2), Cin => tC(1), S => S(2), Cout => tC(2));
	
	fa3: FULL_ADDER
		port map (A => A(3), B => B(3), Cin => tC(2), S => S(3), Cout => tC(3));
	
	fa4: FULL_ADDER
		port map (A => A(4), B => B(4), Cin => tC(3), S => S(4), Cout => tC(4));
	
	fa5: FULL_ADDER
		port map (A => A(5), B => B(5), Cin => tC(4), S => S(5), Cout => tC(5));
	
	fa6: FULL_ADDER
		port map (A => A(6), B => B(6), Cin => tC(5), S => S(6), Cout => tC(6));
		
	fa7: FULL_ADDER
		port map (A => A(7), B => B(7), Cin => tC(6), S => S(7), Cout => Cout);
	
end Struct;