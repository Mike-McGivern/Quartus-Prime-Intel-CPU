library ieee;
use ieee.std_logic_1164.all;
 
entity CPU is
port (
clk : in std_logic;
pcOut : out std_logic_vector(7 downto 0);
marOut : out std_logic_vector (7 downto 0);
irOutput : out std_logic_vector (7 downto 0);
mdriOutput : out std_logic_vector (7 downto 0);
mdroOutput : out std_logic_vector (7 downto 0);
aOut : out std_logic_vector (7 downto 0);
incrementOut : out std_logic
);
 
end;
 
architecture behavior of CPU is

component memory_8_by_32
port(  	
clk: in std_logic;    	
Write_Enable: in std_logic;
Read_Addr: in std_logic_vector (4 downto 0);
Data_in: in std_logic_vector (7 downto 0);
Data_out: out std_logic_vector(7 downto 0)
);
end component;

component alu
port (
A : in std_logic_vector (7 downto 0);
B : in std_logic_vector (7 downto 0);
AluOp : in std_logic_vector (2 downto 0);
output : out std_logic_vector 	(7 downto 0)
);
end component;

component reg
port (
input : in std_logic_vector (7 downto 0);
output : out std_logic_vector (7 downto 0);
clk : in std_logic;
load : in std_logic
);
end component;

component ProgramCounter
port (
increment : in std_logic;
clk : in std_logic;
output : out std_logic_vector (7 downto 0)
);
end component;

component TwoToOneMux
port (
A : in std_logic_vector (7 downto 0);
B : in std_logic_vector (7 downto 0);
address : in std_logic;
output : out std_logic_vector 	(7 downto 0)
);
end component;

component ControlUnit
port (
OpCode : in std_logic_vector(2 downto 0);
clk : in std_logic;
ToALoad : out std_logic;
ToMarLoad : out std_logic;
ToIrLoad : out std_logic;
ToMdriLoad : out std_logic;
ToMdroLoad : out std_logic;
ToPcIncrement : out std_logic;
ToMarMux : out std_logic;
ToRamWriteEnable : out std_logic;
ToAluOp : out std_logic_vector (2 downto 0)
);
end component;

component sevenseg
port(
	i : in std_logic_vector(3 downto 0);
	o : out std_logic_vector(0 to 7)
);
end component;

signal ramDataOutToMdri : std_logic_vector (7 downto 0);
 

signal pcToMarMux : std_logic_vector(7 downto 0);
signal muxToMar : std_logic_vector (7 downto 0);
 

signal marToRamReadAddr : std_logic_vector(4 downto 0);
signal mdroToRamDataIn : std_logic_vector (7 downto 0);
 

signal mdriOut : std_logic_vector (7 downto 0);
 

signal irOut : std_logic_vector (7 downto 0);
 

signal aluOut: std_logic_vector  (7 downto 0);
signal aToAluB : std_logic_vector (7 downto 0);
 

signal cuToALoad : std_logic;
signal cuToMarLoad : std_logic;
signal cuToIrLoad : std_logic;
signal cuToMdriLoad : std_logic;
signal cuToMdroLoad : std_logic;
signal cuToPcIncrement : std_logic;
signal cuToMarMux : std_logic;
signal cuToRamWriteEnable : std_logic;
signal cuToAluOp : std_logic_vector (2 downto 0);

begin

RAM: memory_8_by_32 port map (
clk => clk,
Write_Enable => cuToRamWriteEnable,
Read_Addr => marToRamReadAddr,
Data_in => mdroToRamDataIn,
Data_out => ramDataOutToMdri);

--accumulator
Acc: reg port map (
input => aluOut, 
output => aToAluB, 
clk => clk, 
load => cuToALoad);

--ALU
aluPort: alu port map (
A => mdriOut,
B => aToAluB,
AluOp => cuToAluOp,
output => aluOut
);

--program counter
ProgCount: ProgramCounter port map (
increment => cuToPcIncrement,
clk => clk,
output => pcToMarMux
);

--instruction register
IR: reg port map (
input => mdriOut, 
output => irOut , 
clk => clk, 
load => cuToIrLoad
);
 
--memeory access register mux
Mux: TwoToOneMux port map (
A => pcToMarMux,
B => irOut,
address => cuToMarMux,
output => muxToMar
);

--memeory access register
mar: reg port map (
input => muxToMar,
output(4 downto 0) => marToRamReadAddr, 
clk => clk, 
load => cuToMarLoad
);

--memeory data register input
MDRI: reg port map (
input => ramDataOutToMdri,
output => mdriOut,
clk => clk,
load => cuToMdriLoad
);

--memeory data registar out

mdro: reg port map (
input => aluOut, 
output => mdroToRamDataIn, 
clk => clk, 
load => cuToMdroLoad
);


CU: ControlUnit port map (
OpCode => irout(7 downto 5),
clk => clk,
ToALoad => cuToALoad,
ToMarLoad => cuToMarLoad,
ToIrLoad => cuToIrLoad,
ToMdriLoad => cuToMdriLoad,
ToMdroLoad => cuToMdroLoad,
ToPcIncrement => cuToPcIncrement,
ToMarMux => cuToMarMux,
ToRamWriteEnable => cuToRamWriteEnable,
ToAluOp => cuToAluOp
);

		pcOut <= pcToMarMux;
		 aOut <= aToAluB;
		irOutput <= irout;
		aOut <= aToAluB;
		marOut <= irOut(7 downto 5)&marToRamReadAddr;
		mdriOutput <= mdriOut;
		mdroOutput <= mdroToRamDataIn;
 
 
end behavior;
