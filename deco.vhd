----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:48 06/05/2014 
-- Design Name: 
-- Module Name:    deco - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity deco is
    Port ( Entrada : in  STD_LOGIC_VECTOR (3 downto 0);
           Salida : out  STD_LOGIC_VECTOR (6 downto 0);
		   anodos : out  STD_LOGIC_VECTOR (3 downto 0)
         );
end deco;


architecture Behavioral of deco is

begin

    anodos <= "1110";

    deco: 
    process (Entrada)
        begin
            if    Entrada = "0000" then
                Salida <= "1000000";	--cero
            elsif Entrada = "0001" then 
                Salida <= "1111001";	--uno	
            elsif Entrada = "0010" then 
                Salida <= "0100100";	--dos
            elsif Entrada = "0011" then 
                Salida <= "0110000";	--tres
            elsif Entrada = "0100" then 
                Salida <= "0011001";	--cuatro
            elsif Entrada = "0101" then 
                Salida <= "0010010";	--cinco
            elsif Entrada = "0110" then 
                Salida <= "0000010";	--seis
            elsif Entrada = "0111" then 
                Salida <= "1111000";	--siete
            elsif Entrada = "1000" then 
                Salida <= "0000000";	--ocho
            elsif Entrada = "1001" then 
                Salida <= "0011000";	--nueve
            elsif Entrada = "1010" then 
                Salida <= "0001000";	--A
            elsif Entrada = "1011" then 
                Salida <= "0000011";	--B
            elsif Entrada = "1100" then 
                Salida <= "1000110";	--C
            elsif Entrada = "1101" then 
                Salida <= "0100001";	--D
            elsif Entrada = "1110" then 
                Salida <= "0000110";	--E
            else 
                Salida <= "0001110";	--F
            end if;
            
    end process deco;

end Behavioral;

