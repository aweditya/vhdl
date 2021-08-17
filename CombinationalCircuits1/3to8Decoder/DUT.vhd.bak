-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- 2x1 MUX.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder2to4 is
     port (A1, A0, E: in std_logic; Y3, Y2, Y1, Y0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Decoder2to4 
			port map (
					-- order of inputs In1 In0 S
					A1 => input_vector(2),
					A0 => input_vector(1),
					E  => input_vector(0),
					
					-- order of outputs Y
					Y3 => output_vector(3),
					Y2 => output_vector(2),
					Y1 => output_vector(1),
					Y0 => output_vector(0));
end DutWrap;

