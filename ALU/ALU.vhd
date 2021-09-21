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
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
            -- Declare "sum" and "carry" variable
            -- you can use aggregate to initialize the variables & signals as shown below
            --    variable variable_name : std_logic_vector(3 downto 0) := (others => '0');
				variable sum : std_logic_vector((operand_width*2)-1 downto 0) := (others => '0');
				variable carry : std_logic_vector(operand_width downto 0) := (others => '0');
				
        begin
            -- write logic for addition
            -- Hint: Use for loop
				addition_logic: for i in 0 to (operand_width - 1) loop
					sum(i) := A(i) xor B(i) xor carry(i);
					carry(i + 1) := (A(i) and B(i)) or (B(i) and carry(i)) or (carry(i) and A(i));
				end loop addition_logic;
				sum(operand_width) := carry(operand_width);
				
            return sum;
    end add;

 
begin
	alu : process( A, B, sel )
		variable output: std_logic_vector((operand_width*2)-1 downto 0);
	begin
		-- complete VHDL code for various outputs of ALU based on select lines
		-- Hint: use if/else statement
		--
		-- add function usage :
		--   signal_name <= add(A,B)
		--   variable_name := add(A,B)
		--
		-- concatenate operator usage:
		--    "0000"&A 
		if sel = "00" then
			output := A&B;
		elsif sel = "01" then 
			output := add(A, B);
		elsif sel = "10" then
			output := "0000"&(A xor B);
		else 
			output := add(A, A);
		end if;
		op <= output;
	end process ; -- alu
end a1 ; -- a1
