----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 01:16:57 PM
-- Design Name: 
-- Module Name: Substractor_8Bit - Behavioral
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


entity Subtractor_8Bit is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        D : out STD_LOGIC_VECTOR(7 downto 0);
        Bout : out STD_LOGIC
    );
end Subtractor_8Bit;

architecture Behavioral of Subtractor_8Bit is
    signal aux : STD_LOGIC_VECTOR(7 downto 0);
     component HalfSubtractor
        Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        D : out STD_LOGIC;
        Bout : out STD_LOGIC
        );
    end component;
    
        component FullSubstractor
        Port (
         A : in STD_LOGIC;
         B : in STD_LOGIC;
         C : in STD_LOGIC;
         D : out STD_LOGIC;
         Bout : out STD_LOGIC
        );
    end component;
begin
    H1: HalfSubtractor port map  (A=>A(0),B=> B(0),D=> D(0),Bout=> aux(0));
    F1: FullSubstractor port map (A=>A(1), B=>B(1), C=>aux(0), D=>D(1), Bout=>aux(1));
    F2: FullSubstractor port map (A=>A(2), B=>B(2), C=>aux(1), D=>D(2), Bout=>aux(2));
    F3: FullSubstractor port map (A=>A(3), B=>B(3), C=>aux(2), D=>D(3), Bout=>aux(3));
    F4: FullSubstractor port map (A=>A(4), B=>B(4), C=>aux(3), D=>D(4), Bout=>aux(4));
    F5: FullSubstractor port map (A=>A(5), B=>B(5), C=>aux(4), D=>D(5), Bout=>aux(5));
    F6: FullSubstractor port map (A=>A(6), B=>B(6), C=>aux(5), D=>D(6), Bout=>aux(6));
    F7: FullSubstractor port map (A=>A(7), B=>B(7), C=>aux(6), D=>D(7), Bout=>aux(7));

    Bout <= aux(7);
end Behavioral;