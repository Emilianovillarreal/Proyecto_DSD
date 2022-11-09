library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Contado2 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           SAL : out  STD_LOGIC_vector(25 downto 0));
end Contado2;

architecture Behavioral of Contado2 is
signal S_sal: STD_LOGIC_vector(25 downto 0);

begin

U2: process(clk, rst, S_sal)
constant limite_tiempo : std_logic_vector(25 downto 0):= "11000011010100000000000000"; 
--51,2M para asi saber que esperamos 512 [ms] 2^9= 512
begin
	if ((rst = '1') or (s_sal >Limite_tiempo)) then 
		S_sal <= (others => '0');
	elsif rising_edge(clk) then 
		S_sal <= std_logic_vector(unsigned(S_sal)+1);
	end if;
	
end process; 
Sal <= S_sal;



end Behavioral;

