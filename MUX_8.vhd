----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 01:55:04 PM
-- Design Name: 
-- Module Name: MUX_8 - Behavioral
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

entity Mux_8 is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        C : in STD_LOGIC;
        Res : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Mux_8;

architecture Behavioral of Mux_8 is
    component Mux is
        Port (
            In0 : in STD_LOGIC;
            In1 : in STD_LOGIC;
            S : in STD_LOGIC;
            Res : out STD_LOGIC
        );
    end component;

begin
    Mux_inst_0: Mux port map (In0 => A(0), In1 => B(0), S => C, Res => Res(0));
    Mux_inst_1: Mux port map (In0 => A(1), In1 => B(1), S => C, Res => Res(1));
    Mux_inst_2: Mux port map (In0 => A(2), In1 => B(2), S => C, Res => Res(2));
    Mux_inst_3: Mux port map (In0 => A(3), In1 => B(3), S => C, Res => Res(3));
    Mux_inst_4: Mux port map (In0 => A(4), In1 => B(4), S => C, Res => Res(4));
    Mux_inst_5: Mux port map (In0 => A(5), In1 => B(5), S => C, Res => Res(5));
    Mux_inst_6: Mux port map (In0 => A(6), In1 => B(6), S => C, Res => Res(6));
    Mux_inst_7: Mux port map (In0 => A(7), In1 => B(7), S => C, Res => Res(7));

end Behavioral;
