library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( 
        clk_in : in STD_LOGIC;
        led0_b : out STD_LOGIC;
        led0_r: out STD_LOGIC;
        led0_g: out STD_LOGIC
     );
end top;

architecture rtl of top is


--components
    COMPONENT clock_divider_v1
	GENERIC ( DIVISOR : integer );
	PORT
	(
		clock_in		:	 IN STD_LOGIC;
		clock_out		:	 OUT STD_LOGIC
	);
    END COMPONENT;
    
    
--signals  
signal  clk_out : std_logic;

begin

	--component init	
	inst1 : clock_divider_v1
	GENERIC map( DIVISOR => 100000000 )
	PORT map
	(
		clock_in		=> 	clk_in,
		clock_out => clk_out
	);
	
	
	--output assign
	led0_b <= '0'; 
	led0_r <= clk_out;
	led0_g <= '0';

end rtl;
