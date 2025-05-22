library ieee;
use ieee.std_logic_1164.all;
entity Lab6Part1 is
port(

	x: in std_logic_vector(2 downto 0);
	f: out std_logic_vector(1 downto 0 )
	
);
end Lab6Part1;
architecture behavior of Lab6Part1 is
begin
process( x(0), x(1), x(2) )
begin
if( x(0) = '0' and x(1) = '1' and X(2) = '1' )THEN --0 1 1 
	f(0) <= '1';
	f(1) <= '1';
--end if;
	elsif x = "001" then
		f <= "01";
	elsif x = "010" or x = "011" then -- 010
		f <= "10";
	elsif (x(0) = '1' and x(1) = '1' and x(2) = '0') then -- 1 1 0
		f(0) <= '1';
		f(1) <= '1';
	
--end elsif;
	elsif x(0) = '1' and x(1) = '1' and x(2) = '1' then -- 011
			f(0) <= '1';
			f(1) <= '1';
	elsif x = "000"  then -- 0 0 0
		f <= "00";
	
else 
	f(1) <= '1';
	f(0) <= '1';
	-- both 0?
--	end else
	
	--end else;
end if;
end process;
end behavior; 

