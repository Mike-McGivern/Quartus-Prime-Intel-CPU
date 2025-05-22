-------------------------------------------------------
--CLock DIVIDER

library ieee;
use ieee.std_logic_1164.all;
entity lab7part1 is --entity 

	Port(
		clock_in : in std_logic;
		clock_out: out std_logic
	);
end lab7part1;
	architecture behavior of lab7part1 is 
		signal clock_tmp: std_logic;
	begin
	process(clock_in)
	variable x : integer := 0; -- : error
	begin
	if(clock_in'event and clock_in = '1') then
		x := x+1;
		if x = 50000000 then
		x := 0;
		clock_tmp <= not clock_tmp;
		clock_out <= clock_tmp;
	end if;
end if;
end process;
end behavior;
-----------------------------------------------------------------------

