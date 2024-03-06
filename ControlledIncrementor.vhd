----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 04:37:50 PM
-- Design Name: 
-- Module Name: ControlledIncrementor - Behavioral
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlledIncrementor is
    Port (
        A : in std_logic;
        Z : in std_logic_vector(7 downto 0);
        Res : out std_logic_vector(7 downto 0)
    );
end ControlledIncrementor;

architecture Behavioral of ControlledIncrementor is

    signal aux : std_logic_vector(7 downto 0);
    signal Cin : std_logic_vector(7 downto 0);

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
begin

process(A)
begin
    if A = '1' then
        aux <= "00000001";
    else
        aux <= "00000000";
    end if;
end process;

--aux <= (others => A);




HalfAdder_inst0: HalfAdder port map (A=>Z(0), B=>aux(0), S=>Res(0), C=>Cin(0));
FullAdder_inst1: FullAdder port map (A=>Z(1), B=>aux(1), Cin=>Cin(0), S=>Res(1), Cout=>Cin(1));
FullAdder_inst2: FullAdder port map (A=>Z(2), B=>aux(2), Cin=>Cin(1), S=>Res(2), Cout=>Cin(2));
FullAdder_inst3: FullAdder port map (A=>Z(3), B=>aux(3), Cin=>Cin(2), S=>Res(3), Cout=>Cin(3));
FullAdder_inst4: FullAdder port map (A=>Z(4), B=>aux(4), Cin=>Cin(3), S=>Res(4), Cout=>Cin(4));
FullAdder_inst5: FullAdder port map (A=>Z(5), B=>aux(5), Cin=>Cin(4), S=>Res(5), Cout=>Cin(5));
FullAdder_inst6: FullAdder port map (A=>Z(6), B=>aux(6), Cin=>Cin(5), S=>Res(6), Cout=>Cin(6));
FullAdder_inst7: FullAdder port map (A=>Z(7), B=>aux(7), Cin=>Cin(6), S=>Res(7), Cout=>Cin(7));

end Behavioral;

