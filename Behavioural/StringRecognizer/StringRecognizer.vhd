library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity to model word Covid recognizer
entity CovidRecognizer is
	port (input : in std_logic_vector(4 downto 0); reset, clock: in std_logic; output : out std_logic);
end CovidRecognizer;

-- Behavioural description of the entity
architecture beh of CovidRecognizer is
	-- Define a state type
	type state is (RST, S1, S2, S3, S4);

	-- Define signals for present state and next state initialised in RST
	signal present_state, next_state : state := RST;
	begin
		-- Process for clock behaviour
		clock_process : process(clock, reset)
		begin
			if(clock = '1' and clock'event) then
				if(reset = '1') then
				-- Fill the code here
					present_state <= RST;
				else
				-- Fill the code here
					present_state <= next_state;
				end if;
			end if;
		end process clock_process;
		
		-- Process to describe state transitions
		state_transition_process : process(input, present_state)
		begin
			case present_state is
				-- Present state is RST
				when RST =>
					-- if the input is letter 'c'
					if (unsigned(input) = 3) then
						next_state <= S1;
					else
						next_state <= present_state;
					end if;
					
				-- Present state is S1
				when S1 =>
					-- if the input is letter 'o'
					if (unsigned(input) = 15) then
						next_state <= S2;
					else
						next_state <= present_state;
					end if;
					
				-- Present state is S2
				when S2 =>
					-- if the input is letter 'v'
					if (unsigned(input) = 22) then
						next_state <= S3;
					else
						next_state <= present_state;
					end if;
					
				-- Present state is S3
				when S3 =>
					-- if the input is letter 'i'
					if (unsigned(input) = 9) then
						next_state <= S4;
					else
						next_state <= present_state;
					end if;
					
				-- Present state is S4
				when S4 =>
					-- if the input is letter 'd'
					if (unsigned(input) = 4) then
						next_state <= RST;
					else
						next_state <= present_state;
					end if;
				
				-- Default state should be RST
				when others =>
					next_state <= RST;
			end case;
		end process state_transition_process;
		
		-- Process to generate output
		output_process : process(input, present_state)
		begin
			if ((present_state = S4) and (unsigned(input) = 4)) then
				output <= '1';
			else
				output <= '0';
			end if;
		end process output_process;
end beh;