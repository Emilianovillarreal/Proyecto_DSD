library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity frecuencimetro is
    Port ( CLK : in  STD_LOGIC;
           I_SEÑAL : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  anodo : out std_logic_vector(3 downto 0);
           SALIDA : out  STD_LOGIC_VECTOR (6 downto 0));
end frecuencimetro;


architecture Behavioral of frecuencimetro is

signal s_count_reach, aux : std_logic;

signal s_count,count_freeze: std_logic_vector(13 downto 0);
signal s_frequency : std_logic_vector(14 downto 0);

signal s_selection : std_logic_vector(3 downto 0);

begin


COUNTER_windows_time: entity work.CONTADOR
port map
(	CLK => CLK,
	RST => RST,
	o_count_reach => s_count_reach
);
aux <= s_count_reach or RST;

Count_square_sign_pulses: entity work.CONTADOR_2
port map
(	RST => aux,
	i_square => I_SEÑAL,
	o_count => s_count
);

flip_flop:process(clk,s_count_reach)
begin
	if rising_edge(clk) and s_count_reach = '1' then 
		count_freeze <= s_count;
	end if;
end process;

frequency_calculation: entity work.DESPLAZAMIENTO_IZQ_V3
port map
(	CLK => CLK,
	RST => RST,
	count_frezze => s_count,
	Frequency => s_frequency
);

RANGOS: entity work.RANGOS
port map
(	FREQUENCY => s_frequency,
	SELECTION => s_selection
);

DECO: entity work.deco
port map
(	Entrada => s_selection,
	Salida => SALIDA,
	anodos => anodo
);

end Behavioral;

