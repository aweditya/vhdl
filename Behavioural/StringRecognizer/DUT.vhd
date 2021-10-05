-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- String Recognizer.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component CovidRecognizer is
		port (input : in std_logic_vector(4 downto 0); reset, clock: in std_logic; output : out std_logic);
	end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: CovidRecognizer
			port map (
					-- order of inputs: 5 bit input reset clock
					input(4) => input_vector(6),
					input(3) => input_vector(5),
					input(2) => input_vector(4),
					input(1) => input_vector(3),
					input(0) => input_vector(2),
					reset => input_vector(1),
					clock => input_vector(0),
					
					-- order of outputs: output
					output => output_vector(0));
end DutWrap;

