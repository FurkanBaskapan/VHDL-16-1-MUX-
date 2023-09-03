----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2022 02:30:43 PM
-- Design Name: 
-- Module Name: a16mux - Behavioral
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


entity a16mux is
  Port (
   Y : in std_logic_vector(15 downto 0);
   G : in std_logic_vector(3 downto 0);
   Z : out std_logic
   );
end a16mux;

architecture Behavioral of a16mux is
component mux is
 port( a,b,c,d : in std_logic;
 s0,s1 : in std_logic;
 f : out std_logic);
 end component;

signal H1,H2,H3,H4: std_logic;

begin
mu1: mux port map(
 a => Y(0),
 b => Y(1),
 c => Y(2),
 d => Y(3),
 s0 => G(0),
 s1 => G(1),
 f=> H1
 );
 
 mu2: mux port map(
 a => Y(4),
 b => Y(5),
 c => Y(6),
 d => Y(7),
 s0 => G(0),
 s1 => G(1),
 f=> H2
 ); 
 
 mu3: mux port map(
 a => Y(8),
 b => Y(9),
 c => Y(10),
 d => Y(11),
 s0 => G(0),
 s1 => G(1),
 f=> H3
 ); 
 
 mu4: mux port map(
 a => Y(12),
 b => Y(13),
 c => Y(14),
 d => Y(15),
 s0 => G(0),
 s1 => G(1),
 f=> H4
 ); 
 
 mu5: mux port map(
 a => H1,
 b => H2,
 c => H3,
 d => H4,
 s0 => G(2),
 s1 => G(3),
 f=> Z
 ); 
  


end Behavioral;


// component code
   ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2022 01:30:47 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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



entity mux is
 Port (
  a,b,c,d: in std_logic;
  s0,s1 : in std_logic;
  f : out std_logic
);
end mux;

architecture Behavioral of mux is

begin
process (a,b,c,d,s0,s1) is
begin
  if (s0 ='0' and s1 = '0') then
      f <= a;
  elsif (s0 ='1' and s1 = '0') then
      f <= b;
  elsif (s0 ='0' and s1 = '1') then
      f <= c;
  else
      f <= d;
  end if;
 
end process;



end Behavioral;
