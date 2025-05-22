-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/21/2023 15:09:32"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU IS
    PORT (
	clk : IN std_logic;
	pcOut : OUT std_logic_vector(7 DOWNTO 0);
	marOut : OUT std_logic_vector(7 DOWNTO 0);
	irOutput : OUT std_logic_vector(7 DOWNTO 0);
	mdriOutput : OUT std_logic_vector(7 DOWNTO 0);
	mdroOutput : OUT std_logic_vector(7 DOWNTO 0);
	aOut : OUT std_logic_vector(7 DOWNTO 0);
	incrementOut : OUT std_logic
	);
END CPU;

-- Design Ports Information
-- pcOut[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcOut[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- marOut[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irOutput[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdriOutput[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdroOutput[7]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aOut[7]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incrementOut	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pcOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_marOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_irOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdriOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdroOutput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_aOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_incrementOut : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \pcOut[0]~output_o\ : std_logic;
SIGNAL \pcOut[1]~output_o\ : std_logic;
SIGNAL \pcOut[2]~output_o\ : std_logic;
SIGNAL \pcOut[3]~output_o\ : std_logic;
SIGNAL \pcOut[4]~output_o\ : std_logic;
SIGNAL \pcOut[5]~output_o\ : std_logic;
SIGNAL \pcOut[6]~output_o\ : std_logic;
SIGNAL \pcOut[7]~output_o\ : std_logic;
SIGNAL \marOut[0]~output_o\ : std_logic;
SIGNAL \marOut[1]~output_o\ : std_logic;
SIGNAL \marOut[2]~output_o\ : std_logic;
SIGNAL \marOut[3]~output_o\ : std_logic;
SIGNAL \marOut[4]~output_o\ : std_logic;
SIGNAL \marOut[5]~output_o\ : std_logic;
SIGNAL \marOut[6]~output_o\ : std_logic;
SIGNAL \marOut[7]~output_o\ : std_logic;
SIGNAL \irOutput[0]~output_o\ : std_logic;
SIGNAL \irOutput[1]~output_o\ : std_logic;
SIGNAL \irOutput[2]~output_o\ : std_logic;
SIGNAL \irOutput[3]~output_o\ : std_logic;
SIGNAL \irOutput[4]~output_o\ : std_logic;
SIGNAL \irOutput[5]~output_o\ : std_logic;
SIGNAL \irOutput[6]~output_o\ : std_logic;
SIGNAL \irOutput[7]~output_o\ : std_logic;
SIGNAL \mdriOutput[0]~output_o\ : std_logic;
SIGNAL \mdriOutput[1]~output_o\ : std_logic;
SIGNAL \mdriOutput[2]~output_o\ : std_logic;
SIGNAL \mdriOutput[3]~output_o\ : std_logic;
SIGNAL \mdriOutput[4]~output_o\ : std_logic;
SIGNAL \mdriOutput[5]~output_o\ : std_logic;
SIGNAL \mdriOutput[6]~output_o\ : std_logic;
SIGNAL \mdriOutput[7]~output_o\ : std_logic;
SIGNAL \mdroOutput[0]~output_o\ : std_logic;
SIGNAL \mdroOutput[1]~output_o\ : std_logic;
SIGNAL \mdroOutput[2]~output_o\ : std_logic;
SIGNAL \mdroOutput[3]~output_o\ : std_logic;
SIGNAL \mdroOutput[4]~output_o\ : std_logic;
SIGNAL \mdroOutput[5]~output_o\ : std_logic;
SIGNAL \mdroOutput[6]~output_o\ : std_logic;
SIGNAL \mdroOutput[7]~output_o\ : std_logic;
SIGNAL \aOut[0]~output_o\ : std_logic;
SIGNAL \aOut[1]~output_o\ : std_logic;
SIGNAL \aOut[2]~output_o\ : std_logic;
SIGNAL \aOut[3]~output_o\ : std_logic;
SIGNAL \aOut[4]~output_o\ : std_logic;
SIGNAL \aOut[5]~output_o\ : std_logic;
SIGNAL \aOut[6]~output_o\ : std_logic;
SIGNAL \aOut[7]~output_o\ : std_logic;
SIGNAL \incrementOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ProgCount|output[0]~0_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~0_combout\ : std_logic;
SIGNAL \CU|current_state.load_mar~q\ : std_logic;
SIGNAL \CU|current_state.read_mem~0_combout\ : std_logic;
SIGNAL \CU|current_state.read_mem~q\ : std_logic;
SIGNAL \CU|current_state.load_mdri~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.load_ir~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.load_ir~q\ : std_logic;
SIGNAL \CU|current_state.decode~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.decode~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_a~q\ : std_logic;
SIGNAL \CU|ToALoad~0_combout\ : std_logic;
SIGNAL \aluPort|Add0~27_combout\ : std_logic;
SIGNAL \CU|current_state.staa_write_mem~q\ : std_logic;
SIGNAL \aluPort|Add0~28_combout\ : std_logic;
SIGNAL \aluPort|Add0~22_combout\ : std_logic;
SIGNAL \Acc|output[3]~feeder_combout\ : std_logic;
SIGNAL \aluPort|Add0~17_combout\ : std_logic;
SIGNAL \aluPort|Add0~18_combout\ : std_logic;
SIGNAL \Acc|output[2]~feeder_combout\ : std_logic;
SIGNAL \aluPort|Add0~12_combout\ : std_logic;
SIGNAL \aluPort|Add0~13_combout\ : std_logic;
SIGNAL \aluPort|Add0~7_combout\ : std_logic;
SIGNAL \Acc|output[0]~feeder_combout\ : std_logic;
SIGNAL \aluPort|Add0~1_combout\ : std_logic;
SIGNAL \aluPort|Add0~3_cout\ : std_logic;
SIGNAL \aluPort|Add0~5\ : std_logic;
SIGNAL \aluPort|Add0~9_combout\ : std_logic;
SIGNAL \aluPort|Add0~11_combout\ : std_logic;
SIGNAL \Acc|output[1]~feeder_combout\ : std_logic;
SIGNAL \aluPort|Add0~8_combout\ : std_logic;
SIGNAL \aluPort|Add0~10\ : std_logic;
SIGNAL \aluPort|Add0~14_combout\ : std_logic;
SIGNAL \aluPort|Add0~16_combout\ : std_logic;
SIGNAL \RAM|Z~104feeder_combout\ : std_logic;
SIGNAL \ProgCount|Add0~0_combout\ : std_logic;
SIGNAL \ProgCount|Add0~1\ : std_logic;
SIGNAL \ProgCount|Add0~2_combout\ : std_logic;
SIGNAL \ProgCount|Add0~3\ : std_logic;
SIGNAL \ProgCount|Add0~4_combout\ : std_logic;
SIGNAL \CU|WideOr2~0_combout\ : std_logic;
SIGNAL \IR|output[3]~feeder_combout\ : std_logic;
SIGNAL \Mux|output[3]~3_combout\ : std_logic;
SIGNAL \CU|WideOr3~combout\ : std_logic;
SIGNAL \IR|output[2]~feeder_combout\ : std_logic;
SIGNAL \Mux|output[2]~2_combout\ : std_logic;
SIGNAL \RAM|Z~462_combout\ : std_logic;
SIGNAL \RAM|Z~473_combout\ : std_logic;
SIGNAL \RAM|Z~104_q\ : std_logic;
SIGNAL \RAM|Z~440_combout\ : std_logic;
SIGNAL \RAM|Z~470_combout\ : std_logic;
SIGNAL \RAM|Z~96_q\ : std_logic;
SIGNAL \RAM|Z~456_combout\ : std_logic;
SIGNAL \RAM|Z~472_combout\ : std_logic;
SIGNAL \RAM|Z~80_q\ : std_logic;
SIGNAL \RAM|Z~520_combout\ : std_logic;
SIGNAL \RAM|Z~446_combout\ : std_logic;
SIGNAL \RAM|Z~471_combout\ : std_logic;
SIGNAL \RAM|Z~88_q\ : std_logic;
SIGNAL \RAM|Z~322_combout\ : std_logic;
SIGNAL \RAM|Z~323_combout\ : std_logic;
SIGNAL \RAM|Z~528_combout\ : std_logic;
SIGNAL \RAM|Z~468_combout\ : std_logic;
SIGNAL \RAM|Z~485_combout\ : std_logic;
SIGNAL \RAM|Z~136_q\ : std_logic;
SIGNAL \RAM|Z~452_combout\ : std_logic;
SIGNAL \RAM|Z~482_combout\ : std_logic;
SIGNAL \RAM|Z~120_q\ : std_logic;
SIGNAL \RAM|Z~527_combout\ : std_logic;
SIGNAL \RAM|Z~444_combout\ : std_logic;
SIGNAL \RAM|Z~483_combout\ : std_logic;
SIGNAL \RAM|Z~128_q\ : std_logic;
SIGNAL \RAM|Z~460_combout\ : std_logic;
SIGNAL \RAM|Z~484_combout\ : std_logic;
SIGNAL \RAM|Z~112_q\ : std_logic;
SIGNAL \RAM|Z~329_combout\ : std_logic;
SIGNAL \RAM|Z~330_combout\ : std_logic;
SIGNAL \RAM|Z~523_combout\ : std_logic;
SIGNAL \RAM|Z~442_combout\ : std_logic;
SIGNAL \RAM|Z~478_combout\ : std_logic;
SIGNAL \RAM|Z~32_q\ : std_logic;
SIGNAL \RAM|Z~526_combout\ : std_logic;
SIGNAL \RAM|Z~466_combout\ : std_logic;
SIGNAL \RAM|Z~481_combout\ : std_logic;
SIGNAL \RAM|Z~40_q\ : std_logic;
SIGNAL \RAM|Z~525_combout\ : std_logic;
SIGNAL \RAM|Z~458_combout\ : std_logic;
SIGNAL \RAM|Z~480_combout\ : std_logic;
SIGNAL \RAM|Z~16_q\ : std_logic;
SIGNAL \RAM|Z~524_combout\ : std_logic;
SIGNAL \RAM|Z~450_combout\ : std_logic;
SIGNAL \RAM|Z~479_combout\ : std_logic;
SIGNAL \RAM|Z~24_q\ : std_logic;
SIGNAL \RAM|Z~326_combout\ : std_logic;
SIGNAL \RAM|Z~327_combout\ : std_logic;
SIGNAL \RAM|Z~522_combout\ : std_logic;
SIGNAL \RAM|Z~464_combout\ : std_logic;
SIGNAL \RAM|Z~477_combout\ : std_logic;
SIGNAL \RAM|Z~72_q\ : std_logic;
SIGNAL \RAM|Z~448_combout\ : std_logic;
SIGNAL \RAM|Z~474_combout\ : std_logic;
SIGNAL \RAM|Z~56_q\ : std_logic;
SIGNAL \RAM|Z~521_combout\ : std_logic;
SIGNAL \RAM|Z~438_combout\ : std_logic;
SIGNAL \RAM|Z~475_combout\ : std_logic;
SIGNAL \RAM|Z~64_q\ : std_logic;
SIGNAL \RAM|Z~454_combout\ : std_logic;
SIGNAL \RAM|Z~476_combout\ : std_logic;
SIGNAL \RAM|Z~48_q\ : std_logic;
SIGNAL \RAM|Z~324_combout\ : std_logic;
SIGNAL \RAM|Z~325_combout\ : std_logic;
SIGNAL \RAM|Z~328_combout\ : std_logic;
SIGNAL \RAM|Z~331_combout\ : std_logic;
SIGNAL \RAM|Z~519_combout\ : std_logic;
SIGNAL \RAM|Z~469_combout\ : std_logic;
SIGNAL \RAM|Z~264_q\ : std_logic;
SIGNAL \RAM|Z~463_combout\ : std_logic;
SIGNAL \RAM|Z~232_q\ : std_logic;
SIGNAL \RAM|Z~467_combout\ : std_logic;
SIGNAL \RAM|Z~168_q\ : std_logic;
SIGNAL \RAM|Z~518_combout\ : std_logic;
SIGNAL \RAM|Z~465_combout\ : std_logic;
SIGNAL \RAM|Z~200_q\ : std_logic;
SIGNAL \RAM|Z~319_combout\ : std_logic;
SIGNAL \RAM|Z~320_combout\ : std_logic;
SIGNAL \RAM|Z~513_combout\ : std_logic;
SIGNAL \RAM|Z~445_combout\ : std_logic;
SIGNAL \RAM|Z~256_q\ : std_logic;
SIGNAL \RAM|Z~443_combout\ : std_logic;
SIGNAL \RAM|Z~160_q\ : std_logic;
SIGNAL \RAM|Z~224feeder_combout\ : std_logic;
SIGNAL \RAM|Z~441_combout\ : std_logic;
SIGNAL \RAM|Z~224_q\ : std_logic;
SIGNAL \RAM|Z~312_combout\ : std_logic;
SIGNAL \RAM|Z~512_combout\ : std_logic;
SIGNAL \RAM|Z~439_combout\ : std_logic;
SIGNAL \RAM|Z~192_q\ : std_logic;
SIGNAL \RAM|Z~313_combout\ : std_logic;
SIGNAL \RAM|Z~514_combout\ : std_logic;
SIGNAL \RAM|Z~447_combout\ : std_logic;
SIGNAL \RAM|Z~216_q\ : std_logic;
SIGNAL \RAM|Z~453_combout\ : std_logic;
SIGNAL \RAM|Z~248_q\ : std_logic;
SIGNAL \RAM|Z~449_combout\ : std_logic;
SIGNAL \RAM|Z~184_q\ : std_logic;
SIGNAL \RAM|Z~515_combout\ : std_logic;
SIGNAL \RAM|Z~451_combout\ : std_logic;
SIGNAL \RAM|Z~152_q\ : std_logic;
SIGNAL \RAM|Z~314_combout\ : std_logic;
SIGNAL \RAM|Z~315_combout\ : std_logic;
SIGNAL \RAM|Z~176feeder_combout\ : std_logic;
SIGNAL \RAM|Z~455_combout\ : std_logic;
SIGNAL \RAM|Z~176_q\ : std_logic;
SIGNAL \RAM|Z~461_combout\ : std_logic;
SIGNAL \RAM|Z~240_q\ : std_logic;
SIGNAL \RAM|Z~517_combout\ : std_logic;
SIGNAL \RAM|Z~459_combout\ : std_logic;
SIGNAL \RAM|Z~144_q\ : std_logic;
SIGNAL \RAM|Z~516_combout\ : std_logic;
SIGNAL \RAM|Z~457_combout\ : std_logic;
SIGNAL \RAM|Z~208_q\ : std_logic;
SIGNAL \RAM|Z~316_combout\ : std_logic;
SIGNAL \RAM|Z~317_combout\ : std_logic;
SIGNAL \RAM|Z~318_combout\ : std_logic;
SIGNAL \RAM|Z~321_combout\ : std_logic;
SIGNAL \RAM|Z~332_combout\ : std_logic;
SIGNAL \CU|WideOr4~0_combout\ : std_logic;
SIGNAL \aluPort|Add0~15\ : std_logic;
SIGNAL \aluPort|Add0~19_combout\ : std_logic;
SIGNAL \aluPort|Add0~21_combout\ : std_logic;
SIGNAL \RAM|Z~249_q\ : std_logic;
SIGNAL \RAM|Z~185_q\ : std_logic;
SIGNAL \RAM|Z~217feeder_combout\ : std_logic;
SIGNAL \RAM|Z~217_q\ : std_logic;
SIGNAL \RAM|Z~153_q\ : std_logic;
SIGNAL \RAM|Z~333_combout\ : std_logic;
SIGNAL \RAM|Z~334_combout\ : std_logic;
SIGNAL \RAM|Z~201feeder_combout\ : std_logic;
SIGNAL \RAM|Z~201_q\ : std_logic;
SIGNAL \RAM|Z~265_q\ : std_logic;
SIGNAL \RAM|Z~536_combout\ : std_logic;
SIGNAL \RAM|Z~169_q\ : std_logic;
SIGNAL \RAM|Z~535_combout\ : std_logic;
SIGNAL \RAM|Z~233_q\ : std_logic;
SIGNAL \RAM|Z~340_combout\ : std_logic;
SIGNAL \RAM|Z~341_combout\ : std_logic;
SIGNAL \RAM|Z~529_combout\ : std_logic;
SIGNAL \RAM|Z~225_q\ : std_logic;
SIGNAL \RAM|Z~530_combout\ : std_logic;
SIGNAL \RAM|Z~161_q\ : std_logic;
SIGNAL \RAM|Z~193_q\ : std_logic;
SIGNAL \RAM|Z~335_combout\ : std_logic;
SIGNAL \RAM|Z~257_q\ : std_logic;
SIGNAL \RAM|Z~336_combout\ : std_logic;
SIGNAL \RAM|Z~534_combout\ : std_logic;
SIGNAL \RAM|Z~241_q\ : std_logic;
SIGNAL \RAM|Z~531_combout\ : std_logic;
SIGNAL \RAM|Z~209_q\ : std_logic;
SIGNAL \RAM|Z~533_combout\ : std_logic;
SIGNAL \RAM|Z~145_q\ : std_logic;
SIGNAL \RAM|Z~532_combout\ : std_logic;
SIGNAL \RAM|Z~177_q\ : std_logic;
SIGNAL \RAM|Z~337_combout\ : std_logic;
SIGNAL \RAM|Z~338_combout\ : std_logic;
SIGNAL \RAM|Z~339_combout\ : std_logic;
SIGNAL \RAM|Z~342_combout\ : std_logic;
SIGNAL \RAM|Z~73_q\ : std_logic;
SIGNAL \RAM|Z~65_q\ : std_logic;
SIGNAL \RAM|Z~538_combout\ : std_logic;
SIGNAL \RAM|Z~49_q\ : std_logic;
SIGNAL \RAM|Z~537_combout\ : std_logic;
SIGNAL \RAM|Z~57_q\ : std_logic;
SIGNAL \RAM|Z~343_combout\ : std_logic;
SIGNAL \RAM|Z~344_combout\ : std_logic;
SIGNAL \RAM|Z~137_q\ : std_logic;
SIGNAL \RAM|Z~129feeder_combout\ : std_logic;
SIGNAL \RAM|Z~129_q\ : std_logic;
SIGNAL \RAM|Z~121_q\ : std_logic;
SIGNAL \RAM|Z~541_combout\ : std_logic;
SIGNAL \RAM|Z~113_q\ : std_logic;
SIGNAL \RAM|Z~350_combout\ : std_logic;
SIGNAL \RAM|Z~351_combout\ : std_logic;
SIGNAL \RAM|Z~540_combout\ : std_logic;
SIGNAL \RAM|Z~105_q\ : std_logic;
SIGNAL \RAM|Z~89_q\ : std_logic;
SIGNAL \RAM|Z~539_combout\ : std_logic;
SIGNAL \RAM|Z~97_q\ : std_logic;
SIGNAL \RAM|Z~81_q\ : std_logic;
SIGNAL \RAM|Z~345_combout\ : std_logic;
SIGNAL \RAM|Z~346_combout\ : std_logic;
SIGNAL \RAM|Z~25feeder_combout\ : std_logic;
SIGNAL \RAM|Z~25_q\ : std_logic;
SIGNAL \RAM|Z~41_q\ : std_logic;
SIGNAL \RAM|Z~33feeder_combout\ : std_logic;
SIGNAL \RAM|Z~33_q\ : std_logic;
SIGNAL \RAM|Z~17_q\ : std_logic;
SIGNAL \RAM|Z~347_combout\ : std_logic;
SIGNAL \RAM|Z~348_combout\ : std_logic;
SIGNAL \RAM|Z~349_combout\ : std_logic;
SIGNAL \RAM|Z~352_combout\ : std_logic;
SIGNAL \RAM|Z~353_combout\ : std_logic;
SIGNAL \aluPort|Add0~20\ : std_logic;
SIGNAL \aluPort|Add0~24_combout\ : std_logic;
SIGNAL \aluPort|Add0~26_combout\ : std_logic;
SIGNAL \Acc|output[4]~feeder_combout\ : std_logic;
SIGNAL \aluPort|Add0~23_combout\ : std_logic;
SIGNAL \aluPort|Add0~25\ : std_logic;
SIGNAL \aluPort|Add0~29_combout\ : std_logic;
SIGNAL \aluPort|Add0~31_combout\ : std_logic;
SIGNAL \mdro|output[5]~feeder_combout\ : std_logic;
SIGNAL \RAM|Z~203feeder_combout\ : std_logic;
SIGNAL \RAM|Z~203_q\ : std_logic;
SIGNAL \RAM|Z~267_q\ : std_logic;
SIGNAL \RAM|Z~559_combout\ : std_logic;
SIGNAL \RAM|Z~171_q\ : std_logic;
SIGNAL \RAM|Z~558_combout\ : std_logic;
SIGNAL \RAM|Z~235_q\ : std_logic;
SIGNAL \RAM|Z~382_combout\ : std_logic;
SIGNAL \RAM|Z~383_combout\ : std_logic;
SIGNAL \RAM|Z~550_combout\ : std_logic;
SIGNAL \RAM|Z~219feeder_combout\ : std_logic;
SIGNAL \RAM|Z~219_q\ : std_logic;
SIGNAL \RAM|Z~551_combout\ : std_logic;
SIGNAL \RAM|Z~155_q\ : std_logic;
SIGNAL \RAM|Z~375_combout\ : std_logic;
SIGNAL \RAM|Z~251feeder_combout\ : std_logic;
SIGNAL \RAM|Z~251_q\ : std_logic;
SIGNAL \RAM|Z~187_q\ : std_logic;
SIGNAL \RAM|Z~376_combout\ : std_logic;
SIGNAL \RAM|Z~557_combout\ : std_logic;
SIGNAL \RAM|Z~243_q\ : std_logic;
SIGNAL \RAM|Z~554_combout\ : std_logic;
SIGNAL \RAM|Z~211_q\ : std_logic;
SIGNAL \RAM|Z~556_combout\ : std_logic;
SIGNAL \RAM|Z~147_q\ : std_logic;
SIGNAL \RAM|Z~555_combout\ : std_logic;
SIGNAL \RAM|Z~179_q\ : std_logic;
SIGNAL \RAM|Z~379_combout\ : std_logic;
SIGNAL \RAM|Z~380_combout\ : std_logic;
SIGNAL \RAM|Z~227feeder_combout\ : std_logic;
SIGNAL \RAM|Z~227_q\ : std_logic;
SIGNAL \RAM|Z~553_combout\ : std_logic;
SIGNAL \RAM|Z~259_q\ : std_logic;
SIGNAL \RAM|Z~163_q\ : std_logic;
SIGNAL \RAM|Z~552_combout\ : std_logic;
SIGNAL \RAM|Z~195_q\ : std_logic;
SIGNAL \RAM|Z~377_combout\ : std_logic;
SIGNAL \RAM|Z~378_combout\ : std_logic;
SIGNAL \RAM|Z~381_combout\ : std_logic;
SIGNAL \RAM|Z~384_combout\ : std_logic;
SIGNAL \RAM|Z~123_q\ : std_logic;
SIGNAL \RAM|Z~565_combout\ : std_logic;
SIGNAL \RAM|Z~115_q\ : std_logic;
SIGNAL \RAM|Z~392_combout\ : std_logic;
SIGNAL \RAM|Z~139_q\ : std_logic;
SIGNAL \RAM|Z~564_combout\ : std_logic;
SIGNAL \RAM|Z~131_q\ : std_logic;
SIGNAL \RAM|Z~393_combout\ : std_logic;
SIGNAL \RAM|Z~75feeder_combout\ : std_logic;
SIGNAL \RAM|Z~75_q\ : std_logic;
SIGNAL \RAM|Z~67_q\ : std_logic;
SIGNAL \RAM|Z~560_combout\ : std_logic;
SIGNAL \RAM|Z~51_q\ : std_logic;
SIGNAL \RAM|Z~59_q\ : std_logic;
SIGNAL \RAM|Z~385_combout\ : std_logic;
SIGNAL \RAM|Z~386_combout\ : std_logic;
SIGNAL \RAM|Z~562_combout\ : std_logic;
SIGNAL \RAM|Z~107_q\ : std_logic;
SIGNAL \RAM|Z~561_combout\ : std_logic;
SIGNAL \RAM|Z~91_q\ : std_logic;
SIGNAL \RAM|Z~99_q\ : std_logic;
SIGNAL \RAM|Z~83_q\ : std_logic;
SIGNAL \RAM|Z~387_combout\ : std_logic;
SIGNAL \RAM|Z~388_combout\ : std_logic;
SIGNAL \RAM|Z~563_combout\ : std_logic;
SIGNAL \RAM|Z~27_q\ : std_logic;
SIGNAL \RAM|Z~43_q\ : std_logic;
SIGNAL \RAM|Z~35feeder_combout\ : std_logic;
SIGNAL \RAM|Z~35_q\ : std_logic;
SIGNAL \RAM|Z~19_q\ : std_logic;
SIGNAL \RAM|Z~389_combout\ : std_logic;
SIGNAL \RAM|Z~390_combout\ : std_logic;
SIGNAL \RAM|Z~391_combout\ : std_logic;
SIGNAL \RAM|Z~394_combout\ : std_logic;
SIGNAL \RAM|Z~395_combout\ : std_logic;
SIGNAL \IR|output[5]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state~21_combout\ : std_logic;
SIGNAL \CU|current_state.staa_load_mdro~q\ : std_logic;
SIGNAL \CU|WideOr5~combout\ : std_logic;
SIGNAL \aluPort|Add0~32_combout\ : std_logic;
SIGNAL \aluPort|Add0~33_combout\ : std_logic;
SIGNAL \aluPort|Add0~30\ : std_logic;
SIGNAL \aluPort|Add0~34_combout\ : std_logic;
SIGNAL \aluPort|Add0~36_combout\ : std_logic;
SIGNAL \mdro|output[6]~feeder_combout\ : std_logic;
SIGNAL \RAM|Z~567_combout\ : std_logic;
SIGNAL \RAM|Z~268_q\ : std_logic;
SIGNAL \RAM|Z~236_q\ : std_logic;
SIGNAL \RAM|Z~566_combout\ : std_logic;
SIGNAL \RAM|Z~204_q\ : std_logic;
SIGNAL \RAM|Z~172_q\ : std_logic;
SIGNAL \RAM|Z~403_combout\ : std_logic;
SIGNAL \RAM|Z~404_combout\ : std_logic;
SIGNAL \RAM|Z~260_q\ : std_logic;
SIGNAL \RAM|Z~196_q\ : std_logic;
SIGNAL \RAM|Z~228feeder_combout\ : std_logic;
SIGNAL \RAM|Z~228_q\ : std_logic;
SIGNAL \RAM|Z~164_q\ : std_logic;
SIGNAL \RAM|Z~396_combout\ : std_logic;
SIGNAL \RAM|Z~397_combout\ : std_logic;
SIGNAL \RAM|Z~180_q\ : std_logic;
SIGNAL \RAM|Z~244_q\ : std_logic;
SIGNAL \RAM|Z~148_q\ : std_logic;
SIGNAL \RAM|Z~212feeder_combout\ : std_logic;
SIGNAL \RAM|Z~212_q\ : std_logic;
SIGNAL \RAM|Z~400_combout\ : std_logic;
SIGNAL \RAM|Z~401_combout\ : std_logic;
SIGNAL \RAM|Z~188feeder_combout\ : std_logic;
SIGNAL \RAM|Z~188_q\ : std_logic;
SIGNAL \RAM|Z~156_q\ : std_logic;
SIGNAL \RAM|Z~398_combout\ : std_logic;
SIGNAL \RAM|Z~252_q\ : std_logic;
SIGNAL \RAM|Z~220feeder_combout\ : std_logic;
SIGNAL \RAM|Z~220_q\ : std_logic;
SIGNAL \RAM|Z~399_combout\ : std_logic;
SIGNAL \RAM|Z~402_combout\ : std_logic;
SIGNAL \RAM|Z~405_combout\ : std_logic;
SIGNAL \RAM|Z~570_combout\ : std_logic;
SIGNAL \RAM|Z~140_q\ : std_logic;
SIGNAL \RAM|Z~124_q\ : std_logic;
SIGNAL \RAM|Z~132feeder_combout\ : std_logic;
SIGNAL \RAM|Z~132_q\ : std_logic;
SIGNAL \RAM|Z~116_q\ : std_logic;
SIGNAL \RAM|Z~413_combout\ : std_logic;
SIGNAL \RAM|Z~414_combout\ : std_logic;
SIGNAL \RAM|Z~108feeder_combout\ : std_logic;
SIGNAL \RAM|Z~108_q\ : std_logic;
SIGNAL \RAM|Z~100_q\ : std_logic;
SIGNAL \RAM|Z~92feeder_combout\ : std_logic;
SIGNAL \RAM|Z~92_q\ : std_logic;
SIGNAL \RAM|Z~84_q\ : std_logic;
SIGNAL \RAM|Z~406_combout\ : std_logic;
SIGNAL \RAM|Z~407_combout\ : std_logic;
SIGNAL \RAM|Z~44_q\ : std_logic;
SIGNAL \RAM|Z~28feeder_combout\ : std_logic;
SIGNAL \RAM|Z~28_q\ : std_logic;
SIGNAL \RAM|Z~20_q\ : std_logic;
SIGNAL \RAM|Z~410_combout\ : std_logic;
SIGNAL \RAM|Z~569_combout\ : std_logic;
SIGNAL \RAM|Z~36_q\ : std_logic;
SIGNAL \RAM|Z~411_combout\ : std_logic;
SIGNAL \RAM|Z~568_combout\ : std_logic;
SIGNAL \RAM|Z~76_q\ : std_logic;
SIGNAL \RAM|Z~60_q\ : std_logic;
SIGNAL \RAM|Z~68feeder_combout\ : std_logic;
SIGNAL \RAM|Z~68_q\ : std_logic;
SIGNAL \RAM|Z~52_q\ : std_logic;
SIGNAL \RAM|Z~408_combout\ : std_logic;
SIGNAL \RAM|Z~409_combout\ : std_logic;
SIGNAL \RAM|Z~412_combout\ : std_logic;
SIGNAL \RAM|Z~415_combout\ : std_logic;
SIGNAL \RAM|Z~416_combout\ : std_logic;
SIGNAL \CU|current_state~19_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.ldaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.ldaa_read_mem~q\ : std_logic;
SIGNAL \aluPort|Equal4~0_combout\ : std_logic;
SIGNAL \aluPort|Add0~0_combout\ : std_logic;
SIGNAL \aluPort|Add0~4_combout\ : std_logic;
SIGNAL \aluPort|Add0~6_combout\ : std_logic;
SIGNAL \RAM|Z~491_combout\ : std_logic;
SIGNAL \RAM|Z~262_q\ : std_logic;
SIGNAL \RAM|Z~230_q\ : std_logic;
SIGNAL \RAM|Z~490_combout\ : std_logic;
SIGNAL \RAM|Z~198_q\ : std_logic;
SIGNAL \RAM|Z~166_q\ : std_logic;
SIGNAL \RAM|Z~277_combout\ : std_logic;
SIGNAL \RAM|Z~278_combout\ : std_logic;
SIGNAL \RAM|Z~486_combout\ : std_logic;
SIGNAL \RAM|Z~190_q\ : std_logic;
SIGNAL \RAM|Z~487_combout\ : std_logic;
SIGNAL \RAM|Z~254_q\ : std_logic;
SIGNAL \RAM|Z~158_q\ : std_logic;
SIGNAL \RAM|Z~222feeder_combout\ : std_logic;
SIGNAL \RAM|Z~222_q\ : std_logic;
SIGNAL \RAM|Z~270_combout\ : std_logic;
SIGNAL \RAM|Z~271_combout\ : std_logic;
SIGNAL \RAM|Z~214feeder_combout\ : std_logic;
SIGNAL \RAM|Z~214_q\ : std_logic;
SIGNAL \RAM|Z~246_q\ : std_logic;
SIGNAL \RAM|Z~182_q\ : std_logic;
SIGNAL \RAM|Z~150_q\ : std_logic;
SIGNAL \RAM|Z~272_combout\ : std_logic;
SIGNAL \RAM|Z~273_combout\ : std_logic;
SIGNAL \RAM|Z~488_combout\ : std_logic;
SIGNAL \RAM|Z~174_q\ : std_logic;
SIGNAL \RAM|Z~489_combout\ : std_logic;
SIGNAL \RAM|Z~238_q\ : std_logic;
SIGNAL \RAM|Z~142_q\ : std_logic;
SIGNAL \RAM|Z~206feeder_combout\ : std_logic;
SIGNAL \RAM|Z~206_q\ : std_logic;
SIGNAL \RAM|Z~274_combout\ : std_logic;
SIGNAL \RAM|Z~275_combout\ : std_logic;
SIGNAL \RAM|Z~276_combout\ : std_logic;
SIGNAL \RAM|Z~279_combout\ : std_logic;
SIGNAL \RAM|Z~499_combout\ : std_logic;
SIGNAL \RAM|Z~134_q\ : std_logic;
SIGNAL \RAM|Z~118_q\ : std_logic;
SIGNAL \RAM|Z~498_combout\ : std_logic;
SIGNAL \RAM|Z~110_q\ : std_logic;
SIGNAL \RAM|Z~497_combout\ : std_logic;
SIGNAL \RAM|Z~126_q\ : std_logic;
SIGNAL \RAM|Z~287_combout\ : std_logic;
SIGNAL \RAM|Z~288_combout\ : std_logic;
SIGNAL \RAM|Z~102feeder_combout\ : std_logic;
SIGNAL \RAM|Z~102_q\ : std_logic;
SIGNAL \RAM|Z~94_q\ : std_logic;
SIGNAL \RAM|Z~492_combout\ : std_logic;
SIGNAL \RAM|Z~78_q\ : std_logic;
SIGNAL \RAM|Z~86_q\ : std_logic;
SIGNAL \RAM|Z~280_combout\ : std_logic;
SIGNAL \RAM|Z~281_combout\ : std_logic;
SIGNAL \RAM|Z~494_combout\ : std_logic;
SIGNAL \RAM|Z~30_q\ : std_logic;
SIGNAL \RAM|Z~496_combout\ : std_logic;
SIGNAL \RAM|Z~38_q\ : std_logic;
SIGNAL \RAM|Z~22_q\ : std_logic;
SIGNAL \RAM|Z~495_combout\ : std_logic;
SIGNAL \RAM|Z~14_q\ : std_logic;
SIGNAL \RAM|Z~284_combout\ : std_logic;
SIGNAL \RAM|Z~285_combout\ : std_logic;
SIGNAL \RAM|Z~493_combout\ : std_logic;
SIGNAL \RAM|Z~70_q\ : std_logic;
SIGNAL \RAM|Z~54_q\ : std_logic;
SIGNAL \RAM|Z~62feeder_combout\ : std_logic;
SIGNAL \RAM|Z~62_q\ : std_logic;
SIGNAL \RAM|Z~46_q\ : std_logic;
SIGNAL \RAM|Z~282_combout\ : std_logic;
SIGNAL \RAM|Z~283_combout\ : std_logic;
SIGNAL \RAM|Z~286_combout\ : std_logic;
SIGNAL \RAM|Z~289_combout\ : std_logic;
SIGNAL \RAM|Z~290_combout\ : std_logic;
SIGNAL \IR|output[0]~feeder_combout\ : std_logic;
SIGNAL \Mux|output[0]~0_combout\ : std_logic;
SIGNAL \RAM|Z~263feeder_combout\ : std_logic;
SIGNAL \RAM|Z~263_q\ : std_logic;
SIGNAL \RAM|Z~199_q\ : std_logic;
SIGNAL \RAM|Z~505_combout\ : std_logic;
SIGNAL \RAM|Z~167_q\ : std_logic;
SIGNAL \RAM|Z~504_combout\ : std_logic;
SIGNAL \RAM|Z~231_q\ : std_logic;
SIGNAL \RAM|Z~298_combout\ : std_logic;
SIGNAL \RAM|Z~299_combout\ : std_logic;
SIGNAL \RAM|Z~247feeder_combout\ : std_logic;
SIGNAL \RAM|Z~247_q\ : std_logic;
SIGNAL \RAM|Z~183_q\ : std_logic;
SIGNAL \RAM|Z~215feeder_combout\ : std_logic;
SIGNAL \RAM|Z~215_q\ : std_logic;
SIGNAL \RAM|Z~151_q\ : std_logic;
SIGNAL \RAM|Z~291_combout\ : std_logic;
SIGNAL \RAM|Z~292_combout\ : std_logic;
SIGNAL \RAM|Z~502_combout\ : std_logic;
SIGNAL \RAM|Z~207_q\ : std_logic;
SIGNAL \RAM|Z~239_q\ : std_logic;
SIGNAL \RAM|Z~175_q\ : std_logic;
SIGNAL \RAM|Z~503_combout\ : std_logic;
SIGNAL \RAM|Z~143_q\ : std_logic;
SIGNAL \RAM|Z~295_combout\ : std_logic;
SIGNAL \RAM|Z~296_combout\ : std_logic;
SIGNAL \RAM|Z~500_combout\ : std_logic;
SIGNAL \RAM|Z~223_q\ : std_logic;
SIGNAL \RAM|Z~255_q\ : std_logic;
SIGNAL \RAM|Z~501_combout\ : std_logic;
SIGNAL \RAM|Z~159_q\ : std_logic;
SIGNAL \RAM|Z~191_q\ : std_logic;
SIGNAL \RAM|Z~293_combout\ : std_logic;
SIGNAL \RAM|Z~294_combout\ : std_logic;
SIGNAL \RAM|Z~297_combout\ : std_logic;
SIGNAL \RAM|Z~300_combout\ : std_logic;
SIGNAL \RAM|Z~71_q\ : std_logic;
SIGNAL \RAM|Z~63_q\ : std_logic;
SIGNAL \RAM|Z~506_combout\ : std_logic;
SIGNAL \RAM|Z~55_q\ : std_logic;
SIGNAL \RAM|Z~47_q\ : std_logic;
SIGNAL \RAM|Z~301_combout\ : std_logic;
SIGNAL \RAM|Z~302_combout\ : std_logic;
SIGNAL \RAM|Z~127feeder_combout\ : std_logic;
SIGNAL \RAM|Z~127_q\ : std_logic;
SIGNAL \RAM|Z~135_q\ : std_logic;
SIGNAL \RAM|Z~119_q\ : std_logic;
SIGNAL \RAM|Z~111feeder_combout\ : std_logic;
SIGNAL \RAM|Z~111_q\ : std_logic;
SIGNAL \RAM|Z~308_combout\ : std_logic;
SIGNAL \RAM|Z~309_combout\ : std_logic;
SIGNAL \RAM|Z~511_combout\ : std_logic;
SIGNAL \RAM|Z~39feeder_combout\ : std_logic;
SIGNAL \RAM|Z~39_q\ : std_logic;
SIGNAL \RAM|Z~510_combout\ : std_logic;
SIGNAL \RAM|Z~31feeder_combout\ : std_logic;
SIGNAL \RAM|Z~31_q\ : std_logic;
SIGNAL \RAM|Z~15_q\ : std_logic;
SIGNAL \RAM|Z~305_combout\ : std_logic;
SIGNAL \RAM|Z~509_combout\ : std_logic;
SIGNAL \RAM|Z~23_q\ : std_logic;
SIGNAL \RAM|Z~306_combout\ : std_logic;
SIGNAL \RAM|Z~508_combout\ : std_logic;
SIGNAL \RAM|Z~103_q\ : std_logic;
SIGNAL \RAM|Z~87_q\ : std_logic;
SIGNAL \RAM|Z~507_combout\ : std_logic;
SIGNAL \RAM|Z~95_q\ : std_logic;
SIGNAL \RAM|Z~79_q\ : std_logic;
SIGNAL \RAM|Z~303_combout\ : std_logic;
SIGNAL \RAM|Z~304_combout\ : std_logic;
SIGNAL \RAM|Z~307_combout\ : std_logic;
SIGNAL \RAM|Z~310_combout\ : std_logic;
SIGNAL \RAM|Z~311_combout\ : std_logic;
SIGNAL \IR|output[1]~feeder_combout\ : std_logic;
SIGNAL \Mux|output[1]~1_combout\ : std_logic;
SIGNAL \RAM|Z~545_combout\ : std_logic;
SIGNAL \RAM|Z~266_q\ : std_logic;
SIGNAL \RAM|Z~234_q\ : std_logic;
SIGNAL \RAM|Z~544_combout\ : std_logic;
SIGNAL \RAM|Z~202_q\ : std_logic;
SIGNAL \RAM|Z~170_q\ : std_logic;
SIGNAL \RAM|Z~361_combout\ : std_logic;
SIGNAL \RAM|Z~362_combout\ : std_logic;
SIGNAL \RAM|Z~258feeder_combout\ : std_logic;
SIGNAL \RAM|Z~258_q\ : std_logic;
SIGNAL \RAM|Z~194_q\ : std_logic;
SIGNAL \RAM|Z~162_q\ : std_logic;
SIGNAL \RAM|Z~226feeder_combout\ : std_logic;
SIGNAL \RAM|Z~226_q\ : std_logic;
SIGNAL \RAM|Z~354_combout\ : std_logic;
SIGNAL \RAM|Z~355_combout\ : std_logic;
SIGNAL \RAM|Z~542_combout\ : std_logic;
SIGNAL \RAM|Z~218_q\ : std_logic;
SIGNAL \RAM|Z~250_q\ : std_logic;
SIGNAL \RAM|Z~543_combout\ : std_logic;
SIGNAL \RAM|Z~154_q\ : std_logic;
SIGNAL \RAM|Z~186_q\ : std_logic;
SIGNAL \RAM|Z~356_combout\ : std_logic;
SIGNAL \RAM|Z~357_combout\ : std_logic;
SIGNAL \RAM|Z~178_q\ : std_logic;
SIGNAL \RAM|Z~146_q\ : std_logic;
SIGNAL \RAM|Z~210_q\ : std_logic;
SIGNAL \RAM|Z~358_combout\ : std_logic;
SIGNAL \RAM|Z~242_q\ : std_logic;
SIGNAL \RAM|Z~359_combout\ : std_logic;
SIGNAL \RAM|Z~360_combout\ : std_logic;
SIGNAL \RAM|Z~363_combout\ : std_logic;
SIGNAL \RAM|Z~106feeder_combout\ : std_logic;
SIGNAL \RAM|Z~106_q\ : std_logic;
SIGNAL \RAM|Z~98_q\ : std_logic;
SIGNAL \RAM|Z~546_combout\ : std_logic;
SIGNAL \RAM|Z~90_q\ : std_logic;
SIGNAL \RAM|Z~82_q\ : std_logic;
SIGNAL \RAM|Z~364_combout\ : std_logic;
SIGNAL \RAM|Z~365_combout\ : std_logic;
SIGNAL \RAM|Z~549_combout\ : std_logic;
SIGNAL \RAM|Z~138_q\ : std_logic;
SIGNAL \RAM|Z~122_q\ : std_logic;
SIGNAL \RAM|Z~130feeder_combout\ : std_logic;
SIGNAL \RAM|Z~130_q\ : std_logic;
SIGNAL \RAM|Z~114_q\ : std_logic;
SIGNAL \RAM|Z~371_combout\ : std_logic;
SIGNAL \RAM|Z~372_combout\ : std_logic;
SIGNAL \RAM|Z~34feeder_combout\ : std_logic;
SIGNAL \RAM|Z~34_q\ : std_logic;
SIGNAL \RAM|Z~42_q\ : std_logic;
SIGNAL \RAM|Z~26_q\ : std_logic;
SIGNAL \RAM|Z~18_q\ : std_logic;
SIGNAL \RAM|Z~368_combout\ : std_logic;
SIGNAL \RAM|Z~369_combout\ : std_logic;
SIGNAL \RAM|Z~548_combout\ : std_logic;
SIGNAL \RAM|Z~74_q\ : std_logic;
SIGNAL \RAM|Z~58_q\ : std_logic;
SIGNAL \RAM|Z~547_combout\ : std_logic;
SIGNAL \RAM|Z~66_q\ : std_logic;
SIGNAL \RAM|Z~50_q\ : std_logic;
SIGNAL \RAM|Z~366_combout\ : std_logic;
SIGNAL \RAM|Z~367_combout\ : std_logic;
SIGNAL \RAM|Z~370_combout\ : std_logic;
SIGNAL \RAM|Z~373_combout\ : std_logic;
SIGNAL \RAM|Z~374_combout\ : std_logic;
SIGNAL \IR|output[4]~feeder_combout\ : std_logic;
SIGNAL \ProgCount|Add0~5\ : std_logic;
SIGNAL \ProgCount|Add0~6_combout\ : std_logic;
SIGNAL \Mux|output[4]~4_combout\ : std_logic;
SIGNAL \aluPort|Add0~37_combout\ : std_logic;
SIGNAL \aluPort|Add0~38_combout\ : std_logic;
SIGNAL \aluPort|Add0~35\ : std_logic;
SIGNAL \aluPort|Add0~39_combout\ : std_logic;
SIGNAL \aluPort|Add0~41_combout\ : std_logic;
SIGNAL \mdro|output[7]~feeder_combout\ : std_logic;
SIGNAL \RAM|Z~582_combout\ : std_logic;
SIGNAL \RAM|Z~173_q\ : std_logic;
SIGNAL \RAM|Z~581_combout\ : std_logic;
SIGNAL \RAM|Z~237_q\ : std_logic;
SIGNAL \RAM|Z~424_combout\ : std_logic;
SIGNAL \RAM|Z~269_q\ : std_logic;
SIGNAL \RAM|Z~205feeder_combout\ : std_logic;
SIGNAL \RAM|Z~205_q\ : std_logic;
SIGNAL \RAM|Z~425_combout\ : std_logic;
SIGNAL \RAM|Z~573_combout\ : std_logic;
SIGNAL \RAM|Z~229_q\ : std_logic;
SIGNAL \RAM|Z~576_combout\ : std_logic;
SIGNAL \RAM|Z~261_q\ : std_logic;
SIGNAL \RAM|Z~574_combout\ : std_logic;
SIGNAL \RAM|Z~197_q\ : std_logic;
SIGNAL \RAM|Z~575_combout\ : std_logic;
SIGNAL \RAM|Z~165_q\ : std_logic;
SIGNAL \RAM|Z~419_combout\ : std_logic;
SIGNAL \RAM|Z~420_combout\ : std_logic;
SIGNAL \RAM|Z~580_combout\ : std_logic;
SIGNAL \RAM|Z~245_q\ : std_logic;
SIGNAL \RAM|Z~579_combout\ : std_logic;
SIGNAL \RAM|Z~149_q\ : std_logic;
SIGNAL \RAM|Z~578_combout\ : std_logic;
SIGNAL \RAM|Z~181_q\ : std_logic;
SIGNAL \RAM|Z~421_combout\ : std_logic;
SIGNAL \RAM|Z~577_combout\ : std_logic;
SIGNAL \RAM|Z~213_q\ : std_logic;
SIGNAL \RAM|Z~422_combout\ : std_logic;
SIGNAL \RAM|Z~423_combout\ : std_logic;
SIGNAL \RAM|Z~253_q\ : std_logic;
SIGNAL \RAM|Z~189_q\ : std_logic;
SIGNAL \RAM|Z~571_combout\ : std_logic;
SIGNAL \RAM|Z~221_q\ : std_logic;
SIGNAL \RAM|Z~572_combout\ : std_logic;
SIGNAL \RAM|Z~157feeder_combout\ : std_logic;
SIGNAL \RAM|Z~157_q\ : std_logic;
SIGNAL \RAM|Z~417_combout\ : std_logic;
SIGNAL \RAM|Z~418_combout\ : std_logic;
SIGNAL \RAM|Z~426_combout\ : std_logic;
SIGNAL \RAM|Z~141_q\ : std_logic;
SIGNAL \RAM|Z~586_combout\ : std_logic;
SIGNAL \RAM|Z~133_q\ : std_logic;
SIGNAL \RAM|Z~125_q\ : std_logic;
SIGNAL \RAM|Z~587_combout\ : std_logic;
SIGNAL \RAM|Z~117_q\ : std_logic;
SIGNAL \RAM|Z~434_combout\ : std_logic;
SIGNAL \RAM|Z~435_combout\ : std_logic;
SIGNAL \RAM|Z~77feeder_combout\ : std_logic;
SIGNAL \RAM|Z~77_q\ : std_logic;
SIGNAL \RAM|Z~69_q\ : std_logic;
SIGNAL \RAM|Z~61feeder_combout\ : std_logic;
SIGNAL \RAM|Z~61_q\ : std_logic;
SIGNAL \RAM|Z~53_q\ : std_logic;
SIGNAL \RAM|Z~427_combout\ : std_logic;
SIGNAL \RAM|Z~428_combout\ : std_logic;
SIGNAL \RAM|Z~583_combout\ : std_logic;
SIGNAL \RAM|Z~93_q\ : std_logic;
SIGNAL \RAM|Z~584_combout\ : std_logic;
SIGNAL \RAM|Z~101_q\ : std_logic;
SIGNAL \RAM|Z~85_q\ : std_logic;
SIGNAL \RAM|Z~429_combout\ : std_logic;
SIGNAL \RAM|Z~585_combout\ : std_logic;
SIGNAL \RAM|Z~109_q\ : std_logic;
SIGNAL \RAM|Z~430_combout\ : std_logic;
SIGNAL \RAM|Z~29feeder_combout\ : std_logic;
SIGNAL \RAM|Z~29_q\ : std_logic;
SIGNAL \RAM|Z~45_q\ : std_logic;
SIGNAL \RAM|Z~37feeder_combout\ : std_logic;
SIGNAL \RAM|Z~37_q\ : std_logic;
SIGNAL \RAM|Z~21_q\ : std_logic;
SIGNAL \RAM|Z~431_combout\ : std_logic;
SIGNAL \RAM|Z~432_combout\ : std_logic;
SIGNAL \RAM|Z~433_combout\ : std_logic;
SIGNAL \RAM|Z~436_combout\ : std_logic;
SIGNAL \RAM|Z~437_combout\ : std_logic;
SIGNAL \IR|output[7]~feeder_combout\ : std_logic;
SIGNAL \CU|current_state~20_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mar~q\ : std_logic;
SIGNAL \CU|current_state.adaa_read_mem~feeder_combout\ : std_logic;
SIGNAL \CU|current_state.adaa_read_mem~q\ : std_logic;
SIGNAL \CU|current_state.adaa_load_mdri~q\ : std_logic;
SIGNAL \CU|current_state.adaa_store_load_a~q\ : std_logic;
SIGNAL \CU|Selector0~0_combout\ : std_logic;
SIGNAL \CU|Selector0~1_combout\ : std_logic;
SIGNAL \CU|current_state.increment_pc~q\ : std_logic;
SIGNAL \ProgCount|Add0~7\ : std_logic;
SIGNAL \ProgCount|Add0~8_combout\ : std_logic;
SIGNAL \ProgCount|output[5]~feeder_combout\ : std_logic;
SIGNAL \ProgCount|Add0~9\ : std_logic;
SIGNAL \ProgCount|Add0~10_combout\ : std_logic;
SIGNAL \ProgCount|output[6]~feeder_combout\ : std_logic;
SIGNAL \ProgCount|Add0~11\ : std_logic;
SIGNAL \ProgCount|Add0~12_combout\ : std_logic;
SIGNAL \ProgCount|output[7]~feeder_combout\ : std_logic;
SIGNAL \RAM|Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ProgCount|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mar|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mdro|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MDRI|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ProgCount|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Acc|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|ALT_INV_current_state.staa_write_mem~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pcOut <= ww_pcOut;
marOut <= ww_marOut;
irOutput <= ww_irOutput;
mdriOutput <= ww_mdriOutput;
mdroOutput <= ww_mdroOutput;
aOut <= ww_aOut;
incrementOut <= ww_incrementOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\CU|ALT_INV_current_state.staa_write_mem~q\ <= NOT \CU|current_state.staa_write_mem~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X60_Y54_N23
\pcOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(0),
	devoe => ww_devoe,
	o => \pcOut[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\pcOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(1),
	devoe => ww_devoe,
	o => \pcOut[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\pcOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(2),
	devoe => ww_devoe,
	o => \pcOut[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\pcOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(3),
	devoe => ww_devoe,
	o => \pcOut[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\pcOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(4),
	devoe => ww_devoe,
	o => \pcOut[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\pcOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(5),
	devoe => ww_devoe,
	o => \pcOut[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\pcOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(6),
	devoe => ww_devoe,
	o => \pcOut[6]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\pcOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgCount|output\(7),
	devoe => ww_devoe,
	o => \pcOut[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\marOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mar|output\(0),
	devoe => ww_devoe,
	o => \marOut[0]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\marOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mar|output\(1),
	devoe => ww_devoe,
	o => \marOut[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\marOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mar|output\(2),
	devoe => ww_devoe,
	o => \marOut[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\marOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mar|output\(3),
	devoe => ww_devoe,
	o => \marOut[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\marOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mar|output\(4),
	devoe => ww_devoe,
	o => \marOut[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\marOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(5),
	devoe => ww_devoe,
	o => \marOut[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\marOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(6),
	devoe => ww_devoe,
	o => \marOut[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\marOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(7),
	devoe => ww_devoe,
	o => \marOut[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\irOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(0),
	devoe => ww_devoe,
	o => \irOutput[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\irOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(1),
	devoe => ww_devoe,
	o => \irOutput[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\irOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(2),
	devoe => ww_devoe,
	o => \irOutput[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\irOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(3),
	devoe => ww_devoe,
	o => \irOutput[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\irOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(4),
	devoe => ww_devoe,
	o => \irOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\irOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(5),
	devoe => ww_devoe,
	o => \irOutput[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\irOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(6),
	devoe => ww_devoe,
	o => \irOutput[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\irOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IR|output\(7),
	devoe => ww_devoe,
	o => \irOutput[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\mdriOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(0),
	devoe => ww_devoe,
	o => \mdriOutput[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\mdriOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(1),
	devoe => ww_devoe,
	o => \mdriOutput[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\mdriOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(2),
	devoe => ww_devoe,
	o => \mdriOutput[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\mdriOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(3),
	devoe => ww_devoe,
	o => \mdriOutput[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\mdriOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(4),
	devoe => ww_devoe,
	o => \mdriOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\mdriOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(5),
	devoe => ww_devoe,
	o => \mdriOutput[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\mdriOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(6),
	devoe => ww_devoe,
	o => \mdriOutput[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\mdriOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MDRI|output\(7),
	devoe => ww_devoe,
	o => \mdriOutput[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\mdroOutput[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(0),
	devoe => ww_devoe,
	o => \mdroOutput[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\mdroOutput[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(1),
	devoe => ww_devoe,
	o => \mdroOutput[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\mdroOutput[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(2),
	devoe => ww_devoe,
	o => \mdroOutput[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\mdroOutput[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(3),
	devoe => ww_devoe,
	o => \mdroOutput[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\mdroOutput[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(4),
	devoe => ww_devoe,
	o => \mdroOutput[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\mdroOutput[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(5),
	devoe => ww_devoe,
	o => \mdroOutput[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\mdroOutput[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(6),
	devoe => ww_devoe,
	o => \mdroOutput[6]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\mdroOutput[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mdro|output\(7),
	devoe => ww_devoe,
	o => \mdroOutput[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\aOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(0),
	devoe => ww_devoe,
	o => \aOut[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\aOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(1),
	devoe => ww_devoe,
	o => \aOut[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\aOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(2),
	devoe => ww_devoe,
	o => \aOut[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\aOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(3),
	devoe => ww_devoe,
	o => \aOut[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\aOut[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(4),
	devoe => ww_devoe,
	o => \aOut[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\aOut[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(5),
	devoe => ww_devoe,
	o => \aOut[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\aOut[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(6),
	devoe => ww_devoe,
	o => \aOut[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\aOut[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Acc|output\(7),
	devoe => ww_devoe,
	o => \aOut[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\incrementOut~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \incrementOut~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y49_N12
\ProgCount|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|output[0]~0_combout\ = !\ProgCount|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ProgCount|output\(0),
	combout => \ProgCount|output[0]~0_combout\);

-- Location: LCCOMB_X74_Y46_N26
\CU|current_state.load_mar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mar~0_combout\ = !\CU|current_state.increment_pc~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.increment_pc~q\,
	combout => \CU|current_state.load_mar~0_combout\);

-- Location: FF_X74_Y46_N27
\CU|current_state.load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_mar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_mar~q\);

-- Location: LCCOMB_X74_Y46_N22
\CU|current_state.read_mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.read_mem~0_combout\ = !\CU|current_state.load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.load_mar~q\,
	combout => \CU|current_state.read_mem~0_combout\);

-- Location: FF_X74_Y46_N23
\CU|current_state.read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.read_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.read_mem~q\);

-- Location: LCCOMB_X74_Y46_N24
\CU|current_state.load_mdri~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_mdri~feeder_combout\ = \CU|current_state.read_mem~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.read_mem~q\,
	combout => \CU|current_state.load_mdri~feeder_combout\);

-- Location: FF_X74_Y46_N25
\CU|current_state.load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_mdri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_mdri~q\);

-- Location: LCCOMB_X74_Y46_N30
\CU|current_state.load_ir~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.load_ir~feeder_combout\ = \CU|current_state.load_mdri~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.load_mdri~q\,
	combout => \CU|current_state.load_ir~feeder_combout\);

-- Location: FF_X74_Y46_N31
\CU|current_state.load_ir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.load_ir~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.load_ir~q\);

-- Location: LCCOMB_X71_Y46_N14
\CU|current_state.decode~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.decode~feeder_combout\ = \CU|current_state.load_ir~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.load_ir~q\,
	combout => \CU|current_state.decode~feeder_combout\);

-- Location: FF_X71_Y46_N15
\CU|current_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.decode~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.decode~q\);

-- Location: FF_X71_Y46_N9
\CU|current_state.ldaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.ldaa_read_mem~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_mdri~q\);

-- Location: FF_X71_Y46_N19
\CU|current_state.ldaa_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.ldaa_load_mdri~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_a~q\);

-- Location: LCCOMB_X71_Y46_N10
\CU|ToALoad~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|ToALoad~0_combout\ = (\CU|current_state.adaa_store_load_a~q\) # (\CU|current_state.ldaa_load_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.adaa_store_load_a~q\,
	datad => \CU|current_state.ldaa_load_a~q\,
	combout => \CU|ToALoad~0_combout\);

-- Location: FF_X70_Y46_N5
\Acc|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~31_combout\,
	sload => VCC,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(5));

-- Location: LCCOMB_X72_Y46_N10
\aluPort|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~27_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & ((\Acc|output\(5)))) # (!\aluPort|Equal4~0_combout\ & (\MDRI|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Equal4~0_combout\,
	datab => \MDRI|output\(5),
	datac => \Acc|output\(5),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~27_combout\);

-- Location: FF_X71_Y46_N5
\CU|current_state.staa_write_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.staa_load_mdro~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.staa_write_mem~q\);

-- Location: LCCOMB_X70_Y46_N2
\aluPort|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~28_combout\ = \Acc|output\(5) $ (((\CU|current_state.staa_write_mem~q\) # ((\CU|current_state.staa_load_mdro~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(5),
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \CU|current_state.staa_load_mdro~q\,
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~28_combout\);

-- Location: LCCOMB_X72_Y46_N16
\aluPort|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~22_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & ((\Acc|output\(4)))) # (!\aluPort|Equal4~0_combout\ & (\MDRI|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Equal4~0_combout\,
	datab => \MDRI|output\(4),
	datac => \Acc|output\(4),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~22_combout\);

-- Location: LCCOMB_X72_Y46_N0
\Acc|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Acc|output[3]~feeder_combout\ = \aluPort|Add0~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aluPort|Add0~21_combout\,
	combout => \Acc|output[3]~feeder_combout\);

-- Location: FF_X72_Y46_N1
\Acc|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Acc|output[3]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(3));

-- Location: LCCOMB_X72_Y46_N30
\aluPort|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~17_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & (\Acc|output\(3))) # (!\aluPort|Equal4~0_combout\ & ((\MDRI|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(3),
	datab => \aluPort|Equal4~0_combout\,
	datac => \MDRI|output\(3),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~17_combout\);

-- Location: LCCOMB_X71_Y46_N12
\aluPort|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~18_combout\ = \Acc|output\(3) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \Acc|output\(3),
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~18_combout\);

-- Location: LCCOMB_X72_Y46_N2
\Acc|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Acc|output[2]~feeder_combout\ = \aluPort|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluPort|Add0~16_combout\,
	combout => \Acc|output[2]~feeder_combout\);

-- Location: FF_X72_Y46_N3
\Acc|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Acc|output[2]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(2));

-- Location: LCCOMB_X72_Y46_N24
\aluPort|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~12_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & (\Acc|output\(2))) # (!\aluPort|Equal4~0_combout\ & ((\MDRI|output\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(2),
	datab => \CU|WideOr5~combout\,
	datac => \MDRI|output\(2),
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~12_combout\);

-- Location: LCCOMB_X70_Y46_N0
\aluPort|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~13_combout\ = \Acc|output\(2) $ (((\CU|current_state.staa_write_mem~q\) # ((\CU|current_state.staa_load_mdro~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(2),
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \CU|current_state.staa_load_mdro~q\,
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~13_combout\);

-- Location: LCCOMB_X72_Y46_N6
\aluPort|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~7_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & (\Acc|output\(1))) # (!\aluPort|Equal4~0_combout\ & ((\MDRI|output\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(1),
	datab => \aluPort|Equal4~0_combout\,
	datac => \MDRI|output\(1),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~7_combout\);

-- Location: LCCOMB_X72_Y46_N22
\Acc|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Acc|output[0]~feeder_combout\ = \aluPort|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluPort|Add0~6_combout\,
	combout => \Acc|output[0]~feeder_combout\);

-- Location: FF_X72_Y46_N23
\Acc|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Acc|output[0]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(0));

-- Location: LCCOMB_X71_Y46_N4
\aluPort|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~1_combout\ = \Acc|output\(0) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \Acc|output\(0),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~1_combout\);

-- Location: LCCOMB_X70_Y46_N6
\aluPort|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~3_cout\ = CARRY(\CU|WideOr5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr5~combout\,
	datad => VCC,
	cout => \aluPort|Add0~3_cout\);

-- Location: LCCOMB_X70_Y46_N8
\aluPort|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~4_combout\ = (\aluPort|Add0~1_combout\ & ((\MDRI|output\(0) & (\aluPort|Add0~3_cout\ & VCC)) # (!\MDRI|output\(0) & (!\aluPort|Add0~3_cout\)))) # (!\aluPort|Add0~1_combout\ & ((\MDRI|output\(0) & (!\aluPort|Add0~3_cout\)) # 
-- (!\MDRI|output\(0) & ((\aluPort|Add0~3_cout\) # (GND)))))
-- \aluPort|Add0~5\ = CARRY((\aluPort|Add0~1_combout\ & (!\MDRI|output\(0) & !\aluPort|Add0~3_cout\)) # (!\aluPort|Add0~1_combout\ & ((!\aluPort|Add0~3_cout\) # (!\MDRI|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~1_combout\,
	datab => \MDRI|output\(0),
	datad => VCC,
	cin => \aluPort|Add0~3_cout\,
	combout => \aluPort|Add0~4_combout\,
	cout => \aluPort|Add0~5\);

-- Location: LCCOMB_X70_Y46_N10
\aluPort|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~9_combout\ = ((\MDRI|output\(1) $ (\aluPort|Add0~8_combout\ $ (!\aluPort|Add0~5\)))) # (GND)
-- \aluPort|Add0~10\ = CARRY((\MDRI|output\(1) & ((\aluPort|Add0~8_combout\) # (!\aluPort|Add0~5\))) # (!\MDRI|output\(1) & (\aluPort|Add0~8_combout\ & !\aluPort|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(1),
	datab => \aluPort|Add0~8_combout\,
	datad => VCC,
	cin => \aluPort|Add0~5\,
	combout => \aluPort|Add0~9_combout\,
	cout => \aluPort|Add0~10\);

-- Location: LCCOMB_X72_Y46_N4
\aluPort|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~11_combout\ = (\aluPort|Add0~7_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~7_combout\,
	datab => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~9_combout\,
	combout => \aluPort|Add0~11_combout\);

-- Location: LCCOMB_X72_Y46_N20
\Acc|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Acc|output[1]~feeder_combout\ = \aluPort|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluPort|Add0~11_combout\,
	combout => \Acc|output[1]~feeder_combout\);

-- Location: FF_X72_Y46_N21
\Acc|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Acc|output[1]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(1));

-- Location: LCCOMB_X71_Y46_N22
\aluPort|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~8_combout\ = \Acc|output\(1) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \Acc|output\(1),
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~8_combout\);

-- Location: LCCOMB_X70_Y46_N12
\aluPort|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~14_combout\ = (\MDRI|output\(2) & ((\aluPort|Add0~13_combout\ & (\aluPort|Add0~10\ & VCC)) # (!\aluPort|Add0~13_combout\ & (!\aluPort|Add0~10\)))) # (!\MDRI|output\(2) & ((\aluPort|Add0~13_combout\ & (!\aluPort|Add0~10\)) # 
-- (!\aluPort|Add0~13_combout\ & ((\aluPort|Add0~10\) # (GND)))))
-- \aluPort|Add0~15\ = CARRY((\MDRI|output\(2) & (!\aluPort|Add0~13_combout\ & !\aluPort|Add0~10\)) # (!\MDRI|output\(2) & ((!\aluPort|Add0~10\) # (!\aluPort|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(2),
	datab => \aluPort|Add0~13_combout\,
	datad => VCC,
	cin => \aluPort|Add0~10\,
	combout => \aluPort|Add0~14_combout\,
	cout => \aluPort|Add0~15\);

-- Location: LCCOMB_X72_Y46_N8
\aluPort|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~16_combout\ = (\aluPort|Add0~12_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~12_combout\,
	datab => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~14_combout\,
	combout => \aluPort|Add0~16_combout\);

-- Location: FF_X72_Y46_N5
\mdro|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~16_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(2));

-- Location: LCCOMB_X71_Y48_N2
\RAM|Z~104feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~104feeder_combout\ = \mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~104feeder_combout\);

-- Location: LCCOMB_X66_Y49_N16
\ProgCount|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~0_combout\ = (\ProgCount|output\(0) & (\ProgCount|output\(1) $ (VCC))) # (!\ProgCount|output\(0) & (\ProgCount|output\(1) & VCC))
-- \ProgCount|Add0~1\ = CARRY((\ProgCount|output\(0) & \ProgCount|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgCount|output\(0),
	datab => \ProgCount|output\(1),
	datad => VCC,
	combout => \ProgCount|Add0~0_combout\,
	cout => \ProgCount|Add0~1\);

-- Location: FF_X66_Y49_N17
\ProgCount|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~0_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(1));

-- Location: LCCOMB_X66_Y49_N18
\ProgCount|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~2_combout\ = (\ProgCount|output\(2) & (!\ProgCount|Add0~1\)) # (!\ProgCount|output\(2) & ((\ProgCount|Add0~1\) # (GND)))
-- \ProgCount|Add0~3\ = CARRY((!\ProgCount|Add0~1\) # (!\ProgCount|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgCount|output\(2),
	datad => VCC,
	cin => \ProgCount|Add0~1\,
	combout => \ProgCount|Add0~2_combout\,
	cout => \ProgCount|Add0~3\);

-- Location: FF_X66_Y49_N19
\ProgCount|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~2_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(2));

-- Location: LCCOMB_X66_Y49_N20
\ProgCount|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~4_combout\ = (\ProgCount|output\(3) & (\ProgCount|Add0~3\ $ (GND))) # (!\ProgCount|output\(3) & (!\ProgCount|Add0~3\ & VCC))
-- \ProgCount|Add0~5\ = CARRY((\ProgCount|output\(3) & !\ProgCount|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgCount|output\(3),
	datad => VCC,
	cin => \ProgCount|Add0~3\,
	combout => \ProgCount|Add0~4_combout\,
	cout => \ProgCount|Add0~5\);

-- Location: FF_X66_Y49_N21
\ProgCount|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~4_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(3));

-- Location: LCCOMB_X71_Y46_N8
\CU|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr2~0_combout\ = (!\CU|current_state.ldaa_load_mar~q\ & (!\CU|current_state.staa_load_mdro~q\ & !\CU|current_state.adaa_load_mar~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_load_mar~q\,
	datab => \CU|current_state.staa_load_mdro~q\,
	datad => \CU|current_state.adaa_load_mar~q\,
	combout => \CU|WideOr2~0_combout\);

-- Location: LCCOMB_X69_Y48_N22
\IR|output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[3]~feeder_combout\ = \MDRI|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MDRI|output\(3),
	combout => \IR|output[3]~feeder_combout\);

-- Location: FF_X69_Y48_N23
\IR|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[3]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(3));

-- Location: LCCOMB_X66_Y49_N30
\Mux|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux|output[3]~3_combout\ = (\CU|WideOr2~0_combout\ & (\ProgCount|output\(3))) # (!\CU|WideOr2~0_combout\ & ((\IR|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ProgCount|output\(3),
	datac => \CU|WideOr2~0_combout\,
	datad => \IR|output\(3),
	combout => \Mux|output[3]~3_combout\);

-- Location: LCCOMB_X74_Y46_N16
\CU|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr3~combout\ = ((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.adaa_load_mar~q\) # (\CU|current_state.ldaa_load_mar~q\))) # (!\CU|current_state.load_mar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.load_mar~q\,
	datab => \CU|current_state.staa_load_mdro~q\,
	datac => \CU|current_state.adaa_load_mar~q\,
	datad => \CU|current_state.ldaa_load_mar~q\,
	combout => \CU|WideOr3~combout\);

-- Location: FF_X66_Y49_N31
\mar|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux|output[3]~3_combout\,
	ena => \CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|output\(3));

-- Location: LCCOMB_X69_Y48_N24
\IR|output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[2]~feeder_combout\ = \MDRI|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDRI|output\(2),
	combout => \IR|output[2]~feeder_combout\);

-- Location: FF_X69_Y48_N25
\IR|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[2]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(2));

-- Location: LCCOMB_X66_Y49_N0
\Mux|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux|output[2]~2_combout\ = (\CU|WideOr2~0_combout\ & ((\ProgCount|output\(2)))) # (!\CU|WideOr2~0_combout\ & (\IR|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|output\(2),
	datac => \CU|WideOr2~0_combout\,
	datad => \ProgCount|output\(2),
	combout => \Mux|output[2]~2_combout\);

-- Location: FF_X66_Y49_N1
\mar|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux|output[2]~2_combout\,
	ena => \CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|output\(2));

-- Location: LCCOMB_X69_Y48_N26
\RAM|Z~462\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~462_combout\ = (\mar|output\(3) & (\mar|output\(1) & (\mar|output\(0) & !\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \mar|output\(2),
	combout => \RAM|Z~462_combout\);

-- Location: LCCOMB_X70_Y48_N4
\RAM|Z~473\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~473_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~462_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~462_combout\,
	combout => \RAM|Z~473_combout\);

-- Location: FF_X71_Y48_N3
\RAM|Z~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~104feeder_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~104_q\);

-- Location: LCCOMB_X66_Y48_N6
\RAM|Z~440\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~440_combout\ = (\mar|output\(1) & (!\mar|output\(0) & (\mar|output\(3) & !\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \mar|output\(3),
	datad => \mar|output\(2),
	combout => \RAM|Z~440_combout\);

-- Location: LCCOMB_X67_Y48_N8
\RAM|Z~470\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~470_combout\ = (!\mar|output\(4) & (\RAM|Z~440_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \RAM|Z~440_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \RAM|Z~470_combout\);

-- Location: FF_X67_Y48_N21
\RAM|Z~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~96_q\);

-- Location: LCCOMB_X69_Y48_N16
\RAM|Z~456\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~456_combout\ = (\mar|output\(3) & (!\mar|output\(1) & (!\mar|output\(0) & !\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \mar|output\(2),
	combout => \RAM|Z~456_combout\);

-- Location: LCCOMB_X69_Y48_N10
\RAM|Z~472\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~472_combout\ = (!\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~456_combout\,
	combout => \RAM|Z~472_combout\);

-- Location: FF_X67_Y48_N19
\RAM|Z~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~80_q\);

-- Location: LCCOMB_X66_Y45_N20
\RAM|Z~520\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~520_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~520_combout\);

-- Location: LCCOMB_X65_Y47_N16
\RAM|Z~446\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~446_combout\ = (!\mar|output\(2) & (\mar|output\(3) & (!\mar|output\(1) & \mar|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \mar|output\(1),
	datad => \mar|output\(0),
	combout => \RAM|Z~446_combout\);

-- Location: LCCOMB_X65_Y47_N2
\RAM|Z~471\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~471_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~446_combout\,
	combout => \RAM|Z~471_combout\);

-- Location: FF_X66_Y45_N21
\RAM|Z~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~520_combout\,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~88_q\);

-- Location: LCCOMB_X67_Y48_N18
\RAM|Z~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~322_combout\ = (\mar|output\(0) & ((\mar|output\(1)) # ((!\RAM|Z~88_q\)))) # (!\mar|output\(0) & (!\mar|output\(1) & (\RAM|Z~80_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~80_q\,
	datad => \RAM|Z~88_q\,
	combout => \RAM|Z~322_combout\);

-- Location: LCCOMB_X67_Y48_N20
\RAM|Z~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~323_combout\ = (\mar|output\(1) & ((\RAM|Z~322_combout\ & (\RAM|Z~104_q\)) # (!\RAM|Z~322_combout\ & ((\RAM|Z~96_q\))))) # (!\mar|output\(1) & (((\RAM|Z~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~104_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~96_q\,
	datad => \RAM|Z~322_combout\,
	combout => \RAM|Z~323_combout\);

-- Location: LCCOMB_X65_Y48_N10
\RAM|Z~528\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~528_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~528_combout\);

-- Location: LCCOMB_X65_Y49_N20
\RAM|Z~468\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~468_combout\ = (\mar|output\(1) & (\mar|output\(2) & (\mar|output\(3) & \mar|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(2),
	datac => \mar|output\(3),
	datad => \mar|output\(0),
	combout => \RAM|Z~468_combout\);

-- Location: LCCOMB_X65_Y48_N2
\RAM|Z~485\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~485_combout\ = (!\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~468_combout\,
	combout => \RAM|Z~485_combout\);

-- Location: FF_X65_Y48_N11
\RAM|Z~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~528_combout\,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~136_q\);

-- Location: LCCOMB_X66_Y48_N18
\RAM|Z~452\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~452_combout\ = (\mar|output\(3) & (\mar|output\(0) & (!\mar|output\(1) & \mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(0),
	datac => \mar|output\(1),
	datad => \mar|output\(2),
	combout => \RAM|Z~452_combout\);

-- Location: LCCOMB_X65_Y48_N14
\RAM|Z~482\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~482_combout\ = (!\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~452_combout\,
	combout => \RAM|Z~482_combout\);

-- Location: FF_X65_Y48_N13
\RAM|Z~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~120_q\);

-- Location: LCCOMB_X64_Y48_N4
\RAM|Z~527\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~527_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~527_combout\);

-- Location: LCCOMB_X66_Y51_N24
\RAM|Z~444\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~444_combout\ = (\mar|output\(1) & (\mar|output\(2) & (!\mar|output\(0) & \mar|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(2),
	datac => \mar|output\(0),
	datad => \mar|output\(3),
	combout => \RAM|Z~444_combout\);

-- Location: LCCOMB_X65_Y51_N18
\RAM|Z~483\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~483_combout\ = (!\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~444_combout\,
	combout => \RAM|Z~483_combout\);

-- Location: FF_X64_Y48_N5
\RAM|Z~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~527_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~128_q\);

-- Location: LCCOMB_X64_Y49_N30
\RAM|Z~460\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~460_combout\ = (!\mar|output\(1) & (\mar|output\(3) & (!\mar|output\(0) & \mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(3),
	datac => \mar|output\(0),
	datad => \mar|output\(2),
	combout => \RAM|Z~460_combout\);

-- Location: LCCOMB_X64_Y48_N18
\RAM|Z~484\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~484_combout\ = (!\mar|output\(4) & (\RAM|Z~460_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datac => \RAM|Z~460_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \RAM|Z~484_combout\);

-- Location: FF_X64_Y48_N23
\RAM|Z~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~112_q\);

-- Location: LCCOMB_X64_Y48_N22
\RAM|Z~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~329_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (!\RAM|Z~128_q\)) # (!\mar|output\(1) & ((\RAM|Z~112_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~128_q\,
	datac => \RAM|Z~112_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~329_combout\);

-- Location: LCCOMB_X65_Y48_N12
\RAM|Z~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~330_combout\ = (\mar|output\(0) & ((\RAM|Z~329_combout\ & (!\RAM|Z~136_q\)) # (!\RAM|Z~329_combout\ & ((\RAM|Z~120_q\))))) # (!\mar|output\(0) & (((\RAM|Z~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~136_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~120_q\,
	datad => \RAM|Z~329_combout\,
	combout => \RAM|Z~330_combout\);

-- Location: LCCOMB_X71_Y47_N4
\RAM|Z~523\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~523_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~523_combout\);

-- Location: LCCOMB_X66_Y48_N12
\RAM|Z~442\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~442_combout\ = (!\mar|output\(3) & (\mar|output\(1) & (!\mar|output\(0) & !\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \mar|output\(2),
	combout => \RAM|Z~442_combout\);

-- Location: LCCOMB_X70_Y49_N8
\RAM|Z~478\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~478_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~442_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~442_combout\,
	combout => \RAM|Z~478_combout\);

-- Location: FF_X71_Y47_N5
\RAM|Z~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~523_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~32_q\);

-- Location: LCCOMB_X67_Y47_N12
\RAM|Z~526\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~526_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~526_combout\);

-- Location: LCCOMB_X66_Y48_N8
\RAM|Z~466\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~466_combout\ = (!\mar|output\(3) & (\mar|output\(0) & (\mar|output\(1) & !\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(0),
	datac => \mar|output\(1),
	datad => \mar|output\(2),
	combout => \RAM|Z~466_combout\);

-- Location: LCCOMB_X66_Y47_N4
\RAM|Z~481\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~481_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \mar|output\(4),
	datad => \RAM|Z~466_combout\,
	combout => \RAM|Z~481_combout\);

-- Location: FF_X66_Y47_N5
\RAM|Z~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Z~526_combout\,
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~40_q\);

-- Location: LCCOMB_X67_Y47_N20
\RAM|Z~525\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~525_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~525_combout\);

-- Location: LCCOMB_X70_Y49_N24
\RAM|Z~458\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~458_combout\ = (!\mar|output\(3) & (!\mar|output\(0) & (!\mar|output\(2) & !\mar|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(0),
	datac => \mar|output\(2),
	datad => \mar|output\(1),
	combout => \RAM|Z~458_combout\);

-- Location: LCCOMB_X70_Y49_N22
\RAM|Z~480\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~480_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~458_combout\,
	combout => \RAM|Z~480_combout\);

-- Location: FF_X67_Y47_N21
\RAM|Z~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~525_combout\,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~16_q\);

-- Location: LCCOMB_X66_Y45_N2
\RAM|Z~524\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~524_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~524_combout\);

-- Location: LCCOMB_X66_Y49_N6
\RAM|Z~450\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~450_combout\ = (!\mar|output\(3) & (!\mar|output\(2) & (!\mar|output\(1) & \mar|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \mar|output\(1),
	datad => \mar|output\(0),
	combout => \RAM|Z~450_combout\);

-- Location: LCCOMB_X66_Y46_N30
\RAM|Z~479\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~479_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~450_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \mar|output\(4),
	datad => \RAM|Z~450_combout\,
	combout => \RAM|Z~479_combout\);

-- Location: FF_X66_Y45_N3
\RAM|Z~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~524_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~24_q\);

-- Location: LCCOMB_X66_Y47_N2
\RAM|Z~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~326_combout\ = (\mar|output\(0) & (((\mar|output\(1)) # (!\RAM|Z~24_q\)))) # (!\mar|output\(0) & (!\RAM|Z~16_q\ & ((!\mar|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~16_q\,
	datab => \RAM|Z~24_q\,
	datac => \mar|output\(0),
	datad => \mar|output\(1),
	combout => \RAM|Z~326_combout\);

-- Location: LCCOMB_X66_Y47_N14
\RAM|Z~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~327_combout\ = (\mar|output\(1) & ((\RAM|Z~326_combout\ & ((!\RAM|Z~40_q\))) # (!\RAM|Z~326_combout\ & (!\RAM|Z~32_q\)))) # (!\mar|output\(1) & (((\RAM|Z~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~32_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~40_q\,
	datad => \RAM|Z~326_combout\,
	combout => \RAM|Z~327_combout\);

-- Location: LCCOMB_X70_Y47_N18
\RAM|Z~522\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~522_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~522_combout\);

-- Location: LCCOMB_X69_Y48_N20
\RAM|Z~464\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~464_combout\ = (!\mar|output\(3) & (\mar|output\(1) & (\mar|output\(0) & \mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \mar|output\(2),
	combout => \RAM|Z~464_combout\);

-- Location: LCCOMB_X70_Y47_N2
\RAM|Z~477\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~477_combout\ = (!\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~464_combout\,
	combout => \RAM|Z~477_combout\);

-- Location: FF_X70_Y47_N19
\RAM|Z~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~522_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~72_q\);

-- Location: LCCOMB_X66_Y47_N10
\RAM|Z~448\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~448_combout\ = (\mar|output\(0) & (\mar|output\(2) & (!\mar|output\(1) & !\mar|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(2),
	datac => \mar|output\(1),
	datad => \mar|output\(3),
	combout => \RAM|Z~448_combout\);

-- Location: LCCOMB_X66_Y47_N8
\RAM|Z~474\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~474_combout\ = (\RAM|Z~448_combout\ & (!\mar|output\(4) & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~448_combout\,
	datab => \mar|output\(4),
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \RAM|Z~474_combout\);

-- Location: FF_X69_Y47_N17
\RAM|Z~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~56_q\);

-- Location: LCCOMB_X70_Y47_N20
\RAM|Z~521\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~521_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~521_combout\);

-- Location: LCCOMB_X66_Y48_N30
\RAM|Z~438\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~438_combout\ = (\mar|output\(1) & (!\mar|output\(0) & (!\mar|output\(3) & \mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \mar|output\(3),
	datad => \mar|output\(2),
	combout => \RAM|Z~438_combout\);

-- Location: LCCOMB_X70_Y47_N26
\RAM|Z~475\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~475_combout\ = (!\mar|output\(4) & (\RAM|Z~438_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \RAM|Z~438_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \RAM|Z~475_combout\);

-- Location: FF_X70_Y47_N21
\RAM|Z~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~521_combout\,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~64_q\);

-- Location: LCCOMB_X65_Y47_N0
\RAM|Z~454\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~454_combout\ = (\mar|output\(2) & (!\mar|output\(3) & (!\mar|output\(1) & !\mar|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \mar|output\(1),
	datad => \mar|output\(0),
	combout => \RAM|Z~454_combout\);

-- Location: LCCOMB_X65_Y47_N24
\RAM|Z~476\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~476_combout\ = (\CU|current_state.staa_write_mem~q\ & (!\mar|output\(4) & \RAM|Z~454_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~454_combout\,
	combout => \RAM|Z~476_combout\);

-- Location: FF_X69_Y47_N7
\RAM|Z~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~48_q\);

-- Location: LCCOMB_X69_Y47_N6
\RAM|Z~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~324_combout\ = (\mar|output\(1) & (((\mar|output\(0))) # (!\RAM|Z~64_q\))) # (!\mar|output\(1) & (((\RAM|Z~48_q\ & !\mar|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~64_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~48_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~324_combout\);

-- Location: LCCOMB_X69_Y47_N16
\RAM|Z~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~325_combout\ = (\mar|output\(0) & ((\RAM|Z~324_combout\ & (!\RAM|Z~72_q\)) # (!\RAM|Z~324_combout\ & ((\RAM|Z~56_q\))))) # (!\mar|output\(0) & (((\RAM|Z~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~72_q\,
	datac => \RAM|Z~56_q\,
	datad => \RAM|Z~324_combout\,
	combout => \RAM|Z~325_combout\);

-- Location: LCCOMB_X66_Y47_N20
\RAM|Z~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~328_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & ((\RAM|Z~325_combout\))) # (!\mar|output\(2) & (\RAM|Z~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~327_combout\,
	datad => \RAM|Z~325_combout\,
	combout => \RAM|Z~328_combout\);

-- Location: LCCOMB_X66_Y47_N30
\RAM|Z~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~331_combout\ = (\mar|output\(3) & ((\RAM|Z~328_combout\ & ((\RAM|Z~330_combout\))) # (!\RAM|Z~328_combout\ & (\RAM|Z~323_combout\)))) # (!\mar|output\(3) & (((\RAM|Z~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~323_combout\,
	datab => \mar|output\(3),
	datac => \RAM|Z~330_combout\,
	datad => \RAM|Z~328_combout\,
	combout => \RAM|Z~331_combout\);

-- Location: LCCOMB_X64_Y46_N12
\RAM|Z~519\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~519_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~519_combout\);

-- Location: LCCOMB_X65_Y49_N26
\RAM|Z~469\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~469_combout\ = (\CU|current_state.staa_write_mem~q\ & (\mar|output\(4) & \RAM|Z~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~468_combout\,
	combout => \RAM|Z~469_combout\);

-- Location: FF_X64_Y46_N13
\RAM|Z~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~519_combout\,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~264_q\);

-- Location: LCCOMB_X69_Y46_N28
\RAM|Z~463\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~463_combout\ = (\CU|current_state.staa_write_mem~q\ & (\RAM|Z~462_combout\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \RAM|Z~462_combout\,
	datad => \mar|output\(4),
	combout => \RAM|Z~463_combout\);

-- Location: FF_X65_Y46_N3
\RAM|Z~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~232_q\);

-- Location: LCCOMB_X65_Y46_N8
\RAM|Z~467\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~467_combout\ = (\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~466_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~466_combout\,
	combout => \RAM|Z~467_combout\);

-- Location: FF_X65_Y46_N25
\RAM|Z~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~168_q\);

-- Location: LCCOMB_X69_Y46_N24
\RAM|Z~518\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~518_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~518_combout\);

-- Location: LCCOMB_X69_Y46_N18
\RAM|Z~465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~465_combout\ = (\CU|current_state.staa_write_mem~q\ & (\mar|output\(4) & \RAM|Z~464_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \mar|output\(4),
	datad => \RAM|Z~464_combout\,
	combout => \RAM|Z~465_combout\);

-- Location: FF_X69_Y46_N25
\RAM|Z~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~518_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~200_q\);

-- Location: LCCOMB_X65_Y46_N24
\RAM|Z~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~319_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & ((!\RAM|Z~200_q\))) # (!\mar|output\(2) & (\RAM|Z~168_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~168_q\,
	datad => \RAM|Z~200_q\,
	combout => \RAM|Z~319_combout\);

-- Location: LCCOMB_X65_Y46_N2
\RAM|Z~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~320_combout\ = (\mar|output\(3) & ((\RAM|Z~319_combout\ & (!\RAM|Z~264_q\)) # (!\RAM|Z~319_combout\ & ((\RAM|Z~232_q\))))) # (!\mar|output\(3) & (((\RAM|Z~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~264_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~232_q\,
	datad => \RAM|Z~319_combout\,
	combout => \RAM|Z~320_combout\);

-- Location: LCCOMB_X67_Y50_N2
\RAM|Z~513\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~513_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~513_combout\);

-- Location: LCCOMB_X67_Y50_N6
\RAM|Z~445\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~445_combout\ = (\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~444_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~444_combout\,
	combout => \RAM|Z~445_combout\);

-- Location: FF_X67_Y50_N3
\RAM|Z~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~513_combout\,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~256_q\);

-- Location: LCCOMB_X66_Y50_N6
\RAM|Z~443\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~443_combout\ = (\RAM|Z~442_combout\ & (\CU|current_state.staa_write_mem~q\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~442_combout\,
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \mar|output\(4),
	combout => \RAM|Z~443_combout\);

-- Location: FF_X66_Y50_N13
\RAM|Z~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~160_q\);

-- Location: LCCOMB_X67_Y46_N22
\RAM|Z~224feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~224feeder_combout\ = \mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~224feeder_combout\);

-- Location: LCCOMB_X67_Y46_N20
\RAM|Z~441\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~441_combout\ = (\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~440_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~440_combout\,
	combout => \RAM|Z~441_combout\);

-- Location: FF_X67_Y46_N23
\RAM|Z~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~224feeder_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~224_q\);

-- Location: LCCOMB_X66_Y50_N12
\RAM|Z~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~312_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~224_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~160_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~160_q\,
	datad => \RAM|Z~224_q\,
	combout => \RAM|Z~312_combout\);

-- Location: LCCOMB_X67_Y50_N24
\RAM|Z~512\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~512_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(2),
	combout => \RAM|Z~512_combout\);

-- Location: LCCOMB_X66_Y48_N28
\RAM|Z~439\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~439_combout\ = (\CU|current_state.staa_write_mem~q\ & (\RAM|Z~438_combout\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \RAM|Z~438_combout\,
	datad => \mar|output\(4),
	combout => \RAM|Z~439_combout\);

-- Location: FF_X67_Y50_N25
\RAM|Z~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~512_combout\,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~192_q\);

-- Location: LCCOMB_X66_Y46_N26
\RAM|Z~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~313_combout\ = (\mar|output\(2) & ((\RAM|Z~312_combout\ & (!\RAM|Z~256_q\)) # (!\RAM|Z~312_combout\ & ((!\RAM|Z~192_q\))))) # (!\mar|output\(2) & (((\RAM|Z~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~256_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~312_combout\,
	datad => \RAM|Z~192_q\,
	combout => \RAM|Z~313_combout\);

-- Location: LCCOMB_X64_Y47_N28
\RAM|Z~514\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~514_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~514_combout\);

-- Location: LCCOMB_X65_Y47_N22
\RAM|Z~447\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~447_combout\ = (\CU|current_state.staa_write_mem~q\ & (\mar|output\(4) & \RAM|Z~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~446_combout\,
	combout => \RAM|Z~447_combout\);

-- Location: FF_X64_Y47_N29
\RAM|Z~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~514_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~216_q\);

-- Location: LCCOMB_X65_Y50_N2
\RAM|Z~453\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~453_combout\ = (\CU|current_state.staa_write_mem~q\ & (\RAM|Z~452_combout\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \RAM|Z~452_combout\,
	datad => \mar|output\(4),
	combout => \RAM|Z~453_combout\);

-- Location: FF_X65_Y50_N23
\RAM|Z~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~248_q\);

-- Location: LCCOMB_X66_Y50_N20
\RAM|Z~449\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~449_combout\ = (\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~448_combout\,
	combout => \RAM|Z~449_combout\);

-- Location: FF_X66_Y50_N27
\RAM|Z~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~184_q\);

-- Location: LCCOMB_X65_Y50_N12
\RAM|Z~515\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~515_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~515_combout\);

-- Location: LCCOMB_X65_Y50_N10
\RAM|Z~451\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~451_combout\ = (\CU|current_state.staa_write_mem~q\ & (\RAM|Z~450_combout\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datab => \RAM|Z~450_combout\,
	datad => \mar|output\(4),
	combout => \RAM|Z~451_combout\);

-- Location: FF_X65_Y50_N13
\RAM|Z~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~515_combout\,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~152_q\);

-- Location: LCCOMB_X66_Y50_N26
\RAM|Z~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~314_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & (\RAM|Z~184_q\)) # (!\mar|output\(2) & ((!\RAM|Z~152_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~184_q\,
	datad => \RAM|Z~152_q\,
	combout => \RAM|Z~314_combout\);

-- Location: LCCOMB_X65_Y50_N22
\RAM|Z~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~315_combout\ = (\mar|output\(3) & ((\RAM|Z~314_combout\ & ((\RAM|Z~248_q\))) # (!\RAM|Z~314_combout\ & (!\RAM|Z~216_q\)))) # (!\mar|output\(3) & (((\RAM|Z~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~216_q\,
	datac => \RAM|Z~248_q\,
	datad => \RAM|Z~314_combout\,
	combout => \RAM|Z~315_combout\);

-- Location: LCCOMB_X65_Y49_N28
\RAM|Z~176feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~176feeder_combout\ = \mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~176feeder_combout\);

-- Location: LCCOMB_X65_Y49_N18
\RAM|Z~455\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~455_combout\ = (\mar|output\(4) & (\RAM|Z~454_combout\ & \CU|current_state.staa_write_mem~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \RAM|Z~454_combout\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \RAM|Z~455_combout\);

-- Location: FF_X65_Y49_N29
\RAM|Z~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~176feeder_combout\,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~176_q\);

-- Location: LCCOMB_X64_Y49_N20
\RAM|Z~461\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~461_combout\ = (\CU|current_state.staa_write_mem~q\ & (\RAM|Z~460_combout\ & \mar|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \RAM|Z~460_combout\,
	datad => \mar|output\(4),
	combout => \RAM|Z~461_combout\);

-- Location: FF_X65_Y49_N17
\RAM|Z~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(2),
	sload => VCC,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~240_q\);

-- Location: LCCOMB_X69_Y49_N6
\RAM|Z~517\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~517_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~517_combout\);

-- Location: LCCOMB_X70_Y49_N10
\RAM|Z~459\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~459_combout\ = (\CU|current_state.staa_write_mem~q\ & (\mar|output\(4) & \RAM|Z~458_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_write_mem~q\,
	datac => \mar|output\(4),
	datad => \RAM|Z~458_combout\,
	combout => \RAM|Z~459_combout\);

-- Location: FF_X69_Y49_N7
\RAM|Z~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~517_combout\,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~144_q\);

-- Location: LCCOMB_X69_Y49_N24
\RAM|Z~516\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~516_combout\ = !\mdro|output\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(2),
	combout => \RAM|Z~516_combout\);

-- Location: LCCOMB_X69_Y49_N0
\RAM|Z~457\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~457_combout\ = (\mar|output\(4) & (\CU|current_state.staa_write_mem~q\ & \RAM|Z~456_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \RAM|Z~456_combout\,
	combout => \RAM|Z~457_combout\);

-- Location: FF_X69_Y49_N25
\RAM|Z~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~516_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~208_q\);

-- Location: LCCOMB_X65_Y49_N10
\RAM|Z~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~316_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((!\RAM|Z~208_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (!\RAM|Z~144_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~144_q\,
	datad => \RAM|Z~208_q\,
	combout => \RAM|Z~316_combout\);

-- Location: LCCOMB_X65_Y49_N16
\RAM|Z~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~317_combout\ = (\mar|output\(2) & ((\RAM|Z~316_combout\ & ((\RAM|Z~240_q\))) # (!\RAM|Z~316_combout\ & (\RAM|Z~176_q\)))) # (!\mar|output\(2) & (((\RAM|Z~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~176_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~240_q\,
	datad => \RAM|Z~316_combout\,
	combout => \RAM|Z~317_combout\);

-- Location: LCCOMB_X66_Y46_N12
\RAM|Z~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~318_combout\ = (\mar|output\(0) & ((\mar|output\(1)) # ((\RAM|Z~315_combout\)))) # (!\mar|output\(0) & (!\mar|output\(1) & ((\RAM|Z~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~315_combout\,
	datad => \RAM|Z~317_combout\,
	combout => \RAM|Z~318_combout\);

-- Location: LCCOMB_X66_Y46_N18
\RAM|Z~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~321_combout\ = (\mar|output\(1) & ((\RAM|Z~318_combout\ & (\RAM|Z~320_combout\)) # (!\RAM|Z~318_combout\ & ((\RAM|Z~313_combout\))))) # (!\mar|output\(1) & (((\RAM|Z~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~320_combout\,
	datab => \mar|output\(1),
	datac => \RAM|Z~313_combout\,
	datad => \RAM|Z~318_combout\,
	combout => \RAM|Z~321_combout\);

-- Location: LCCOMB_X66_Y46_N6
\RAM|Z~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~332_combout\ = (\mar|output\(4) & ((\RAM|Z~321_combout\))) # (!\mar|output\(4) & (\RAM|Z~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~331_combout\,
	datad => \RAM|Z~321_combout\,
	combout => \RAM|Z~332_combout\);

-- Location: FF_X66_Y46_N7
\RAM|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~332_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(2));

-- Location: LCCOMB_X74_Y46_N10
\CU|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr4~0_combout\ = (\CU|current_state.ldaa_load_mdri~q\) # ((\CU|current_state.adaa_load_mdri~q\) # (\CU|current_state.load_mdri~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_load_mdri~q\,
	datac => \CU|current_state.adaa_load_mdri~q\,
	datad => \CU|current_state.load_mdri~q\,
	combout => \CU|WideOr4~0_combout\);

-- Location: FF_X70_Y46_N31
\MDRI|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(2),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(2));

-- Location: LCCOMB_X70_Y46_N14
\aluPort|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~19_combout\ = ((\MDRI|output\(3) $ (\aluPort|Add0~18_combout\ $ (!\aluPort|Add0~15\)))) # (GND)
-- \aluPort|Add0~20\ = CARRY((\MDRI|output\(3) & ((\aluPort|Add0~18_combout\) # (!\aluPort|Add0~15\))) # (!\MDRI|output\(3) & (\aluPort|Add0~18_combout\ & !\aluPort|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(3),
	datab => \aluPort|Add0~18_combout\,
	datad => VCC,
	cin => \aluPort|Add0~15\,
	combout => \aluPort|Add0~19_combout\,
	cout => \aluPort|Add0~20\);

-- Location: LCCOMB_X72_Y46_N18
\aluPort|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~21_combout\ = (\aluPort|Add0~17_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr5~combout\,
	datac => \aluPort|Add0~17_combout\,
	datad => \aluPort|Add0~19_combout\,
	combout => \aluPort|Add0~21_combout\);

-- Location: FF_X72_Y46_N19
\mdro|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aluPort|Add0~21_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(3));

-- Location: FF_X65_Y50_N3
\RAM|Z~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~249_q\);

-- Location: FF_X66_Y50_N5
\RAM|Z~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~185_q\);

-- Location: LCCOMB_X69_Y50_N20
\RAM|Z~217feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~217feeder_combout\ = \mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~217feeder_combout\);

-- Location: FF_X69_Y50_N21
\RAM|Z~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~217feeder_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~217_q\);

-- Location: FF_X65_Y50_N25
\RAM|Z~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~153_q\);

-- Location: LCCOMB_X65_Y50_N24
\RAM|Z~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~333_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & (\RAM|Z~217_q\)) # (!\mar|output\(3) & ((\RAM|Z~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~217_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~153_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~333_combout\);

-- Location: LCCOMB_X66_Y50_N4
\RAM|Z~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~334_combout\ = (\mar|output\(2) & ((\RAM|Z~333_combout\ & (\RAM|Z~249_q\)) # (!\RAM|Z~333_combout\ & ((\RAM|Z~185_q\))))) # (!\mar|output\(2) & (((\RAM|Z~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~249_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~185_q\,
	datad => \RAM|Z~333_combout\,
	combout => \RAM|Z~334_combout\);

-- Location: LCCOMB_X69_Y46_N22
\RAM|Z~201feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~201feeder_combout\ = \mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~201feeder_combout\);

-- Location: FF_X69_Y46_N23
\RAM|Z~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~201feeder_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~201_q\);

-- Location: FF_X67_Y46_N15
\RAM|Z~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~265_q\);

-- Location: LCCOMB_X64_Y46_N6
\RAM|Z~536\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~536_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~536_combout\);

-- Location: FF_X65_Y46_N9
\RAM|Z~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Z~536_combout\,
	sload => VCC,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~169_q\);

-- Location: LCCOMB_X65_Y46_N30
\RAM|Z~535\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~535_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~535_combout\);

-- Location: FF_X65_Y46_N31
\RAM|Z~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~535_combout\,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~233_q\);

-- Location: LCCOMB_X66_Y46_N24
\RAM|Z~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~340_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & ((!\RAM|Z~233_q\))) # (!\mar|output\(3) & (!\RAM|Z~169_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~169_q\,
	datab => \RAM|Z~233_q\,
	datac => \mar|output\(2),
	datad => \mar|output\(3),
	combout => \RAM|Z~340_combout\);

-- Location: LCCOMB_X67_Y46_N14
\RAM|Z~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~341_combout\ = (\mar|output\(2) & ((\RAM|Z~340_combout\ & ((\RAM|Z~265_q\))) # (!\RAM|Z~340_combout\ & (\RAM|Z~201_q\)))) # (!\mar|output\(2) & (((\RAM|Z~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \RAM|Z~201_q\,
	datac => \RAM|Z~265_q\,
	datad => \RAM|Z~340_combout\,
	combout => \RAM|Z~341_combout\);

-- Location: LCCOMB_X67_Y46_N8
\RAM|Z~529\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~529_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~529_combout\);

-- Location: FF_X67_Y46_N9
\RAM|Z~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~529_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~225_q\);

-- Location: LCCOMB_X66_Y50_N14
\RAM|Z~530\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~530_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~530_combout\);

-- Location: FF_X66_Y50_N15
\RAM|Z~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~530_combout\,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~161_q\);

-- Location: FF_X67_Y50_N5
\RAM|Z~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~193_q\);

-- Location: LCCOMB_X67_Y50_N4
\RAM|Z~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~335_combout\ = (\mar|output\(2) & (((\RAM|Z~193_q\) # (\mar|output\(3))))) # (!\mar|output\(2) & (!\RAM|Z~161_q\ & ((!\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~161_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~193_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~335_combout\);

-- Location: FF_X67_Y50_N31
\RAM|Z~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~257_q\);

-- Location: LCCOMB_X67_Y50_N30
\RAM|Z~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~336_combout\ = (\RAM|Z~335_combout\ & (((\RAM|Z~257_q\) # (!\mar|output\(3))))) # (!\RAM|Z~335_combout\ & (!\RAM|Z~225_q\ & ((\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~225_q\,
	datab => \RAM|Z~335_combout\,
	datac => \RAM|Z~257_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~336_combout\);

-- Location: LCCOMB_X64_Y49_N18
\RAM|Z~534\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~534_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~534_combout\);

-- Location: FF_X64_Y49_N19
\RAM|Z~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~534_combout\,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~241_q\);

-- Location: LCCOMB_X69_Y49_N16
\RAM|Z~531\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~531_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~531_combout\);

-- Location: FF_X69_Y49_N17
\RAM|Z~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~531_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~209_q\);

-- Location: LCCOMB_X69_Y49_N26
\RAM|Z~533\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~533_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~533_combout\);

-- Location: FF_X69_Y49_N27
\RAM|Z~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~533_combout\,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~145_q\);

-- Location: LCCOMB_X65_Y49_N6
\RAM|Z~532\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~532_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~532_combout\);

-- Location: FF_X65_Y49_N7
\RAM|Z~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~532_combout\,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~177_q\);

-- Location: LCCOMB_X67_Y49_N20
\RAM|Z~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~337_combout\ = (\mar|output\(2) & (((\mar|output\(3)) # (!\RAM|Z~177_q\)))) # (!\mar|output\(2) & (!\RAM|Z~145_q\ & ((!\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~145_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~177_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~337_combout\);

-- Location: LCCOMB_X67_Y49_N6
\RAM|Z~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~338_combout\ = (\mar|output\(3) & ((\RAM|Z~337_combout\ & (!\RAM|Z~241_q\)) # (!\RAM|Z~337_combout\ & ((!\RAM|Z~209_q\))))) # (!\mar|output\(3) & (((\RAM|Z~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~241_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~209_q\,
	datad => \RAM|Z~337_combout\,
	combout => \RAM|Z~338_combout\);

-- Location: LCCOMB_X67_Y49_N28
\RAM|Z~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~339_combout\ = (\mar|output\(0) & (\mar|output\(1))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~336_combout\)) # (!\mar|output\(1) & ((\RAM|Z~338_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~336_combout\,
	datad => \RAM|Z~338_combout\,
	combout => \RAM|Z~339_combout\);

-- Location: LCCOMB_X67_Y49_N30
\RAM|Z~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~342_combout\ = (\mar|output\(0) & ((\RAM|Z~339_combout\ & ((\RAM|Z~341_combout\))) # (!\RAM|Z~339_combout\ & (\RAM|Z~334_combout\)))) # (!\mar|output\(0) & (((\RAM|Z~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~334_combout\,
	datac => \RAM|Z~341_combout\,
	datad => \RAM|Z~339_combout\,
	combout => \RAM|Z~342_combout\);

-- Location: FF_X70_Y47_N27
\RAM|Z~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~73_q\);

-- Location: FF_X70_Y47_N9
\RAM|Z~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~65_q\);

-- Location: LCCOMB_X69_Y47_N26
\RAM|Z~538\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~538_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~538_combout\);

-- Location: FF_X69_Y47_N27
\RAM|Z~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~538_combout\,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~49_q\);

