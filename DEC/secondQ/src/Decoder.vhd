library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder3to8 is
    Port (
        en : in STD_LOGIC;
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Decoder3to8;

architecture Behavioral of Decoder3to8 is
begin
    process(en, A, B, C)
    begin
        if en = '0' then
            Y <= "00000000";  -- ??? en ??? ????? ???? ???????? ??? ???????.
        else
            Y <= "00000000";  -- ????? ??????? ???? ??????? ?? ?????
            if (A = '0' and B = '0' and C = '0') then
                Y <= "00000001";
            elsif (A = '0' and B = '0' and C = '1') then
                Y <= "00000010";
            elsif (A = '0' and B = '1' and C = '0') then
                Y <= "00000100";
            elsif (A = '0' and B = '1' and C = '1') then
                Y <= "00001000";
            elsif (A = '1' and B = '0' and C = '0') then
                Y <= "00010000";
            elsif (A = '1' and B = '0' and C = '1') then
                Y <= "00100000";
            elsif (A = '1' and B = '1' and C = '0') then
                Y <= "01000000";
            elsif (A = '1' and B = '1' and C = '1') then
                Y <= "10000000";
            end if;
        end if;
    end process;
end Behavioral;
