library ieee;
use ieee.std_logic_1164.all;

entity Lab7FlipFlop is

	port(
		D : in std_logic;
		CLK : in std_logic;
		Q : inout std_logic;
		Q_not : out std_logic
	
	);
	
	end Lab7FlipFlop;
 architecture behavior of Lab7FlipFlop is 
 begin
 Process(CLK)
 begin
	if(CLK'event and CLK = '1') then
	 Q <= D;
	 end if;
	 end process; 
	 Q_not <= not Q; 
	end behavior;