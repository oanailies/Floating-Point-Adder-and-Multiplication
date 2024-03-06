----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2023 02:14:25 PM
-- Design Name: 
-- Module Name: Adunare_Exponenti - Behavioral
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

entity Adunare_Exponenti is
 Port ( 
    Exp:in std_logic_vector(15 downto 0);
    Rez: out std_logic_vector(7 downto 0);
    zero: out std_logic_vector(1 downto 0)
 );
end Adunare_Exponenti;

architecture Behavioral of Adunare_Exponenti is


component FullAdder is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Cin : in  STD_LOGIC;
        S : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end component;

signal a,b, aux :std_logic_vector(7 downto 0);
signal c:std_logic_vector(8 downto 0);

begin

a <= Exp(15 downto 8);
b <= Exp(7 downto 0);

c(0) <= '0';
        
FA0: FullAdder port map(A => a(0), B => b(0), Cin => c(0), S => aux(0), Cout => c(1));
FA1: FullAdder port map(A => a(1), B => b(1), Cin => c(1), S => aux(1), Cout => c(2));
FA2: FullAdder port map(A => a(2), B => b(2), Cin => c(2), S => aux(2), Cout => c(3));
FA3: FullAdder port map(A => a(3), B => b(3), Cin => c(3), S => aux(3), Cout => c(4));
FA4: FullAdder port map(A => a(4), B => b(4), Cin => c(4), S => aux(4), Cout => c(5));
FA5: FullAdder port map(A => a(5), B => b(5), Cin => c(5), S => aux(5), Cout => c(6));
FA6: FullAdder port map(A => a(6), B => b(6), Cin => c(6), S => aux(6), Cout => c(7));
FA7: FullAdder port map(A => a(7), B => b(7), Cin => c(7), S => aux(7), Cout => c(8));

Rez <= "01111111" when a ="00000000" or b="00000000" else
    aux;
    
process(a,b) begin
    
    if a ="00000000" and b="00000000" then
        zero <="00";
    elsif(a = "00000000") then
        zero <="01";
    elsif(b = "00000000") then
        zero<="10";
    else
        zero<="11";
        
    end if;
end process;
end Behavioral;
