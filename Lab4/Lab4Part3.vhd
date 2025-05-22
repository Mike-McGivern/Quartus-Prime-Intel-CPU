--library ieee;
--use ieee.std_logic_1164.all;
--entity Lab4Part3 is 
--	port(
--		x1 : in std_logic;
--		x2 : in std_logic;
--		x3 : in std_logic;
--		x4 : in std_logic;
--		x5 : in std_logic;
--		x6 : in std_logic;
--		
--		f1 : out std_logic;
--		f2 : out std_logic;
--		f3 : out std_logic;
--		f4 : out std_logic
--		);
--		end Lab4Part3;
--	Architecture behavior of Lab4Part3 is 
--		signal c1 : std_logic;
--		signal c2 : std_logic;
--		begin
--			f1 <= x1 xor x4;
--			c1 <= x1 and x4;
--			f2 <= (x2 xor x5) xor c1;
--			c2 <= (x2 and x5) or (x2 and c1) or (x5 and c1);
--			f3 <= (x3 xor x6) xor c2;
--			f4 <= (x3 and x6) or (x3 and c2) or (x6 and c2);
--			end behavior;
-----------------------------------------
--part1
library ieee;
use ieee.std_logic_1164.all;
entity Lab4Part3 is

	port (
		x1: in std_logic;
		x2: in std_logic;
		f: out std_logic
		);
	end Lab4Part3;
architecture behavior of Lab4Part3 is 
signal G1 : std_logic; 
begin
--f1 <= x1 xor x4 xor '0'
f <= (not x2 and x1) or (not x1 and x2);

end behavior;

-------------------------------------
--part2

--library ieee;
--use ieee.std_logic_1164.all;
--entity Lab4Part2 is 
--	port(
--		x1 : in std_logic;
--		x2 : in std_logic;
--		x3 : in std_logic;
--		f : out std_logic
--		);
--		end Lab4Part2;
--	Architecture behavior of Lab4Part2 is 
--		begin
--			f <= not x1 and ( x2 or not x3);
--			end behavior;
			