-- Location: LCCOMB_X69_Y47_N0
\RAM|Z~537\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~537_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~537_combout\);

-- Location: FF_X69_Y47_N1
\RAM|Z~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~537_combout\,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~57_q\);

-- Location: LCCOMB_X69_Y48_N30
\RAM|Z~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~343_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & ((!\RAM|Z~57_q\))) # (!\mar|output\(0) & (!\RAM|Z~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~49_q\,
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \RAM|Z~57_q\,
	combout => \RAM|Z~343_combout\);

-- Location: LCCOMB_X70_Y47_N8
\RAM|Z~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~344_combout\ = (\mar|output\(1) & ((\RAM|Z~343_combout\ & (\RAM|Z~73_q\)) # (!\RAM|Z~343_combout\ & ((\RAM|Z~65_q\))))) # (!\mar|output\(1) & (((\RAM|Z~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~73_q\,
	datac => \RAM|Z~65_q\,
	datad => \RAM|Z~343_combout\,
	combout => \RAM|Z~344_combout\);

-- Location: FF_X65_Y48_N15
\RAM|Z~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~137_q\);

-- Location: LCCOMB_X65_Y51_N10
\RAM|Z~129feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~129feeder_combout\ = \mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~129feeder_combout\);

-- Location: FF_X65_Y51_N11
\RAM|Z~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~129feeder_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~129_q\);

