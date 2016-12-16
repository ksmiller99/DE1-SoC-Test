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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
-- CREATED		"Tue Dec 13 15:51:21 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY OneBitALUGraphic IS 
	PORT
	(
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		ct2 :  IN  STD_LOGIC;
		ct1 :  IN  STD_LOGIC;
		ct0 :  IN  STD_LOGIC;
		output :  OUT  STD_LOGIC;
		cout :  OUT  STD_LOGIC
	);
END OneBitALUGraphic;

ARCHITECTURE bdf_type OF OneBitALUGraphic IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_3 <= a AND b;


SYNTHESIZED_WIRE_11 <= ct0 AND ct1 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_2 AND ct0 AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_17 <= b OR a;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_20 XOR ct2;


SYNTHESIZED_WIRE_14 <= NOT(b);



SYNTHESIZED_WIRE_21 <= b XOR ct2;


SYNTHESIZED_WIRE_6 <= ct2 AND SYNTHESIZED_WIRE_20;


cout <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_16 <= NOT(ct0);



SYNTHESIZED_WIRE_2 <= NOT(ct1);



SYNTHESIZED_WIRE_19 <= NOT(ct2);



SYNTHESIZED_WIRE_7 <= a AND SYNTHESIZED_WIRE_21;


output <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_19 AND ct1 AND ct0 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_19 AND ct1 AND SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_20 <= a XOR SYNTHESIZED_WIRE_21;


END bdf_type;