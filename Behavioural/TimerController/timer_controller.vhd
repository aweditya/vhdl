library ieee;
use ieee.std_logic_1164.all;

-- Entity to model the LED timer controller
entity timer_controller is
	port(inp_switch : in std_logic_vector(2 downto 0); 
			reset, clock_50, clock_1 : in std_logic; 
			out_LED : out std_logic_vector(3 downto 0));
end timer_controller;

-- Behavioural description of the entity
architecture beh of timer_controller is
	-- Instantiate the timer circuit
	component timer_ckt
		port (clock_1, clock_50, reset : in std_logic; LED : out std_logic_vector(3 downto 0); timer_inp : in std_logic_vector(1 downto 0));
	end component timer_ckt;

	-- Define the states of the FSM
	type state is (RST, timer1, timer2, timer3);
	
	-- Define signals for present state and next state initialised in RST
	signal present_state, next_state : state := RST;
	
	-- Define a signal for the FSM output
	signal FSM_output : std_logic_vector(1 downto 0) := "00";
	
begin
	-- Process for clock behaviour
	clock_process : process(clock_50, reset)
	begin
		if (clock_50'event and clock_50 = '1') then
			if (reset = '1') then
				present_state <= RST;
			else 
				present_state <= next_state;
			end if;
		end if;
	end process clock_process;
	
	-- Process to describe state transitions
	state_transition_process : process(reset, inp_switch, present_state)
	begin
		-- The state transitions are controlled by the input
		case inp_switch is
			when "001" =>
				next_state <= timer1;
			when "010" =>
				next_state <= timer2;
			when "100" =>
				next_state <= timer3;
			when others =>
				next_state <= present_state;
		end case;
	end process state_transition_process;
	
	-- Process to print the output of the FSM
	output_process : process(reset, inp_switch, present_state)
	begin
		-- If reset = '1', the output is 00
		-- Else, the output depends on the inputs and present_state
		if reset = '1' then
			FSM_output <= "00";
		else 
			case inp_switch is
				when "001" =>
					FSM_output <= "01";
				when "010" =>
					FSM_output <= "10";
				when "100" =>
					FSM_output <= "11";
				when others =>
					-- Here the output depends on the present_state
					-- RST corresponds to 00
					-- timer1 corresponds to 01
					-- timer2 corresponds to 10
					-- timer3 corresponds to 11
					-- Default output should be 00
					case present_state is
						when RST =>
							FSM_output <= "00";
						when timer1 =>
							FSM_output <= "01";
						when timer2 =>
							FSM_output <= "10";
						when timer3 =>
							FSM_output <= "11";
						when others =>
							FSM_output <= "00";
					end case;
			end case;
		end if;
	end process output_process;
	
	-- Instantiate the timer circuit
	timer_circuit : timer_ckt
		port map(clock_1 => clock_1, clock_50 => clock_50, reset => reset, LED => out_LED, timer_inp => FSM_output);
end beh;
