----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2024 10:45:49 PM
-- Design Name: 
-- Module Name: Memory - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
USE ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
    Port (
           ra1 : in STD_LOGIC_VECTOR (3 downto 0);
           ra2 : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           en : in STD_LOGIC;         
           rd1 : out STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out STD_LOGIC_VECTOR (31 downto 0)  
    );
end Memory;

architecture Behavioral of Memory is
type memorie is array (0 to 15) of std_logic_vector(31 downto 0);

signal mem : memorie :=
    (x"0000_0002", --0
    x"0000_0003", --1
    x"0000_0045", --2 
    x"0000_0001", --3
    x"0000_000F", --4 
    x"0000_0F00", --5
    x"0D2F_0002", --6
    x"0000_EEEA", --7
    x"0030_7000", --8
    x"0890_6431", --9
    x"0A00_0001", --10
    x"0000_2201", --11
    x"0000_010A", --12
    x"0000_0202", --13
    x"1001_1001", --14
    x"0000_0000", --15
others => x"00000000");


begin

process(clk)
begin
if rising_edge(clk) then
if en = '1' then

rd1 <= mem(conv_integer(ra1));
rd2 <= mem(conv_integer(ra2));

end if;
end if;
end process;
end Behavioral;

