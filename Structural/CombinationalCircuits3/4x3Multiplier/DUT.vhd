-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(0 to 6);
       	output_vector: out std_logic_vector(0 to 6));
end entity;

architecture DutWrap of DUT is
   component Multiplier4x3 is
		port (A3, A2, A1, A0: in std_logic; B2, B1, B0: in std_logic; M6, M5, M4, M3, M2, M1, M0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Multiplier4x3 
			port map (
					-- order of inputs A3 A2 A1 A0 B2 B1 B0
					A3 => input_vector(0),
					A2 => input_vector(1),
					A1 => input_vector(2),
					A0 => input_vector(3),
					B2 => input_vector(4),
					B1 => input_vector(5),
					B0 => input_vector(6),
					
					-- order of outputs M6 M5 M4 M3 M2 M1 M0
					M6 => output_vector(0),
					M5 => output_vector(1),
					M4 => output_vector(2),
					M3 => output_vector(3),
					M2 => output_vector(4),
					M1 => output_vector(5),
					M0 => output_vector(6));

end DutWrap;

