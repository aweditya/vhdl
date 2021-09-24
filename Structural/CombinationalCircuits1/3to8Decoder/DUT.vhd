-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- 2x1 MUX.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component Decoder3to8 is
     port (A2, A1, A0, E: in std_logic; 
			Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Decoder3to8 
			port map (
					-- order of inputs A2 A1 A0 E
					A2 => input_vector(3),
					A1 => input_vector(2),
					A0 => input_vector(1),
					E  => input_vector(0),
					
					-- order of outputs Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0
					Y7 => output_vector(7),
					Y6 => output_vector(6),
					Y5 => output_vector(5),
					Y4 => output_vector(4),
					Y3 => output_vector(3),
					Y2 => output_vector(2),
					Y1 => output_vector(1),
					Y0 => output_vector(0));
end DutWrap;

