----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/09/2023 02:18:18 PM
-- Design Name: 
-- Module Name: check_exponent - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity check_exponent is
 Port (
    exp_in: in std_logic_vector(7 downto 0);
    exp_out: out std_logic_vector(7 downto 0) );
end check_exponent;

architecture Behavioral of check_exponent is

begin
process(exp_in) begin
        if(exp_in /= "UUUUUUUU") then    
            exp_out <= std_logic_vector(unsigned(exp_in)-127);
        end if;
    end process;

end Behavioral;
