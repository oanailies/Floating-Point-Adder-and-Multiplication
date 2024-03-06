----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2023 01:44:59 PM
-- Design Name: 
-- Module Name: MUX - Behavioral
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

entity Mux is
    Port (
        In0 : in STD_LOGIC;
        In1 : in STD_LOGIC;
        S : in STD_LOGIC;
        Res : out STD_LOGIC
    );
end Mux;

architecture Behavioral of Mux is
    signal w1, w2 : STD_LOGIC;
begin
   
        w1 <= (not S) and In0;
        w2 <= S and In1;
        
        Res <= w1 or w2;
  
end Behavioral;
