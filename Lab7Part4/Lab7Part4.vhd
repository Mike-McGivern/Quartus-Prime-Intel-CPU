--Part4
library ieee;
use ieee.std_logic_1164.all;
entity Lab7Part4 is
port(
x: in std_logic;
--c: in std_logic;
clk4: in std_logic;
Q: inout std_logic_vector(2 downto 0);
Seven_Seg: out std_logic_vector(6 downto 0)
);
end Lab7Part4;

architecture behavior of Lab7Part4 is
signal D: std_logic_vector(2 downto 0);

component Lab7Part3
	port(
		clk_in : in std_logic;
		din : in std_logic;
		qout_not : out std_logic;
		Q : inout std_logic

);
end component;

COMPONENT sevenSegmentDisplay
	port (
W: in std_logic;
X: in std_logic;
Y: in std_logic;
Z: in std_logic;

a: out std_logic;
b: out std_logic;
c: out std_logic;
d: out std_logic;
e: out std_logic;
f: out std_logic;
g: out std_logic
);
end component;

Begin

D(0) <= not Q(0);

D(1) <= (not x and ( (Q(1) and not Q(0)) or (not Q(1) and Q(0)) )) or (x and ((Q(1) and Q(0)) or (not Q(1) and not Q(0))));

D(2) <= (Q(2) and (((not Q(1) and not x) or (Q(1) and not Q(0)) or (Q(0) and x)))) or (not Q(2) and ((not Q(1) and not Q(0) and x) or (Q(1) and Q(0) and not x)));

DPPS1: Lab7Part3 port map (clk_in => clk4, Q => Q(0), din => d(0));

DPPS2: Lab7Part3 port map (clk_in => clk4, Q => Q(1), din => d(1));

DPPS: Lab7Part3 port map (clk_in => clk4, Q => Q(2), din => d(2));

--sev_seg binary2hex port map();

end behavior;

--);



