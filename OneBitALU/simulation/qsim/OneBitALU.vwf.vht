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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/13/2016 16:15:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          OneBitALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY OneBitALU_vhd_vec_tst IS
END OneBitALU_vhd_vec_tst;
ARCHITECTURE OneBitALU_arch OF OneBitALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL ct0 : STD_LOGIC;
SIGNAL ct1 : STD_LOGIC;
SIGNAL ct2 : STD_LOGIC;
SIGNAL fout : STD_LOGIC;
COMPONENT OneBitALU
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	cout : BUFFER STD_LOGIC;
	ct0 : IN STD_LOGIC;
	ct1 : IN STD_LOGIC;
	ct2 : IN STD_LOGIC;
	fout : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : OneBitALU
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	cout => cout,
	ct0 => ct0,
	ct1 => ct1,
	ct2 => ct2,
	fout => fout
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;

-- ct0
t_prcs_ct0: PROCESS
BEGIN
	ct0 <= '0';
	WAIT FOR 40000 ps;
	ct0 <= '1';
	WAIT FOR 40000 ps;
	ct0 <= '0';
	WAIT FOR 40000 ps;
	ct0 <= '1';
	WAIT FOR 40000 ps;
	ct0 <= '0';
	WAIT FOR 40000 ps;
	ct0 <= '1';
	WAIT FOR 40000 ps;
	ct0 <= '0';
	WAIT FOR 40000 ps;
	ct0 <= '1';
WAIT;
END PROCESS t_prcs_ct0;

-- ct1
t_prcs_ct1: PROCESS
BEGIN
	ct1 <= '0';
	WAIT FOR 80000 ps;
	ct1 <= '1';
	WAIT FOR 80000 ps;
	ct1 <= '0';
	WAIT FOR 80000 ps;
	ct1 <= '1';
WAIT;
END PROCESS t_prcs_ct1;

-- ct2
t_prcs_ct2: PROCESS
BEGIN
	ct2 <= '0';
	WAIT FOR 160000 ps;
	ct2 <= '1';
WAIT;
END PROCESS t_prcs_ct2;
END OneBitALU_arch;
