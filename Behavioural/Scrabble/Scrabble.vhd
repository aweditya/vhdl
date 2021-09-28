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
	begin 
		if (X = "0001") or (X = "0010") or (X = "1101") or (X = "1110") then
			Y <= '1';
		else
			Y <= '0';
		end if;
	end process; -- end process check_score
end Beh; -- end behavioural description