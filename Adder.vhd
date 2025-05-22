library ieee;
use ieee.std_logic_1164.all;
entity Adder is

	port (
		x1: in std_logic;
		x2: in std_logic;
		f: out std_logic
		);
	end Adder;
architecture behavior of Adder is 
signal G1 : std_logic; 
begin
--f1 <= x1 xor x4 xor '0'
f <= (not x2 and x1) or (not x1 and x2);

end behavior;

----------------------------------------------------------------------------
