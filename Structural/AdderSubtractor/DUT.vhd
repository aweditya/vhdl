-- A DUT entity is used to wrap your design.
library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
   component Adder_Subtractor_4_Bit is
     port (A: in std_logic_vector(0 to 3);
				B: in std_logic_vector(0 to 3);
				M: in std_logic;
				S: out std_logic_vector(0 to 3);
				Cout: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Adder_Subtractor_4_Bit
			port map (
					-- order of inputs A3 A2 A1 A0 B3 B2 B1 B0 M
					A(3) => input_vector(8),
					A(2) => input_vector(7),
					A(1) => input_vector(6),
					A(0) => input_vector(5),
					
					B(3) => input_vector(4),
					B(2) => input_vector(3),
					B(1) => input_vector(2),
					B(0) => input_vector(1),
					
					M => input_vector(0),
					
					-- order of outputs S3 S2 S1 S0 Cout
					S(3) => output_vector(3),
					S(2) => output_vector(2),
					S(1) => output_vector(1),
					S(0) => output_vector(0),
					
					Cout => output_vector(4));

end DutWrap;
