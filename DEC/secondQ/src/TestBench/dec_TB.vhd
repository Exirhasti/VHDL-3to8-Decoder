library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity dec_tb is
end dec_tb;

architecture TB_ARCHITECTURE of dec_tb is
	-- Component declaration of the tested unit
	component dec
	port(
		en : in STD_LOGIC ;
		output : out STD_LOGIC_VECTOR(0 to 7);
		input : in STD_LOGIC_VECTOR(0 to 2) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal en : STD_LOGIC:= '0';
	signal input : STD_LOGIC_VECTOR(0 to 2) := "000";
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC_VECTOR(0 to 7);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : dec
		port map (
			en => en,
			output => output,
			input => input
		);

	-- Add your stimulus here ...
	DUV : process
	begin  
		en <= '0';
		input <= "000";
		wait for 10 ns;
		en <= '0';
		input <= "100";
		wait for 10 ns;
		en <= '0';
		input <= "011";
		wait for 10 ns;
		en <= '1';
		input <= "000";
		wait for 10 ns;
		en <= '1';
		input <= "010";
		wait for 10 ns;
		en <= '1';
		input <= "110";
		wait;
	end process DUV;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_dec of dec_tb is
	for TB_ARCHITECTURE
		for UUT : dec
			use entity work.dec(first);
		end for;
	end for;
end TESTBENCH_FOR_dec;

