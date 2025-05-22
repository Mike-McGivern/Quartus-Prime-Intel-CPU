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

-- DATE "02/23/2023 19:44:30"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4Part3 IS
    PORT (
	x1 : IN std_logic;
	x2 : IN std_logic;
	f : BUFFER std_logic
	);
END Lab4Part3;

-- Design Ports Information
-- f	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4Part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_x1~input_o\ : std_logic;

BEGIN

ww_x1 <= x1;
ww_x2 <= x2;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_x1~input_o\ <= NOT \x1~input_o\;

-- Location: IOOBUF_X89_Y8_N5
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOIBUF_X89_Y8_N38
\x2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\x1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: LABCELL_X88_Y8_N0
\f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~0_combout\ = ( \x1~input_o\ & ( !\x2~input_o\ ) ) # ( !\x1~input_o\ & ( \x2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x2~input_o\,
	datae => \ALT_INV_x1~input_o\,
	combout => \f~0_combout\);

-- Location: LABCELL_X64_Y15_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


