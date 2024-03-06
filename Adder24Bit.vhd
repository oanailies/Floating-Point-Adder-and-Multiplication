-----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 11:01:40 AM
-- Design Name: 
-- Module Name: Adder24Bit - Behavioral
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
entity Adder_24Bit is
    Port (
        A : in  STD_LOGIC_VECTOR(23 downto 0);
        B : in  STD_LOGIC_VECTOR(23 downto 0);
        Res : out STD_LOGIC_VECTOR(23 downto 0);
        Cout : out STD_LOGIC
    );
end Adder_24Bit;

architecture Behavioral of Adder_24Bit is

    signal Cin : STD_LOGIC_VECTOR(23 downto 0);
        component HalfAdder
        Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        S : out STD_LOGIC;
        C : out STD_LOGIC
        );
    end component;
    
        component FullAdder
        Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Cin : in  STD_LOGIC;
        S : out STD_LOGIC;
        Cout : out STD_LOGIC
        );
    end component;

begin

    HalfAdder_H1: HalfAdder port map (A=>A(0), B=>B(0), S=>Res(0), C=>Cin(0));

    FullAdder_F1: FullAdder port map (A=>A(1), B=>B(1), Cin=>Cin(0), S=>Res(1), Cout=>Cin(1));
    FullAdder_F2: FullAdder port map (A=>A(2), B=>B(2), Cin=>Cin(1), S=>Res(2), Cout=>Cin(2));
    FullAdder_F3: FullAdder port map (A=>A(3), B=>B(3), Cin=>Cin(2), S=>Res(3), Cout=>Cin(3));
    FullAdder_F4: FullAdder port map (A=>A(4), B=>B(4), Cin=>Cin(3), S=>Res(4), Cout=>Cin(4));
    FullAdder_F5: FullAdder port map (A=>A(5), B=>B(5), Cin=>Cin(4), S=>Res(5), Cout=>Cin(5));
    FullAdder_F6: FullAdder port map (A=>A(6), B=>B(6), Cin=>Cin(5), S=>Res(6), Cout=>Cin(6));
    FullAdder_F7: FullAdder port map (A=>A(7), B=>B(7), Cin=>Cin(6), S=>Res(7), Cout=>Cin(7));
    FullAdder_F8: FullAdder port map (A=>A(8), B=>B(8), Cin=>Cin(7), S=>Res(8), Cout=>Cin(8));
    FullAdder_F9: FullAdder port map (A=>A(9), B=>B(9), Cin=>Cin(8), S=>Res(9), Cout=>Cin(9));
    FullAdder_F10: FullAdder port map (A=>A(10), B=>B(10), Cin=>Cin(9), S=>Res(10), Cout=>Cin(10));
    FullAdder_F11: FullAdder port map (A=>A(11), B=>B(11), Cin=>Cin(10), S=>Res(11), Cout=>Cin(11));
    FullAdder_F12: FullAdder port map (A=>A(12), B=>B(12), Cin=>Cin(11), S=>Res(12), Cout=>Cin(12));
    FullAdder_F13: FullAdder port map (A=>A(13), B=>B(13), Cin=>Cin(12), S=>Res(13), Cout=>Cin(13));
    FullAdder_F14: FullAdder port map (A=>A(14), B=>B(14), Cin=>Cin(13), S=>Res(14), Cout=>Cin(14));
    FullAdder_F15: FullAdder port map (A=>A(15), B=>B(15), Cin=>Cin(14), S=>Res(15), Cout=>Cin(15));
    FullAdder_F16: FullAdder port map (A=>A(16), B=>B(16), Cin=>Cin(15), S=>Res(16), Cout=>Cin(16));
    FullAdder_F17: FullAdder port map (A=>A(17), B=>B(17), Cin=>Cin(16), S=>Res(17), Cout=>Cin(17));
    FullAdder_F18: FullAdder port map (A=>A(18), B=>B(18), Cin=>Cin(17), S=>Res(18), Cout=>Cin(18));
    FullAdder_F19: FullAdder port map (A=>A(19), B=>B(19), Cin=>Cin(18), S=>Res(19), Cout=>Cin(19));
    FullAdder_F20: FullAdder port map (A=>A(20), B=>B(20), Cin=>Cin(19), S=>Res(20), Cout=>Cin(20));
    FullAdder_F21: FullAdder port map (A=>A(21), B=>B(21), Cin=>Cin(20), S=>Res(21), Cout=>Cin(21));
    FullAdder_F22: FullAdder port map (A=>A(22), B=>B(22), Cin=>Cin(21), S=>Res(22), Cout=>Cin(22));
    FullAdder_F23: FullAdder port map (A=>A(23), B=>B(23), Cin=>Cin(22), S=>Res(23), Cout=>Cin(23));


    Cout <= Cin(23);


end Behavioral;
