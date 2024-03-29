---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2023 02:20:41 PM
-- Design Name: 
-- Module Name: InmultireMantise - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InmultireMantise is
  Port ( 
    mant_in: in std_logic_vector(47 downto 0);
    zero: in std_logic_vector(1 downto 0);
    mant_out: out std_logic_vector(23 downto 0) );
    
end InmultireMantise;

architecture Behavioral of InmultireMantise is

component MatrixMultiplication is
Port ( 
    a:in std_logic_vector(23 downto 0);
    b:in std_logic_vector(23 downto 0);
    r: out std_logic_vector(47 downto 0)
    );
end component;

signal a,b: std_logic_vector(23 downto 0);
signal r: std_logic_vector(47 downto 0);
begin

a(23) <= '1';
a(22 downto 0) <= mant_in(22 downto 0);
b(23) <= '1';
b(22 downto 0) <= mant_in(46 downto 24);

inmultire: MatrixMultiplication port map (a => a, b => b, r => r);

mant_out <= (others => '0') when a(22 downto 0) = "00000000000000000000000" or b(22 downto 0) = "00000000000000000000000" 
                            else
                                (mant_in(23) xor mant_in(47)) & r(47 downto 25); --fac aproximarea, xor intre biti de semn si cu cei mai semnificativi
                                
end Behavioral;
