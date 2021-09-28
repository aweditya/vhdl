-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- Sequence Generator.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(2 downto 0));
end entity;

architecture DutWrap of DUT is
   component SequenceGeneratorStructural is
		port (reset, clock : in std_logic; Y : out std_logic_vector(2 downto 0));
	end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: SequenceGeneratorStructural
			port map (
					-- order of inputs: reset clock
					reset => input_vector(1),
					clock => input_vector(0),
					
					-- order of outputs Y2 Y1 Y0
					Y(2) => output_vector(2),
					Y(1) => output_vector(1),
					Y(0) => output_vector(0));
end DutWrap;

