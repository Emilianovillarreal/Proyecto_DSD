library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity frecuencimetro is
    Port ( CLK : in  STD_LOGIC;
           I_SEÑAL : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           SALIDA : out  STD_LOGIC_VECTOR (6 downto 0);
           ANODO : out  STD_LOGIC_VECTOR (4 downto 0));
end frecuencimetro;

architecture Behavioral of frecuencimetro is
--signal s_i_sal_cont2 :std_logic_vector(25 downto 0);
signal s_aux1 : STD_LOGIC_vector(14 downto 0); 
Signal s_aux2 : STD_LOGIC_vector(25 downto 0);
signal s_aux3 : STD_LOGIC_vector(14 downto 0); 
signal frecuencia : std_logic_vector(29 downto 0);

 
.--FALTARIA REVISAR QUE TIENE DE MAL EL BLOQUE 2 

begin

U1: entity work.contador
port map
(	i_señ_cuadrada => I_SEÑAL,
	RST => RST,
	i_sal_cont2 => s_aux2, 
	SAL => s_aux1);
U2: entity work.Contado2 
port map 
(	CLK => CLK,
	RST => RST,
	SAL => s_aux2);

U3: entity work.Desplazamiento_izq
port map
(	CLK => CLK,
	RST => RST,
	i_calc_frec => s_aux1,
	SALIDA => s_aux3);
	
U4: entity work.MULTIPLER_X_1000
port map
(	CLK => CLK,
	RST => RST,
	i_sign_displaced => s_aux3,
	o_frec => frecuencia
);

U5: entity work.rangos_deco
port map
(	frecuencia => frecuencia,
	anodo => ANODO,
	Salida => SALIDA	
);
	
	

	




end Behavioral;

