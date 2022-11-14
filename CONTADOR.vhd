library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CONTADOR is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           o_count_reach : out  STD_LOGIC);
end CONTADOR;

architecture Behavioral of CONTADOR is
signal aux1 :std_logic_vector(25 downto 0);
signal count_reach : std_logic;

begin

u1: process(CLK, RST)
constant Limite_tiempo: std_logic_vector(25 downto 0):= "11000011010100000000000000";-- 512 [ms]
begin

if rst = '1' then 
	aux1 <= (others => '0');
	elsif CLK'event and clk = '1' then 
		if (aux1 > Limite_tiempo) then
			count_reach <= '1';
			aux1 <= (others => '0');
		else 
			aux1 <= Std_logic_vector(unsigned(aux1)+ 1);
			count_reach <= '0';
		end if;
	end if;

end process;

o_count_reach <= count_reach;

end Behavioral;
