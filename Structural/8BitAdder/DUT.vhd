-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- 8-bit Adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(0 to 15);
       	output_vector: out std_logic_vector(0 to 8));
end entity;

architecture DutWrap of DUT is
   component Adder8Bit is
     port (A, B: in std_logic_vector(0 to 7); Cout: out std_logic; S: out std_logic_vector(0 to 7));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Adder8Bit 
			port map (
					-- order of inputs A B
					A(7) => input_vector(0),
					A(6) => input_vector(1),
					A(5) => input_vector(2),
					A(4) => input_vector(3),
					A(3) => input_vector(4),
					A(2) => input_vector(5),
					A(1) => input_vector(6),
					A(0) => input_vector(7),
					B(7) => input_vector(8),
					B(6) => input_vector(9),
					B(5) => input_vector(10),
					B(4) => input_vector(11),
					B(3) => input_vector(12),
					B(2) => input_vector(13),
					B(1) => input_vector(14),
					B(0) => input_vector(15),
					
					-- order of outputs S Cout
					Cout => output_vector(0),
					S(0) => output_vector(8),
					S(1) => output_vector(7),
					S(2) => output_vector(6),
					S(3) => output_vector(5),
					S(4) => output_vector(4),
					S(5) => output_vector(3),
					S(6) => output_vector(2),
					S(7) => output_vector(1));

end DutWrap;

