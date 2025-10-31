library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity decoder3to8_tb is
end decoder3to8_tb;

architecture TB_ARCHITECTURE of decoder3to8_tb is
	-- Component declaration of the tested unit
	component decoder3to8
	port(
		en : in STD_LOGIC;
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		C : in STD_LOGIC;
		Y : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal en : STD_LOGIC := '0';
	signal A : STD_LOGIC := '0';
	signal B : STD_LOGIC := '0';
	signal C : STD_LOGIC := '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Y : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : decoder3to8
		port map (
			en => en,
			A => A,
			B => B,
			C => C,
			Y => Y
		);	
		
		Stim : process
		begin
		en <= '0'; A <= '0'; B <= '0'; C <= '0';
		wait for 10 ns;
		en <= '1'; A <= '0'; B <= '0'; C <= '0';
		wait for 10 ns;		
		en <= '1'; A <= '0'; B <= '1'; C <= '0';
		wait for 10 ns;
		en <= '1'; A <= '0'; B <= '0'; C <= '1';
		wait for 10 ns;
		en <= '1'; A <= '0'; B <= '1'; C <= '1';
		wait for 10 ns;
		en <= '1'; A <= '1'; B <= '1'; C <= '1';
		wait for 10 ns;
		en <= '0'; A <= '1'; B <= '1'; C <= '1';
		wait;
		end process Stim;

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_decoder3to8 of decoder3to8_tb is
	for TB_ARCHITECTURE
		for UUT : decoder3to8
			use entity work.decoder3to8(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_decoder3to8;

