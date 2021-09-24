library ieee;
use ieee.std_logic_1164.all;

-- Entity to model a 4-Bit 4 x 1 Multiplexer
entity Mux4Bit4x1 is
        -- A, B, C, D : 4-bit inputs
        -- sel : select lines
        port (A, B, C, D: in std_logic_vector(3 downto 0);
                        sel: in std_logic_vector(1 downto 0);
                        Y: out std_logic_vector(3 downto 0));
end entity Mux4Bit4x1;

-- Behavioural Description of the 4-Bit 4 x 1 MUX
architecture Beh of Mux4Bit4x1 is

begin
	mux : process ( A, B, C, D, sel)
		variable output: std_logic_vector(3 downto 0);
	begin
		-- Output is selected from the inputs according to the select lines
		-- 00 -> A
		-- 01 -> B
		-- 10 -> C
		-- 11 -> D
		if sel = "00" then
			output := A;
		elsif sel = "01" then
			output := B;
		elsif sel = "10" then
			output := C;
		else 
			output := D;
		end if;
		Y <= output;
	end process ; -- end process mux
end Beh; -- end the behavioural architecture
