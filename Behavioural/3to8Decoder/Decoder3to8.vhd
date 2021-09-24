library ieee;
use ieee.std_logic_1164.all;

-- Entity to model a 3 to 8 Decoder
entity Decoder3to8 is 
	-- A is the address bus 
	-- E is the enable input
	port (A: in std_logic_vector(2 downto 0);
			E: in std_logic; 
			Y: out std_logic_vector(7 downto 0));
end Decoder3to8;

-- Behavioural Description of the 3 to 8 Decoder
architecture Beh of Decoder3to8 is	
begin 
	decode : process ( A, E )
		variable output: std_logic_vector(7 downto 0) := (others => '0');
	begin
		if E = '1' then
			if A = "000" then
				output := "00000001";
			elsif A = "001" then
				output := "00000010";
			elsif A = "010" then
				output := "00000100";
			elsif A = "011" then
				output := "00001000";
			elsif A = "100" then
				output := "00010000";
			elsif A = "101" then
				output := "00100000";
			elsif A = "110" then
				output := "01000000";
			else
				output := "10000000";
			end if;
		else
			output := "00000000";
		end if;
		Y <= output;
	end process; -- end process decode
end Beh; -- end behavioural description