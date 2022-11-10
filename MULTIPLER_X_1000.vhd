library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MULTIPLER_X_1000 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           i_sign_displaced : in  STD_LOGIC_VECTOR (14 downto 0);
           o_frec : out  STD_LOGIC_VECTOR (29 downto 0));
end MULTIPLER_X_1000;

architecture Behavioral of MULTIPLER_X_1000 is
	Signal Aux : std_logic_vector(29 downto 0);
	Signal Aux2 : std_logic_vector(14 downto 0);
begin

Aux2 <= "000001111101000";

U4: Process(CLK, RST, i_sign_displaced)
--variable CTE_1000: integer := 1000;
begin
	if rst = '1' then 
		Aux <= (others => '0');
	elsif rising_edge(CLK) then
	--	AUX <= std_logic_vector(to_unsigned(CTE_1000,i_sign_multiplicated'length)*unsigned(i_sign_multiplicated));
	AUX <= std_logic_vector(unsigned(AUX2)*unsigned(i_sign_displaced));
	end if;


end process;

o_frec <= AUX;






end Behavioral;

