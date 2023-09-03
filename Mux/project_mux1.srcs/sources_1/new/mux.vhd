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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