-- Location: FF_X65_Y48_N21
\RAM|Z~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~121_q\);

-- Location: LCCOMB_X64_Y48_N24
\RAM|Z~541\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~541_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~541_combout\);

-- Location: FF_X64_Y48_N25
\RAM|Z~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~541_combout\,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~113_q\);

-- Location: LCCOMB_X65_Y48_N20
\RAM|Z~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~350_combout\ = (\mar|output\(1) & (\mar|output\(0))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~121_q\)) # (!\mar|output\(0) & ((!\RAM|Z~113_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \RAM|Z~121_q\,
	datad => \RAM|Z~113_q\,
	combout => \RAM|Z~350_combout\);

-- Location: LCCOMB_X66_Y48_N26
\RAM|Z~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~351_combout\ = (\mar|output\(1) & ((\RAM|Z~350_combout\ & (\RAM|Z~137_q\)) # (!\RAM|Z~350_combout\ & ((\RAM|Z~129_q\))))) # (!\mar|output\(1) & (((\RAM|Z~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~137_q\,
	datac => \RAM|Z~129_q\,
	datad => \RAM|Z~350_combout\,
	combout => \RAM|Z~351_combout\);

-- Location: LCCOMB_X70_Y51_N0
\RAM|Z~540\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~540_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(3),
	combout => \RAM|Z~540_combout\);

