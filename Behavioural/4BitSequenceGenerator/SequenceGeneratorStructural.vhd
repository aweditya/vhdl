library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Flipflops.all; 

entity SequenceGeneratorStructural is
	port (reset, clock : in std_logic; Y : out std_logic_vector(3 downto 0));
end entity SequenceGeneratorStructural;

architecture struct of SequenceGeneratorStructural is 
	signal D3, D2, D1, D0 : std_logic;
	signal Q : std_logic_vector(3 downto 0);
begin
	-- Equations for computing inputs to the flip-flops
	D3 <= (Q(3) xor (Q(1) and Q(2))) and (not Q(0));
	D2 <= (Q(2) xor Q(1)) and (not Q(0));
	D1 <= not (Q(1) or Q(0));
	D0 <= '0';

	-- Do the port mapping                          
	--Q3
	dff_3  : DFlipflop0
		port map(D => D3, clk => clock, reset => reset, Q => Q(3));
		
	--Q2
	dff_2  : DFlipflop0
		port map(D => D2, clk => clock, reset => reset, Q => Q(2));
	
	--Q1
	dff_1  : DFlipflop0
		port map(D => D1, clk => clock, reset => reset, Q => Q(1));
		
	--Q0
	dff_0  : DFlipflop0
		port map(D => D0, clk => clock, reset => reset, Q => Q(0));
		
	-- Assign Q to final output
	Y(3) <= Q(3);
	Y(2) <= Q(2);
	Y(1) <= Q(1);
	Y(0) <= Q(0);
end struct;