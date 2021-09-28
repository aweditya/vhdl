library ieee;
use ieee.std_logic_1164.all;

entity SequenceGeneratorBehavioural is
	port (reset, clock : in std_logic; Y : out std_logic_vector(3 downto 0));
end entity SequenceGeneratorBehavioural; 

architecture beh of SequenceGeneratorBehavioural is
	-- Current state
	signal state : std_logic_vector(3 downto 0);
	
	-- Function for generating the next state
	-- Adds 2 to the current states binary encoding
	function transition(current_state : in std_logic_vector(3 downto 0); shift : in std_logic_vector(3 downto 0)) 
		return std_logic_vector is
		-- Initialise variable for next state and intermediate carry
		variable next_state: std_logic_vector(3 downto 0) := (others => '0');
		variable carry: std_logic_vector(4 downto 0) := (others => '0');
		begin
			add_2 : for i in 0 to 3 loop
				next_state(i) := current_state(i) xor shift(i) xor carry(i);
				carry(i + 1) := (current_state(i) and shift(i)) or (shift(i) and carry(i)) or (carry(i) and current_state(i));
			end loop add_2;
		return next_state;
	end transition;
	
begin 
	-- process for next state and output logic
	reg_process: process(clock, reset)
	begin
		if (reset = '1') then 
			state <= "0000"; -- Reset state is 0
		elsif (clock'event and clock = '1') then
			if state(0) = '0' then
				state <= transition(state, "0010");
			else
				state <= "0000";
			end if;
		end if;
	end process reg_process;
	-- output logic concurrent statemet or one more process
	Y <= state;
end beh;