-- Location: FF_X70_Y51_N1
\RAM|Z~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~540_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~105_q\);

-- Location: FF_X66_Y51_N29
\RAM|Z~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~89_q\);

-- Location: LCCOMB_X67_Y48_N28
\RAM|Z~539\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~539_combout\ = !\mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~539_combout\);

-- Location: FF_X67_Y48_N29
\RAM|Z~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~539_combout\,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~97_q\);

-- Location: FF_X67_Y48_N23
\RAM|Z~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~81_q\);

-- Location: LCCOMB_X67_Y48_N22
\RAM|Z~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~345_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (!\RAM|Z~97_q\)) # (!\mar|output\(1) & ((\RAM|Z~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~97_q\,
	datac => \RAM|Z~81_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~345_combout\);

-- Location: LCCOMB_X66_Y51_N28
\RAM|Z~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~346_combout\ = (\mar|output\(0) & ((\RAM|Z~345_combout\ & (!\RAM|Z~105_q\)) # (!\RAM|Z~345_combout\ & ((\RAM|Z~89_q\))))) # (!\mar|output\(0) & (((\RAM|Z~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~105_q\,
	datac => \RAM|Z~89_q\,
	datad => \RAM|Z~345_combout\,
	combout => \RAM|Z~346_combout\);

-- Location: LCCOMB_X67_Y45_N30
\RAM|Z~25feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~25feeder_combout\ = \mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~25feeder_combout\);

-- Location: FF_X67_Y45_N31
\RAM|Z~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~25feeder_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~25_q\);

-- Location: FF_X67_Y47_N25
\RAM|Z~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~41_q\);

-- Location: LCCOMB_X67_Y45_N4
\RAM|Z~33feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~33feeder_combout\ = \mdro|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(3),
	combout => \RAM|Z~33feeder_combout\);

-- Location: FF_X67_Y45_N5
\RAM|Z~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~33feeder_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~33_q\);

-- Location: FF_X67_Y47_N19
\RAM|Z~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(3),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~17_q\);

-- Location: LCCOMB_X67_Y47_N18
\RAM|Z~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~347_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~33_q\)) # (!\mar|output\(1) & ((\RAM|Z~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~33_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~17_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~347_combout\);

