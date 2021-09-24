library ieee;
use ieee.std_logic_1164.all;

-- Entity to model the Scrabble game
-- Instead of 26 alphabets, we will only check for 16
entity Scrabble is 
	-- X is the input bus for representing the alphabets in binary
	-- Y is the output 
	-- 	Y = 1 if the alphabet has a value of 3 (B, C, N, O)
	-- 	Y = 0 otherwise 
	port (X: in std_logic_vector(3 downto 0); Y: out std_logic);
end entity Scrabble;

-- Behaviour Description of Scrabble
architecture Beh of Scrabble is
begin
	check_score : process ( X )
		variable output : std_logic;
	begin 
		if X = "0001" then
			output := '1';
		elsif X = "0010" then
			output := '1';
		elsif X = "1101" then
			output := '1';
		elsif X = "1110" then
			output := '1';
		else
			output := '0';
		end if;
	Y <= output;
	end process; -- end process check_score
end Beh; -- end behavioural description