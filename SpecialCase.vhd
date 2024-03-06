----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2023 02:45:08 PM
-- Design Name: 
-- Module Name: CazuriSpeciale - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CazuriSpeciale is
    Port (
        signal A:in std_logic_vector(31 downto 0);	
		signal B:in std_logic_vector(31 downto 0);		
		signal enable:out std_logic;					
		signal result:out	std_logic_vector(31 downto 0)			
     );
end CazuriSpeciale;

architecture Behavioral of CazuriSpeciale is

	alias Sa is a(31);	        --semn
	alias Ea is a(30 downto 23);--exponent
	alias Ma is a(22 downto 0); --mantisa
	
	alias Sb is b(31);	        --semn
	alias Eb is b(30 downto 23);--exponent
	alias Mb is b(22 downto 0);	--mantisa
	
	-- Result
	alias S is result(31);			--semn
	alias E is result(30 downto 23);--exponent
	alias M is result(22 downto 0);	--mantisa
begin

process (a, b, Sa, Ea, Ma, Sb, Eb, Mb)
	begin
	  if (Ea = "00000000" and Ma = "00000000000000000000000") then 	-- Zero + nimic = nimic
		   
		    enable <= '1';
			S <= Sb;
			E <= Eb;
			M <= Mb;
			
		elsif (Eb = "00000000" and Mb = "00000000000000000000000") then -- nimic + zero = nimic
			
			enable <= '1';
			S <= Sa;
			E <= Ea;
			M <= Ma;
			
		
		elsif (Sa = '0' and Ea = "11111111" and Ma = "00000000000000000000000" and Sb = '0' and Eb = "11111111" and Mb = "00000000000000000000000") then -- + infinit + infinit = + infinit
			
			enable <= '1';
			S <= '0';
			E <= "11111111";
			M <= "00000000000000000000000";
			
		elsif (Sa = '1' and Ea = "11111111" and Ma = "00000000000000000000000" and Sb = '1' and Eb = "11111111" and Mb = "00000000000000000000000") then -- -infinit - infinit = - infinit
			
			enable <= '1';
			S <= '1';
			E <= "11111111";
			M <= "00000000000000000000000";
			
		elsif (Sa = '0' and Ea = "11111111" and Ma = "00000000000000000000000" and Sb = '1' and Eb = "11111111" and Mb = "00000000000000000000000") then -- + infinit - infinit = NaN
			
			enable <= '1';
			S <= '0';
			E <= "11111111";
			M <= "00000000000000000000001";
		
		elsif (Sa = '1' and Ea = "11111111" and Ma = "00000000000000000000000" and Sb = '0' and Eb = "11111111" and Mb = "00000000000000000000000") then -- - Infinity + Infinity = NaN
			
			enable <= '1';
			S <= '0';
			E <= "11111111";
			M <= "00000000000000000000001";
			
		elsif (Ea = "11111111" and Ma = "00000000000000000000000" and not(Eb = "11111111")) then -- infinit + nimic  = infinit
			
			enable <= '1';
			S <= Sa;
			E <= Ea;
			M <= Ma;
			
		elsif (Eb = "11111111" and Mb = "00000000000000000000000" and not(Ea = "11111111")) then -- nimc + infinit = infinit
			
			enable <= '1';
			S <= Sb;
			E <= Eb;
			M <= Mb;
		
		elsif (Ea = "11111111") then -- NaN + nimic = NaN
			
			enable <= '1';
			S <= '0';
			E <= "11111111";
			M <= "00000000000000000000001";
		
		
		elsif (Eb = "11111111") then -- nimic + NaN = NaN
			
			enable <= '1';
			S <= '0';
			E <= "11111111";
			M <= "00000000000000000000001";
		
		elsif (Sa = not Sb and Ea = Eb and Ma = Mb) then --operand-operand=zero
			
			enable <= '1';
			S <= '0';
			E <= "00000000";
			M <= "00000000000000000000000";
			
		else
			enable <= '0';
			S <= '0';
			E <= "00000000";
			M <= "00000000000000000000000";
		end if;
	end process;


end Behavioral;