-- Location: LCCOMB_X67_Y47_N24
\RAM|Z~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~348_combout\ = (\mar|output\(0) & ((\RAM|Z~347_combout\ & ((\RAM|Z~41_q\))) # (!\RAM|Z~347_combout\ & (\RAM|Z~25_q\)))) # (!\mar|output\(0) & (((\RAM|Z~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~25_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~41_q\,
	datad => \RAM|Z~347_combout\,
	combout => \RAM|Z~348_combout\);

-- Location: LCCOMB_X67_Y49_N24
\RAM|Z~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~349_combout\ = (\mar|output\(2) & (\mar|output\(3))) # (!\mar|output\(2) & ((\mar|output\(3) & (\RAM|Z~346_combout\)) # (!\mar|output\(3) & ((\RAM|Z~348_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \RAM|Z~346_combout\,
	datad => \RAM|Z~348_combout\,
	combout => \RAM|Z~349_combout\);

-- Location: LCCOMB_X67_Y49_N10
\RAM|Z~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~352_combout\ = (\mar|output\(2) & ((\RAM|Z~349_combout\ & ((\RAM|Z~351_combout\))) # (!\RAM|Z~349_combout\ & (\RAM|Z~344_combout\)))) # (!\mar|output\(2) & (((\RAM|Z~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~344_combout\,
	datab => \mar|output\(2),
	datac => \RAM|Z~351_combout\,
	datad => \RAM|Z~349_combout\,
	combout => \RAM|Z~352_combout\);

-- Location: LCCOMB_X67_Y49_N8
\RAM|Z~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~353_combout\ = (\mar|output\(4) & (\RAM|Z~342_combout\)) # (!\mar|output\(4) & ((\RAM|Z~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~342_combout\,
	datad => \RAM|Z~352_combout\,
	combout => \RAM|Z~353_combout\);

-- Location: FF_X67_Y49_N9
\RAM|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~353_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(3));

-- Location: FF_X70_Y46_N15
\MDRI|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(3),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(3));

-- Location: LCCOMB_X70_Y46_N16
\aluPort|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~24_combout\ = (\aluPort|Add0~23_combout\ & ((\MDRI|output\(4) & (\aluPort|Add0~20\ & VCC)) # (!\MDRI|output\(4) & (!\aluPort|Add0~20\)))) # (!\aluPort|Add0~23_combout\ & ((\MDRI|output\(4) & (!\aluPort|Add0~20\)) # (!\MDRI|output\(4) & 
-- ((\aluPort|Add0~20\) # (GND)))))
-- \aluPort|Add0~25\ = CARRY((\aluPort|Add0~23_combout\ & (!\MDRI|output\(4) & !\aluPort|Add0~20\)) # (!\aluPort|Add0~23_combout\ & ((!\aluPort|Add0~20\) # (!\MDRI|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~23_combout\,
	datab => \MDRI|output\(4),
	datad => VCC,
	cin => \aluPort|Add0~20\,
	combout => \aluPort|Add0~24_combout\,
	cout => \aluPort|Add0~25\);

-- Location: LCCOMB_X72_Y46_N28
\aluPort|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~26_combout\ = (\aluPort|Add0~22_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluPort|Add0~22_combout\,
	datac => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~24_combout\,
	combout => \aluPort|Add0~26_combout\);

-- Location: LCCOMB_X72_Y46_N14
\Acc|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Acc|output[4]~feeder_combout\ = \aluPort|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aluPort|Add0~26_combout\,
	combout => \Acc|output[4]~feeder_combout\);

-- Location: FF_X72_Y46_N15
\Acc|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Acc|output[4]~feeder_combout\,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(4));

-- Location: LCCOMB_X71_Y46_N16
\aluPort|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~23_combout\ = \Acc|output\(4) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \Acc|output\(4),
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~23_combout\);

-- Location: LCCOMB_X70_Y46_N18
\aluPort|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~29_combout\ = ((\MDRI|output\(5) $ (\aluPort|Add0~28_combout\ $ (!\aluPort|Add0~25\)))) # (GND)
-- \aluPort|Add0~30\ = CARRY((\MDRI|output\(5) & ((\aluPort|Add0~28_combout\) # (!\aluPort|Add0~25\))) # (!\MDRI|output\(5) & (\aluPort|Add0~28_combout\ & !\aluPort|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(5),
	datab => \aluPort|Add0~28_combout\,
	datad => VCC,
	cin => \aluPort|Add0~25\,
	combout => \aluPort|Add0~29_combout\,
	cout => \aluPort|Add0~30\);

-- Location: LCCOMB_X70_Y46_N28
\aluPort|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~31_combout\ = (\aluPort|Add0~27_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~27_combout\,
	datab => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~29_combout\,
	combout => \aluPort|Add0~31_combout\);

-- Location: LCCOMB_X69_Y46_N4
\mdro|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mdro|output[5]~feeder_combout\ = \aluPort|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aluPort|Add0~31_combout\,
	combout => \mdro|output[5]~feeder_combout\);

-- Location: FF_X69_Y46_N5
\mdro|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdro|output[5]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(5));

-- Location: LCCOMB_X69_Y46_N30
\RAM|Z~203feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~203feeder_combout\ = \mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~203feeder_combout\);

-- Location: FF_X69_Y46_N31
\RAM|Z~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~203feeder_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~203_q\);

-- Location: FF_X64_Y46_N1
\RAM|Z~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~267_q\);

-- Location: LCCOMB_X65_Y46_N4
\RAM|Z~559\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~559_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~559_combout\);

-- Location: FF_X65_Y46_N5
\RAM|Z~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~559_combout\,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~171_q\);

-- Location: LCCOMB_X64_Y46_N4
\RAM|Z~558\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~558_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~558_combout\);

-- Location: FF_X65_Y46_N23
\RAM|Z~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Z~558_combout\,
	sload => VCC,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~235_q\);

-- Location: LCCOMB_X65_Y46_N22
\RAM|Z~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~382_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & ((!\RAM|Z~235_q\))) # (!\mar|output\(3) & (!\RAM|Z~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~171_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~235_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~382_combout\);

-- Location: LCCOMB_X64_Y46_N0
\RAM|Z~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~383_combout\ = (\mar|output\(2) & ((\RAM|Z~382_combout\ & ((\RAM|Z~267_q\))) # (!\RAM|Z~382_combout\ & (\RAM|Z~203_q\)))) # (!\mar|output\(2) & (((\RAM|Z~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~203_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~267_q\,
	datad => \RAM|Z~382_combout\,
	combout => \RAM|Z~383_combout\);

-- Location: LCCOMB_X66_Y45_N24
\RAM|Z~550\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~550_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~550_combout\);

-- Location: LCCOMB_X65_Y45_N4
\RAM|Z~219feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~219feeder_combout\ = \RAM|Z~550_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|Z~550_combout\,
	combout => \RAM|Z~219feeder_combout\);

-- Location: FF_X65_Y45_N5
\RAM|Z~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~219feeder_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~219_q\);

-- Location: LCCOMB_X65_Y50_N8
\RAM|Z~551\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~551_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~551_combout\);

-- Location: FF_X65_Y50_N9
\RAM|Z~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~551_combout\,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~155_q\);

-- Location: LCCOMB_X65_Y47_N30
\RAM|Z~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~375_combout\ = (\mar|output\(3) & (((\mar|output\(2))) # (!\RAM|Z~219_q\))) # (!\mar|output\(3) & (((!\mar|output\(2) & !\RAM|Z~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~219_q\,
	datab => \mar|output\(3),
	datac => \mar|output\(2),
	datad => \RAM|Z~155_q\,
	combout => \RAM|Z~375_combout\);

-- Location: LCCOMB_X65_Y50_N18
\RAM|Z~251feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~251feeder_combout\ = \mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~251feeder_combout\);

-- Location: FF_X65_Y50_N19
\RAM|Z~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~251feeder_combout\,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~251_q\);

-- Location: FF_X66_Y50_N21
\RAM|Z~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~187_q\);

-- Location: LCCOMB_X65_Y47_N8
\RAM|Z~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~376_combout\ = (\RAM|Z~375_combout\ & ((\RAM|Z~251_q\) # ((!\mar|output\(2))))) # (!\RAM|Z~375_combout\ & (((\mar|output\(2) & \RAM|Z~187_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~375_combout\,
	datab => \RAM|Z~251_q\,
	datac => \mar|output\(2),
	datad => \RAM|Z~187_q\,
	combout => \RAM|Z~376_combout\);

-- Location: LCCOMB_X64_Y49_N14
\RAM|Z~557\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~557_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~557_combout\);

-- Location: FF_X64_Y49_N15
\RAM|Z~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~557_combout\,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~243_q\);

-- Location: LCCOMB_X69_Y49_N20
\RAM|Z~554\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~554_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~554_combout\);

-- Location: FF_X69_Y49_N21
\RAM|Z~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~554_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~211_q\);

-- Location: LCCOMB_X69_Y49_N22
\RAM|Z~556\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~556_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~556_combout\);

-- Location: FF_X69_Y49_N23
\RAM|Z~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~556_combout\,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~147_q\);

-- Location: LCCOMB_X65_Y49_N2
\RAM|Z~555\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~555_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~555_combout\);

-- Location: FF_X65_Y49_N3
\RAM|Z~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~555_combout\,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~179_q\);

-- Location: LCCOMB_X65_Y49_N24
\RAM|Z~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~379_combout\ = (\mar|output\(2) & (((\mar|output\(3)) # (!\RAM|Z~179_q\)))) # (!\mar|output\(2) & (!\RAM|Z~147_q\ & (!\mar|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~147_q\,
	datab => \mar|output\(2),
	datac => \mar|output\(3),
	datad => \RAM|Z~179_q\,
	combout => \RAM|Z~379_combout\);

-- Location: LCCOMB_X65_Y47_N6
\RAM|Z~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~380_combout\ = (\mar|output\(3) & ((\RAM|Z~379_combout\ & (!\RAM|Z~243_q\)) # (!\RAM|Z~379_combout\ & ((!\RAM|Z~211_q\))))) # (!\mar|output\(3) & (((\RAM|Z~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~243_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~211_q\,
	datad => \RAM|Z~379_combout\,
	combout => \RAM|Z~380_combout\);

-- Location: LCCOMB_X67_Y46_N2
\RAM|Z~227feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~227feeder_combout\ = \mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~227feeder_combout\);

-- Location: FF_X67_Y46_N3
\RAM|Z~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~227feeder_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~227_q\);

-- Location: LCCOMB_X67_Y50_N18
\RAM|Z~553\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~553_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~553_combout\);

-- Location: FF_X67_Y50_N19
\RAM|Z~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~553_combout\,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~259_q\);

-- Location: FF_X66_Y50_N19
\RAM|Z~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~163_q\);

-- Location: LCCOMB_X67_Y50_N20
\RAM|Z~552\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~552_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~552_combout\);

-- Location: FF_X67_Y50_N21
\RAM|Z~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~552_combout\,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~195_q\);

-- Location: LCCOMB_X66_Y50_N18
\RAM|Z~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~377_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & ((!\RAM|Z~195_q\))) # (!\mar|output\(2) & (\RAM|Z~163_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~163_q\,
	datad => \RAM|Z~195_q\,
	combout => \RAM|Z~377_combout\);

-- Location: LCCOMB_X67_Y47_N22
\RAM|Z~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~378_combout\ = (\mar|output\(3) & ((\RAM|Z~377_combout\ & ((!\RAM|Z~259_q\))) # (!\RAM|Z~377_combout\ & (\RAM|Z~227_q\)))) # (!\mar|output\(3) & (((\RAM|Z~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~227_q\,
	datac => \RAM|Z~259_q\,
	datad => \RAM|Z~377_combout\,
	combout => \RAM|Z~378_combout\);

-- Location: LCCOMB_X65_Y47_N12
\RAM|Z~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~381_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & ((\RAM|Z~378_combout\))) # (!\mar|output\(1) & (\RAM|Z~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~380_combout\,
	datab => \mar|output\(0),
	datac => \mar|output\(1),
	datad => \RAM|Z~378_combout\,
	combout => \RAM|Z~381_combout\);

-- Location: LCCOMB_X65_Y47_N26
\RAM|Z~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~384_combout\ = (\mar|output\(0) & ((\RAM|Z~381_combout\ & (\RAM|Z~383_combout\)) # (!\RAM|Z~381_combout\ & ((\RAM|Z~376_combout\))))) # (!\mar|output\(0) & (((\RAM|Z~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~383_combout\,
	datab => \mar|output\(0),
	datac => \RAM|Z~376_combout\,
	datad => \RAM|Z~381_combout\,
	combout => \RAM|Z~384_combout\);

-- Location: FF_X65_Y48_N5
\RAM|Z~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~123_q\);

-- Location: LCCOMB_X64_Y48_N10
\RAM|Z~565\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~565_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~565_combout\);

-- Location: FF_X64_Y48_N11
\RAM|Z~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~565_combout\,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~115_q\);

-- Location: LCCOMB_X65_Y48_N4
\RAM|Z~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~392_combout\ = (\mar|output\(1) & (\mar|output\(0))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~123_q\)) # (!\mar|output\(0) & ((!\RAM|Z~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \RAM|Z~123_q\,
	datad => \RAM|Z~115_q\,
	combout => \RAM|Z~392_combout\);

-- Location: FF_X65_Y48_N31
\RAM|Z~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~139_q\);

-- Location: LCCOMB_X65_Y51_N4
\RAM|Z~564\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~564_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~564_combout\);

-- Location: FF_X65_Y51_N5
\RAM|Z~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~564_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~131_q\);

-- Location: LCCOMB_X65_Y48_N30
\RAM|Z~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~393_combout\ = (\mar|output\(1) & ((\RAM|Z~392_combout\ & (\RAM|Z~139_q\)) # (!\RAM|Z~392_combout\ & ((!\RAM|Z~131_q\))))) # (!\mar|output\(1) & (\RAM|Z~392_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~392_combout\,
	datac => \RAM|Z~139_q\,
	datad => \RAM|Z~131_q\,
	combout => \RAM|Z~393_combout\);

-- Location: LCCOMB_X70_Y47_N10
\RAM|Z~75feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~75feeder_combout\ = \mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~75feeder_combout\);

-- Location: FF_X70_Y47_N11
\RAM|Z~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~75feeder_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~75_q\);

-- Location: FF_X70_Y47_N13
\RAM|Z~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~67_q\);

-- Location: LCCOMB_X69_Y47_N30
\RAM|Z~560\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~560_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(5),
	combout => \RAM|Z~560_combout\);

-- Location: FF_X69_Y47_N31
\RAM|Z~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~560_combout\,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~51_q\);

-- Location: FF_X69_Y47_N25
\RAM|Z~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~59_q\);

-- Location: LCCOMB_X69_Y47_N24
\RAM|Z~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~385_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & ((\RAM|Z~59_q\))) # (!\mar|output\(0) & (!\RAM|Z~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~51_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~59_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~385_combout\);

-- Location: LCCOMB_X70_Y47_N12
\RAM|Z~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~386_combout\ = (\mar|output\(1) & ((\RAM|Z~385_combout\ & (\RAM|Z~75_q\)) # (!\RAM|Z~385_combout\ & ((\RAM|Z~67_q\))))) # (!\mar|output\(1) & (((\RAM|Z~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~75_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~67_q\,
	datad => \RAM|Z~385_combout\,
	combout => \RAM|Z~386_combout\);

-- Location: LCCOMB_X71_Y47_N0
\RAM|Z~562\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~562_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~562_combout\);

-- Location: FF_X71_Y47_N1
\RAM|Z~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~562_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~107_q\);

-- Location: LCCOMB_X65_Y47_N4
\RAM|Z~561\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~561_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~561_combout\);

-- Location: FF_X65_Y47_N5
\RAM|Z~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~561_combout\,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~91_q\);

-- Location: FF_X67_Y48_N9
\RAM|Z~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~99_q\);

-- Location: FF_X67_Y48_N27
\RAM|Z~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~83_q\);

-- Location: LCCOMB_X67_Y48_N26
\RAM|Z~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~387_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~99_q\)) # (!\mar|output\(1) & ((\RAM|Z~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~99_q\,
	datac => \RAM|Z~83_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~387_combout\);

-- Location: LCCOMB_X66_Y47_N12
\RAM|Z~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~388_combout\ = (\mar|output\(0) & ((\RAM|Z~387_combout\ & (!\RAM|Z~107_q\)) # (!\RAM|Z~387_combout\ & ((!\RAM|Z~91_q\))))) # (!\mar|output\(0) & (((\RAM|Z~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~107_q\,
	datab => \RAM|Z~91_q\,
	datac => \mar|output\(0),
	datad => \RAM|Z~387_combout\,
	combout => \RAM|Z~388_combout\);

-- Location: LCCOMB_X66_Y46_N0
\RAM|Z~563\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~563_combout\ = !\mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~563_combout\);

-- Location: FF_X66_Y46_N1
\RAM|Z~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~563_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~27_q\);

-- Location: FF_X66_Y47_N19
\RAM|Z~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~43_q\);

-- Location: LCCOMB_X70_Y49_N28
\RAM|Z~35feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~35feeder_combout\ = \mdro|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(5),
	combout => \RAM|Z~35feeder_combout\);

-- Location: FF_X70_Y49_N29
\RAM|Z~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~35feeder_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~35_q\);

-- Location: FF_X70_Y49_N7
\RAM|Z~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(5),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~19_q\);

-- Location: LCCOMB_X70_Y49_N6
\RAM|Z~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~389_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~35_q\)) # (!\mar|output\(1) & ((\RAM|Z~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~35_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~19_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~389_combout\);

-- Location: LCCOMB_X66_Y47_N18
\RAM|Z~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~390_combout\ = (\mar|output\(0) & ((\RAM|Z~389_combout\ & ((\RAM|Z~43_q\))) # (!\RAM|Z~389_combout\ & (!\RAM|Z~27_q\)))) # (!\mar|output\(0) & (((\RAM|Z~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~27_q\,
	datac => \RAM|Z~43_q\,
	datad => \RAM|Z~389_combout\,
	combout => \RAM|Z~390_combout\);

-- Location: LCCOMB_X65_Y47_N18
\RAM|Z~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~391_combout\ = (\mar|output\(2) & (\mar|output\(3))) # (!\mar|output\(2) & ((\mar|output\(3) & (\RAM|Z~388_combout\)) # (!\mar|output\(3) & ((\RAM|Z~390_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \RAM|Z~388_combout\,
	datad => \RAM|Z~390_combout\,
	combout => \RAM|Z~391_combout\);

-- Location: LCCOMB_X65_Y47_N20
\RAM|Z~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~394_combout\ = (\mar|output\(2) & ((\RAM|Z~391_combout\ & (\RAM|Z~393_combout\)) # (!\RAM|Z~391_combout\ & ((\RAM|Z~386_combout\))))) # (!\mar|output\(2) & (((\RAM|Z~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~393_combout\,
	datab => \mar|output\(2),
	datac => \RAM|Z~386_combout\,
	datad => \RAM|Z~391_combout\,
	combout => \RAM|Z~394_combout\);

-- Location: LCCOMB_X65_Y47_N28
\RAM|Z~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~395_combout\ = (\mar|output\(4) & (\RAM|Z~384_combout\)) # (!\mar|output\(4) & ((\RAM|Z~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(4),
	datac => \RAM|Z~384_combout\,
	datad => \RAM|Z~394_combout\,
	combout => \RAM|Z~395_combout\);

-- Location: FF_X65_Y47_N29
\RAM|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~395_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(5));

-- Location: FF_X70_Y46_N19
\MDRI|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(5),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(5));

-- Location: LCCOMB_X71_Y46_N28
\IR|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[5]~feeder_combout\ = \MDRI|output\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDRI|output\(5),
	combout => \IR|output[5]~feeder_combout\);

-- Location: FF_X71_Y46_N29
\IR|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[5]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(5));

-- Location: LCCOMB_X71_Y46_N30
\CU|current_state~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~21_combout\ = (\CU|current_state.decode~q\ & (!\IR|output\(7) & (\IR|output\(6) & !\IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.decode~q\,
	datab => \IR|output\(7),
	datac => \IR|output\(6),
	datad => \IR|output\(5),
	combout => \CU|current_state~21_combout\);

-- Location: FF_X71_Y46_N31
\CU|current_state.staa_load_mdro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.staa_load_mdro~q\);

-- Location: LCCOMB_X70_Y46_N26
\CU|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|WideOr5~combout\ = (\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datad => \aluPort|Equal4~0_combout\,
	combout => \CU|WideOr5~combout\);

-- Location: FF_X70_Y46_N25
\Acc|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~36_combout\,
	sload => VCC,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(6));

-- Location: LCCOMB_X69_Y46_N6
\aluPort|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~32_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & ((\Acc|output\(6)))) # (!\aluPort|Equal4~0_combout\ & (\MDRI|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(6),
	datab => \aluPort|Equal4~0_combout\,
	datac => \Acc|output\(6),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~32_combout\);

-- Location: LCCOMB_X70_Y46_N24
\aluPort|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~33_combout\ = \Acc|output\(6) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.staa_load_mdro~q\,
	datab => \CU|current_state.staa_write_mem~q\,
	datac => \Acc|output\(6),
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~33_combout\);

-- Location: LCCOMB_X70_Y46_N20
\aluPort|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~34_combout\ = (\MDRI|output\(6) & ((\aluPort|Add0~33_combout\ & (\aluPort|Add0~30\ & VCC)) # (!\aluPort|Add0~33_combout\ & (!\aluPort|Add0~30\)))) # (!\MDRI|output\(6) & ((\aluPort|Add0~33_combout\ & (!\aluPort|Add0~30\)) # 
-- (!\aluPort|Add0~33_combout\ & ((\aluPort|Add0~30\) # (GND)))))
-- \aluPort|Add0~35\ = CARRY((\MDRI|output\(6) & (!\aluPort|Add0~33_combout\ & !\aluPort|Add0~30\)) # (!\MDRI|output\(6) & ((!\aluPort|Add0~30\) # (!\aluPort|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MDRI|output\(6),
	datab => \aluPort|Add0~33_combout\,
	datad => VCC,
	cin => \aluPort|Add0~30\,
	combout => \aluPort|Add0~34_combout\,
	cout => \aluPort|Add0~35\);

-- Location: LCCOMB_X70_Y46_N30
\aluPort|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~36_combout\ = (\aluPort|Add0~32_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr5~combout\,
	datab => \aluPort|Add0~32_combout\,
	datad => \aluPort|Add0~34_combout\,
	combout => \aluPort|Add0~36_combout\);

-- Location: LCCOMB_X69_Y46_N2
\mdro|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mdro|output[6]~feeder_combout\ = \aluPort|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluPort|Add0~36_combout\,
	combout => \mdro|output[6]~feeder_combout\);

-- Location: FF_X69_Y46_N3
\mdro|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdro|output[6]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(6));

-- Location: LCCOMB_X64_Y46_N14
\RAM|Z~567\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~567_combout\ = !\mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~567_combout\);

-- Location: FF_X64_Y46_N15
\RAM|Z~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~567_combout\,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~268_q\);

-- Location: FF_X65_Y46_N27
\RAM|Z~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~236_q\);

-- Location: LCCOMB_X69_Y46_N12
\RAM|Z~566\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~566_combout\ = !\mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~566_combout\);

-- Location: FF_X69_Y46_N13
\RAM|Z~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~566_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~204_q\);

-- Location: FF_X65_Y46_N1
\RAM|Z~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~172_q\);

-- Location: LCCOMB_X65_Y46_N0
\RAM|Z~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~403_combout\ = (\mar|output\(2) & (((\mar|output\(3))) # (!\RAM|Z~204_q\))) # (!\mar|output\(2) & (((\RAM|Z~172_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~204_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~172_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~403_combout\);

-- Location: LCCOMB_X65_Y46_N26
\RAM|Z~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~404_combout\ = (\mar|output\(3) & ((\RAM|Z~403_combout\ & (!\RAM|Z~268_q\)) # (!\RAM|Z~403_combout\ & ((\RAM|Z~236_q\))))) # (!\mar|output\(3) & (((\RAM|Z~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~268_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~236_q\,
	datad => \RAM|Z~403_combout\,
	combout => \RAM|Z~404_combout\);

-- Location: FF_X67_Y50_N7
\RAM|Z~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~260_q\);

-- Location: FF_X67_Y50_N9
\RAM|Z~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~196_q\);

-- Location: LCCOMB_X67_Y46_N24
\RAM|Z~228feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~228feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~228feeder_combout\);

-- Location: FF_X67_Y46_N25
\RAM|Z~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~228feeder_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~228_q\);

-- Location: FF_X66_Y50_N9
\RAM|Z~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~164_q\);

-- Location: LCCOMB_X66_Y50_N8
\RAM|Z~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~396_combout\ = (\mar|output\(3) & ((\RAM|Z~228_q\) # ((\mar|output\(2))))) # (!\mar|output\(3) & (((\RAM|Z~164_q\ & !\mar|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~228_q\,
	datac => \RAM|Z~164_q\,
	datad => \mar|output\(2),
	combout => \RAM|Z~396_combout\);

-- Location: LCCOMB_X67_Y50_N8
\RAM|Z~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~397_combout\ = (\mar|output\(2) & ((\RAM|Z~396_combout\ & (\RAM|Z~260_q\)) # (!\RAM|Z~396_combout\ & ((\RAM|Z~196_q\))))) # (!\mar|output\(2) & (((\RAM|Z~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~260_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~196_q\,
	datad => \RAM|Z~396_combout\,
	combout => \RAM|Z~397_combout\);

-- Location: FF_X65_Y49_N19
\RAM|Z~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~180_q\);

-- Location: FF_X65_Y49_N9
\RAM|Z~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~244_q\);

-- Location: FF_X69_Y49_N11
\RAM|Z~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~148_q\);

-- Location: LCCOMB_X69_Y49_N28
\RAM|Z~212feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~212feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~212feeder_combout\);

-- Location: FF_X69_Y49_N29
\RAM|Z~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~212feeder_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~212_q\);

-- Location: LCCOMB_X69_Y49_N10
\RAM|Z~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~400_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~212_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~148_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~148_q\,
	datad => \RAM|Z~212_q\,
	combout => \RAM|Z~400_combout\);

-- Location: LCCOMB_X65_Y49_N8
\RAM|Z~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~401_combout\ = (\mar|output\(2) & ((\RAM|Z~400_combout\ & ((\RAM|Z~244_q\))) # (!\RAM|Z~400_combout\ & (\RAM|Z~180_q\)))) # (!\mar|output\(2) & (((\RAM|Z~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \RAM|Z~180_q\,
	datac => \RAM|Z~244_q\,
	datad => \RAM|Z~400_combout\,
	combout => \RAM|Z~401_combout\);

-- Location: LCCOMB_X66_Y50_N2
\RAM|Z~188feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~188feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~188feeder_combout\);

-- Location: FF_X66_Y50_N3
\RAM|Z~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~188feeder_combout\,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~188_q\);

-- Location: FF_X65_Y50_N5
\RAM|Z~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~156_q\);

-- Location: LCCOMB_X65_Y50_N4
\RAM|Z~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~398_combout\ = (\mar|output\(2) & ((\RAM|Z~188_q\) # ((\mar|output\(3))))) # (!\mar|output\(2) & (((\RAM|Z~156_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~188_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~156_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~398_combout\);

-- Location: FF_X65_Y50_N27
\RAM|Z~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~252_q\);

-- Location: LCCOMB_X69_Y50_N10
\RAM|Z~220feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~220feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~220feeder_combout\);

-- Location: FF_X69_Y50_N11
\RAM|Z~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~220feeder_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~220_q\);

