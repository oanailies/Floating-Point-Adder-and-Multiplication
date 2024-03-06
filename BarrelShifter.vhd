----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 02:15:00 PM
-- Design Name: 
-- Module Name: BarrelShifter - Behavioral
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

entity BarrelShifter is
    Port (
        input : in STD_LOGIC_VECTOR(23 downto 0);
        output : out STD_LOGIC_VECTOR(23 downto 0);
        Shift : in STD_LOGIC_VECTOR(4 downto 0)
    );
end BarrelShifter;

architecture Behavioral of BarrelShifter is

    component Mux is
        Port (
            In0 : in STD_LOGIC;
            In1 : in STD_LOGIC;
            S : in STD_LOGIC;
            Res : out STD_LOGIC
        );
    end component;

    signal a, a1, a2, a3, a4 : STD_LOGIC_VECTOR(23 downto 0);

begin
  
    Mux_0: Mux port map (In0=>input(0), In1=>input(1), S=>Shift(0), Res=>a(0));
    Mux_1: Mux port map (In0=>input(1), In1=>input(2), S=>Shift(0), Res=>a(1));
    Mux_2: Mux port map (In0=>input(2), In1=>input(3), S=>Shift(0), Res=>a(2));
    Mux_3: Mux port map (In0=>input(3), In1=>input(4), S=>Shift(0), Res=>a(3));
    Mux_4: Mux port map (In0=>input(4), In1=>input(5), S=>Shift(0), Res=>a(4));
    Mux_5: Mux port map (In0=>input(5), In1=>input(6), S=>Shift(0), Res=>a(5));
    Mux_6: Mux port map (In0=>input(6), In1=>input(7), S=>Shift(0), Res=>a(6));
    Mux_7: Mux port map (In0=>input(7), In1=>input(8), S=>Shift(0), Res=>a(7));
    Mux_8: Mux port map (In0=>input(8), In1=>input(9), S=>Shift(0), Res=>a(8));
    Mux_9: Mux port map (In0=>input(9), In1=>input(10), S=>Shift(0), Res=>a(9));
    Mux_10: Mux port map (In0=>input(10), In1=>input(11), S=>Shift(0), Res=>a(10));
    Mux_11: Mux port map (In0=>input(11), In1=>input(12), S=>Shift(0), Res=>a(11));
    Mux_12: Mux port map (In0=>input(12), In1=>input(13), S=>Shift(0), Res=>a(12));
    Mux_13: Mux port map (In0=>input(13), In1=>input(14), S=>Shift(0), Res=>a(13));
    Mux_14: Mux port map (In0=>input(14), In1=>input(15), S=>Shift(0), Res=>a(14));
    Mux_15: Mux port map (In0=>input(15), In1=>input(16), S=>Shift(0), Res=>a(15));
    Mux_16: Mux port map (In0=>input(16), In1=>input(17), S=>Shift(0), Res=>a(16));
    Mux_17: Mux port map (In0=>input(17), In1=>input(18), S=>Shift(0), Res=>a(17));
    Mux_18: Mux port map (In0=>input(18), In1=>input(19), S=>Shift(0), Res=>a(18));
    Mux_19: Mux port map (In0=>input(19), In1=>input(20), S=>Shift(0), Res=>a(19));
    Mux_20: Mux port map (In0=>input(20), In1=>input(21), S=>Shift(0), Res=>a(20));
    Mux_21: Mux port map (In0=>input(21), In1=>input(22), S=>Shift(0), Res=>a(21));
    Mux_22: Mux port map (In0=>input(22), In1=>input(23), S=>Shift(0), Res=>a(22));

    Mux_23: Mux port map (In0=>input(23), In1=>'0', S=>Shift(0), Res=>a(23));

    Mux2_0: Mux port map (In0=>a(0), In1=>a(2), S=>Shift(1), Res=>a1(0));
    Mux2_1: Mux port map (In0=>a(1), In1=>a(3), S=>Shift(1), Res=>a1(1));
    Mux2_2: Mux port map (In0=>a(2), In1=>a(4), S=>Shift(1), Res=>a1(2));
    Mux2_3: Mux port map (In0=>a(3), In1=>a(5), S=>Shift(1), Res=>a1(3));  
    Mux2_4: Mux port map (In0=>a(4), In1=>a(6), S=>Shift(1), Res=>a1(4));
    Mux2_5: Mux port map (In0=>a(5), In1=>a(7), S=>Shift(1), Res=>a1(5));
    Mux2_6: Mux port map (In0=>a(6), In1=>a(8), S=>Shift(1), Res=>a1(6));
    Mux2_7: Mux port map (In0=>a(7), In1=>a(9), S=>Shift(1), Res=>a1(7));
    Mux2_8: Mux port map (In0=>a(8), In1=>a(10), S=>Shift(1), Res=>a1(8));
    Mux2_9: Mux port map (In0=>a(9), In1=>a(11), S=>Shift(1), Res=>a1(9));
    Mux2_10: Mux port map (In0=>a(10), In1=>a(12), S=>Shift(1), Res=>a1(10));
    Mux2_11: Mux port map (In0=>a(11), In1=>a(13), S=>Shift(1), Res=>a1(11));
    Mux2_12: Mux port map (In0=>a(12), In1=>a(14), S=>Shift(1), Res=>a1(12));
    Mux2_13: Mux port map (In0=>a(13), In1=>a(15), S=>Shift(1), Res=>a1(13));
    Mux2_14: Mux port map (In0=>a(14), In1=>a(16), S=>Shift(1), Res=>a1(14));
    Mux2_15: Mux port map (In0=>a(15), In1=>a(17), S=>Shift(1), Res=>a1(15));
    Mux2_16: Mux port map (In0=>a(16), In1=>a(18), S=>Shift(1), Res=>a1(16));
    Mux2_17: Mux port map (In0=>a(17), In1=>a(19), S=>Shift(1), Res=>a1(17));
    Mux2_18: Mux port map (In0=>a(18), In1=>a(20), S=>Shift(1), Res=>a1(18));
    Mux2_19: Mux port map (In0=>a(19), In1=>a(21), S=>Shift(1), Res=>a1(19));
    Mux2_20: Mux port map (In0=>a(20), In1=>a(22), S=>Shift(1), Res=>a1(20));
    Mux2_22: Mux port map (In0=>a(21), In1=>a(23), S=>Shift(1), Res=>a1(21));


    Mux3_1: Mux port map (In0=>a(22), In1=>'0',  S=>Shift(1),Res=> a1(22));
    Mux3_2: Mux port map (In0=>a(23), In1=>'0', S=> Shift(1), Res=>a1(23));

    Mux_inst4_0: Mux port map (In0=>a1(0), In1=>a1(4), S=>Shift(2), Res=>a2(0));
    Mux_inst4_1: Mux port map (In0=>a1(1), In1=>a1(5), S=>Shift(2), Res=>a2(1));
    Mux_inst4_2: Mux port map (In0=>a1(2), In1=>a1(6), S=>Shift(2), Res=>a2(2));
    Mux_inst4_3: Mux port map (In0=>a1(3), In1=>a1(7), S=>Shift(2), Res=>a2(3));
    Mux_inst4_4: Mux port map (In0=>a1(4), In1=>a1(8), S=>Shift(2), Res=>a2(4));
    Mux_inst4_5: Mux port map (In0=>a1(5), In1=>a1(9), S=>Shift(2), Res=>a2(5));
    Mux_inst4_6: Mux port map (In0=>a1(6), In1=>a1(10), S=>Shift(2), Res=>a2(6));
    Mux_inst4_7: Mux port map (In0=>a1(7), In1=>a1(11), S=>Shift(2), Res=>a2(7));
    Mux_inst4_8: Mux port map (In0=>a1(8), In1=>a1(12), S=>Shift(2), Res=>a2(8));
    Mux_inst4_9: Mux port map (In0=>a1(9), In1=>a1(13), S=>Shift(2), Res=>a2(9));
    Mux_inst4_10: Mux port map (In0=>a1(10), In1=>a1(14), S=>Shift(2), Res=>a2(10));
    Mux_inst4_11: Mux port map (In0=>a1(11), In1=>a1(15), S=>Shift(2), Res=>a2(11));
    Mux_inst4_12: Mux port map (In0=>a1(12), In1=>a1(16), S=>Shift(2), Res=>a2(12));
    Mux_inst4_13: Mux port map (In0=>a1(13), In1=>a1(17), S=>Shift(2), Res=>a2(13));
    Mux_inst4_14: Mux port map (In0=>a1(14), In1=>a1(18), S=>Shift(2), Res=>a2(14));
    Mux_inst4_15: Mux port map (In0=>a1(15), In1=>a1(19), S=>Shift(2), Res=>a2(15));
    Mux_inst4_16: Mux port map (In0=>a1(16), In1=>a1(20), S=>Shift(2), Res=>a2(16));
    Mux_inst4_17: Mux port map (In0=>a1(17), In1=>a1(21), S=>Shift(2), Res=>a2(17));
    Mux_inst4_18: Mux port map (In0=>a1(18), In1=>a1(22), S=>Shift(2), Res=>a2(18));
    Mux_inst4_19: Mux port map (In0=>a1(19), In1=>a1(23), S=>Shift(2), Res=>a2(19));

    Mux_inst5_1: Mux port map (In0=>a1(20),In1=> '0',  S=>Shift(2), Res=>a2(20));
    Mux_inst5_2: Mux port map (In0=>a1(21),In1=> '0',  S=>Shift(2), Res=>a2(21));
    Mux_inst5_3: Mux port map (In0=>a1(22), In1=>'0',  S=>Shift(2), Res=>a2(22));
    Mux_inst5_4: Mux port map (In0=>a1(23), In1=>'0',  S=>Shift(2), Res=>a2(23));

    Mux_inst6_0: Mux port map (In0=>a2(0), In1=>a2(8), S=>Shift(3), Res=>a3(0));
    Mux_inst6_1: Mux port map (In0=>a2(1), In1=>a2(9), S=>Shift(3), Res=>a3(1));
    Mux_inst6_2: Mux port map (In0=>a2(2), In1=>a2(10), S=>Shift(3), Res=>a3(2));
    Mux_inst6_3: Mux port map (In0=>a2(3), In1=>a2(11), S=>Shift(3), Res=>a3(3));
    Mux_inst6_4: Mux port map (In0=>a2(4), In1=>a2(12), S=>Shift(3), Res=>a3(4));
    Mux_inst6_5: Mux port map (In0=>a2(5), In1=>a2(13), S=>Shift(3), Res=>a3(5));
    Mux_inst6_6: Mux port map (In0=>a2(6), In1=>a2(14), S=>Shift(3), Res=>a3(6));
    Mux_inst6_7: Mux port map (In0=>a2(7), In1=>a2(15), S=>Shift(3), Res=>a3(7));
    Mux_inst6_8: Mux port map (In0=>a2(8), In1=>a2(16), S=>Shift(3), Res=>a3(8));
    Mux_inst6_9: Mux port map (In0=>a2(9), In1=>a2(17), S=>Shift(3), Res=>a3(9));
    Mux_inst6_10: Mux port map (In0=>a2(10), In1=>a2(18), S=>Shift(3), Res=>a3(10));
    Mux_inst6_11: Mux port map (In0=>a2(11), In1=>a2(19), S=>Shift(3), Res=>a3(11));
    Mux_inst6_12: Mux port map (In0=>a2(12), In1=>a2(20), S=>Shift(3), Res=>a3(12));
    Mux_inst6_13: Mux port map (In0=>a2(13), In1=>a2(21), S=>Shift(3), Res=>a3(13));
    Mux_inst6_14: Mux port map (In0=>a2(14), In1=>a2(22), S=>Shift(3), Res=>a3(14));
    Mux_inst6_15: Mux port map (In0=>a2(15), In1=>a2(23), S=>Shift(3), Res=>a3(15));


    Mux_inst7_16: Mux port map (In0=>a2(16), In1=>'0', S=>Shift(3), Res=>a3(16));
    Mux_inst7_17: Mux port map (In0=>a2(17), In1=>'0', S=>Shift(3), Res=>a3(17));
    Mux_inst7_18: Mux port map (In0=>a2(18), In1=>'0', S=>Shift(3), Res=>a3(18));   
    Mux_inst7_19: Mux port map (In0=>a2(19), In1=>'0', S=>Shift(3), Res=>a3(19));
    Mux_inst7_20: Mux port map (In0=>a2(20), In1=>'0', S=>Shift(3), Res=>a3(20));
    Mux_inst7_21: Mux port map (In0=>a2(21), In1=>'0', S=>Shift(3), Res=>a3(21));
    Mux_inst7_22: Mux port map (In0=>a2(22), In1=>'0', S=>Shift(3), Res=>a3(22));
    Mux_inst7_23: Mux port map (In0=>a2(23), In1=>'0', S=>Shift(3), Res=>a3(23));


    Mux_inst8_0: Mux port map (In0=>a3(0), In1=>a3(4), S=>Shift(4), Res=>a4(0));
    Mux_inst8_1: Mux port map (In0=>a3(1), In1=>a3(5), S=>Shift(4), Res=>a4(1));
    Mux_inst8_2: Mux port map (In0=>a3(2), In1=>a3(6), S=>Shift(4), Res=>a4(2));
    Mux_inst8_3: Mux port map (In0=>a3(3), In1=>a3(7), S=>Shift(4), Res=>a4(3));
    Mux_inst8_4: Mux port map (In0=>a3(4), In1=>a3(8), S=>Shift(4), Res=>a4(4));
    Mux_inst8_5: Mux port map (In0=>a3(5), In1=>a3(9), S=>Shift(4), Res=>a4(5));
    Mux_inst8_6: Mux port map (In0=>a3(6), In1=>a3(10), S=>Shift(4), Res=>a4(6));
    Mux_inst8_7: Mux port map (In0=>a3(7), In1=>a3(11), S=>Shift(4), Res=>a4(7));

    Mux_inst9_8: Mux port map (In0=>a3(8), In1=>'0', S=>Shift(4), Res=>a4(8));
    Mux_inst9_9: Mux port map (In0=>a3(9), In1=>'0', S=>Shift(4), Res=>a4(9));
    Mux_inst9_10: Mux port map (In0=>a3(10), In1=>'0', S=>Shift(4), Res=>a4(10));
    Mux_inst9_11: Mux port map (In0=>a3(11), In1=>'0', S=>Shift(4), Res=>a4(11));
    Mux_inst9_12: Mux port map (In0=>a3(12), In1=>'0', S=>Shift(4), Res=>a4(12));
    Mux_inst9_13: Mux port map (In0=>a3(13), In1=>'0', S=>Shift(4), Res=>a4(13));
    Mux_inst9_14: Mux port map (In0=>a3(14), In1=>'0', S=>Shift(4), Res=>a4(14));
    Mux_inst9_15: Mux port map (In0=>a3(15), In1=>'0', S=>Shift(4), Res=>a4(15));
    Mux_inst9_16: Mux port map (In0=>a3(16), In1=>'0', S=>Shift(4), Res=>a4(16));
    Mux_inst9_17: Mux port map (In0=>a3(17), In1=>'0', S=>Shift(4), Res=>a4(17));
    Mux_inst9_18: Mux port map (In0=>a3(18), In1=>'0', S=>Shift(4), Res=>a4(18));
    Mux_inst9_19: Mux port map (In0=>a3(19), In1=>'0', S=>Shift(4), Res=>a4(19));
    Mux_inst9_20: Mux port map (In0=>a3(20), In1=>'0', S=>Shift(4), Res=>a4(20));
    Mux_inst9_21: Mux port map (In0=>a3(21), In1=>'0', S=>Shift(4), Res=>a4(21));
    Mux_inst9_22: Mux port map (In0=>a3(22), In1=>'0', S=>Shift(4), Res=>a4(22));
    Mux_inst9_23: Mux port map (In0=>a3(23), In1=>'0', S=>Shift(4), Res=>a4(23));


    output <= a4;

end Behavioral;
