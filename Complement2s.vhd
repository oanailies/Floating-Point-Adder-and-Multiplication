----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 04:14:43 PM
-- Design Name: 
-- Module Name: Complement2s - Behavioral
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

--complement fata de 2 a unui numar pe 8 biti
entity Complement2s is
Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        Output : out STD_LOGIC_VECTOR(7 downto 0) );
end Complement2s;

architecture Behavioral of Complement2s is

    component Mux is
        Port (
        In0 : in STD_LOGIC;
        In1 : in STD_LOGIC;
        S : in STD_LOGIC;
        Res : out STD_LOGIC
        );
    end component;
    
     component HalfAdder is
     Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        S : out STD_LOGIC;
        C : out STD_LOGIC
        );
    end component;
    
        component FullAdder is
        Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Cin : in  STD_LOGIC;
        S : out STD_LOGIC;
        Cout : out STD_LOGIC
        );
    end component;
signal w, c : STD_LOGIC_VECTOR(7 downto 0);
begin

    Mux_0: Mux port map (In0=>'1', In1=>'0', S=>A(0), Res=>w(0));
    Mux_1: Mux port map (In0=>'1', In1=>'0', S=>A(1), Res=>w(1));
    Mux_2: Mux port map (In0=>'1', In1=>'0', S=>A(2), Res=>w(2));
    Mux_3: Mux port map (In0=>'1', In1=>'0', S=>A(3), Res=>w(3));
    Mux_4: Mux port map (In0=>'1', In1=>'0', S=>A(4), Res=>w(4));
    Mux_5: Mux port map (In0=>'1', In1=>'0', S=>A(5), Res=>w(5));
    Mux_6: Mux port map (In0=>'1', In1=>'0', S=>A(6), Res=>w(6));
    Mux_7: Mux port map (In0=>'1', In1=>'0', S=>A(7), Res=>w(7));


    HalfAdder_1: HalfAdder port map (A=>w(0), B=>'1', S=>Output(0), C=>c(0));

    
    FullAdder_1: FullAdder port map (A=>w(1), B=>'0', Cin=>'0', S=>Output(1), Cout=>c(1));
    FullAdder_2: FullAdder port map (A=>w(2), B=>'0', Cin=>c(1), S=>Output(2), Cout=>c(2));
    FullAdder_3: FullAdder port map (A=>w(3), B=>'0', Cin=>c(2), S=>Output(3), Cout=>c(3));
    FullAdder_4: FullAdder port map (A=>w(4), B=>'0', Cin=>c(3), S=>Output(4), Cout=>c(4));
    FullAdder_5: FullAdder port map (A=>w(5), B=>'0', Cin=>c(4), S=>Output(5), Cout=>c(5));
    FullAdder_6: FullAdder port map (A=>w(6), B=>'0', Cin=>c(5), S=>Output(6), Cout=>c(6));
    FullAdder_7: FullAdder port map (A=>w(7), B=>'0', Cin=>c(6), S=>Output(7), Cout=>c(7));

end Behavioral;
