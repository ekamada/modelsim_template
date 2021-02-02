library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.math_real.all;


entity adder is
generic(
    w : natural := 0
); port (
    clock : in std_logic;
    clear : in std_logic;

    in_a : in std_logic_vector(w-1 downto 0);
    in_b : in std_logic_vector(w-1 downto 0);
    sum  : out std_logic_vector(w-1 downto 0)
); end adder;

architecture rtl of adder is
begin

    process (clock) begin
    if rising_edge(clock) then
        sum <= in_a + in_b;
    end if;
    end process;


end rtl;
