library ieee;
use ieee.std_logic_1164.all;
entity Lab7Part3 is
port(
clk_in : in std_logic;
din : in std_logic;
qout_not : out std_logic;
Q : inout std_logic

);
end Lab7Part3;
architecture behavior of Lab7Part3 is
signal clock_out : std_logic;
component Lab7Flipflop
		port (
		D : in std_logic;
		CLK : in std_logic;
		Q : inout std_logic;
		Q_not : out std_logic
		);
end component;

component Lab7Part1
	port (
	clock_in : in std_logic;
	clock_out: out std_logic
	);
end component;

begin

Slow1: Lab7Part1 port map (clock_in => clk_in, clock_out => clock_out); --SLOW CLOCK
DPP1: Lab7Flipflop port map(Q_not => qout_not, CLK => clock_out, D => din, Q => Q); -- FLIP FLOP

end behavior;