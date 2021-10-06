library ieee;
use ieee.std_logic_1164.all;

-- entity to model a Serial adder
entity SerialAdder is
	port (reset : in std_logic; 
			A, B : in std_logic; 
			clock : in std_logic;
			S : out std_logic);
end SerialAdder;

-- Behavioural description of the entity
architecture beh of SerialAdder is
	-- Define a state type
	-- States are in terms of the input carry
	-- C0: no input carry
	-- C1: input carry is present
	type state is (C0, C1);

	-- Define signals for present state and next state initialised in C0
	signal present_state, next_state : state := C0;
	begin
		-- Process for clock behaviour
		clock_process : process(clock, reset)
		begin
			if(clock = '1' and clock'event) then
				if (reset = '1') then
					present_state <= C0;
				else 
					present_state <= next_state;
				end if;
			end if;
		end process clock_process;
				
		-- Process to describe state transitions
		state_transition_process : process(reset, A, B, present_state)
			variable carry : std_logic := '0';
		begin 
			case present_state is 
				when C0 =>
					carry := A and B;
					
					-- If carry = 1, transition to C1
					-- If carry = 0, do not transition
					if carry = '1' then
						next_state <= C1;
					else
						next_state <= C0;
					end if;
				
				when C1 =>					
					carry := A or B;
					
					-- If carry = 1, do not transition
					-- If carry = 0, transition to C0
					if carry = '0' then
						next_state <= C0;
					else
						next_state <= C1;
					end if;
				
				when others => 
					next_state <= C0;
			end case;
		end process state_transition_process;
		
		-- Process to print the output
		output_process : process(reset, A, B, present_state)
		begin 
			if reset = '0' then 
				case present_state is 
					when C0 =>
						S <= A xor B;
					when C1 =>				
						S <= not (A xor B);
					when others => 
						S <= '0';
				end case;
			else 
				S <= '0';
			end if;
		end process output_process;
end beh;