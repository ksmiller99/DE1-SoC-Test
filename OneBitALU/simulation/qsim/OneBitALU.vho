-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "12/13/2016 16:15:52"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	OneBitALU IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	fout : BUFFER std_logic;
	ct0 : IN std_logic;
	ct1 : IN std_logic;
	ct2 : IN std_logic;
	cout : BUFFER std_logic
	);
END OneBitALU;

-- Design Ports Information
-- fout	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct2	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OneBitALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_fout : std_logic;
SIGNAL ww_ct0 : std_logic;
SIGNAL ww_ct1 : std_logic;
SIGNAL ww_ct2 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ct0~input_o\ : std_logic;
SIGNAL \ct2~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \ct1~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \fout~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_ct2~input_o\ : std_logic;
SIGNAL \ALT_INV_ct1~input_o\ : std_logic;
SIGNAL \ALT_INV_ct0~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
fout <= ww_fout;
ww_ct0 <= ct0;
ww_ct1 <= ct1;
ww_ct2 <= ct2;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ct2~input_o\ <= NOT \ct2~input_o\;
\ALT_INV_ct1~input_o\ <= NOT \ct1~input_o\;
\ALT_INV_ct0~input_o\ <= NOT \ct0~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\fout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fout~0_combout\,
	devoe => ww_devoe,
	o => ww_fout);

-- Location: IOOBUF_X52_Y0_N19
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOIBUF_X12_Y0_N18
\ct0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ct0,
	o => \ct0~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\ct2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ct2,
	o => \ct2~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\ct1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ct1,
	o => \ct1~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X10_Y2_N0
\fout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fout~0_combout\ = ( \b~input_o\ & ( (!\ct0~input_o\ & ((!\ct1~input_o\ & ((!\a~input_o\))) # (\ct1~input_o\ & (!\ct2~input_o\)))) # (\ct0~input_o\ & (!\ct2~input_o\ & (\a~input_o\ & !\ct1~input_o\))) ) ) # ( !\b~input_o\ & ( (!\ct0~input_o\ & 
-- (\a~input_o\ & ((!\ct2~input_o\) # (!\ct1~input_o\)))) # (\ct0~input_o\ & (!\ct2~input_o\ & ((\ct1~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001100101001001000100000001010010011001010010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ct0~input_o\,
	datab => \ALT_INV_ct2~input_o\,
	datac => \ALT_INV_a~input_o\,
	datad => \ALT_INV_ct1~input_o\,
	datae => \ALT_INV_b~input_o\,
	combout => \fout~0_combout\);

-- Location: LABCELL_X10_Y2_N9
\cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = ( \b~input_o\ & ( \ct2~input_o\ & ( \a~input_o\ ) ) ) # ( !\b~input_o\ & ( \ct2~input_o\ ) ) # ( \b~input_o\ & ( !\ct2~input_o\ & ( \a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a~input_o\,
	datae => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_ct2~input_o\,
	combout => \cout~0_combout\);

-- Location: LABCELL_X9_Y47_N3
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


