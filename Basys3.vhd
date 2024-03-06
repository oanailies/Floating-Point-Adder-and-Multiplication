----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2024 10:03:51 PM
-- Design Name: 
-- Module Name: Placa - Behavioral
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

entity Placa is
 Port (    clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (4 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0)); 
end Placa;

architecture Behavioral of Placa is

--component MPG is
--    Port ( clk : in  STD_LOGIC;
--           btn: in STD_LOGIC;
--           en: out  STD_LOGIC); 
--end component;



--component Memory is
--    Port (
--           ra1 : in STD_LOGIC_VECTOR (3 downto 0);
--           ra2 : in STD_LOGIC_VECTOR (3 downto 0);
--           clk : in STD_LOGIC;
--           en : in STD_LOGIC;         
--           rd1 : out STD_LOGIC_VECTOR (31 downto 0);
--           rd2 : out STD_LOGIC_VECTOR (31 downto 0)
--    );
--end component;

--component SSD is
--    Port ( clk: in STD_LOGIC;
--           digits: in STD_LOGIC_VECTOR(15 downto 0);
--           an: out STD_LOGIC_VECTOR(3 downto 0);
--           cat: out STD_LOGIC_VECTOR(6 downto 0));
--end component;

--component FloatingPointMultiplier is
--Port ( 
--    A: in std_logic_vector(31 downto 0);
--    B: in std_logic_vector(31 downto 0);
--    CLK,Load,Clear: in std_logic;
--    Produs: out std_logic_vector(31 downto 0)
--);
--end component;

--signal X,Y: std_logic_vector(31 downto 0):=(others=>'0');
--signal Rez: std_logic_vector(31 downto 0);
--signal date_out: std_logic_vector(15 downto 0):=(others=>'0');
--signal en1,en2: std_logic;


--begin

--buton1: MPG port map(clk=>clk,btn=>btn(0),en=>en1);
--buton2: MPG port map(clk=>clk,btn=>btn(1),en=>en2);

--Memorie: Memory port map(ra1=>sw(11 downto 8), ra2=>sw(7 downto 4), clk=>clk,en=>en1,rd1=>X,rd2=>Y);

-- with sw(3 downto 0) select
--    date_out<=
--    rez(31 downto 16) when "1110",
--    rez(15 downto 0) when "1111",
--    x"000"&sw(15 downto 12) when "0000",
--    x(31 downto 16) when "0010",
--    x(15 downto 0) when "0011",
--    y(31 downto 16) when "0100",
--    y(15 downto 0) when "0110",
--        (others=>'X') when others;
    

    
--Afisare: SSD port map(clk=>clk, digits=>date_out, an=>an, cat=>cat);

begin

end Behavioral;
