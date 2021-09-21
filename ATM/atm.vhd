--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity atm is
-- port declaration 
	port (amount: in std_logic_vector(7 downto 0);
			priority: out std_logic_vector(1 downto 0);
			abc: out std_logic_vector(8 downto 0));
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

-- write code here
	signal divby100quotient, divby100remainder: std_logic_vector(7 downto 0);
	signal divby50quotient, divby50remainder: std_logic_vector(7 downto 0);
	signal a1plusa0: std_logic;
	signal notb0: std_logic;
	signal c5plusc4, c5plusc4plusc3, c5plusc4plusc3plusc2, c5plusc4plusc3plusc2plusc1, c5plusc4plusc3plusc2plusc1plusc0: std_logic;
	signal notbc: std_logic;
		
begin
-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)
-- Divide amount by 100
	divby100: div 
		port map (Nu => amount, 
					D(7) => '0',
					D(6) => '1',
					D(5) => '1',
					D(4) => '0',
					D(3) => '0',
					D(2) => '1',
					D(1) => '0',
					D(0) => '0',
					RQ(15) => divby100remainder(7),
					RQ(14) => divby100remainder(6),
					RQ(13) => divby100remainder(5),
					RQ(12) => divby100remainder(4),
					RQ(11) => divby100remainder(3),
					RQ(10) => divby100remainder(2),
					RQ(9) => divby100remainder(1),
					RQ(8) => divby100remainder(0),
					RQ(7) => divby100quotient(7),
					RQ(6) => divby100quotient(6),
					RQ(5) => divby100quotient(5),
					RQ(4) => divby100quotient(4),
					RQ(3) => divby100quotient(3),
					RQ(2) => divby100quotient(2),
					RQ(1) => divby100quotient(1),
					RQ(0) => divby100quotient(0));

-- Divide amount by 50					
	divby50: div 
		port map (Nu => divby100remainder,
					D(7) => '0',
					D(6) => '0',	
					D(5) => '1',
					D(4) => '1',
					D(3) => '0',
					D(2) => '0',
					D(1) => '1',
					D(0) => '0',
					RQ(15) => divby50remainder(7),
					RQ(14) => divby50remainder(6),
					RQ(13) => divby50remainder(5),
					RQ(12) => divby50remainder(4),
					RQ(11) => divby50remainder(3),
					RQ(10) => divby50remainder(2),
					RQ(9) => divby50remainder(1),
					RQ(8) => divby50remainder(0),
					RQ(7) => divby50quotient(7),
					RQ(6) => divby50quotient(6),
					RQ(5) => divby50quotient(5),
					RQ(4) => divby50quotient(4),
					RQ(3) => divby50quotient(3),
					RQ(2) => divby50quotient(2),
					RQ(1) => divby50quotient(1),
					RQ(0) => divby50quotient(0));	

-- Compute p1
	a1ora0: OR_2
		port map (A => divby100quotient(1), B => divby100quotient(0), Y => a1plusa0);
		
	computep1: OR_2
		port map (A => a1plusa0, B => divby50quotient(0), Y => priority(1));

-- Compute p0
	invb0: INVERTER
		port map (A => divby50quotient(0), Y => notb0);
		
	c5orc4: OR_2
		port map (A => divby50remainder(5), B => divby50remainder(4), Y => c5plusc4);
		
	c5orc4orc3: OR_2
		port map (A => c5plusc4, B => divby50remainder(3), Y => c5plusc4plusc3);
		
	c5orc4orc3orc2: OR_2
		port map (A => c5plusc4plusc3, B => divby50remainder(2), Y => c5plusc4plusc3plusc2);
		
	c5orc4orc3orc2orc1: OR_2
		port map (A => c5plusc4plusc3plusc2, B => divby50remainder(1), Y => c5plusc4plusc3plusc2plusc1);
		
	c5orc4orc3orc2orc1orc0: OR_2
		port map (A => c5plusc4plusc3plusc2plusc1, B => divby50remainder(0), Y => c5plusc4plusc3plusc2plusc1plusc0);
		
	invb0andc: AND_2
		port map (A => notb0, B => c5plusc4plusc3plusc2plusc1plusc0, Y => notbc);
		
	computep0: OR_2
		port map(A => a1plusa0, B => notbc, Y => priority(0));
		
	-- compute abc
	computea1: OR_2
		port map (A => divby100quotient(1), B => divby100quotient(1), Y => abc(8));
		
	computea0: OR_2
		port map (A => divby100quotient(0), B => divby100quotient(0), Y => abc(7));
		
	computeb0: OR_2
		port map (A => divby50quotient(0), B => divby50quotient(0), Y => abc(6));
		
	computec5: OR_2
		port map (A => divby50remainder(5), B => divby50remainder(5), Y => abc(5));
		
	computec4: OR_2
		port map (A => divby50remainder(4), B => divby50remainder(4), Y => abc(4));
		
	computec3: OR_2
		port map (A => divby50remainder(3), B => divby50remainder(3), Y => abc(3));
		
	computec2: OR_2
		port map (A => divby50remainder(2), B => divby50remainder(2), Y => abc(2));
		
	computec1: OR_2
		port map (A => divby50remainder(1), B => divby50remainder(1), Y => abc(1));
		
	computec0: OR_2
		port map (A => divby50remainder(0), B => divby50remainder(0), Y => abc(0));
	
end struct;
