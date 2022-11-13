library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CONTADOR_2 is
    Port ( RST : in  STD_LOGIC;
           i_square : in  STD_LOGIC;
           o_count : out  STD_LOGIC_VECTOR (14 downto 0));
end CONTADOR_2;

architecture Behavioral of CONTADOR_2 is
signal aux2: std_logic_vector(14 downto 0);

begin

Count_square_sign_pulses: process(RST, I_square)
begin
if rst = '1' then 
	aux2 <= (others => '0');
elsif rising_edge(i_square) then 
	aux2 <= Std_logic_vector(unsigned(aux2)+ 1);
end if;
end process;

o_count <= aux2;

end Behavioral;

