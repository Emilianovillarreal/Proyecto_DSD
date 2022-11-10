library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Rangos_deco is
    Port ( Frecuencia : in  STD_LOGIC_VECTOR (29 downto 0);
				anodo: out std_logic_vector(3 downto 0);
           Salida : out  STD_LOGIC_VECTOR (6 downto 0));
end Rangos_deco;


architecture Behavioral of Rangos_deco is
signal aux1: std_logic_vector (29 downto 0);
--signal s_anodo: std_logic_vector(3 downto 0);

begin
				
anodo <= "1110";		

	 
    deco1: process (frecuencia)
        begin
            if    (frecuencia>="000000000000000000000000001010" or frecuencia<="000000000000000000010011100010") then -- entre 10 Hz y 1250 Hz
                Salida <= "1000000";	--cero
            elsif (frecuencia>="000000000000000000010011100011" or frecuencia<="000000000000000000100111000100") then -- entre 1251 Hz y 2500 Hz
                Salida <= "1111001";	--uno	
            elsif (frecuencia>="000000000000000000100111000101" or frecuencia<="000000000000000000111010100110") then -- entre 2501 Hz y 3750 Hz
                Salida <= "0100100";	--dos
            elsif (frecuencia>="000000000000000000111010100111" or frecuencia<="000000000000000001001110001000") then -- entre 3751 Hz y 5000 Hz
                Salida <= "0110000";	--tres
            elsif (frecuencia>="000000000000000001001110001001" or frecuencia<="000000000000000001100001101010") then -- entre 5001 Hz y 6250 Hz
                Salida <= "0011001";	--cuatro
            elsif (frecuencia>="000000000000000001100001101011" or frecuencia<="000000000000000001110101001100") then -- entre 6251 Hz y 7500 Hz
                Salida <= "0010010";	--cinco
            elsif (frecuencia>="000000000000000001110101001101" or frecuencia<="000000000000000010001000101110") then -- entre 7501 Hz y 8750 Hz
                Salida <= "0000010";	--seis
            elsif (frecuencia>="000000000000000010001000101111" or frecuencia<="000000000000000010011100010000") then -- entre 8751 Hz y 10000 Hz
                Salida <= "1111000";	--siete
            elsif (frecuencia>="000000000000000010011100010001" or frecuencia<="000000000000000010101111110010") then -- entre 10001 Hz y 11250 Hz
                Salida <= "0000000";	--ocho
            elsif (frecuencia>="000000000000000010101111110011" or frecuencia<="000000000000000011000011010100") then -- entre 11251 Hz y 12500 Hz
                Salida <= "0011000";	--nueve
            elsif (frecuencia>="000000000000000011000011010101" or frecuencia<="000000000000000011010110110110") then -- entre 12501 Hz y 13750 Hz
                Salida <= "0001000";	--A
            elsif (frecuencia>="000000000000000011010110110111" or frecuencia<="000000000000000011101010011000") then -- entre 13751 Hz y 15000 Hz
                Salida <= "0000011";	--B
            elsif (frecuencia>="000000000000000011101010011001" or frecuencia<="000000000000000011111101111010") then -- entre 15001 Hz y 16250 Hz
                Salida <= "1000110";	--C
            elsif (frecuencia>="000000000000000011111101111011" or frecuencia<="000000000000000100010001011100") then -- entre 16251 Hz y 17500 Hz
                Salida <= "0100001";	--D
            elsif (frecuencia>="000000000000000100010001011101" or frecuencia<="000000000000000100100100111110") then -- entre 17501 Hz y 18750 Hz
                Salida <= "0000110";	--E
            else 
                Salida <= "0001110";	--F                                                                            -- entre 18751 Hz hasta indefinido
            end if;
            
    end process deco1;
	end Behavioral;

