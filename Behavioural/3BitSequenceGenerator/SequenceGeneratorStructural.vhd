library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Flipflops.all; 

entity SequenceGeneratorStructural is
	port (reset, clock : in std_logic; Y : out std_logic_vector(2 downto 0));
end entity SequenceGeneratorStructural;

architecture struct of SequenceGeneratorStructural is 
	signal D2, D1, D0 : std_logic;
	signal Q : std_logic_vector(2 downto 0);
begin
-- write the equations here
	D2 <= not (Q(2) xor Q(1) xor Q(0));
	D1 <= (Q(2) and (not Q(0))) or not (Q(2) or Q(1));
	D0 <= ((not Q(2)) and Q(0)) or (Q(2) and Q(1));

	-- Do the port mapping                          
	-- Asynchronous reset
	--Q2
	dff_2  : DFlipflop0
		port map(D => D2, clk => clock, reset => reset, Q => Q(2));
	
	--Q1
	dff_1  : DFlipflop1
		port map(D => D1, clk => clock, reset => reset, Q => Q(1));
		
	--Q0
	dff_0  : DFlipflop0
		port map(D => D0, clk => clock, reset => reset, Q => Q(0));
		
	Y(2) <= Q(2);
	Y(1) <= Q(1);
	Y(0) <= Q(0);
end struct;