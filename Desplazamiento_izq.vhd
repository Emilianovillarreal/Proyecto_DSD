library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Desplazamiento_izq is
    Port ( RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  i_calc_frec : in  STD_LOGIC_vector(14 downto 0);
           SALIDA : out  STD_LOGIC_vector(14 downto 0));
end Desplazamiento_izq;

architecture Behavioral of Desplazamiento_izq is
	signal aux : std_logic_vector(14 downto 0);

begin
U3: process(clk, rst, i_calc_frec )
begin
	if rst = '1' then 
		aux <= (others => '0');
	elsif	rising_edge(clk) then 
		aux <= "000000000" & i_calc_frec(14 downto 9) ;
	end if;
end process;
SALIDA <= aux;

end Behavioral;

