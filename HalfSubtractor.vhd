----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 12:02:16 PM
-- Design Name: 
-- Module Name: HalfSubtractor - Behavioral
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

entity HalfSubtractor is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        D : out STD_LOGIC;
        Bout : out STD_LOGIC
    );
end HalfSubtractor;

architecture Behavioral of HalfSubtractor is
begin

        D <= A xor B;
        Bout <= (not A) and B;
    
end Behavioral;

