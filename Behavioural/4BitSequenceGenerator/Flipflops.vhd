library ieee;
use ieee.std_logic_1164.all;

package Flipflops is
	-- D Flip flop: reset to 0 
	component DFlipFlop0 is port(D, clk, reset : in std_logic; Q : out std_logic);
	end component DFlipFlop0;
	
	-- D Flip flop: reset to 1
	component DFlipFlop1 is port(D, clk, reset : in std_logic; Q : out std_logic);
	end component DFlipFlop1;
end package Flipflops; 

--D Flip flop: reset to 0
library ieee;
use ieee.std_logic_1164.all;

entity DFlipFlop0 is 
	port(D, clk, reset : in std_logic; Q : out std_logic);
end entity DFlipFlop0;

architecture beh of DFlipFlop0 is
begin
	DFlipFlop0_process : process ( clk, reset )
	begin
		-- on reset, make Q 0
		if (reset = '1') then
			Q <= '0';
		elsif (CLK'event and (CLK = '1')) then
			Q <= D;
		end if;
	end process DFlipFlop0_process;
end beh;

--D Flip flop: reset to 1
library ieee;
use ieee.std_logic_1164.all;

entity DFlipFlop1 is 
	port(D, clk, reset : in std_logic; Q : out std_logic);
end entity DFlipFlop1;

architecture beh of DFlipFlop1 is
begin
	DFlipFlop1_process : process ( clk, reset )
	begin
		-- on reset, make Q 1 
		if (reset = '1') then
			Q <= '1';
		elsif (CLK'event and (CLK = '1')) then
			Q <= D;
		end if;
	end process DFlipFlop1_process;
end beh;