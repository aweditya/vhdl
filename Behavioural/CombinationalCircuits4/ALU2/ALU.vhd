library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is

    function sub(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            -- declaring and initializing variables using aggregates 
            variable diff : std_logic_vector(operand_width*2-1 downto 0):= (others=>'0');
            variable carry : std_logic:= '1';
        begin
            -- Hint: Use for loop to calculate value of "diff" and "carry" variable
            -- Use aggregates to assign values to multiple bits
				subtraction_logic : for i in 0 to (operand_width - 1) loop
					diff(i) := A(i) xor (not B(i)) xor carry;
					carry := (A(i) and (not B(i))) or ((not B(i)) and carry) or (carry and A(i));
				end loop subtraction_logic;
				diff(operand_width) := carry;
				
            return diff;
    end sub;

     
    function rolf(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            variable shift : std_logic_vector((operand_width*2)-1 downto 0):= (others=>'0');
        begin
            shift(operand_width-1 downto 0):= A;

            -- Hint: use for loop to calculate value of shift variable
            -- shift(____ downto _____) & shift(____ downto ______)
            -- to calculate exponent, you can use double asterisk. ex: 2**i
				shift_logic : for i in 0 to (operand_width - 2) loop
					if B(i) = '1' then
						shift := (((2**i + operand_width - 1 downto 2**i) := shift(operand_width - 1 downto 0)), others := '0');
					else 
					end if;
				end loop shift_logic;

        return shift;
    end rolf;
                
begin
alu : process( A, B, sel )
	variable output: std_logic_vector((operand_width*2) - 1 downto 0);
	begin
		 -- complete VHDL code for various outputs of ALU based on select lines
		-- Hint: use if/else statement
		--
		-- sub function usage :
		--   signal_name <= sub(A,B)
		--   variable_name := sub(A,B)
		--
		-- concatenate operator usage:
		--    "0000"&A 
		if sel = "00" then
			output := rolf(A, B);
		elsif sel = "01" then
			output := sub(A, B);
		elsif sel = "10" then
			output := "0000"& not (A or B);
		else
			output := rolf(A, "0100");
		end if;
		op <= output;
	end process ; --alu
end a1 ; -- a1

