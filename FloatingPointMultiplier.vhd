----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2023 02:33:23 PM
-- Design Name: 
-- Module Name: FloatingPointMultiplier - Behavioral
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

entity FloatingPointMultiplier is
Port ( 
    A: in std_logic_vector(31 downto 0);
    B: in std_logic_vector(31 downto 0);
    Produs: out std_logic_vector(31 downto 0)
);
end FloatingPointMultiplier;

architecture Behavioral of FloatingPointMultiplier is


component Adunare_Exponenti is
Port ( 
    Exp:in std_logic_vector(15 downto 0);
    Rez: out std_logic_vector(7 downto 0);
    zero: out std_logic_vector(1 downto 0)
);
end component;

component check_exponent is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    exp_out: out std_logic_vector(7 downto 0)
);
end component;

component shift_exponent is
Port ( 
    exp_in: in std_logic_vector(7 downto 0);
    ult_bit: in std_logic;
    exp_out: out std_logic_vector(7 downto 0)
);
end component;

component InmultireMantise is
Port (
    mant_in: in std_logic_vector(47 downto 0);
    zero: in std_logic_vector(1 downto 0);
    mant_out: out std_logic_vector(23 downto 0)
 );
end component;

component Normalizare is
Port (
    mant_in: in std_logic_vector(23 downto 0);
    ult_bit: out std_logic;
    mant_out: out std_logic_vector(23 downto 0)
 );
end component;

signal exp1: std_logic_vector(15 downto 0);
signal mant1:std_logic_vector(47 downto 0);
signal exp2, exp3, exp4, exp5, exp6, exp7 : std_logic_vector(7 downto 0);
signal mant2, mant3, mant4, mant5, mant6 : std_logic_vector(23 downto 0);
signal ult_bit: std_logic;
signal zero: std_logic_vector(1 downto 0);

begin

exp1(7 downto 0) <= a(30 downto 23);
exp1(15 downto 8) <= b(30 downto 23);

mant1(23) <= a(31);
mant1(22 downto 0) <= a(22 downto 0);
mant1(46 downto 24) <= b(22 downto 0);
mant1(47) <= b(31);

AdunareExponenti: Adunare_Exponenti port map (Exp =>exp1, Rez=>exp2, zero=>zero);
Inmultire_Mantise: InmultireMantise port map ( mant_in => mant1, zero => zero, mant_out => mant2);

exp3 <= exp2;
mant3 <= mant2;

Verifica_Exponent: check_exponent port map (exp_in => exp3, exp_out => exp4);

exp5 <= exp4;
mant4 <= mant3;

Normalizare_mul: Normalizare port map (mant_in => mant4, ult_bit => ult_bit, mant_out => mant5);
Shift: shift_exponent port map (exp_in => exp5, exp_out => exp6, ult_bit => ult_bit);

exp7 <= exp6;
mant6 <= mant5;

Produs(31) <= mant6(23);
Produs(30 downto 23) <= exp7;
Produs(22 downto 0) <= mant6(22 downto 0);

end Behavioral;
