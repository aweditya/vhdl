library ieee;
use ieee.std_logic_1164.all;

-- Entity to model the Vowel Detector
-- Instead of 26 alphabets, we will only check for 16
entity VowelDetector is 
	-- X is the input bus for representing the alphabets in binary
	-- Y is the output. Y = 1 for an vowel and Y = 0 otherwise
	port (X: in std_logic_vector(3 downto 0); Y: out std_logic);
end entity VowelDetector;

-- Behavioural Description of the Vowel Detector
architecture Beh of VowelDetector is
begin
	vowel_detect : process ( X )
		variable output : std_logic;
	begin 
		if X = "0000" then
			output := '1';
		elsif X = "0100" then
			output := '1';
		elsif X = "1000" then
			output := '1';
		elsif X = "1110" then
			output := '1';
		else 
			output := '0';
		end if;
		Y <= output;
	end process; -- end process vowel_detect
end Beh; -- end behavioural architecture