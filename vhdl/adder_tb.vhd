

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.math_real.all;

entity adder_tb is
end adder_tb;
  
architecture rtl of adder_tb is	
  constant w : natural := 4;

  signal clock : std_logic:='0';
  signal clear : std_logic :='0';

  signal in_a : std_logic_vector(w-1 downto 0) := conv_std_logic_vector(0,w);
  signal in_b : std_logic_vector(w-1 downto 0) := conv_std_logic_vector(0,w);
  signal sum  : std_logic_vector(w-1 downto 0) := (others=>'0');

begin


process (clock) begin
if rising_edge(clock) then
    in_a <= in_a +"01";
    in_b <= in_b +"10";
end if;
end process;


part_a : entity work.adder
generic map(
  w => w
)port map(
  clock => clock, 
  clear => clear,

  in_a  => in_a, 
  in_b  => in_b, 
  sum   => sum 
  
);

  clk : process
	begin
    clock <= not clock;
		wait for 5 ns;
  end process;
  
end rtl;


