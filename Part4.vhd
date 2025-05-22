library ieee;
use ieee.std_logic_1164.all;
entity Part4 is
port(

	x : in std_logic_vector(1 downto 0);
	s: in std_logic_vector(1 downto 0);
	f : inout std_logic;
	f_not : out std_logic
	
);
end Part4;
architecture behavior of Part4 is
component Part3 
port (
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	
	s: in std_logic_vector(1 downto 0);
	
	f: out std_logic
	

);
end component;
begin
	f_not <= not f;

	instance_label1: Part3 Port map (d => x(1), c => x(0), a => x(0) and x(1), b => x(0) or x(1), s => s, f => f);

end behavior;