-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- UniversalShifter.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(0 to 11);
       	output_vector: out std_logic_vector(0 to 7));
end entity;

architecture DutWrap of DUT is
   component UniversalShifter is
		port (A: in std_logic_vector(0 to 7);
			L: in std_logic;
			B: in std_logic_vector(0 to 2);
			S: out std_logic_vector(0 to 7));
	end component UniversalShifter;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: UniversalShifter 
			port map (
					-- order of inputs
					-- L B2 B1 B0 A7 A6 A5 A4 A3 A2 A1 A0
					L => input_vector(0),
					B(2) => input_vector(1),
					B(1) => input_vector(2),
					B(0) => input_vector(3),
					A(7) => input_vector(4),
					A(6) => input_vector(5),
					A(5) => input_vector(6),
					A(4) => input_vector(7),
					A(3) => input_vector(8),
					A(2) => input_vector(9),
					A(1) => input_vector(10),
					A(0) => input_vector(11),
					
					-- order of outputs S7 S6 S5 S4 S3 S2 S1 S0
					S(7) => output_vector(0),
					S(6) => output_vector(1),
					S(5) => output_vector(2),
					S(4) => output_vector(3),
					S(3) => output_vector(4),
					S(2) => output_vector(5),
					S(1) => output_vector(6),
					S(0) => output_vector(7));

end DutWrap;

