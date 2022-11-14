library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RANGOS is
    Port ( FREQUENCY : in  STD_LOGIC_VECTOR (14 downto 0);
           SELECTION : out  STD_LOGIC_VECTOR (3 downto 0));
end RANGOS;

architecture Behavioral of RANGOS is

begin

--std_logic_vector(to_unsigned(my_int, my_slv'length))




Rangos: process(FREQUENCY)

begin 
	if ((FREQUENCY >= std_logic_vector(to_unsigned(10, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(1250, FREQUENCY'length)))) then 
		SELECTION <= "0000";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(1251, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(2500, FREQUENCY'length)))) then 
		Selection <= "0001";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(2501, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(3750, FREQUENCY'length)))) then 
		Selection <= "0010";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(3751, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(5000, FREQUENCY'length)))) then 
		Selection <= "0011";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(5001, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(6250, FREQUENCY'length)))) then 
		Selection <= "0100";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(6251, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(7500, FREQUENCY'length)))) then 
		Selection <= "0101";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(7501, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(8750, FREQUENCY'length)))) then 
		Selection <= "0110";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(8751, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(10000, FREQUENCY'length)))) then 
		Selection <= "0111";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(10001, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(11250, FREQUENCY'length)))) then 
		Selection <= "1000";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(11251, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(12500, FREQUENCY'length)))) then 
		Selection <= "1001";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(12501, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(13750, FREQUENCY'length)))) then 
		Selection <= "1010";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(13751, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(15000, FREQUENCY'length)))) then 
		Selection <= "1011";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(15001, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(16250, FREQUENCY'length)))) then 
		Selection <= "1100";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(16251, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(17500, FREQUENCY'length)))) then 
		Selection <= "1101";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(17501, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(18750, FREQUENCY'length)))) then 
		Selection <= "1110";
	elsif ((FREQUENCY >= std_logic_vector(to_unsigned(18751, FREQUENCY'length))) AND (FREQUENCY <= std_logic_vector(to_unsigned(20000, FREQUENCY'length)))) then 
		Selection <= "1111";
	else 
		Selection <= "1111";
	end if;
end process;

end Behavioral;

