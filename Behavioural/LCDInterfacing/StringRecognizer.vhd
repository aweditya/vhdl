library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity to model word Covid recognizer
entity CovidRecognizer is
	port (input : in std_logic_vector(4 downto 0); 
			reset, clock: in std_logic; 
			output : out std_logic;
			ASCII_output : out std_logic_vector(39 downto 0));
end CovidRecognizer;

-- Behavioural description of the entity
architecture beh of CovidRecognizer is
	-- Define a state type
	type state is (RST, S1, S2, S3, S4);

	-- Define signals for present state and next state initialised in RST
	signal present_state, next_state : state := RST;
	
	-- Define an output signal for computation
	signal output_signal : std_logic := '0';
	
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
		
		-- To display "abcde" on the LCD, ASCII_output should be x"61_62_63_64_65"
		-- To display "ab" on the LCD, ASCII_output should be x"61_62_20_20_20"
		-- ASCII representation of blank space in Hexadecimal is x"20"
		
		-- Process to describe state transitions
		state_transition_process : process(input, present_state)
		begin
			case present_state is
				-- Present state is RST
				when RST =>
					-- if the input is letter 'c'
					-- display 'c' on the LCD
					if (unsigned(input) = 3) then
						next_state <= S1;
						ASCII_output <= x"63_20_20_20_20"; 
					else
						if (output_signal = '1') then
							ASCII_output <= x"63_6F_76_69_64"; 
						else
							ASCII_output <= x"20_20_20_20_20"; 
						end if;
						next_state <= present_state;
					end if;
					output_signal <= '0';
					
				-- Present state is S1
				when S1 =>
					-- if the input is letter 'o'
					-- display 'co' on the LCD 
					if (unsigned(input) = 15) then
						next_state <= S2;
						ASCII_output <= x"63_6F_20_20_20"; 
					else
						next_state <= present_state;
						ASCII_output <= x"63_20_20_20_20"; 
					end if;
					output_signal <= '0';
					
				-- Present state is S2
				when S2 =>
					-- if the input is letter 'v'
					-- display 'cov' on the LCD
					if (unsigned(input) = 22) then
						next_state <= S3;
						ASCII_output <= x"63_6F_76_20_20"; 
					else
						next_state <= present_state;
						ASCII_output <= x"63_6F_20_20_20"; 
					end if;
					output_signal <= '0';
					
				-- Present state is S3
				when S3 =>
					-- if the input is letter 'i'
					-- display 'covi' on the LCD
					if (unsigned(input) = 9) then
						next_state <= S4;
						ASCII_output <= x"63_6F_76_69_20";
					else
						next_state <= present_state;
						ASCII_output <= x"63_6F_76_20_20"; 
					end if;
					output_signal <= '0';
					
				-- Present state is S4
				when S4 =>
					-- if the input is letter 'd'
					-- display 'covid' on the LCD
					if (unsigned(input) = 4) then
						next_state <= RST;
						ASCII_output <= x"63_6F_76_69_64";
						output_signal <= '1';
					else
						next_state <= present_state;
						ASCII_output <= x"63_6F_76_69_20";
						output_signal <= '0';
					end if;
				
				-- Default state should be RST
				when others =>
					next_state <= RST;
					ASCII_output <= x"20_20_20_20_20";
					output_signal <= '0';
			end case;
		end process state_transition_process;
		output <= output_signal;
end beh;