-- Location: LCCOMB_X65_Y50_N26
\RAM|Z~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~399_combout\ = (\mar|output\(3) & ((\RAM|Z~398_combout\ & (\RAM|Z~252_q\)) # (!\RAM|Z~398_combout\ & ((\RAM|Z~220_q\))))) # (!\mar|output\(3) & (\RAM|Z~398_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~398_combout\,
	datac => \RAM|Z~252_q\,
	datad => \RAM|Z~220_q\,
	combout => \RAM|Z~399_combout\);

-- Location: LCCOMB_X66_Y47_N28
\RAM|Z~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~402_combout\ = (\mar|output\(0) & ((\mar|output\(1)) # ((\RAM|Z~399_combout\)))) # (!\mar|output\(0) & (!\mar|output\(1) & (\RAM|Z~401_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~401_combout\,
	datad => \RAM|Z~399_combout\,
	combout => \RAM|Z~402_combout\);

-- Location: LCCOMB_X66_Y47_N22
\RAM|Z~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~405_combout\ = (\mar|output\(1) & ((\RAM|Z~402_combout\ & (\RAM|Z~404_combout\)) # (!\RAM|Z~402_combout\ & ((\RAM|Z~397_combout\))))) # (!\mar|output\(1) & (((\RAM|Z~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~404_combout\,
	datab => \mar|output\(1),
	datac => \RAM|Z~397_combout\,
	datad => \RAM|Z~402_combout\,
	combout => \RAM|Z~405_combout\);

-- Location: LCCOMB_X65_Y48_N22
\RAM|Z~570\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~570_combout\ = !\mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~570_combout\);

-- Location: FF_X65_Y48_N23
\RAM|Z~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~570_combout\,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~140_q\);

-- Location: FF_X65_Y48_N17
\RAM|Z~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~124_q\);

-- Location: LCCOMB_X64_Y48_N12
\RAM|Z~132feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~132feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~132feeder_combout\);

-- Location: FF_X64_Y48_N13
\RAM|Z~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~132feeder_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~132_q\);

-- Location: FF_X64_Y48_N15
\RAM|Z~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~116_q\);

-- Location: LCCOMB_X64_Y48_N14
\RAM|Z~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~413_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~132_q\)) # (!\mar|output\(1) & ((\RAM|Z~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~132_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~116_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~413_combout\);

-- Location: LCCOMB_X65_Y48_N16
\RAM|Z~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~414_combout\ = (\mar|output\(0) & ((\RAM|Z~413_combout\ & (!\RAM|Z~140_q\)) # (!\RAM|Z~413_combout\ & ((\RAM|Z~124_q\))))) # (!\mar|output\(0) & (((\RAM|Z~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~140_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~124_q\,
	datad => \RAM|Z~413_combout\,
	combout => \RAM|Z~414_combout\);

-- Location: LCCOMB_X71_Y48_N18
\RAM|Z~108feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~108feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~108feeder_combout\);

-- Location: FF_X71_Y48_N19
\RAM|Z~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~108feeder_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~108_q\);

-- Location: FF_X67_Y48_N17
\RAM|Z~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~100_q\);

-- Location: LCCOMB_X65_Y47_N14
\RAM|Z~92feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~92feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~92feeder_combout\);

-- Location: FF_X65_Y47_N15
\RAM|Z~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~92feeder_combout\,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~92_q\);

-- Location: FF_X67_Y48_N7
\RAM|Z~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~84_q\);

-- Location: LCCOMB_X67_Y48_N6
\RAM|Z~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~406_combout\ = (\mar|output\(0) & ((\RAM|Z~92_q\) # ((\mar|output\(1))))) # (!\mar|output\(0) & (((\RAM|Z~84_q\ & !\mar|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~92_q\,
	datac => \RAM|Z~84_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~406_combout\);

-- Location: LCCOMB_X67_Y48_N16
\RAM|Z~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~407_combout\ = (\mar|output\(1) & ((\RAM|Z~406_combout\ & (\RAM|Z~108_q\)) # (!\RAM|Z~406_combout\ & ((\RAM|Z~100_q\))))) # (!\mar|output\(1) & (((\RAM|Z~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~108_q\,
	datac => \RAM|Z~100_q\,
	datad => \RAM|Z~406_combout\,
	combout => \RAM|Z~407_combout\);

-- Location: FF_X66_Y47_N9
\RAM|Z~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~44_q\);

-- Location: LCCOMB_X63_Y46_N0
\RAM|Z~28feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~28feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~28feeder_combout\);

-- Location: FF_X63_Y46_N1
\RAM|Z~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~28feeder_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~28_q\);

-- Location: FF_X67_Y47_N9
\RAM|Z~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~20_q\);

-- Location: LCCOMB_X67_Y47_N8
\RAM|Z~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~410_combout\ = (\mar|output\(0) & ((\RAM|Z~28_q\) # ((\mar|output\(1))))) # (!\mar|output\(0) & (((\RAM|Z~20_q\ & !\mar|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~28_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~20_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~410_combout\);

-- Location: LCCOMB_X70_Y49_N16
\RAM|Z~569\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~569_combout\ = !\mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(6),
	combout => \RAM|Z~569_combout\);

-- Location: FF_X70_Y49_N17
\RAM|Z~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~569_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~36_q\);

-- Location: LCCOMB_X67_Y47_N10
\RAM|Z~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~411_combout\ = (\mar|output\(1) & ((\RAM|Z~410_combout\ & (\RAM|Z~44_q\)) # (!\RAM|Z~410_combout\ & ((!\RAM|Z~36_q\))))) # (!\mar|output\(1) & (((\RAM|Z~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~44_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~410_combout\,
	datad => \RAM|Z~36_q\,
	combout => \RAM|Z~411_combout\);

-- Location: LCCOMB_X70_Y47_N6
\RAM|Z~568\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~568_combout\ = !\mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~568_combout\);

-- Location: FF_X70_Y47_N7
\RAM|Z~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~568_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~76_q\);

-- Location: FF_X69_Y47_N5
\RAM|Z~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~60_q\);

-- Location: LCCOMB_X70_Y47_N24
\RAM|Z~68feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~68feeder_combout\ = \mdro|output\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(6),
	combout => \RAM|Z~68feeder_combout\);

-- Location: FF_X70_Y47_N25
\RAM|Z~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~68feeder_combout\,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~68_q\);

-- Location: FF_X69_Y47_N19
\RAM|Z~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(6),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~52_q\);

-- Location: LCCOMB_X69_Y47_N18
\RAM|Z~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~408_combout\ = (\mar|output\(1) & ((\RAM|Z~68_q\) # ((\mar|output\(0))))) # (!\mar|output\(1) & (((\RAM|Z~52_q\ & !\mar|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~68_q\,
	datac => \RAM|Z~52_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~408_combout\);

-- Location: LCCOMB_X69_Y47_N4
\RAM|Z~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~409_combout\ = (\mar|output\(0) & ((\RAM|Z~408_combout\ & (!\RAM|Z~76_q\)) # (!\RAM|Z~408_combout\ & ((\RAM|Z~60_q\))))) # (!\mar|output\(0) & (((\RAM|Z~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~76_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~60_q\,
	datad => \RAM|Z~408_combout\,
	combout => \RAM|Z~409_combout\);

-- Location: LCCOMB_X66_Y47_N6
\RAM|Z~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~412_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & ((\RAM|Z~409_combout\))) # (!\mar|output\(2) & (\RAM|Z~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~411_combout\,
	datad => \RAM|Z~409_combout\,
	combout => \RAM|Z~412_combout\);

-- Location: LCCOMB_X66_Y47_N24
\RAM|Z~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~415_combout\ = (\mar|output\(3) & ((\RAM|Z~412_combout\ & (\RAM|Z~414_combout\)) # (!\RAM|Z~412_combout\ & ((\RAM|Z~407_combout\))))) # (!\mar|output\(3) & (((\RAM|Z~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~414_combout\,
	datab => \mar|output\(3),
	datac => \RAM|Z~407_combout\,
	datad => \RAM|Z~412_combout\,
	combout => \RAM|Z~415_combout\);

-- Location: LCCOMB_X66_Y47_N16
\RAM|Z~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~416_combout\ = (\mar|output\(4) & (\RAM|Z~405_combout\)) # (!\mar|output\(4) & ((\RAM|Z~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~405_combout\,
	datad => \RAM|Z~415_combout\,
	combout => \RAM|Z~416_combout\);

-- Location: FF_X66_Y47_N17
\RAM|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~416_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(6));

-- Location: FF_X70_Y46_N21
\MDRI|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(6),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(6));

-- Location: FF_X71_Y46_N21
\IR|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MDRI|output\(6),
	sload => VCC,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(6));

-- Location: LCCOMB_X71_Y46_N2
\CU|current_state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~19_combout\ = (\CU|current_state.decode~q\ & (!\IR|output\(7) & (!\IR|output\(6) & !\IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.decode~q\,
	datab => \IR|output\(7),
	datac => \IR|output\(6),
	datad => \IR|output\(5),
	combout => \CU|current_state~19_combout\);

-- Location: FF_X71_Y46_N3
\CU|current_state.ldaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_load_mar~q\);

-- Location: LCCOMB_X71_Y46_N26
\CU|current_state.ldaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.ldaa_read_mem~feeder_combout\ = \CU|current_state.ldaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|current_state.ldaa_load_mar~q\,
	combout => \CU|current_state.ldaa_read_mem~feeder_combout\);

-- Location: FF_X71_Y46_N27
\CU|current_state.ldaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.ldaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.ldaa_read_mem~q\);

-- Location: LCCOMB_X71_Y46_N18
\aluPort|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Equal4~0_combout\ = (!\CU|current_state.ldaa_read_mem~q\ & (!\CU|current_state.ldaa_load_mdri~q\ & (!\CU|current_state.ldaa_load_a~q\ & !\CU|current_state.ldaa_load_mar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.ldaa_read_mem~q\,
	datab => \CU|current_state.ldaa_load_mdri~q\,
	datac => \CU|current_state.ldaa_load_a~q\,
	datad => \CU|current_state.ldaa_load_mar~q\,
	combout => \aluPort|Equal4~0_combout\);

-- Location: LCCOMB_X72_Y46_N12
\aluPort|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~0_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & (\Acc|output\(0))) # (!\aluPort|Equal4~0_combout\ & ((\MDRI|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Equal4~0_combout\,
	datab => \Acc|output\(0),
	datac => \MDRI|output\(0),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~0_combout\);

-- Location: LCCOMB_X72_Y46_N26
\aluPort|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~6_combout\ = (\aluPort|Add0~0_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~0_combout\,
	datab => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~4_combout\,
	combout => \aluPort|Add0~6_combout\);

-- Location: FF_X72_Y46_N9
\mdro|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~6_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(0));

-- Location: LCCOMB_X66_Y48_N22
\RAM|Z~491\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~491_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~491_combout\);

-- Location: FF_X66_Y48_N23
\RAM|Z~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~491_combout\,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~262_q\);

-- Location: FF_X65_Y46_N17
\RAM|Z~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~230_q\);

-- Location: LCCOMB_X69_Y46_N20
\RAM|Z~490\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~490_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~490_combout\);

-- Location: FF_X69_Y46_N21
\RAM|Z~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~490_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~198_q\);

-- Location: FF_X65_Y46_N7
\RAM|Z~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~166_q\);

-- Location: LCCOMB_X65_Y46_N6
\RAM|Z~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~277_combout\ = (\mar|output\(2) & (((\mar|output\(3))) # (!\RAM|Z~198_q\))) # (!\mar|output\(2) & (((\RAM|Z~166_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~198_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~166_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~277_combout\);

-- Location: LCCOMB_X65_Y46_N16
\RAM|Z~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~278_combout\ = (\mar|output\(3) & ((\RAM|Z~277_combout\ & (!\RAM|Z~262_q\)) # (!\RAM|Z~277_combout\ & ((\RAM|Z~230_q\))))) # (!\mar|output\(3) & (((\RAM|Z~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~262_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~230_q\,
	datad => \RAM|Z~277_combout\,
	combout => \RAM|Z~278_combout\);

-- Location: LCCOMB_X67_Y50_N12
\RAM|Z~486\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~486_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~486_combout\);

-- Location: FF_X67_Y50_N13
\RAM|Z~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~486_combout\,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~190_q\);

-- Location: LCCOMB_X67_Y50_N14
\RAM|Z~487\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~487_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~487_combout\);

-- Location: FF_X67_Y50_N15
\RAM|Z~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~487_combout\,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~254_q\);

-- Location: FF_X66_Y50_N17
\RAM|Z~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~158_q\);

-- Location: LCCOMB_X67_Y46_N4
\RAM|Z~222feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~222feeder_combout\ = \mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~222feeder_combout\);

-- Location: FF_X67_Y46_N5
\RAM|Z~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~222feeder_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~222_q\);

-- Location: LCCOMB_X66_Y50_N16
\RAM|Z~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~270_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~222_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~158_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~158_q\,
	datad => \RAM|Z~222_q\,
	combout => \RAM|Z~270_combout\);

-- Location: LCCOMB_X67_Y46_N10
\RAM|Z~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~271_combout\ = (\mar|output\(2) & ((\RAM|Z~270_combout\ & ((!\RAM|Z~254_q\))) # (!\RAM|Z~270_combout\ & (!\RAM|Z~190_q\)))) # (!\mar|output\(2) & (((\RAM|Z~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \RAM|Z~190_q\,
	datac => \RAM|Z~254_q\,
	datad => \RAM|Z~270_combout\,
	combout => \RAM|Z~271_combout\);

-- Location: LCCOMB_X64_Y50_N4
\RAM|Z~214feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~214feeder_combout\ = \mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~214feeder_combout\);

-- Location: FF_X64_Y50_N5
\RAM|Z~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~214feeder_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~214_q\);

-- Location: FF_X65_Y50_N7
\RAM|Z~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~246_q\);

-- Location: FF_X66_Y50_N31
\RAM|Z~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~182_q\);

-- Location: FF_X65_Y50_N17
\RAM|Z~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~150_q\);

-- Location: LCCOMB_X65_Y50_N16
\RAM|Z~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~272_combout\ = (\mar|output\(2) & ((\RAM|Z~182_q\) # ((\mar|output\(3))))) # (!\mar|output\(2) & (((\RAM|Z~150_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~182_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~150_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~272_combout\);

-- Location: LCCOMB_X65_Y50_N6
\RAM|Z~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~273_combout\ = (\mar|output\(3) & ((\RAM|Z~272_combout\ & ((\RAM|Z~246_q\))) # (!\RAM|Z~272_combout\ & (\RAM|Z~214_q\)))) # (!\mar|output\(3) & (((\RAM|Z~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~214_q\,
	datac => \RAM|Z~246_q\,
	datad => \RAM|Z~272_combout\,
	combout => \RAM|Z~273_combout\);

-- Location: LCCOMB_X65_Y49_N12
\RAM|Z~488\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~488_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~488_combout\);

-- Location: FF_X65_Y49_N13
\RAM|Z~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~488_combout\,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~174_q\);

-- Location: LCCOMB_X65_Y49_N4
\RAM|Z~489\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~489_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~489_combout\);

-- Location: FF_X65_Y49_N23
\RAM|Z~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Z~489_combout\,
	sload => VCC,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~238_q\);

-- Location: FF_X69_Y49_N15
\RAM|Z~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~142_q\);

-- Location: LCCOMB_X69_Y49_N12
\RAM|Z~206feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~206feeder_combout\ = \mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~206feeder_combout\);

-- Location: FF_X69_Y49_N13
\RAM|Z~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~206feeder_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~206_q\);

-- Location: LCCOMB_X69_Y49_N14
\RAM|Z~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~274_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~206_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~142_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~142_q\,
	datad => \RAM|Z~206_q\,
	combout => \RAM|Z~274_combout\);

-- Location: LCCOMB_X65_Y49_N22
\RAM|Z~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~275_combout\ = (\mar|output\(2) & ((\RAM|Z~274_combout\ & ((!\RAM|Z~238_q\))) # (!\RAM|Z~274_combout\ & (!\RAM|Z~174_q\)))) # (!\mar|output\(2) & (((\RAM|Z~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~174_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~238_q\,
	datad => \RAM|Z~274_combout\,
	combout => \RAM|Z~275_combout\);

-- Location: LCCOMB_X66_Y46_N16
\RAM|Z~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~276_combout\ = (\mar|output\(0) & ((\mar|output\(1)) # ((\RAM|Z~273_combout\)))) # (!\mar|output\(0) & (!\mar|output\(1) & ((\RAM|Z~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~273_combout\,
	datad => \RAM|Z~275_combout\,
	combout => \RAM|Z~276_combout\);

-- Location: LCCOMB_X66_Y46_N14
\RAM|Z~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~279_combout\ = (\mar|output\(1) & ((\RAM|Z~276_combout\ & (\RAM|Z~278_combout\)) # (!\RAM|Z~276_combout\ & ((\RAM|Z~271_combout\))))) # (!\mar|output\(1) & (((\RAM|Z~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~278_combout\,
	datab => \mar|output\(1),
	datac => \RAM|Z~271_combout\,
	datad => \RAM|Z~276_combout\,
	combout => \RAM|Z~279_combout\);

-- Location: LCCOMB_X65_Y48_N26
\RAM|Z~499\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~499_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~499_combout\);

-- Location: FF_X65_Y48_N27
\RAM|Z~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~499_combout\,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~134_q\);

-- Location: FF_X65_Y48_N29
\RAM|Z~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~118_q\);

-- Location: LCCOMB_X64_Y48_N26
\RAM|Z~498\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~498_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~498_combout\);

-- Location: FF_X64_Y48_N27
\RAM|Z~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~498_combout\,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~110_q\);

-- Location: LCCOMB_X64_Y48_N16
\RAM|Z~497\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~497_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~497_combout\);

-- Location: FF_X64_Y48_N17
\RAM|Z~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~497_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~126_q\);

-- Location: LCCOMB_X64_Y48_N20
\RAM|Z~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~287_combout\ = (\mar|output\(1) & (((\mar|output\(0)) # (!\RAM|Z~126_q\)))) # (!\mar|output\(1) & (!\RAM|Z~110_q\ & (!\mar|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~110_q\,
	datab => \mar|output\(1),
	datac => \mar|output\(0),
	datad => \RAM|Z~126_q\,
	combout => \RAM|Z~287_combout\);

-- Location: LCCOMB_X65_Y48_N28
\RAM|Z~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~288_combout\ = (\mar|output\(0) & ((\RAM|Z~287_combout\ & (!\RAM|Z~134_q\)) # (!\RAM|Z~287_combout\ & ((\RAM|Z~118_q\))))) # (!\mar|output\(0) & (((\RAM|Z~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~134_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~118_q\,
	datad => \RAM|Z~287_combout\,
	combout => \RAM|Z~288_combout\);

-- Location: LCCOMB_X71_Y48_N26
\RAM|Z~102feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~102feeder_combout\ = \mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~102feeder_combout\);

-- Location: FF_X71_Y48_N27
\RAM|Z~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~102feeder_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~102_q\);

-- Location: FF_X67_Y48_N5
\RAM|Z~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~94_q\);

-- Location: LCCOMB_X67_Y48_N14
\RAM|Z~492\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~492_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~492_combout\);

-- Location: FF_X67_Y48_N15
\RAM|Z~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~492_combout\,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~78_q\);

-- Location: FF_X71_Y48_N25
\RAM|Z~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~86_q\);

-- Location: LCCOMB_X71_Y48_N24
\RAM|Z~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~280_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & ((\RAM|Z~86_q\))) # (!\mar|output\(0) & (!\RAM|Z~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~78_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~86_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~280_combout\);

-- Location: LCCOMB_X67_Y48_N4
\RAM|Z~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~281_combout\ = (\mar|output\(1) & ((\RAM|Z~280_combout\ & (\RAM|Z~102_q\)) # (!\RAM|Z~280_combout\ & ((\RAM|Z~94_q\))))) # (!\mar|output\(1) & (((\RAM|Z~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~102_q\,
	datac => \RAM|Z~94_q\,
	datad => \RAM|Z~280_combout\,
	combout => \RAM|Z~281_combout\);

-- Location: LCCOMB_X70_Y49_N20
\RAM|Z~494\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~494_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~494_combout\);

-- Location: FF_X70_Y49_N21
\RAM|Z~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~494_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~30_q\);

-- Location: LCCOMB_X66_Y47_N26
\RAM|Z~496\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~496_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~496_combout\);

-- Location: FF_X66_Y47_N27
\RAM|Z~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~496_combout\,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~38_q\);

-- Location: FF_X66_Y46_N29
\RAM|Z~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~22_q\);

-- Location: LCCOMB_X70_Y49_N26
\RAM|Z~495\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~495_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(0),
	combout => \RAM|Z~495_combout\);

-- Location: FF_X70_Y49_N27
\RAM|Z~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~495_combout\,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~14_q\);

-- Location: LCCOMB_X66_Y46_N28
\RAM|Z~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~284_combout\ = (\mar|output\(0) & ((\mar|output\(1)) # ((\RAM|Z~22_q\)))) # (!\mar|output\(0) & (!\mar|output\(1) & ((!\RAM|Z~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~22_q\,
	datad => \RAM|Z~14_q\,
	combout => \RAM|Z~284_combout\);

-- Location: LCCOMB_X66_Y46_N22
\RAM|Z~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~285_combout\ = (\mar|output\(1) & ((\RAM|Z~284_combout\ & ((!\RAM|Z~38_q\))) # (!\RAM|Z~284_combout\ & (!\RAM|Z~30_q\)))) # (!\mar|output\(1) & (((\RAM|Z~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~30_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~38_q\,
	datad => \RAM|Z~284_combout\,
	combout => \RAM|Z~285_combout\);

-- Location: LCCOMB_X70_Y47_N14
\RAM|Z~493\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~493_combout\ = !\mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~493_combout\);

-- Location: FF_X70_Y47_N15
\RAM|Z~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~493_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~70_q\);

-- Location: FF_X69_Y47_N9
\RAM|Z~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~54_q\);

-- Location: LCCOMB_X70_Y47_N16
\RAM|Z~62feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~62feeder_combout\ = \mdro|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(0),
	combout => \RAM|Z~62feeder_combout\);

-- Location: FF_X70_Y47_N17
\RAM|Z~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~62feeder_combout\,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~62_q\);

-- Location: FF_X69_Y47_N3
\RAM|Z~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(0),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~46_q\);

-- Location: LCCOMB_X69_Y47_N2
\RAM|Z~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~282_combout\ = (\mar|output\(1) & ((\RAM|Z~62_q\) # ((\mar|output\(0))))) # (!\mar|output\(1) & (((\RAM|Z~46_q\ & !\mar|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~62_q\,
	datac => \RAM|Z~46_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~282_combout\);

-- Location: LCCOMB_X69_Y47_N8
\RAM|Z~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~283_combout\ = (\mar|output\(0) & ((\RAM|Z~282_combout\ & (!\RAM|Z~70_q\)) # (!\RAM|Z~282_combout\ & ((\RAM|Z~54_q\))))) # (!\mar|output\(0) & (((\RAM|Z~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~70_q\,
	datac => \RAM|Z~54_q\,
	datad => \RAM|Z~282_combout\,
	combout => \RAM|Z~283_combout\);

-- Location: LCCOMB_X66_Y46_N20
\RAM|Z~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~286_combout\ = (\mar|output\(2) & (((\RAM|Z~283_combout\) # (\mar|output\(3))))) # (!\mar|output\(2) & (\RAM|Z~285_combout\ & ((!\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~285_combout\,
	datab => \mar|output\(2),
	datac => \RAM|Z~283_combout\,
	datad => \mar|output\(3),
	combout => \RAM|Z~286_combout\);

-- Location: LCCOMB_X66_Y46_N2
\RAM|Z~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~289_combout\ = (\mar|output\(3) & ((\RAM|Z~286_combout\ & (\RAM|Z~288_combout\)) # (!\RAM|Z~286_combout\ & ((\RAM|Z~281_combout\))))) # (!\mar|output\(3) & (((\RAM|Z~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~288_combout\,
	datab => \mar|output\(3),
	datac => \RAM|Z~281_combout\,
	datad => \RAM|Z~286_combout\,
	combout => \RAM|Z~289_combout\);

-- Location: LCCOMB_X66_Y46_N8
\RAM|Z~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~290_combout\ = (\mar|output\(4) & (\RAM|Z~279_combout\)) # (!\mar|output\(4) & ((\RAM|Z~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~279_combout\,
	datad => \RAM|Z~289_combout\,
	combout => \RAM|Z~290_combout\);

-- Location: FF_X66_Y46_N9
\RAM|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~290_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(0));

-- Location: FF_X70_Y46_N29
\MDRI|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(0),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(0));

-- Location: LCCOMB_X69_Y48_N8
\IR|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[0]~feeder_combout\ = \MDRI|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MDRI|output\(0),
	combout => \IR|output[0]~feeder_combout\);

-- Location: FF_X69_Y48_N9
\IR|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[0]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(0));

-- Location: LCCOMB_X66_Y48_N0
\Mux|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux|output[0]~0_combout\ = (\CU|WideOr2~0_combout\ & ((\ProgCount|output\(0)))) # (!\CU|WideOr2~0_combout\ & (\IR|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|output\(0),
	datac => \CU|WideOr2~0_combout\,
	datad => \ProgCount|output\(0),
	combout => \Mux|output[0]~0_combout\);

-- Location: FF_X66_Y48_N1
\mar|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux|output[0]~0_combout\,
	ena => \CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|output\(0));

-- Location: FF_X72_Y46_N27
\mdro|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~11_combout\,
	sload => VCC,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(1));

-- Location: LCCOMB_X66_Y48_N20
\RAM|Z~263feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~263feeder_combout\ = \mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~263feeder_combout\);

-- Location: FF_X66_Y48_N21
\RAM|Z~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~263feeder_combout\,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~263_q\);

-- Location: FF_X69_Y46_N19
\RAM|Z~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~199_q\);

-- Location: LCCOMB_X65_Y46_N12
\RAM|Z~505\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~505_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~505_combout\);

-- Location: FF_X65_Y46_N13
\RAM|Z~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~505_combout\,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~167_q\);

-- Location: LCCOMB_X69_Y45_N0
\RAM|Z~504\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~504_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~504_combout\);

-- Location: FF_X69_Y45_N1
\RAM|Z~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~504_combout\,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~231_q\);

-- Location: LCCOMB_X66_Y46_N4
\RAM|Z~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~298_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & ((!\RAM|Z~231_q\))) # (!\mar|output\(3) & (!\RAM|Z~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~167_q\,
	datab => \RAM|Z~231_q\,
	datac => \mar|output\(2),
	datad => \mar|output\(3),
	combout => \RAM|Z~298_combout\);

-- Location: LCCOMB_X70_Y48_N24
\RAM|Z~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~299_combout\ = (\mar|output\(2) & ((\RAM|Z~298_combout\ & (\RAM|Z~263_q\)) # (!\RAM|Z~298_combout\ & ((\RAM|Z~199_q\))))) # (!\mar|output\(2) & (((\RAM|Z~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~263_q\,
	datab => \RAM|Z~199_q\,
	datac => \mar|output\(2),
	datad => \RAM|Z~298_combout\,
	combout => \RAM|Z~299_combout\);

-- Location: LCCOMB_X65_Y50_N14
\RAM|Z~247feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~247feeder_combout\ = \mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~247feeder_combout\);

-- Location: FF_X65_Y50_N15
\RAM|Z~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~247feeder_combout\,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~247_q\);

-- Location: FF_X66_Y50_N1
\RAM|Z~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~183_q\);

-- Location: LCCOMB_X64_Y50_N14
\RAM|Z~215feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~215feeder_combout\ = \mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~215feeder_combout\);

-- Location: FF_X64_Y50_N15
\RAM|Z~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~215feeder_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~215_q\);

-- Location: FF_X65_Y50_N21
\RAM|Z~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~151_q\);

-- Location: LCCOMB_X65_Y50_N20
\RAM|Z~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~291_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & (\RAM|Z~215_q\)) # (!\mar|output\(3) & ((\RAM|Z~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~215_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~151_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~291_combout\);

