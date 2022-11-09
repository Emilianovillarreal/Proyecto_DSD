library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CONTADOR is
    Port ( i_señ_cuadrada : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  i_sal_cont2: in std_logic_vector(25 downto 0); 
           Sal : out  STD_LOGIC_vector(14 downto 0));
end CONTADOR;

architecture Behavioral of CONTADOR is
signal S_sal : STD_LOGIC_vector(14 downto 0);
begin

U1: process(i_señ_cuadrada, RST, i_sal_cont2)
constant Limite_tiempo: std_logic_vector(25 downto 0):= "11000011010100000000000000";-- 512 [ms]
begin
	if ((rst = '1') or (i_sal_cont2 > Limite_tiempo))then --preguntar por el limite de tiempo
		S_sal <= (others => '0');
	elsif(rising_edge(i_señ_cuadrada) and i_sal_cont2 < Limite_tiempo) then
		S_sal <= Std_logic_vector(unsigned(S_Sal)+ 1);
	end if;
		
end process;
Sal <= S_sal;

end Behavioral;

