library ieee;
use ieee.std_logic_1164.all;

entity timer_ckt is
	-- timer_inp is State Machine output
	port (clock_1, clock_50, reset : in std_logic; LED : out std_logic_vector(3 downto 0); timer_inp : in std_logic_vector(1 downto 0));
end entity timer_ckt;

-- Define architecture body
architecture beh of timer_ckt is
begin
	process(clock_1, clock_50, reset, timer_inp)
		-- Declare variables to keep of time for which LEDs stay high
		variable timer1 : integer range 0 to 500E6 := 1;
		variable timer2 : integer range 0 to 500E6 := 1;
		variable timer3 : integer range 0 to 500E6 := 1;
	begin
		-- If reset is HIGH, set all timer variables back to 0
		if reset = '1' then
			-- Set all timer variables to 1
			timer1 := 1;
			timer2 := 1;
			timer3 := 1;
		else 
			-- When the 50 MHz clock makes a transition, check the input from the FSM to decide what to do
			if (clock_50'event and clock_50 = '1') then
				case timer_inp is
					when "00" =>
						-- Turn off the other LEDS
						LED(0) <= '0';
						LED(1) <= '0';
						LED(2) <= '0';
						
						-- Turn on LED(3) to hold it steady 
						LED(3) <= '1';
					when "01" =>
						-- Turn off the other LEDs 
						LED(1) <= '0';
						LED(2) <= '0';
						LED(3) <= '0';
						
						-- If 2 sec have passed, turn off LED(0)
						-- Else carry out the rest of the steps
						if (timer1 = 100E6) then
							LED(0) <= '0';
						else 
							-- Increment timer1 by 1
							timer1 := timer1 + 1;
							
							-- Make LED(0) blink depending on the 1 Hz clock
							-- When clock is HIGH, keep LED(0) ON
							-- When clock is LOW, keep LED(0) OFF
							if (clock_1 = '1') then
								LED(0) <= '1';
							else
								LED(0) <= '0';
							end if;
						end if;			
						
					when "10" =>
						-- Turn off the other LEDs 
						LED(0) <= '0';
						LED(2) <= '0';
						LED(3) <= '0';
						
						-- If 4 sec have passed, turn off LED(1)
						-- Else carry out the rest of the steps
						if (timer2 = 200E6) then
							LED(1) <= '0';
						else 
							-- Increment timer2 by 1
							timer2 := timer2 + 1;
							
							-- Make LED(1) blink depending on the 1 Hz clock
							-- When clock is HIGH, keep LED(1) ON
							-- When clock is LOW, keep LED(1) OFF
							if (clock_1 = '1') then
								LED(1) <= '1';
							else
								LED(1) <= '0';
							end if;
						end if;
						
					when "11" =>
						-- Turn off the other LEDs 
						LED(0) <= '0';
						LED(1) <= '0';
						LED(3) <= '0';
						
						-- If 6 sec have passed, turn off LED(2)
						-- Else carry out the rest of the steps;
						if (timer3 = 300E6) then
							LED(2) <= '0';
						else 
							-- Increment timer3 by 1
							timer3 := timer3 + 1;
											
							-- Make LED(2) blink depending on the 1 Hz clock
							-- When clock is HIGH, keep LED(2) ON
							-- When clock is LOW, keep LED(2) OFF
							if (clock_1 = '1') then
								LED(2) <= '1';
							else
								LED(2) <= '0';
							end if;
							
						end if;
						
					when others =>
						-- By default, keep all LEDS off
						LED(0) <= '0';
						LED(1) <= '0';
						LED(2) <= '0';
						LED(3) <= '0';
				end case;
			end if;
		end if;
	end process;

end beh;