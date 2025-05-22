library ieee;
use ieee.std_logic_1164.all;
entity Lab4Part2 is 
	port(
		x1 : in std_logic;
		x2 : in std_logic;
		x3 : in std_logic;
		f : out std_logic
		);
		end Lab4Part2;
	Architecture behavior of Lab4Part2 is 
		begin
			f <= x1 nand x3;
			end behavior;