----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 07:15:53 PM
-- Design Name: 
-- Module Name: FloatingPointALU - Behavioral
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

entity FloatingPointALU is
Port (
    A : in std_logic_vector(31 downto 0);
    B : in std_logic_vector(31 downto 0);
    Operation : in std_logic; -- 0 pentru adunare, 1 pentru inmultire
    Result : out std_logic_vector(31 downto 0)
  );
end FloatingPointALU;

architecture Behavioral of FloatingPointALU is
 signal AdderResult, MultiplierResult : std_logic_vector(31 downto 0);
begin
  ADD: entity work.FloatingPointAdder
    port map (
      X => A,
      Y => B,
      Suma => AdderResult
    );

  MUL: entity work.FloatingPointMultiplier
    port map (
      A => A,
      B => B,
      Produs => MultiplierResult
    );

  process(Operation, AdderResult, MultiplierResult)
  begin
    if Operation = '0' then
      Result <= AdderResult; -- Adunare
    elsif Operation = '1' then
      Result <= MultiplierResult; -- Inmultire
    else
      Result <= (others => '0');
    end if;
  end process;
end Behavioral;
