----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 05:41:15 PM
-- Design Name: 
-- Module Name: FloatingPointAdder - Behavioral
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

entity FloatingPointAdder is
    Port (
        X : in std_logic_vector(31 downto 0);
        Y : in std_logic_vector(31 downto 0);
        Suma : out std_logic_vector(31 downto 0)
    );
end FloatingPointAdder;

architecture Behavioral of FloatingPointAdder is


    signal MA, MB : std_logic_vector(22 downto 0);
    signal EA, EB : std_logic_vector(7 downto 0);
    signal Rezultat_Scadere : std_logic_vector(7 downto 0);
    signal Borrow : std_logic;
    signal mux1out, mux2out : std_logic_vector(23 downto 0);
    signal outshift, adderout : std_logic_vector(23 downto 0);
    signal cout : std_logic;
    signal maxexp, expfinal : std_logic_vector(7 downto 0);
    signal finalM : std_logic_vector(23 downto 0);
    signal S : std_logic_vector(4 downto 0);
    signal shiftdiff: std_logic_vector(4 downto 0);
    signal enable : std_logic;
    signal specialResult : std_logic_vector(31 downto 0);
    
        component Substract_Result is
        Port (
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        Res : out std_logic_vector(7 downto 0);
        BOut : out std_logic
        );
    end component;
    
        component Mux_24 is
        Port (
        A : in STD_LOGIC_VECTOR(22 downto 0);
        B : in STD_LOGIC_VECTOR(22 downto 0);
        S : in STD_LOGIC;
        Res : out STD_LOGIC_VECTOR(23 downto 0)
        );
    end component;
    
        component Adder_24Bit is
        Port (
        A : in  STD_LOGIC_VECTOR(23 downto 0);
        B : in  STD_LOGIC_VECTOR(23 downto 0);
        Res : out STD_LOGIC_VECTOR(23 downto 0);
        Cout : out STD_LOGIC
        );
        
    end component;
    
    component Mux_8 is
        Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        C : in STD_LOGIC;
        Res : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

    component ControlledIncrementor is
        Port (
        A : in std_logic;
        Z : in std_logic_vector(7 downto 0);
        Res : out std_logic_vector(7 downto 0)
        );
    end component;
    
        component BarrelShifter is
        Port (
        input : in STD_LOGIC_VECTOR(23 downto 0);
        output : out STD_LOGIC_VECTOR(23 downto 0);
        Shift : in STD_LOGIC_VECTOR(4 downto 0)
        );
    end component;

    
begin

        
    MA <= x(22 downto 0);
    MB <= y(22 downto 0);
    EA <= x(30 downto 23);
    EB <= y(30 downto 23);
    
    
        DiferentaExponenti: Substract_Result
        port map (
            A => EA,
            B => EB,
            Res => Rezultat_Scadere,
            BOut => Borrow
        );
        
        SelecteazaMantisa: Mux_24
        port map (
            A => MB,
            B => MA,
            S => Borrow,
            Res => mux1out
        );
        
        SelecteazaMantisa2 : Mux_24
        port map (
            A => MA,
            B => MB,
            S => Borrow,
            Res => mux2out
        );
        
        shiftdiff <= Rezultat_Scadere(4 downto 0);
        
        DeplasareMantise: BarrelShifter
        port map(
        input=>mux1out,
        output=>outshift,
        Shift=>shiftdiff
        );
        
        AdunaMantisele : Adder_24Bit
        port map (
            A => mux2out,
            B => outshift,
            Res => adderout,
            Cout => cout
        );


        SelecteazaExponent : Mux_8
        port map (
            A => EA,
            B => EB,
            C => Borrow,
            Res => maxexp
        );
        
        
       CreeazaExponentFinal : ControlledIncrementor
        port map (
            A => cout,
            Z => maxexp,
            Res => expfinal
        );
        
         S <= "0000" & cout;
         
        DeplasareMantisa : BarrelShifter
        port map (
            input => adderout,
            output => finalM,
            Shift => S
        );
    
           --Suma(31) <=  X(31) or Y(31);
           Suma(31)<='0';
           Suma(30 downto 23) <= expfinal;
           Suma(22 downto 0) <= finalM(22 downto 0);
           
       

     
end Behavioral;
