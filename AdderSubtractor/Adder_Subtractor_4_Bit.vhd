library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity Adder_Subtractor_4_Bit is
	port (A: in std_logic_vector(0 to 3);
				B: in std_logic_vector(0 to 3);
				M: in std_logic;
				S: out std_logic_vector(0 to 3);
				Cout: out std_logic);
end entity Adder_Subtractor_4_Bit;

architecture Struct of Adder_Subtractor_4_Bit is
	signal tC1, tC2, tC3: std_logic;
	
	component ADDER_SUBTRACTOR is
		port (A, B, Cin, M: in std_logic; S, Cout: out std_logic);
	end component ADDER_SUBTRACTOR;

begin
	bit0: ADDER_SUBTRACTOR 
			port map (A => A(0), B => B(0), Cin => M, M => M, S => S(0), Cout => tC1);
			
	bit1: ADDER_SUBTRACTOR 
			port map (A => A(1), B => B(1), Cin => tC1, M => M, S => S(1), Cout => tC2);
			
	bit2: ADDER_SUBTRACTOR 
			port map (A => A(2), B => B(2), Cin => tC2, M => M, S => S(2), Cout => tC3);
			
	bit3: ADDER_SUBTRACTOR 
			port map (A => A(3), B => B(3), Cin => tC3, M => M, S => S(3), Cout => Cout);
			
end Struct;