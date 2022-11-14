LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT frecuencimetro
    PORT(
         CLK : IN  std_logic;
         I_SEÑAL : IN  std_logic;
         RST : IN  std_logic;
         anodo : OUT  std_logic_vector(3 downto 0);
         SALIDA : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal I_SEÑAL : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal anodo : std_logic_vector(3 downto 0);
   signal SALIDA : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	constant i_square_period : time := 0.2 ms ;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: frecuencimetro PORT MAP (
          CLK => CLK,
          I_SEÑAL => I_SEÑAL,
          RST => RST,
          anodo => anodo,
          SALIDA => SALIDA
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	
	-- i_square
   i_sign_square_proceso:process
   begin
		I_SEÑAL <= '0';
		wait for i_square_period/2;
		I_SEÑAL <= '1';
		wait for i_square_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

	RST <= '1';
	
	WAIT FOR 100 NS;
	
	RST <= '0';
	WAIT FOR 100 NS;
	
      
      wait;
   end process;

END;
