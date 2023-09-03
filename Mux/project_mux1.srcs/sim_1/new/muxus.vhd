library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity a16mux_tb is
end;

architecture bench of a16mux_tb is

  component a16mux
    Port (
     Y : in std_logic_vector(15 downto 0);
     G : in std_logic_vector(3 downto 0);
     Z : out std_logic
     );
  end component;

  signal Y: std_logic_vector(15 downto 0);
  signal G: std_logic_vector(3 downto 0);
  signal Z: std_logic ;

begin

  uut: a16mux port map ( Y => Y,
                         G => G,
                         Z => Z );

  stimulus: process
  begin
  
    Y <= "1010101000110110"; G <= "0000" ; wait for 300ns;
    Y <= "1010110100101001"; G <= "0001" ;wait for 300ns;
    Y <= "1001010101010100"; G <= "0010" ;wait for 300ns;
    Y <= "0110010100000001"; G <="0011" ;wait for 300ns;
    Y<= "1001011100011001"; G <= "0100" ;wait for 300ns;
    Y <= "100010010001110"; G <= "0101" ; wait for 300ns;
    Y <="1010111000100001"; G <= "0110" ; wait for 300ns;
    Y <="1010010010000001"; G <= "1000"  ; wait for 300ns;
    Y <="1001010001111001"; G <= "1001" ; wait for 300ns;
    Y <="1101010101010001"; G <= "1010" ;wait for 300ns;
    Y <="1111111001001010"; G <= "1011" ;wait for 300ns;
    Y <="0000000000011110"; G <= "1100" ;wait for 300ns;
    Y <="1111111101000001"; G <= "1101" ;wait for 300ns;
    Y<= "0000000000000001"; G <= "1110" ;wait for 300ns;
    Y <="0111111111111111"; G <= "1111" ;wait for 300ns;    
    
    wait;
  end process;


end;
  
