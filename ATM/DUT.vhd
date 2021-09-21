-- A DUT entity is used to wrap your design.
-- This example shows how you can do this for the
-- Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component atm is
     port (amount: in std_logic_vector(7 downto 0);
			priority: out std_logic_vector(1 downto 0);
			abc: out std_logic_vector(8 downto 0));
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: atm 
			port map (
					-- order of inputs bit7 bit6 bit5 bit4 bit3 bit2 bit1 bit0
					amount(7) => input_vector(7),
					amount(6) => input_vector(6),
					amount(5) => input_vector(5),
					amount(4) => input_vector(4),
					amount(3) => input_vector(3),
					amount(2) => input_vector(2),
					amount(1) => input_vector(1),
					amount(0) => input_vector(0),
					
					
					-- order of outputs abc priority
					priority(1) => output_vector(10),
					priority(0) => output_vector(9),
					abc(8) => output_vector(8),
					abc(7) => output_vector(7),
					abc(6) => output_vector(6),
					abc(5) => output_vector(5),
					abc(4) => output_vector(4),
					abc(3) => output_vector(3),
					abc(2) => output_vector(2),
					abc(1) => output_vector(1),
					abc(0) => output_vector(0));

end DutWrap;