-- Location: LCCOMB_X66_Y50_N0
\RAM|Z~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~292_combout\ = (\mar|output\(2) & ((\RAM|Z~291_combout\ & (\RAM|Z~247_q\)) # (!\RAM|Z~291_combout\ & ((\RAM|Z~183_q\))))) # (!\mar|output\(2) & (((\RAM|Z~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~247_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~183_q\,
	datad => \RAM|Z~291_combout\,
	combout => \RAM|Z~292_combout\);

-- Location: LCCOMB_X69_Y49_N8
\RAM|Z~502\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~502_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~502_combout\);

-- Location: FF_X69_Y49_N9
\RAM|Z~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~502_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~207_q\);

-- Location: FF_X65_Y49_N31
\RAM|Z~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~239_q\);

-- Location: FF_X65_Y49_N1
\RAM|Z~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~175_q\);

-- Location: LCCOMB_X69_Y49_N18
\RAM|Z~503\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~503_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~503_combout\);

-- Location: FF_X69_Y49_N19
\RAM|Z~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~503_combout\,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~143_q\);

-- Location: LCCOMB_X65_Y49_N0
\RAM|Z~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~295_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & (\RAM|Z~175_q\)) # (!\mar|output\(2) & ((!\RAM|Z~143_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~175_q\,
	datad => \RAM|Z~143_q\,
	combout => \RAM|Z~295_combout\);

-- Location: LCCOMB_X65_Y49_N30
\RAM|Z~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~296_combout\ = (\mar|output\(3) & ((\RAM|Z~295_combout\ & ((\RAM|Z~239_q\))) # (!\RAM|Z~295_combout\ & (!\RAM|Z~207_q\)))) # (!\mar|output\(3) & (((\RAM|Z~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~207_q\,
	datac => \RAM|Z~239_q\,
	datad => \RAM|Z~295_combout\,
	combout => \RAM|Z~296_combout\);

-- Location: LCCOMB_X67_Y46_N28
\RAM|Z~500\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~500_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~500_combout\);

-- Location: FF_X67_Y46_N29
\RAM|Z~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~500_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~223_q\);

-- Location: FF_X67_Y50_N11
\RAM|Z~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~255_q\);

-- Location: LCCOMB_X66_Y50_N10
\RAM|Z~501\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~501_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~501_combout\);

-- Location: FF_X66_Y50_N11
\RAM|Z~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~501_combout\,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~159_q\);

-- Location: FF_X67_Y50_N1
\RAM|Z~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~191_q\);

-- Location: LCCOMB_X67_Y50_N0
\RAM|Z~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~293_combout\ = (\mar|output\(2) & (((\RAM|Z~191_q\) # (\mar|output\(3))))) # (!\mar|output\(2) & (!\RAM|Z~159_q\ & ((!\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~159_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~191_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~293_combout\);

-- Location: LCCOMB_X67_Y50_N10
\RAM|Z~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~294_combout\ = (\mar|output\(3) & ((\RAM|Z~293_combout\ & ((\RAM|Z~255_q\))) # (!\RAM|Z~293_combout\ & (!\RAM|Z~223_q\)))) # (!\mar|output\(3) & (((\RAM|Z~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~223_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~255_q\,
	datad => \RAM|Z~293_combout\,
	combout => \RAM|Z~294_combout\);

-- Location: LCCOMB_X70_Y48_N2
\RAM|Z~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~297_combout\ = (\mar|output\(1) & ((\mar|output\(0)) # ((\RAM|Z~294_combout\)))) # (!\mar|output\(1) & (!\mar|output\(0) & (\RAM|Z~296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \RAM|Z~296_combout\,
	datad => \RAM|Z~294_combout\,
	combout => \RAM|Z~297_combout\);

-- Location: LCCOMB_X70_Y48_N30
\RAM|Z~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~300_combout\ = (\mar|output\(0) & ((\RAM|Z~297_combout\ & (\RAM|Z~299_combout\)) # (!\RAM|Z~297_combout\ & ((\RAM|Z~292_combout\))))) # (!\mar|output\(0) & (((\RAM|Z~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~299_combout\,
	datac => \RAM|Z~292_combout\,
	datad => \RAM|Z~297_combout\,
	combout => \RAM|Z~300_combout\);

-- Location: FF_X70_Y47_N3
\RAM|Z~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~71_q\);

-- Location: FF_X70_Y47_N1
\RAM|Z~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~63_q\);

-- Location: LCCOMB_X69_Y47_N20
\RAM|Z~506\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~506_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~506_combout\);

-- Location: FF_X69_Y47_N21
\RAM|Z~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~506_combout\,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~55_q\);

-- Location: FF_X69_Y47_N15
\RAM|Z~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~47_q\);

-- Location: LCCOMB_X69_Y47_N14
\RAM|Z~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~301_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & (!\RAM|Z~55_q\)) # (!\mar|output\(0) & ((\RAM|Z~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~55_q\,
	datac => \RAM|Z~47_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~301_combout\);

-- Location: LCCOMB_X70_Y47_N0
\RAM|Z~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~302_combout\ = (\mar|output\(1) & ((\RAM|Z~301_combout\ & (\RAM|Z~71_q\)) # (!\RAM|Z~301_combout\ & ((\RAM|Z~63_q\))))) # (!\mar|output\(1) & (((\RAM|Z~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~71_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~63_q\,
	datad => \RAM|Z~301_combout\,
	combout => \RAM|Z~302_combout\);

-- Location: LCCOMB_X65_Y51_N20
\RAM|Z~127feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~127feeder_combout\ = \mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~127feeder_combout\);

-- Location: FF_X65_Y51_N21
\RAM|Z~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~127feeder_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~127_q\);

-- Location: FF_X65_Y48_N19
\RAM|Z~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~135_q\);

-- Location: FF_X65_Y48_N1
\RAM|Z~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~119_q\);

-- Location: LCCOMB_X64_Y48_N30
\RAM|Z~111feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~111feeder_combout\ = \mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~111feeder_combout\);

-- Location: FF_X64_Y48_N31
\RAM|Z~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~111feeder_combout\,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~111_q\);

-- Location: LCCOMB_X65_Y48_N0
\RAM|Z~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~308_combout\ = (\mar|output\(1) & (\mar|output\(0))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~119_q\)) # (!\mar|output\(0) & ((\RAM|Z~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \RAM|Z~119_q\,
	datad => \RAM|Z~111_q\,
	combout => \RAM|Z~308_combout\);

-- Location: LCCOMB_X65_Y48_N18
\RAM|Z~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~309_combout\ = (\mar|output\(1) & ((\RAM|Z~308_combout\ & ((\RAM|Z~135_q\))) # (!\RAM|Z~308_combout\ & (\RAM|Z~127_q\)))) # (!\mar|output\(1) & (((\RAM|Z~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~127_q\,
	datac => \RAM|Z~135_q\,
	datad => \RAM|Z~308_combout\,
	combout => \RAM|Z~309_combout\);

-- Location: LCCOMB_X65_Y47_N10
\RAM|Z~511\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~511_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~511_combout\);

-- Location: LCCOMB_X66_Y47_N0
\RAM|Z~39feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~39feeder_combout\ = \RAM|Z~511_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|Z~511_combout\,
	combout => \RAM|Z~39feeder_combout\);

-- Location: FF_X66_Y47_N1
\RAM|Z~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~39feeder_combout\,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~39_q\);

-- Location: LCCOMB_X70_Y48_N26
\RAM|Z~510\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~510_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~510_combout\);

-- Location: LCCOMB_X70_Y49_N12
\RAM|Z~31feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~31feeder_combout\ = \RAM|Z~510_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|Z~510_combout\,
	combout => \RAM|Z~31feeder_combout\);

-- Location: FF_X70_Y49_N13
\RAM|Z~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~31feeder_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~31_q\);

-- Location: FF_X70_Y49_N31
\RAM|Z~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~15_q\);

-- Location: LCCOMB_X70_Y49_N30
\RAM|Z~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~305_combout\ = (\mar|output\(1) & (((\mar|output\(0))) # (!\RAM|Z~31_q\))) # (!\mar|output\(1) & (((\RAM|Z~15_q\ & !\mar|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~31_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~15_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~305_combout\);

-- Location: LCCOMB_X67_Y45_N24
\RAM|Z~509\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~509_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~509_combout\);

-- Location: FF_X67_Y45_N25
\RAM|Z~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~509_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~23_q\);

-- Location: LCCOMB_X70_Y48_N22
\RAM|Z~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~306_combout\ = (\mar|output\(0) & ((\RAM|Z~305_combout\ & (!\RAM|Z~39_q\)) # (!\RAM|Z~305_combout\ & ((!\RAM|Z~23_q\))))) # (!\mar|output\(0) & (((\RAM|Z~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~39_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~305_combout\,
	datad => \RAM|Z~23_q\,
	combout => \RAM|Z~306_combout\);

-- Location: LCCOMB_X71_Y48_N20
\RAM|Z~508\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~508_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(1),
	combout => \RAM|Z~508_combout\);

-- Location: FF_X71_Y48_N21
\RAM|Z~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~508_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~103_q\);

-- Location: FF_X70_Y48_N29
\RAM|Z~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~87_q\);

-- Location: LCCOMB_X67_Y48_N24
\RAM|Z~507\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~507_combout\ = !\mdro|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(1),
	combout => \RAM|Z~507_combout\);

-- Location: FF_X67_Y48_N25
\RAM|Z~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~507_combout\,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~95_q\);

-- Location: FF_X67_Y48_N11
\RAM|Z~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(1),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~79_q\);

-- Location: LCCOMB_X67_Y48_N10
\RAM|Z~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~303_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (!\RAM|Z~95_q\)) # (!\mar|output\(1) & ((\RAM|Z~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~95_q\,
	datac => \RAM|Z~79_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~303_combout\);

-- Location: LCCOMB_X70_Y48_N28
\RAM|Z~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~304_combout\ = (\mar|output\(0) & ((\RAM|Z~303_combout\ & (!\RAM|Z~103_q\)) # (!\RAM|Z~303_combout\ & ((\RAM|Z~87_q\))))) # (!\mar|output\(0) & (((\RAM|Z~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~103_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~87_q\,
	datad => \RAM|Z~303_combout\,
	combout => \RAM|Z~304_combout\);

-- Location: LCCOMB_X70_Y48_N12
\RAM|Z~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~307_combout\ = (\mar|output\(2) & (\mar|output\(3))) # (!\mar|output\(2) & ((\mar|output\(3) & ((\RAM|Z~304_combout\))) # (!\mar|output\(3) & (\RAM|Z~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \RAM|Z~306_combout\,
	datad => \RAM|Z~304_combout\,
	combout => \RAM|Z~307_combout\);

-- Location: LCCOMB_X70_Y48_N18
\RAM|Z~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~310_combout\ = (\mar|output\(2) & ((\RAM|Z~307_combout\ & ((\RAM|Z~309_combout\))) # (!\RAM|Z~307_combout\ & (\RAM|Z~302_combout\)))) # (!\mar|output\(2) & (((\RAM|Z~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \RAM|Z~302_combout\,
	datac => \RAM|Z~309_combout\,
	datad => \RAM|Z~307_combout\,
	combout => \RAM|Z~310_combout\);

-- Location: LCCOMB_X70_Y48_N16
\RAM|Z~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~311_combout\ = (\mar|output\(4) & (\RAM|Z~300_combout\)) # (!\mar|output\(4) & ((\RAM|Z~310_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~300_combout\,
	datad => \RAM|Z~310_combout\,
	combout => \RAM|Z~311_combout\);

-- Location: FF_X70_Y48_N17
\RAM|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~311_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(1));

-- Location: FF_X70_Y46_N9
\MDRI|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(1),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(1));

-- Location: LCCOMB_X69_Y48_N18
\IR|output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[1]~feeder_combout\ = \MDRI|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MDRI|output\(1),
	combout => \IR|output[1]~feeder_combout\);

-- Location: FF_X69_Y48_N19
\IR|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[1]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(1));

-- Location: LCCOMB_X69_Y48_N28
\Mux|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux|output[1]~1_combout\ = (\CU|WideOr2~0_combout\ & ((\ProgCount|output\(1)))) # (!\CU|WideOr2~0_combout\ & (\IR|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|output\(1),
	datac => \ProgCount|output\(1),
	datad => \CU|WideOr2~0_combout\,
	combout => \Mux|output[1]~1_combout\);

-- Location: FF_X69_Y48_N29
\mar|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux|output[1]~1_combout\,
	ena => \CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|output\(1));

-- Location: FF_X72_Y46_N29
\mdro|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \aluPort|Add0~26_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(4));

-- Location: LCCOMB_X64_Y46_N2
\RAM|Z~545\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~545_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(4),
	combout => \RAM|Z~545_combout\);

-- Location: FF_X64_Y46_N3
\RAM|Z~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~545_combout\,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~266_q\);

-- Location: FF_X65_Y46_N11
\RAM|Z~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~234_q\);

-- Location: LCCOMB_X69_Y46_N16
\RAM|Z~544\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~544_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~544_combout\);

-- Location: FF_X69_Y46_N17
\RAM|Z~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~544_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~202_q\);

-- Location: FF_X65_Y46_N29
\RAM|Z~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~170_q\);

-- Location: LCCOMB_X65_Y46_N28
\RAM|Z~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~361_combout\ = (\mar|output\(2) & (((\mar|output\(3))) # (!\RAM|Z~202_q\))) # (!\mar|output\(2) & (((\RAM|Z~170_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~202_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~170_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~361_combout\);

-- Location: LCCOMB_X65_Y46_N10
\RAM|Z~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~362_combout\ = (\mar|output\(3) & ((\RAM|Z~361_combout\ & (!\RAM|Z~266_q\)) # (!\RAM|Z~361_combout\ & ((\RAM|Z~234_q\))))) # (!\mar|output\(3) & (((\RAM|Z~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~266_q\,
	datab => \mar|output\(3),
	datac => \RAM|Z~234_q\,
	datad => \RAM|Z~361_combout\,
	combout => \RAM|Z~362_combout\);

-- Location: LCCOMB_X67_Y50_N26
\RAM|Z~258feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~258feeder_combout\ = \mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~258feeder_combout\);

-- Location: FF_X67_Y50_N27
\RAM|Z~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~258feeder_combout\,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~258_q\);

-- Location: FF_X67_Y50_N17
\RAM|Z~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~194_q\);

-- Location: FF_X66_Y50_N25
\RAM|Z~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~162_q\);

-- Location: LCCOMB_X67_Y46_N16
\RAM|Z~226feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~226feeder_combout\ = \mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~226feeder_combout\);

-- Location: FF_X67_Y46_N17
\RAM|Z~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~226feeder_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~226_q\);

-- Location: LCCOMB_X66_Y50_N24
\RAM|Z~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~354_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~226_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~162_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~162_q\,
	datad => \RAM|Z~226_q\,
	combout => \RAM|Z~354_combout\);

-- Location: LCCOMB_X67_Y50_N16
\RAM|Z~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~355_combout\ = (\mar|output\(2) & ((\RAM|Z~354_combout\ & (\RAM|Z~258_q\)) # (!\RAM|Z~354_combout\ & ((\RAM|Z~194_q\))))) # (!\mar|output\(2) & (((\RAM|Z~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~258_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~194_q\,
	datad => \RAM|Z~354_combout\,
	combout => \RAM|Z~355_combout\);

-- Location: LCCOMB_X64_Y47_N22
\RAM|Z~542\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~542_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(4),
	combout => \RAM|Z~542_combout\);

-- Location: FF_X64_Y47_N23
\RAM|Z~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~542_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~218_q\);

-- Location: FF_X65_Y50_N31
\RAM|Z~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~250_q\);

-- Location: LCCOMB_X65_Y50_N0
\RAM|Z~543\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~543_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~543_combout\);

-- Location: FF_X65_Y50_N1
\RAM|Z~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~543_combout\,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~154_q\);

-- Location: FF_X66_Y50_N23
\RAM|Z~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~186_q\);

-- Location: LCCOMB_X66_Y50_N22
\RAM|Z~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~356_combout\ = (\mar|output\(2) & (((\RAM|Z~186_q\) # (\mar|output\(3))))) # (!\mar|output\(2) & (!\RAM|Z~154_q\ & ((!\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~154_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~186_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~356_combout\);

-- Location: LCCOMB_X65_Y50_N30
\RAM|Z~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~357_combout\ = (\mar|output\(3) & ((\RAM|Z~356_combout\ & ((\RAM|Z~250_q\))) # (!\RAM|Z~356_combout\ & (!\RAM|Z~218_q\)))) # (!\mar|output\(3) & (((\RAM|Z~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \RAM|Z~218_q\,
	datac => \RAM|Z~250_q\,
	datad => \RAM|Z~356_combout\,
	combout => \RAM|Z~357_combout\);

-- Location: FF_X65_Y49_N5
\RAM|Z~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~178_q\);

-- Location: FF_X69_Y49_N31
\RAM|Z~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~146_q\);

-- Location: FF_X69_Y49_N1
\RAM|Z~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~210_q\);

-- Location: LCCOMB_X69_Y49_N30
\RAM|Z~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~358_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~210_q\)))) # (!\mar|output\(3) & (!\mar|output\(2) & (\RAM|Z~146_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~146_q\,
	datad => \RAM|Z~210_q\,
	combout => \RAM|Z~358_combout\);

-- Location: FF_X64_Y49_N29
\RAM|Z~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~242_q\);

-- Location: LCCOMB_X64_Y49_N28
\RAM|Z~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~359_combout\ = (\RAM|Z~358_combout\ & (((\RAM|Z~242_q\) # (!\mar|output\(2))))) # (!\RAM|Z~358_combout\ & (\RAM|Z~178_q\ & ((\mar|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~178_q\,
	datab => \RAM|Z~358_combout\,
	datac => \RAM|Z~242_q\,
	datad => \mar|output\(2),
	combout => \RAM|Z~359_combout\);

-- Location: LCCOMB_X64_Y49_N6
\RAM|Z~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~360_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~357_combout\)) # (!\mar|output\(0) & ((\RAM|Z~359_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~357_combout\,
	datac => \mar|output\(0),
	datad => \RAM|Z~359_combout\,
	combout => \RAM|Z~360_combout\);

-- Location: LCCOMB_X64_Y49_N8
\RAM|Z~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~363_combout\ = (\mar|output\(1) & ((\RAM|Z~360_combout\ & (\RAM|Z~362_combout\)) # (!\RAM|Z~360_combout\ & ((\RAM|Z~355_combout\))))) # (!\mar|output\(1) & (((\RAM|Z~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~362_combout\,
	datac => \RAM|Z~355_combout\,
	datad => \RAM|Z~360_combout\,
	combout => \RAM|Z~363_combout\);

-- Location: LCCOMB_X71_Y48_N28
\RAM|Z~106feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~106feeder_combout\ = \mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~106feeder_combout\);

-- Location: FF_X71_Y48_N29
\RAM|Z~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~106feeder_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~106_q\);

-- Location: FF_X67_Y48_N1
\RAM|Z~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~98_q\);

-- Location: LCCOMB_X64_Y50_N24
\RAM|Z~546\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~546_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(4),
	combout => \RAM|Z~546_combout\);

-- Location: FF_X64_Y50_N25
\RAM|Z~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~546_combout\,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~90_q\);

-- Location: FF_X67_Y48_N3
\RAM|Z~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~82_q\);

-- Location: LCCOMB_X67_Y48_N2
\RAM|Z~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~364_combout\ = (\mar|output\(0) & (((\mar|output\(1))) # (!\RAM|Z~90_q\))) # (!\mar|output\(0) & (((\RAM|Z~82_q\ & !\mar|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~90_q\,
	datac => \RAM|Z~82_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~364_combout\);

-- Location: LCCOMB_X67_Y48_N0
\RAM|Z~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~365_combout\ = (\mar|output\(1) & ((\RAM|Z~364_combout\ & (\RAM|Z~106_q\)) # (!\RAM|Z~364_combout\ & ((\RAM|Z~98_q\))))) # (!\mar|output\(1) & (((\RAM|Z~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \RAM|Z~106_q\,
	datac => \RAM|Z~98_q\,
	datad => \RAM|Z~364_combout\,
	combout => \RAM|Z~365_combout\);

-- Location: LCCOMB_X65_Y48_N6
\RAM|Z~549\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~549_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~549_combout\);

-- Location: FF_X65_Y48_N7
\RAM|Z~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~549_combout\,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~138_q\);

-- Location: FF_X65_Y48_N9
\RAM|Z~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~122_q\);

-- Location: LCCOMB_X64_Y48_N6
\RAM|Z~130feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~130feeder_combout\ = \mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~130feeder_combout\);

-- Location: FF_X64_Y48_N7
\RAM|Z~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~130feeder_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~130_q\);

-- Location: FF_X64_Y48_N9
\RAM|Z~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~114_q\);

-- Location: LCCOMB_X64_Y48_N8
\RAM|Z~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~371_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~130_q\)) # (!\mar|output\(1) & ((\RAM|Z~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~130_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~114_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~371_combout\);

-- Location: LCCOMB_X65_Y48_N8
\RAM|Z~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~372_combout\ = (\mar|output\(0) & ((\RAM|Z~371_combout\ & (!\RAM|Z~138_q\)) # (!\RAM|Z~371_combout\ & ((\RAM|Z~122_q\))))) # (!\mar|output\(0) & (((\RAM|Z~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~138_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~122_q\,
	datad => \RAM|Z~371_combout\,
	combout => \RAM|Z~372_combout\);

-- Location: LCCOMB_X71_Y47_N2
\RAM|Z~34feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~34feeder_combout\ = \mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(4),
	combout => \RAM|Z~34feeder_combout\);

-- Location: FF_X71_Y47_N3
\RAM|Z~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~34feeder_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~34_q\);

-- Location: FF_X67_Y47_N1
\RAM|Z~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~42_q\);

-- Location: FF_X66_Y46_N31
\RAM|Z~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~26_q\);

-- Location: FF_X67_Y47_N7
\RAM|Z~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~18_q\);

-- Location: LCCOMB_X67_Y47_N6
\RAM|Z~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~368_combout\ = (\mar|output\(0) & ((\RAM|Z~26_q\) # ((\mar|output\(1))))) # (!\mar|output\(0) & (((\RAM|Z~18_q\ & !\mar|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~26_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~18_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~368_combout\);

-- Location: LCCOMB_X67_Y47_N0
\RAM|Z~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~369_combout\ = (\mar|output\(1) & ((\RAM|Z~368_combout\ & ((\RAM|Z~42_q\))) # (!\RAM|Z~368_combout\ & (\RAM|Z~34_q\)))) # (!\mar|output\(1) & (((\RAM|Z~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~34_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~42_q\,
	datad => \RAM|Z~368_combout\,
	combout => \RAM|Z~369_combout\);

-- Location: LCCOMB_X70_Y47_N30
\RAM|Z~548\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~548_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(4),
	combout => \RAM|Z~548_combout\);

-- Location: FF_X70_Y47_N31
\RAM|Z~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~548_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~74_q\);

-- Location: FF_X69_Y47_N29
\RAM|Z~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~58_q\);

-- Location: LCCOMB_X70_Y47_N4
\RAM|Z~547\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~547_combout\ = !\mdro|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(4),
	combout => \RAM|Z~547_combout\);

-- Location: FF_X70_Y47_N5
\RAM|Z~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~547_combout\,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~66_q\);

-- Location: FF_X69_Y47_N11
\RAM|Z~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(4),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~50_q\);

-- Location: LCCOMB_X69_Y47_N10
\RAM|Z~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~366_combout\ = (\mar|output\(1) & (((\mar|output\(0))) # (!\RAM|Z~66_q\))) # (!\mar|output\(1) & (((\RAM|Z~50_q\ & !\mar|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~66_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~50_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~366_combout\);

-- Location: LCCOMB_X69_Y47_N28
\RAM|Z~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~367_combout\ = (\mar|output\(0) & ((\RAM|Z~366_combout\ & (!\RAM|Z~74_q\)) # (!\RAM|Z~366_combout\ & ((\RAM|Z~58_q\))))) # (!\mar|output\(0) & (((\RAM|Z~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~74_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~58_q\,
	datad => \RAM|Z~366_combout\,
	combout => \RAM|Z~367_combout\);

-- Location: LCCOMB_X64_Y49_N10
\RAM|Z~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~370_combout\ = (\mar|output\(2) & ((\mar|output\(3)) # ((\RAM|Z~367_combout\)))) # (!\mar|output\(2) & (!\mar|output\(3) & (\RAM|Z~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(2),
	datab => \mar|output\(3),
	datac => \RAM|Z~369_combout\,
	datad => \RAM|Z~367_combout\,
	combout => \RAM|Z~370_combout\);

-- Location: LCCOMB_X64_Y49_N24
\RAM|Z~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~373_combout\ = (\mar|output\(3) & ((\RAM|Z~370_combout\ & ((\RAM|Z~372_combout\))) # (!\RAM|Z~370_combout\ & (\RAM|Z~365_combout\)))) # (!\mar|output\(3) & (((\RAM|Z~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~365_combout\,
	datab => \RAM|Z~372_combout\,
	datac => \mar|output\(3),
	datad => \RAM|Z~370_combout\,
	combout => \RAM|Z~373_combout\);

-- Location: LCCOMB_X64_Y49_N12
\RAM|Z~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~374_combout\ = (\mar|output\(4) & (\RAM|Z~363_combout\)) # (!\mar|output\(4) & ((\RAM|Z~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~363_combout\,
	datad => \RAM|Z~373_combout\,
	combout => \RAM|Z~374_combout\);

-- Location: FF_X64_Y49_N13
\RAM|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~374_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(4));

-- Location: FF_X70_Y46_N17
\MDRI|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(4),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(4));

-- Location: LCCOMB_X69_Y48_N12
\IR|output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[4]~feeder_combout\ = \MDRI|output\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MDRI|output\(4),
	combout => \IR|output[4]~feeder_combout\);

-- Location: FF_X69_Y48_N13
\IR|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[4]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(4));

-- Location: LCCOMB_X66_Y49_N22
\ProgCount|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~6_combout\ = (\ProgCount|output\(4) & (!\ProgCount|Add0~5\)) # (!\ProgCount|output\(4) & ((\ProgCount|Add0~5\) # (GND)))
-- \ProgCount|Add0~7\ = CARRY((!\ProgCount|Add0~5\) # (!\ProgCount|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgCount|output\(4),
	datad => VCC,
	cin => \ProgCount|Add0~5\,
	combout => \ProgCount|Add0~6_combout\,
	cout => \ProgCount|Add0~7\);

-- Location: FF_X66_Y49_N23
\ProgCount|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~6_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(4));

-- Location: LCCOMB_X69_Y48_N6
\Mux|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux|output[4]~4_combout\ = (\CU|WideOr2~0_combout\ & ((\ProgCount|output\(4)))) # (!\CU|WideOr2~0_combout\ & (\IR|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|output\(4),
	datac => \ProgCount|output\(4),
	datad => \CU|WideOr2~0_combout\,
	combout => \Mux|output[4]~4_combout\);

-- Location: FF_X69_Y48_N7
\mar|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux|output[4]~4_combout\,
	ena => \CU|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mar|output\(4));

-- Location: FF_X70_Y46_N27
\Acc|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \aluPort|Add0~41_combout\,
	sload => VCC,
	ena => \CU|ToALoad~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Acc|output\(7));

