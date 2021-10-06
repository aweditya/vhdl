-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- Serial Comparator.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(1 downto 0));
end entity;

architecture DutWrap of DUT is
   component SerialComparator is
		port (reset : in std_logic; 
			A, B : in std_logic; 
			clock : in std_logic; 
			G, L : out std_logic);
	end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: SerialComparator
			port map (
					-- order of inputs: reset A B clock
					reset => input_vector(3),
					A => input_vector(2),
					B => input_vector(1),
					clock => input_vector(0),
					
					-- order of outputs: G L
					G => output_vector(1),
					L => output_vector(0));
end DutWrap;

