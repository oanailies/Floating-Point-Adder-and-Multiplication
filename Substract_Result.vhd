----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 05:11:00 PM
-- Design Name: 
-- Module Name: Substract_Result - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Substract_Result is
    Port (
        A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(7 downto 0);
        Res : out std_logic_vector(7 downto 0);
        BOut : out std_logic
    );
end Substract_Result;

architecture Behavioral of Substract_Result is

signal d, d1 : std_logic_vector(7 downto 0);
signal b_internal: std_logic; 

    component Subtractor_8Bit is
        Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        D : out STD_LOGIC_VECTOR(7 downto 0);
        Bout : out STD_LOGIC
        );
    end component;   
    
    component Complement2s is
        Port (
          A : in STD_LOGIC_VECTOR(7 downto 0);
          Output : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
begin

Subtractor_Comp: Subtractor_8Bit
        port map (
            A => A,
            B => B,
            D => d,
            BOut => b_internal );

Complement2s_Comp: Complement2s
        port map (
            A => d,
            Output => d1);


--Res<=d when b_internal='1' else d1;



process(b_internal)
begin
        if b_internal = '1' then
            Res <= d1;
        else
            Res <= d;
        end if;
end process;

BOut <= b_internal;
end Behavioral;
