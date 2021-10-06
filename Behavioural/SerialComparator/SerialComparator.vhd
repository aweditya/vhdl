library ieee;
use ieee.std_logic_1164.all;

-- entity to model a Serial comparator
entity SerialComparator is
	port (reset : in std_logic; 
			A, B : in std_logic; 
			clock : in std_logic;
			G, L : out std_logic);
end SerialComparator;

-- Behavioural description of the entity
architecture beh of SerialComparator is
	-- Define a state type
	-- States:
	-- RST
	-- GREATER_THAN
	-- LESS_THAN
	-- EQUAL_TO
	type state is (RST, GREATER_THAN, LESS_THAN, EQUAL_TO);

	-- Define signals for present state and next state initialised in RST
	signal present_state, next_state : state := RST;
	begin
		-- Process for clock behaviour
		clock_process : process(clock, reset)
		begin
			if(clock = '1' and clock'event) then
				if (reset = '1') then
					present_state <= RST;
				else 
					present_state <= next_state;
				end if;				
			end if;
		end process clock_process;
				
		-- Process to describe state transitions
		state_transition_process : process(reset, A, B, present_state)
		begin 
			case present_state is
				-- Present state is RST
				when RST => 
					if (A = '0' and B = '1') then
						next_state <= LESS_THAN;
					elsif (A = '1' and B = '0') then
						next_state <= GREATER_THAN;
					else 
						next_state <= EQUAL_TO;
					end if;
				
				-- Present state is GREATER_THAN
				when GREATER_THAN =>
					if (A = '0' and B = '1') then
						next_state <= LESS_THAN;
					elsif (A = '1' and B = '0') then
						next_state <= GREATER_THAN;
					else 
						next_state <= GREATER_THAN;
					end if;
				
				-- Present state is LESS_THAN
				when LESS_THAN =>
					if (A = '0' and B = '1') then
						next_state <= LESS_THAN;
					elsif (A = '1' and B = '0') then
						next_state <= GREATER_THAN;
					else 
						next_state <= LESS_THAN;
					end if;
				
				-- Present state is EQUAL_TO
				when EQUAL_TO =>
					if (A = '0' and B = '1') then
						next_state <= LESS_THAN;
					elsif (A = '1' and B = '0') then
						next_state <= GREATER_THAN;
					else 
						next_state <= EQUAL_TO;
					end if;
					
				-- Default state is RST
				when others =>
					next_state <= RST;
			end case;
		end process state_transition_process;
		
		-- Process to print the output
		output_process : process(reset, A, B, present_state)
		begin 
			if (reset = '1') then
				G <= '0';
				L <= '0';
			else 
				case present_state is
					-- Present state is RST
					when RST => 
						if (A = '0' and B = '1') then
							G <= '0';
							L <= '1';
						elsif (A = '1' and B = '0') then
							G <= '1';
							L <= '0';
						else 
							G <= '0';
							L <= '0';
						end if;
					
					-- Present state is GREATER_THAN
					when GREATER_THAN =>
						if (A = '0' and B = '1') then
							G <= '0';
							L <= '1';
						elsif (A = '1' and B = '0') then
							G <= '1';
							L <= '0';
						else 
							G <= '1';
							L <= '0';
						end if;
					
					-- Present state is LESS_THAN
					when LESS_THAN =>
						if (A = '0' and B = '1') then
							G <= '0';
							L <= '1';
						elsif (A = '1' and B = '0') then
							G <= '1';
							L <= '0';
						else 
							G <= '0';
							L <= '1';
						end if;
					
					-- Present state is EQUAL_TO
					when EQUAL_TO =>
						if (A = '0' and B = '1') then
							G <= '0';
							L <= '1';
						elsif (A = '1' and B = '0') then
							G <= '1';
							L <= '0';
						else 
							G <= '0';
							L <= '0';
						end if;
						
					-- Default state is RST
					when others =>
						G <= '0';
						L <= '0';
				end case;
			end if;
		end process output_process;
end beh;