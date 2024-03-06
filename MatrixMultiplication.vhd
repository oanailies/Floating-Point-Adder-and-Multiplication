----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2023 08:46:11 PM
-- Design Name: 
-- Module Name: MatrixMultiplication - Behavioral
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
entity MatrixMultiplication is
 Port (
    A:in std_logic_vector(23 downto 0);
    B:in std_logic_vector(23 downto 0);
    R: out std_logic_vector(47 downto 0)
  );
end MatrixMultiplication;

architecture Behavioral of MatrixMultiplication is


component Adder_24Bit is
    Port (
        A : in  STD_LOGIC_VECTOR(23 downto 0);
        B : in  STD_LOGIC_VECTOR(23 downto 0);
        Res : out STD_LOGIC_VECTOR(23 downto 0);
        Cout : out STD_LOGIC
    );
end component;


signal ap1,bp1,ab1: std_logic_vector(47 downto 0);
signal ap2,bp2,ab2, ap3,bp3,ab3,ap4,bp4,ab4,ap5,bp5,ab5,ap6,bp6,ab6,ap7,bp7,ab7,ap8,bp8,ab8,ap9,bp9,ab9,ap10,bp10,ab10,ap11,bp11,ab11,ap12,bp12,ab12, ap13,bp13,ab13,ap14,bp14,ab14,ap15,bp15,ab15,ap16,bp16,ab16,ap17,bp17,ab17,ap18,bp18,ab18,ap19,bp19,ab19,ap20,bp20,ab20,ap21,bp21,ab21,ap22,bp22,ab22,ap23,bp23,ab23: std_logic_vector(23 downto 0);
signal s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23: std_logic_vector (24 downto 0);
begin

    r(0) <= a(0) and b(0);
    bp1(22 downto 0) <= b(23 downto 1);  bp1(23) <= '0'; bp1(47 downto 24) <= b(23 downto 0);
    ap1(22 downto 0) <= (others => a(0)); ap1(23) <= '0'; ap1(47 downto 24) <= (others => a(1));
    ab1 <= ap1 and bp1;
    sum1: Adder_24Bit port map (A => ab1(23 downto 0), B => ab1(47 downto 24), Res => s1(23 downto 0), Cout=>s1(24));
    r(1) <= s1(0);
    
  
  
    ap2(23 downto 0) <= (others => a(2) );
    bp2(23 downto 0) <= b;
    ab2 <= ap2 and bp2; 
    sum2: Adder_24Bit port map (A => ab2(23 downto 0), B => s1(24 downto 1), Res => s2(23 downto 0), Cout=>s2(24));
    r(2) <= s2(0);  

   
    ap3(23 downto 0) <= (others => a(3) );
    bp3(23 downto 0) <= b;
    ab3 <= ap3 and bp3;
    sum3: Adder_24Bit port map (A => ab3(23 downto 0), B => s2(24 downto 1), Res => s3(23 downto 0), Cout=>s3(24));
    r(3) <= s3(0);
    
    
    ap4(23 downto 0) <= (others => a(4) );
    bp4(23 downto 0) <= b;
    ab4 <= ap4 and bp4;
    sum4: Adder_24Bit port map (A => ab4(23 downto 0), B => s3(24 downto 1), Res => s4(23 downto 0), Cout=>s4(24));
    r(4) <= s4(0);
    
    
    ap5(23 downto 0) <= (others => a(5) );
    bp5(23 downto 0) <= b;
    ab5 <= ap5 and bp5;
    sum5: Adder_24Bit port map (A => ab5(23 downto 0), B => s4(24 downto 1), Res => s5(23 downto 0), Cout=>s5(24));
    r(5) <= s5(0);
    
  
    ap6(23 downto 0) <= (others => a(6) );
    bp6(23 downto 0) <= b;
    ab6 <= ap6 and bp6;
    sum6: Adder_24Bit port map (A => ab6(23 downto 0), B => s5(24 downto 1), Res => s6(23 downto 0), Cout=>s6(24));
    r(6) <= s6(0);
  
    ap7(23 downto 0) <= (others => a(7) );
    bp7(23 downto 0) <= b;
    ab7 <= ap7 and bp7;
    sum7: Adder_24Bit port map (A => ab7(23 downto 0), B => s6(24 downto 1), Res => s7(23 downto 0), Cout=>s7(24));
    r(7) <= s7(0);
    
    ap8(23 downto 0) <= (others => a(8) );
    bp8(23 downto 0) <= b;
    ab8 <= ap8 and bp8;
    sum8: Adder_24Bit port map (A => ab8(23 downto 0), B => s7(24 downto 1), Res => s8(23 downto 0), Cout=>s8(24));
    r(8) <= s8(0);
    
 
    ap9(23 downto 0) <= (others => a(9) );
    bp9(23 downto 0) <= b;
    ab9 <= ap9 and bp9;
    sum9: Adder_24Bit port map (A => ab9(23 downto 0), B => s8(24 downto 1), Res => s9(23 downto 0), Cout=>s9(24));
    r(9) <= s9(0);
    
    
    ap10(23 downto 0) <= (others => a(10) );
    bp10(23 downto 0) <= b;
    ab10 <= ap10 and bp10;
    sum10: Adder_24Bit port map (A => ab10(23 downto 0), B => s9(24 downto 1), Res => s10(23 downto 0), Cout=>s10(24));
    r(10) <= s10(0);
    
  
    ap11(23 downto 0) <= (others => a(11) );
    bp11(23 downto 0) <= b;
    ab11 <= ap11 and bp11;
    sum11: Adder_24Bit port map (A => ab11(23 downto 0), B => s10(24 downto 1), Res => s11(23 downto 0), Cout=>s11(24));
    r(11) <= s11(0);
    
    
    ap12(23 downto 0) <= (others => a(12) );
    bp12(23 downto 0) <= b;
    ab12 <= ap12 and bp12;
    sum12: Adder_24Bit port map (A => ab12(23 downto 0), B => s11(24 downto 1), Res => s12(23 downto 0), Cout=>s12(24));
    r(12) <= s12(0);
    
  
    ap13(23 downto 0) <= (others => a(13) );
    bp13(23 downto 0) <= b;
    ab13 <= ap13 and bp13;
    sum13: Adder_24Bit port map (A => ab13(23 downto 0), B => s12(24 downto 1), Res => s13(23 downto 0), Cout=>s13(24));
    r(13) <= s13(0);
    

    ap14(23 downto 0) <= (others => a(14) );
    bp14(23 downto 0) <= b;
    ab14 <= ap14 and bp14;
    sum14: Adder_24Bit port map (A => ab14(23 downto 0), B => s13(24 downto 1), Res => s14(23 downto 0), Cout=>s14(24));
    r(14) <= s14(0);
    
    
    ap15(23 downto 0) <= (others => a(15) );
    bp15(23 downto 0) <= b;
    ab15 <= ap15 and bp15;
    sum15: Adder_24Bit port map (A => ab15(23 downto 0), B => s14(24 downto 1), Res => s15(23 downto 0), Cout=>s15(24));
    r(15) <= s15(0);
    
   
    ap16(23 downto 0) <= (others => a(16) );
    bp16(23 downto 0) <= b;
    ab16 <= ap16 and bp16;
    sum16: Adder_24Bit port map (A => ab16(23 downto 0), B => s15(24 downto 1), Res => s16(23 downto 0), Cout=>s16(24));
    r(16) <= s16(0);
    
 
    ap17(23 downto 0) <= (others => a(17) );
    bp17(23 downto 0) <= b;
    ab17 <= ap17 and bp17;
    sum17: Adder_24Bit port map (A => ab17(23 downto 0), B => s16(24 downto 1), Res => s17(23 downto 0), Cout=>s17(24));
    r(17) <= s17(0);
    
 
    ap18(23 downto 0) <= (others => a(18) );
    bp18(23 downto 0) <= b;
    ab18 <= ap18 and bp18;
    sum18: Adder_24Bit port map (A => ab18(23 downto 0), B => s17(24 downto 1), Res => s18(23 downto 0), Cout=>s18(24));
    r(18) <= s18(0);
    
   
    ap19(23 downto 0) <= (others => a(19) );
    bp19(23 downto 0) <= b;
    ab19 <= ap19 and bp19;
    sum19: Adder_24Bit port map (A => ab19(23 downto 0), B => s18(24 downto 1), Res => s19(23 downto 0), Cout=>s19(24));
    r(19) <= s19(0);
    

    ap20(23 downto 0) <= (others => a(20) );
    bp20(23 downto 0) <= b;
    ab20 <= ap20 and bp20;
    sum20: Adder_24Bit port map (A => ab20(23 downto 0), B => s19(24 downto 1), Res => s20(23 downto 0), Cout=>s20(24));
    r(20) <= s20(0);
    
    
    ap21(23 downto 0) <= (others => a(21) );
    bp21(23 downto 0) <= b;
    ab21 <= ap21 and bp21;
    sum21: Adder_24Bit port map (A => ab21(23 downto 0), B => s20(24 downto 1), Res => s21(23 downto 0), Cout=>s21(24));
    r(21) <= s21(0);
    
 
    ap22(23 downto 0) <= (others => a(22) );
    bp22(23 downto 0) <= b;
    ab22 <= ap22 and bp22;
     sum22: Adder_24Bit port map (A => ab22(23 downto 0), B => s21(24 downto 1), Res => s22(23 downto 0), Cout=>s22(24));
    r(22) <= s22(0);


    ap23(23 downto 0) <= (others => a(23) );
    bp23(23 downto 0) <= b;
    ab23 <= ap23 and bp23;
    sum23: Adder_24Bit port map (A => ab23(23 downto 0), B => s22(24 downto 1), Res => s23(23 downto 0), Cout=>s23(24));
    r(47 downto 23) <= s23;
    
end Behavioral;
