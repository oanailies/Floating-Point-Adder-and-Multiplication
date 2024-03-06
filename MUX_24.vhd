----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 01:56:58 PM
-- Design Name: 
-- Module Name: MUX_24 - Behavioral
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

entity MUX_24 is
Port ( 
        A : in STD_LOGIC_VECTOR(22 downto 0);
        B : in STD_LOGIC_VECTOR(22 downto 0);
        S : in STD_LOGIC;
        Res : out STD_LOGIC_VECTOR(23 downto 0)
);
end MUX_24;

architecture Behavioral of MUX_24 is

    component Mux is
        Port (
            In0 : in STD_LOGIC;
            In1 : in STD_LOGIC;
            S : in STD_LOGIC;
            Res : out STD_LOGIC
        );
    end component;
begin
    Mux_inst0: Mux port map (In0 => A(0), In1 => B(0), S => S, Res => Res(0));
    Mux_inst1: Mux port map (In0 => A(1), In1 => B(1), S => S, Res => Res(1));
    Mux_inst2: Mux port map (In0 => A(2), In1 => B(2), S => S, Res => Res(2));
    Mux_inst3: Mux port map (In0 => A(3), In1 => B(3), S => S, Res => Res(3));
    Mux_inst4: Mux port map (In0 => A(4), In1 => B(4), S => S, Res => Res(4));
    Mux_inst5: Mux port map (In0 => A(5), In1 => B(5), S => S, Res => Res(5));
    Mux_inst6: Mux port map (In0 => A(6), In1 => B(6), S => S, Res => Res(6));
    Mux_inst7: Mux port map (In0 => A(7), In1 => B(7), S => S, Res => Res(7));
    Mux_inst8: Mux port map (In0 => A(8), In1 => B(8), S => S, Res => Res(8));
    Mux_inst9: Mux port map (In0 => A(9), In1 => B(9), S => S, Res => Res(9));
    Mux_inst10: Mux port map (In0 => A(10), In1 => B(10), S => S, Res => Res(10));
    Mux_inst11: Mux port map (In0 => A(11), In1 => B(11), S => S, Res => Res(11));
    Mux_inst12: Mux port map (In0 => A(12), In1 => B(12), S => S, Res => Res(12));
    Mux_inst13: Mux port map (In0 => A(13), In1 => B(13), S => S, Res => Res(13));
    Mux_inst14: Mux port map (In0 => A(14), In1 => B(14), S => S, Res => Res(14));
    Mux_inst15: Mux port map (In0 => A(15), In1 => B(15), S => S, Res => Res(15));
    Mux_inst16: Mux port map (In0 => A(16), In1 => B(16), S => S, Res => Res(16));
    Mux_inst17: Mux port map (In0 => A(17), In1 => B(17), S => S, Res => Res(17));
    Mux_inst18: Mux port map (In0 => A(18), In1 => B(18), S => S, Res => Res(18));
    Mux_inst19: Mux port map (In0 => A(19), In1 => B(19), S => S, Res => Res(19));
    Mux_inst20: Mux port map (In0 => A(20), In1 => B(20), S => S, Res => Res(20));  
    Mux_inst21: Mux port map (In0 => A(21), In1 => B(21), S => S, Res => Res(21));
    Mux_inst22: Mux port map (In0 => A(22), In1 => B(22), S => S, Res => Res(22));


    Res(23) <= '1';

end Behavioral;
