library ieee;
use ieee.std_logic_1164.all;
entity Part3 is
port(

	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	
	s: in std_logic_vector(1 downto 0);
	
	f: out std_logic
	
	
);
end Part3;
architecture behavior of Part3 is
begin
process( a, b, c, d, s)
begin
	if s(0) = '0' and s(1) = '0' then
	 f <= a;
	 elsif s = "01" then
	 f <= b;
	 elsif s = "10" then
	 f <= c;
	 elsif s = "11" then
	 f <= d;
	end if;
end process;
end behavior;