-- Location: LCCOMB_X74_Y46_N20
\aluPort|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~37_combout\ = (\CU|WideOr5~combout\ & ((\aluPort|Equal4~0_combout\ & (\Acc|output\(7))) # (!\aluPort|Equal4~0_combout\ & ((\MDRI|output\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(7),
	datab => \aluPort|Equal4~0_combout\,
	datac => \MDRI|output\(7),
	datad => \CU|WideOr5~combout\,
	combout => \aluPort|Add0~37_combout\);

-- Location: LCCOMB_X74_Y46_N28
\aluPort|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~38_combout\ = \Acc|output\(7) $ (((\CU|current_state.staa_load_mdro~q\) # ((\CU|current_state.staa_write_mem~q\) # (!\aluPort|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Acc|output\(7),
	datab => \CU|current_state.staa_load_mdro~q\,
	datac => \CU|current_state.staa_write_mem~q\,
	datad => \aluPort|Equal4~0_combout\,
	combout => \aluPort|Add0~38_combout\);

-- Location: LCCOMB_X70_Y46_N22
\aluPort|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~39_combout\ = \MDRI|output\(7) $ (\aluPort|Add0~35\ $ (!\aluPort|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MDRI|output\(7),
	datad => \aluPort|Add0~38_combout\,
	cin => \aluPort|Add0~35\,
	combout => \aluPort|Add0~39_combout\);

-- Location: LCCOMB_X70_Y46_N4
\aluPort|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aluPort|Add0~41_combout\ = (\aluPort|Add0~37_combout\) # ((!\CU|WideOr5~combout\ & \aluPort|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluPort|Add0~37_combout\,
	datab => \CU|WideOr5~combout\,
	datad => \aluPort|Add0~39_combout\,
	combout => \aluPort|Add0~41_combout\);

-- Location: LCCOMB_X69_Y46_N8
\mdro|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mdro|output[7]~feeder_combout\ = \aluPort|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aluPort|Add0~41_combout\,
	combout => \mdro|output[7]~feeder_combout\);

-- Location: FF_X69_Y46_N9
\mdro|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mdro|output[7]~feeder_combout\,
	ena => \CU|current_state.staa_load_mdro~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mdro|output\(7));

-- Location: LCCOMB_X65_Y46_N14
\RAM|Z~582\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~582_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~582_combout\);

-- Location: FF_X65_Y46_N15
\RAM|Z~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~582_combout\,
	ena => \RAM|Z~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~173_q\);

-- Location: LCCOMB_X65_Y46_N20
\RAM|Z~581\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~581_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~581_combout\);

-- Location: FF_X65_Y46_N21
\RAM|Z~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~581_combout\,
	ena => \RAM|Z~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~237_q\);

-- Location: LCCOMB_X66_Y46_N10
\RAM|Z~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~424_combout\ = (\mar|output\(3) & (((\mar|output\(2)) # (!\RAM|Z~237_q\)))) # (!\mar|output\(3) & (!\RAM|Z~173_q\ & (!\mar|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~173_q\,
	datab => \mar|output\(3),
	datac => \mar|output\(2),
	datad => \RAM|Z~237_q\,
	combout => \RAM|Z~424_combout\);

-- Location: FF_X67_Y49_N13
\RAM|Z~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~269_q\);

-- Location: LCCOMB_X69_Y46_N14
\RAM|Z~205feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~205feeder_combout\ = \mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~205feeder_combout\);

-- Location: FF_X69_Y46_N15
\RAM|Z~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~205feeder_combout\,
	ena => \RAM|Z~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~205_q\);

-- Location: LCCOMB_X67_Y49_N12
\RAM|Z~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~425_combout\ = (\RAM|Z~424_combout\ & (((\RAM|Z~269_q\)) # (!\mar|output\(2)))) # (!\RAM|Z~424_combout\ & (\mar|output\(2) & ((\RAM|Z~205_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~424_combout\,
	datab => \mar|output\(2),
	datac => \RAM|Z~269_q\,
	datad => \RAM|Z~205_q\,
	combout => \RAM|Z~425_combout\);

-- Location: LCCOMB_X67_Y46_N18
\RAM|Z~573\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~573_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~573_combout\);

-- Location: FF_X67_Y46_N19
\RAM|Z~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~573_combout\,
	ena => \RAM|Z~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~229_q\);

-- Location: LCCOMB_X67_Y50_N22
\RAM|Z~576\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~576_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~576_combout\);

-- Location: FF_X67_Y50_N23
\RAM|Z~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~576_combout\,
	ena => \RAM|Z~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~261_q\);

-- Location: LCCOMB_X67_Y50_N28
\RAM|Z~574\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~574_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~574_combout\);

-- Location: FF_X67_Y50_N29
\RAM|Z~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~574_combout\,
	ena => \RAM|Z~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~197_q\);

-- Location: LCCOMB_X66_Y48_N14
\RAM|Z~575\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~575_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~575_combout\);

-- Location: FF_X66_Y50_N7
\RAM|Z~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Z~575_combout\,
	sload => VCC,
	ena => \RAM|Z~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~165_q\);

-- Location: LCCOMB_X67_Y49_N4
\RAM|Z~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~419_combout\ = (\mar|output\(2) & (((\mar|output\(3))) # (!\RAM|Z~197_q\))) # (!\mar|output\(2) & (((!\RAM|Z~165_q\ & !\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~197_q\,
	datab => \RAM|Z~165_q\,
	datac => \mar|output\(2),
	datad => \mar|output\(3),
	combout => \RAM|Z~419_combout\);

-- Location: LCCOMB_X67_Y49_N22
\RAM|Z~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~420_combout\ = (\RAM|Z~419_combout\ & (((!\mar|output\(3)) # (!\RAM|Z~261_q\)))) # (!\RAM|Z~419_combout\ & (!\RAM|Z~229_q\ & ((\mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~229_q\,
	datab => \RAM|Z~261_q\,
	datac => \RAM|Z~419_combout\,
	datad => \mar|output\(3),
	combout => \RAM|Z~420_combout\);

-- Location: LCCOMB_X64_Y49_N16
\RAM|Z~580\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~580_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~580_combout\);

-- Location: FF_X64_Y49_N17
\RAM|Z~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~580_combout\,
	ena => \RAM|Z~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~245_q\);

-- Location: LCCOMB_X69_Y49_N2
\RAM|Z~579\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~579_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~579_combout\);

-- Location: FF_X69_Y49_N3
\RAM|Z~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~579_combout\,
	ena => \RAM|Z~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~149_q\);

-- Location: LCCOMB_X65_Y49_N14
\RAM|Z~578\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~578_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~578_combout\);

-- Location: FF_X65_Y49_N15
\RAM|Z~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~578_combout\,
	ena => \RAM|Z~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~181_q\);

-- Location: LCCOMB_X66_Y49_N4
\RAM|Z~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~421_combout\ = (\mar|output\(3) & (\mar|output\(2))) # (!\mar|output\(3) & ((\mar|output\(2) & ((!\RAM|Z~181_q\))) # (!\mar|output\(2) & (!\RAM|Z~149_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~149_q\,
	datad => \RAM|Z~181_q\,
	combout => \RAM|Z~421_combout\);

-- Location: LCCOMB_X69_Y49_N4
\RAM|Z~577\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~577_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~577_combout\);

-- Location: FF_X69_Y49_N5
\RAM|Z~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~577_combout\,
	ena => \RAM|Z~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~213_q\);

-- Location: LCCOMB_X67_Y49_N0
\RAM|Z~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~422_combout\ = (\RAM|Z~421_combout\ & (((!\mar|output\(3))) # (!\RAM|Z~245_q\))) # (!\RAM|Z~421_combout\ & (((!\RAM|Z~213_q\ & \mar|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~245_q\,
	datab => \RAM|Z~421_combout\,
	datac => \RAM|Z~213_q\,
	datad => \mar|output\(3),
	combout => \RAM|Z~422_combout\);

-- Location: LCCOMB_X67_Y49_N18
\RAM|Z~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~423_combout\ = (\mar|output\(0) & (\mar|output\(1))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~420_combout\)) # (!\mar|output\(1) & ((\RAM|Z~422_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \mar|output\(1),
	datac => \RAM|Z~420_combout\,
	datad => \RAM|Z~422_combout\,
	combout => \RAM|Z~423_combout\);

-- Location: FF_X65_Y50_N11
\RAM|Z~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~253_q\);

-- Location: FF_X66_Y50_N29
\RAM|Z~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~189_q\);

-- Location: LCCOMB_X64_Y46_N8
\RAM|Z~571\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~571_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~571_combout\);

-- Location: FF_X64_Y46_N9
\RAM|Z~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~571_combout\,
	ena => \RAM|Z~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~221_q\);

-- Location: LCCOMB_X66_Y50_N30
\RAM|Z~572\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~572_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdro|output\(7),
	combout => \RAM|Z~572_combout\);

-- Location: LCCOMB_X65_Y50_N28
\RAM|Z~157feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~157feeder_combout\ = \RAM|Z~572_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|Z~572_combout\,
	combout => \RAM|Z~157feeder_combout\);

-- Location: FF_X65_Y50_N29
\RAM|Z~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~157feeder_combout\,
	ena => \RAM|Z~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~157_q\);

-- Location: LCCOMB_X65_Y46_N18
\RAM|Z~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~417_combout\ = (\mar|output\(2) & (((\mar|output\(3))))) # (!\mar|output\(2) & ((\mar|output\(3) & (!\RAM|Z~221_q\)) # (!\mar|output\(3) & ((!\RAM|Z~157_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~221_q\,
	datab => \mar|output\(2),
	datac => \mar|output\(3),
	datad => \RAM|Z~157_q\,
	combout => \RAM|Z~417_combout\);

-- Location: LCCOMB_X66_Y50_N28
\RAM|Z~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~418_combout\ = (\mar|output\(2) & ((\RAM|Z~417_combout\ & (\RAM|Z~253_q\)) # (!\RAM|Z~417_combout\ & ((\RAM|Z~189_q\))))) # (!\mar|output\(2) & (((\RAM|Z~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~253_q\,
	datab => \mar|output\(2),
	datac => \RAM|Z~189_q\,
	datad => \RAM|Z~417_combout\,
	combout => \RAM|Z~418_combout\);

-- Location: LCCOMB_X67_Y49_N14
\RAM|Z~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~426_combout\ = (\RAM|Z~423_combout\ & ((\RAM|Z~425_combout\) # ((!\mar|output\(0))))) # (!\RAM|Z~423_combout\ & (((\mar|output\(0) & \RAM|Z~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~425_combout\,
	datab => \RAM|Z~423_combout\,
	datac => \mar|output\(0),
	datad => \RAM|Z~418_combout\,
	combout => \RAM|Z~426_combout\);

-- Location: FF_X65_Y48_N3
\RAM|Z~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~141_q\);

-- Location: LCCOMB_X66_Y51_N14
\RAM|Z~586\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~586_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~586_combout\);

-- Location: FF_X66_Y51_N15
\RAM|Z~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~586_combout\,
	ena => \RAM|Z~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~133_q\);

-- Location: FF_X65_Y48_N25
\RAM|Z~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~125_q\);

-- Location: LCCOMB_X64_Y48_N28
\RAM|Z~587\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~587_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~587_combout\);

-- Location: FF_X64_Y48_N29
\RAM|Z~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~587_combout\,
	ena => \RAM|Z~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~117_q\);

-- Location: LCCOMB_X65_Y48_N24
\RAM|Z~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~434_combout\ = (\mar|output\(1) & (\mar|output\(0))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~125_q\)) # (!\mar|output\(0) & ((!\RAM|Z~117_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(1),
	datab => \mar|output\(0),
	datac => \RAM|Z~125_q\,
	datad => \RAM|Z~117_q\,
	combout => \RAM|Z~434_combout\);

-- Location: LCCOMB_X66_Y48_N24
\RAM|Z~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~435_combout\ = (\mar|output\(1) & ((\RAM|Z~434_combout\ & (\RAM|Z~141_q\)) # (!\RAM|Z~434_combout\ & ((!\RAM|Z~133_q\))))) # (!\mar|output\(1) & (((\RAM|Z~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~141_q\,
	datab => \RAM|Z~133_q\,
	datac => \mar|output\(1),
	datad => \RAM|Z~434_combout\,
	combout => \RAM|Z~435_combout\);

-- Location: LCCOMB_X70_Y47_N22
\RAM|Z~77feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~77feeder_combout\ = \mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~77feeder_combout\);

-- Location: FF_X70_Y47_N23
\RAM|Z~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~77feeder_combout\,
	ena => \RAM|Z~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~77_q\);

-- Location: FF_X70_Y47_N29
\RAM|Z~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~69_q\);

-- Location: LCCOMB_X69_Y47_N12
\RAM|Z~61feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~61feeder_combout\ = \mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~61feeder_combout\);

-- Location: FF_X69_Y47_N13
\RAM|Z~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~61feeder_combout\,
	ena => \RAM|Z~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~61_q\);

-- Location: FF_X69_Y47_N23
\RAM|Z~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~53_q\);

-- Location: LCCOMB_X69_Y47_N22
\RAM|Z~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~427_combout\ = (\mar|output\(1) & (((\mar|output\(0))))) # (!\mar|output\(1) & ((\mar|output\(0) & (\RAM|Z~61_q\)) # (!\mar|output\(0) & ((\RAM|Z~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~61_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~53_q\,
	datad => \mar|output\(0),
	combout => \RAM|Z~427_combout\);

-- Location: LCCOMB_X70_Y47_N28
\RAM|Z~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~428_combout\ = (\mar|output\(1) & ((\RAM|Z~427_combout\ & (\RAM|Z~77_q\)) # (!\RAM|Z~427_combout\ & ((\RAM|Z~69_q\))))) # (!\mar|output\(1) & (((\RAM|Z~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~77_q\,
	datab => \mar|output\(1),
	datac => \RAM|Z~69_q\,
	datad => \RAM|Z~427_combout\,
	combout => \RAM|Z~428_combout\);

-- Location: LCCOMB_X64_Y47_N20
\RAM|Z~583\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~583_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~583_combout\);

-- Location: FF_X64_Y47_N21
\RAM|Z~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~583_combout\,
	ena => \RAM|Z~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~93_q\);

-- Location: LCCOMB_X67_Y48_N12
\RAM|Z~584\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~584_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mdro|output\(7),
	combout => \RAM|Z~584_combout\);

-- Location: FF_X67_Y48_N13
\RAM|Z~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~584_combout\,
	ena => \RAM|Z~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~101_q\);

-- Location: FF_X67_Y48_N31
\RAM|Z~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~85_q\);

-- Location: LCCOMB_X67_Y48_N30
\RAM|Z~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~429_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (!\RAM|Z~101_q\)) # (!\mar|output\(1) & ((\RAM|Z~85_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(0),
	datab => \RAM|Z~101_q\,
	datac => \RAM|Z~85_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~429_combout\);

-- Location: LCCOMB_X71_Y48_N8
\RAM|Z~585\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~585_combout\ = !\mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~585_combout\);

-- Location: FF_X71_Y48_N9
\RAM|Z~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~585_combout\,
	ena => \RAM|Z~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~109_q\);

-- Location: LCCOMB_X67_Y47_N4
\RAM|Z~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~430_combout\ = (\mar|output\(0) & ((\RAM|Z~429_combout\ & ((!\RAM|Z~109_q\))) # (!\RAM|Z~429_combout\ & (!\RAM|Z~93_q\)))) # (!\mar|output\(0) & (((\RAM|Z~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~93_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~429_combout\,
	datad => \RAM|Z~109_q\,
	combout => \RAM|Z~430_combout\);

-- Location: LCCOMB_X63_Y46_N2
\RAM|Z~29feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~29feeder_combout\ = \mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~29feeder_combout\);

-- Location: FF_X63_Y46_N3
\RAM|Z~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~29feeder_combout\,
	ena => \RAM|Z~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~29_q\);

-- Location: FF_X67_Y47_N29
\RAM|Z~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~45_q\);

-- Location: LCCOMB_X70_Y49_N18
\RAM|Z~37feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~37feeder_combout\ = \mdro|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mdro|output\(7),
	combout => \RAM|Z~37feeder_combout\);

-- Location: FF_X70_Y49_N19
\RAM|Z~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~37feeder_combout\,
	ena => \RAM|Z~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~37_q\);

-- Location: FF_X67_Y47_N3
\RAM|Z~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mdro|output\(7),
	sload => VCC,
	ena => \RAM|Z~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Z~21_q\);

-- Location: LCCOMB_X67_Y47_N2
\RAM|Z~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~431_combout\ = (\mar|output\(0) & (((\mar|output\(1))))) # (!\mar|output\(0) & ((\mar|output\(1) & (\RAM|Z~37_q\)) # (!\mar|output\(1) & ((\RAM|Z~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~37_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~21_q\,
	datad => \mar|output\(1),
	combout => \RAM|Z~431_combout\);

-- Location: LCCOMB_X67_Y47_N28
\RAM|Z~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~432_combout\ = (\mar|output\(0) & ((\RAM|Z~431_combout\ & ((\RAM|Z~45_q\))) # (!\RAM|Z~431_combout\ & (\RAM|Z~29_q\)))) # (!\mar|output\(0) & (((\RAM|Z~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~29_q\,
	datab => \mar|output\(0),
	datac => \RAM|Z~45_q\,
	datad => \RAM|Z~431_combout\,
	combout => \RAM|Z~432_combout\);

-- Location: LCCOMB_X67_Y47_N26
\RAM|Z~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~433_combout\ = (\mar|output\(3) & ((\mar|output\(2)) # ((\RAM|Z~430_combout\)))) # (!\mar|output\(3) & (!\mar|output\(2) & ((\RAM|Z~432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mar|output\(3),
	datab => \mar|output\(2),
	datac => \RAM|Z~430_combout\,
	datad => \RAM|Z~432_combout\,
	combout => \RAM|Z~433_combout\);

-- Location: LCCOMB_X67_Y49_N16
\RAM|Z~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~436_combout\ = (\mar|output\(2) & ((\RAM|Z~433_combout\ & (\RAM|Z~435_combout\)) # (!\RAM|Z~433_combout\ & ((\RAM|Z~428_combout\))))) # (!\mar|output\(2) & (((\RAM|Z~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|Z~435_combout\,
	datab => \mar|output\(2),
	datac => \RAM|Z~428_combout\,
	datad => \RAM|Z~433_combout\,
	combout => \RAM|Z~436_combout\);

-- Location: LCCOMB_X67_Y49_N26
\RAM|Z~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RAM|Z~437_combout\ = (\mar|output\(4) & (\RAM|Z~426_combout\)) # (!\mar|output\(4) & ((\RAM|Z~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mar|output\(4),
	datac => \RAM|Z~426_combout\,
	datad => \RAM|Z~436_combout\,
	combout => \RAM|Z~437_combout\);

-- Location: FF_X67_Y49_N27
\RAM|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|Z~437_combout\,
	ena => \CU|ALT_INV_current_state.staa_write_mem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|Data_out\(7));

-- Location: FF_X74_Y46_N21
\MDRI|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RAM|Data_out\(7),
	sload => VCC,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDRI|output\(7));

-- Location: LCCOMB_X71_Y46_N6
\IR|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR|output[7]~feeder_combout\ = \MDRI|output\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MDRI|output\(7),
	combout => \IR|output[7]~feeder_combout\);

-- Location: FF_X71_Y46_N7
\IR|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR|output[7]~feeder_combout\,
	ena => \CU|current_state.load_ir~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|output\(7));

-- Location: LCCOMB_X71_Y46_N24
\CU|current_state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state~20_combout\ = (\CU|current_state.decode~q\ & (!\IR|output\(7) & (!\IR|output\(6) & \IR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.decode~q\,
	datab => \IR|output\(7),
	datac => \IR|output\(6),
	datad => \IR|output\(5),
	combout => \CU|current_state~20_combout\);

-- Location: FF_X71_Y46_N25
\CU|current_state.adaa_load_mar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_load_mar~q\);

-- Location: LCCOMB_X74_Y46_N8
\CU|current_state.adaa_read_mem~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|current_state.adaa_read_mem~feeder_combout\ = \CU|current_state.adaa_load_mar~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|current_state.adaa_load_mar~q\,
	combout => \CU|current_state.adaa_read_mem~feeder_combout\);

-- Location: FF_X74_Y46_N9
\CU|current_state.adaa_read_mem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|current_state.adaa_read_mem~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_read_mem~q\);

-- Location: FF_X74_Y46_N11
\CU|current_state.adaa_load_mdri\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.adaa_read_mem~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_load_mdri~q\);

-- Location: FF_X71_Y46_N11
\CU|current_state.adaa_store_load_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|current_state.adaa_load_mdri~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.adaa_store_load_a~q\);

-- Location: LCCOMB_X71_Y46_N20
\CU|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector0~0_combout\ = (\CU|current_state.decode~q\ & ((\IR|output\(7)) # ((\IR|output\(6) & \IR|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.decode~q\,
	datab => \IR|output\(7),
	datac => \IR|output\(6),
	datad => \IR|output\(5),
	combout => \CU|Selector0~0_combout\);

-- Location: LCCOMB_X71_Y46_N0
\CU|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CU|Selector0~1_combout\ = (\CU|current_state.adaa_store_load_a~q\) # ((\CU|Selector0~0_combout\) # ((\CU|current_state.ldaa_load_a~q\) # (\CU|current_state.staa_write_mem~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|current_state.adaa_store_load_a~q\,
	datab => \CU|Selector0~0_combout\,
	datac => \CU|current_state.ldaa_load_a~q\,
	datad => \CU|current_state.staa_write_mem~q\,
	combout => \CU|Selector0~1_combout\);

-- Location: FF_X71_Y46_N1
\CU|current_state.increment_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|current_state.increment_pc~q\);

-- Location: FF_X66_Y49_N13
\ProgCount|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|output[0]~0_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(0));

-- Location: FF_X66_Y49_N25
\ProgCount|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~8_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|counter\(5));

-- Location: LCCOMB_X66_Y49_N24
\ProgCount|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~8_combout\ = (\ProgCount|counter\(5) & (\ProgCount|Add0~7\ $ (GND))) # (!\ProgCount|counter\(5) & (!\ProgCount|Add0~7\ & VCC))
-- \ProgCount|Add0~9\ = CARRY((\ProgCount|counter\(5) & !\ProgCount|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgCount|counter\(5),
	datad => VCC,
	cin => \ProgCount|Add0~7\,
	combout => \ProgCount|Add0~8_combout\,
	cout => \ProgCount|Add0~9\);

-- Location: LCCOMB_X66_Y49_N2
\ProgCount|output[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|output[5]~feeder_combout\ = \ProgCount|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgCount|Add0~8_combout\,
	combout => \ProgCount|output[5]~feeder_combout\);

-- Location: FF_X66_Y49_N3
\ProgCount|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|output[5]~feeder_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(5));

-- Location: FF_X66_Y49_N27
\ProgCount|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~10_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|counter\(6));

-- Location: LCCOMB_X66_Y49_N26
\ProgCount|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~10_combout\ = (\ProgCount|counter\(6) & (!\ProgCount|Add0~9\)) # (!\ProgCount|counter\(6) & ((\ProgCount|Add0~9\) # (GND)))
-- \ProgCount|Add0~11\ = CARRY((!\ProgCount|Add0~9\) # (!\ProgCount|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgCount|counter\(6),
	datad => VCC,
	cin => \ProgCount|Add0~9\,
	combout => \ProgCount|Add0~10_combout\,
	cout => \ProgCount|Add0~11\);

-- Location: LCCOMB_X66_Y49_N8
\ProgCount|output[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|output[6]~feeder_combout\ = \ProgCount|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ProgCount|Add0~10_combout\,
	combout => \ProgCount|output[6]~feeder_combout\);

-- Location: FF_X66_Y49_N9
\ProgCount|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|output[6]~feeder_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(6));

-- Location: FF_X66_Y49_N29
\ProgCount|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|Add0~12_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|counter\(7));

-- Location: LCCOMB_X66_Y49_N28
\ProgCount|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|Add0~12_combout\ = \ProgCount|Add0~11\ $ (!\ProgCount|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ProgCount|counter\(7),
	cin => \ProgCount|Add0~11\,
	combout => \ProgCount|Add0~12_combout\);

-- Location: LCCOMB_X66_Y49_N14
\ProgCount|output[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ProgCount|output[7]~feeder_combout\ = \ProgCount|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgCount|Add0~12_combout\,
	combout => \ProgCount|output[7]~feeder_combout\);

-- Location: FF_X66_Y49_N15
\ProgCount|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ProgCount|output[7]~feeder_combout\,
	ena => \CU|current_state.increment_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgCount|output\(7));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_pcOut(0) <= \pcOut[0]~output_o\;

ww_pcOut(1) <= \pcOut[1]~output_o\;

ww_pcOut(2) <= \pcOut[2]~output_o\;

ww_pcOut(3) <= \pcOut[3]~output_o\;

ww_pcOut(4) <= \pcOut[4]~output_o\;

ww_pcOut(5) <= \pcOut[5]~output_o\;

ww_pcOut(6) <= \pcOut[6]~output_o\;

ww_pcOut(7) <= \pcOut[7]~output_o\;

ww_marOut(0) <= \marOut[0]~output_o\;

ww_marOut(1) <= \marOut[1]~output_o\;

ww_marOut(2) <= \marOut[2]~output_o\;

ww_marOut(3) <= \marOut[3]~output_o\;

ww_marOut(4) <= \marOut[4]~output_o\;

ww_marOut(5) <= \marOut[5]~output_o\;

ww_marOut(6) <= \marOut[6]~output_o\;

ww_marOut(7) <= \marOut[7]~output_o\;

ww_irOutput(0) <= \irOutput[0]~output_o\;

ww_irOutput(1) <= \irOutput[1]~output_o\;

ww_irOutput(2) <= \irOutput[2]~output_o\;

ww_irOutput(3) <= \irOutput[3]~output_o\;

ww_irOutput(4) <= \irOutput[4]~output_o\;

ww_irOutput(5) <= \irOutput[5]~output_o\;

ww_irOutput(6) <= \irOutput[6]~output_o\;

ww_irOutput(7) <= \irOutput[7]~output_o\;

ww_mdriOutput(0) <= \mdriOutput[0]~output_o\;

ww_mdriOutput(1) <= \mdriOutput[1]~output_o\;

ww_mdriOutput(2) <= \mdriOutput[2]~output_o\;

ww_mdriOutput(3) <= \mdriOutput[3]~output_o\;

ww_mdriOutput(4) <= \mdriOutput[4]~output_o\;

ww_mdriOutput(5) <= \mdriOutput[5]~output_o\;

ww_mdriOutput(6) <= \mdriOutput[6]~output_o\;

ww_mdriOutput(7) <= \mdriOutput[7]~output_o\;

ww_mdroOutput(0) <= \mdroOutput[0]~output_o\;

ww_mdroOutput(1) <= \mdroOutput[1]~output_o\;

ww_mdroOutput(2) <= \mdroOutput[2]~output_o\;

ww_mdroOutput(3) <= \mdroOutput[3]~output_o\;

ww_mdroOutput(4) <= \mdroOutput[4]~output_o\;

ww_mdroOutput(5) <= \mdroOutput[5]~output_o\;

ww_mdroOutput(6) <= \mdroOutput[6]~output_o\;

ww_mdroOutput(7) <= \mdroOutput[7]~output_o\;

ww_aOut(0) <= \aOut[0]~output_o\;

ww_aOut(1) <= \aOut[1]~output_o\;

ww_aOut(2) <= \aOut[2]~output_o\;

ww_aOut(3) <= \aOut[3]~output_o\;

ww_aOut(4) <= \aOut[4]~output_o\;

ww_aOut(5) <= \aOut[5]~output_o\;

ww_aOut(6) <= \aOut[6]~output_o\;

ww_aOut(7) <= \aOut[7]~output_o\;

ww_incrementOut <= \incrementOut~output_o\;
END structure;


