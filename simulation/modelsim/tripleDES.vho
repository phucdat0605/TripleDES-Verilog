-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/19/2026 09:47:22"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	des_encrypt IS
    PORT (
	clock : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	plaintext : IN std_logic_vector(63 DOWNTO 0);
	key : IN std_logic_vector(63 DOWNTO 0);
	dectext : OUT std_logic_vector(63 DOWNTO 0);
	done : OUT std_logic
	);
END des_encrypt;

-- Design Ports Information
-- key[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[8]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[16]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[24]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[32]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[40]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[48]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[56]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dectext[0]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[2]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[3]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[4]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[5]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[6]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[7]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[8]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[9]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[10]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[11]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[12]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[13]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[14]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[15]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[16]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[17]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[18]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[19]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[20]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[21]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[22]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[23]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[24]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[25]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[26]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[27]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[28]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[29]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[30]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[31]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[32]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[33]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[34]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[35]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[36]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[37]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[38]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[39]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[40]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[41]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[42]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[43]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[44]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[45]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[46]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[47]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[48]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[49]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[50]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[51]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[52]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[53]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[54]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[55]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[56]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[57]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[58]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[59]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[60]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[61]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[62]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dectext[63]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- done	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[3]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[36]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[44]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[9]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[25]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[57]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[10]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[18]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[41]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[60]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[50]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[59]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[51]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[35]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[19]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[34]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[11]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[33]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[11]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[49]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[43]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[17]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[27]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[35]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[58]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[52]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[42]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[61]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[26]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[27]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[19]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[1]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[7]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[47]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[14]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[13]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[53]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[62]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[46]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[30]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[21]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[63]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[7]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[23]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[31]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[20]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[37]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[57]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[39]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[45]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[38]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[22]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[6]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[54]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[55]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[29]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[28]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[12]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[61]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[23]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[15]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[39]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[31]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[15]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[4]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[5]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[37]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[45]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[53]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[29]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[6]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[8]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[9]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[10]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[47]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[63]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[55]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[12]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[13]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[14]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[33]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[41]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[49]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[25]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[16]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[17]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[18]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[51]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[59]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[43]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[20]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[21]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[22]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[24]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[26]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[28]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[30]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[32]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[34]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[36]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[38]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[40]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[42]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[44]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[46]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[48]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[50]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[52]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[54]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[56]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[58]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[60]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- plaintext[62]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF des_encrypt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_plaintext : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_dectext : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f1|s1|Selector18~0_combout\ : std_logic;
SIGNAL \subk_sel[19]~48_combout\ : std_logic;
SIGNAL \subk_sel[19]~49_combout\ : std_logic;
SIGNAL \subk_sel[19]~50_combout\ : std_logic;
SIGNAL \subk_sel[19]~51_combout\ : std_logic;
SIGNAL \f1|x[46]~47_combout\ : std_logic;
SIGNAL \f1|x[46]~48_combout\ : std_logic;
SIGNAL \f1|x[47]~54_combout\ : std_logic;
SIGNAL \f1|x[47]~55_combout\ : std_logic;
SIGNAL \subk_sel[42]~88_combout\ : std_logic;
SIGNAL \subk_sel[42]~89_combout\ : std_logic;
SIGNAL \f1|x[42]~63_combout\ : std_logic;
SIGNAL \f1|x[42]~64_combout\ : std_logic;
SIGNAL \inL[6]~1_combout\ : std_logic;
SIGNAL \f1|x[40]~67_combout\ : std_logic;
SIGNAL \f1|x[40]~68_combout\ : std_logic;
SIGNAL \f1|x[37]~74_combout\ : std_logic;
SIGNAL \f1|x[37]~75_combout\ : std_logic;
SIGNAL \f1|x[36]~80_combout\ : std_logic;
SIGNAL \f1|x[36]~81_combout\ : std_logic;
SIGNAL \f1|x[5]~107_combout\ : std_logic;
SIGNAL \f1|x[5]~108_combout\ : std_logic;
SIGNAL \inL[5]~3_combout\ : std_logic;
SIGNAL \f1|x[13]~120_combout\ : std_logic;
SIGNAL \f1|x[13]~121_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~4_combout\ : std_logic;
SIGNAL \inL[12]~5_combout\ : std_logic;
SIGNAL \f1|x[10]~133_combout\ : std_logic;
SIGNAL \f1|x[10]~134_combout\ : std_logic;
SIGNAL \f1|s1|WideOr98~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~0_combout\ : std_logic;
SIGNAL \inL[26]~6_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~0_combout\ : std_logic;
SIGNAL \f1|x[18]~140_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \state.R2~regout\ : std_logic;
SIGNAL \state.R3~regout\ : std_logic;
SIGNAL \state.R4~regout\ : std_logic;
SIGNAL \state.R5~regout\ : std_logic;
SIGNAL \state.R6~regout\ : std_logic;
SIGNAL \state.R7~regout\ : std_logic;
SIGNAL \state.R8~regout\ : std_logic;
SIGNAL \state.R9~regout\ : std_logic;
SIGNAL \state.R10~feeder_combout\ : std_logic;
SIGNAL \state.R10~regout\ : std_logic;
SIGNAL \state.R11~feeder_combout\ : std_logic;
SIGNAL \state.R11~regout\ : std_logic;
SIGNAL \state.R12~regout\ : std_logic;
SIGNAL \state.R13~feeder_combout\ : std_logic;
SIGNAL \state.R13~regout\ : std_logic;
SIGNAL \state.R14~regout\ : std_logic;
SIGNAL \state.R15~regout\ : std_logic;
SIGNAL \state.R16~regout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.DONE~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.IDLE~regout\ : std_logic;
SIGNAL \nstate.R1~0_combout\ : std_logic;
SIGNAL \state.R1~regout\ : std_logic;
SIGNAL \inR[7]~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \subk_sel[6]~14_combout\ : std_logic;
SIGNAL \f1|x[18]~40_combout\ : std_logic;
SIGNAL \subk_sel[6]~0_combout\ : std_logic;
SIGNAL \subk_sel[6]~2_combout\ : std_logic;
SIGNAL \subk_sel[6]~3_combout\ : std_logic;
SIGNAL \subk_sel[6]~5_combout\ : std_logic;
SIGNAL \l_next[11]~feeder_combout\ : std_logic;
SIGNAL \subk_sel[6]~13_combout\ : std_logic;
SIGNAL \f1|x[4]~87_combout\ : std_logic;
SIGNAL \f1|x[16]~126_combout\ : std_logic;
SIGNAL \f1|x[16]~127_combout\ : std_logic;
SIGNAL \subk_sel[6]~1_combout\ : std_logic;
SIGNAL \subk_sel[6]~7_combout\ : std_logic;
SIGNAL \subk_sel[16]~300_combout\ : std_logic;
SIGNAL \subk_sel[16]~301_combout\ : std_logic;
SIGNAL \subk_sel[16]~302_combout\ : std_logic;
SIGNAL \f1|x[16]~158_combout\ : std_logic;
SIGNAL \f1|x[16]~131_combout\ : std_logic;
SIGNAL \subk_sel[6]~4_combout\ : std_logic;
SIGNAL \f1|x[16]~128_combout\ : std_logic;
SIGNAL \f1|x[16]~132_combout\ : std_logic;
SIGNAL \subk_sel[6]~15_combout\ : std_logic;
SIGNAL \subk_sel[6]~17_combout\ : std_logic;
SIGNAL \subk_sel[6]~16_combout\ : std_logic;
SIGNAL \subk_sel[16]~298_combout\ : std_logic;
SIGNAL \subk_sel[16]~299_combout\ : std_logic;
SIGNAL \f1|x[16]~129_combout\ : std_logic;
SIGNAL \f1|x[16]~130_combout\ : std_logic;
SIGNAL \inR[9]~28_combout\ : std_logic;
SIGNAL \comb~17_combout\ : std_logic;
SIGNAL \f1|x[46]~49_combout\ : std_logic;
SIGNAL \f1|x[46]~141_combout\ : std_logic;
SIGNAL \subk_sel[46]~70_combout\ : std_logic;
SIGNAL \subk_sel[46]~71_combout\ : std_logic;
SIGNAL \subk_sel[46]~72_combout\ : std_logic;
SIGNAL \f1|x[46]~52_combout\ : std_logic;
SIGNAL \f1|x[46]~53_combout\ : std_logic;
SIGNAL \subk_sel[46]~68_combout\ : std_logic;
SIGNAL \subk_sel[46]~69_combout\ : std_logic;
SIGNAL \f1|x[46]~50_combout\ : std_logic;
SIGNAL \f1|x[46]~51_combout\ : std_logic;
SIGNAL \f1|x[42]~60_combout\ : std_logic;
SIGNAL \f1|x[42]~61_combout\ : std_logic;
SIGNAL \f1|x[42]~62_combout\ : std_logic;
SIGNAL \f1|x[42]~144_combout\ : std_logic;
SIGNAL \subk_sel[6]~6_combout\ : std_logic;
SIGNAL \subk_sel[42]~90_combout\ : std_logic;
SIGNAL \subk_sel[42]~91_combout\ : std_logic;
SIGNAL \subk_sel[42]~92_combout\ : std_logic;
SIGNAL \f1|x[42]~65_combout\ : std_logic;
SIGNAL \f1|x[42]~66_combout\ : std_logic;
SIGNAL \f1|x[47]~57_combout\ : std_logic;
SIGNAL \f1|x[47]~56_combout\ : std_logic;
SIGNAL \subk_sel[47]~75_combout\ : std_logic;
SIGNAL \subk_sel[47]~76_combout\ : std_logic;
SIGNAL \subk_sel[47]~77_combout\ : std_logic;
SIGNAL \f1|x[47]~59_combout\ : std_logic;
SIGNAL \f1|x[47]~143_combout\ : std_logic;
SIGNAL \subk_sel[47]~73_combout\ : std_logic;
SIGNAL \subk_sel[47]~74_combout\ : std_logic;
SIGNAL \f1|x[47]~58_combout\ : std_logic;
SIGNAL \f1|x[47]~142_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~0_combout\ : std_logic;
SIGNAL \inR[30]~11_combout\ : std_logic;
SIGNAL \f1|x[37]~76_combout\ : std_logic;
SIGNAL \subk_sel[37]~198_combout\ : std_logic;
SIGNAL \subk_sel[37]~199_combout\ : std_logic;
SIGNAL \f1|x[37]~77_combout\ : std_logic;
SIGNAL \f1|x[37]~78_combout\ : std_logic;
SIGNAL \f1|x[37]~146_combout\ : std_logic;
SIGNAL \subk_sel[37]~200_combout\ : std_logic;
SIGNAL \subk_sel[37]~201_combout\ : std_logic;
SIGNAL \subk_sel[37]~202_combout\ : std_logic;
SIGNAL \f1|x[37]~79_combout\ : std_logic;
SIGNAL \f1|x[37]~147_combout\ : std_logic;
SIGNAL \subk_sel[39]~183_combout\ : std_logic;
SIGNAL \subk_sel[39]~184_combout\ : std_logic;
SIGNAL \subk_sel[39]~185_combout\ : std_logic;
SIGNAL \subk_sel[39]~186_combout\ : std_logic;
SIGNAL \subk_sel[39]~178_combout\ : std_logic;
SIGNAL \subk_sel[39]~179_combout\ : std_logic;
SIGNAL \subk_sel[39]~180_combout\ : std_logic;
SIGNAL \subk_sel[39]~181_combout\ : std_logic;
SIGNAL \subk_sel[39]~182_combout\ : std_logic;
SIGNAL \subk_sel[39]~187_combout\ : std_logic;
SIGNAL \subk_sel[36]~203_combout\ : std_logic;
SIGNAL \subk_sel[36]~204_combout\ : std_logic;
SIGNAL \f1|x[36]~82_combout\ : std_logic;
SIGNAL \f1|x[36]~83_combout\ : std_logic;
SIGNAL \f1|x[36]~84_combout\ : std_logic;
SIGNAL \subk_sel[36]~205_combout\ : std_logic;
SIGNAL \subk_sel[36]~206_combout\ : std_logic;
SIGNAL \subk_sel[36]~207_combout\ : std_logic;
SIGNAL \f1|x[36]~148_combout\ : std_logic;
SIGNAL \f1|x[36]~85_combout\ : std_logic;
SIGNAL \f1|x[36]~86_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~0_combout\ : std_logic;
SIGNAL \inR[28]~21_combout\ : std_logic;
SIGNAL \r_next~44_combout\ : std_logic;
SIGNAL \f1|x[13]~122_combout\ : std_logic;
SIGNAL \subk_sel[13]~283_combout\ : std_logic;
SIGNAL \subk_sel[13]~284_combout\ : std_logic;
SIGNAL \f1|x[13]~123_combout\ : std_logic;
SIGNAL \f1|x[13]~124_combout\ : std_logic;
SIGNAL \f1|x[13]~156_combout\ : std_logic;
SIGNAL \subk_sel[13]~285_combout\ : std_logic;
SIGNAL \subk_sel[13]~286_combout\ : std_logic;
SIGNAL \subk_sel[13]~287_combout\ : std_logic;
SIGNAL \f1|x[13]~125_combout\ : std_logic;
SIGNAL \f1|x[13]~157_combout\ : std_logic;
SIGNAL \f1|x[12]~113_combout\ : std_logic;
SIGNAL \f1|x[12]~114_combout\ : std_logic;
SIGNAL \f1|x[12]~155_combout\ : std_logic;
SIGNAL \f1|x[12]~115_combout\ : std_logic;
SIGNAL \subk_sel[12]~258_combout\ : std_logic;
SIGNAL \subk_sel[12]~259_combout\ : std_logic;
SIGNAL \f1|x[12]~116_combout\ : std_logic;
SIGNAL \f1|x[12]~117_combout\ : std_logic;
SIGNAL \subk_sel[12]~260_combout\ : std_logic;
SIGNAL \subk_sel[12]~261_combout\ : std_logic;
SIGNAL \subk_sel[12]~262_combout\ : std_logic;
SIGNAL \f1|x[12]~118_combout\ : std_logic;
SIGNAL \f1|x[12]~119_combout\ : std_logic;
SIGNAL \r_next~19_combout\ : std_logic;
SIGNAL \r_next~20_combout\ : std_logic;
SIGNAL \r_next~21_combout\ : std_logic;
SIGNAL \r_next~22_combout\ : std_logic;
SIGNAL \r_next~23_combout\ : std_logic;
SIGNAL \subk_sel[41]~193_combout\ : std_logic;
SIGNAL \subk_sel[41]~194_combout\ : std_logic;
SIGNAL \subk_sel[41]~195_combout\ : std_logic;
SIGNAL \subk_sel[41]~196_combout\ : std_logic;
SIGNAL \subk_sel[41]~188_combout\ : std_logic;
SIGNAL \subk_sel[41]~189_combout\ : std_logic;
SIGNAL \subk_sel[41]~190_combout\ : std_logic;
SIGNAL \subk_sel[41]~191_combout\ : std_logic;
SIGNAL \subk_sel[41]~192_combout\ : std_logic;
SIGNAL \subk_sel[41]~197_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~4_combout\ : std_logic;
SIGNAL \f1|x[40]~145_combout\ : std_logic;
SIGNAL \f1|x[40]~69_combout\ : std_logic;
SIGNAL \subk_sel[40]~173_combout\ : std_logic;
SIGNAL \subk_sel[40]~174_combout\ : std_logic;
SIGNAL \f1|x[40]~70_combout\ : std_logic;
SIGNAL \f1|x[40]~71_combout\ : std_logic;
SIGNAL \subk_sel[40]~175_combout\ : std_logic;
SIGNAL \subk_sel[40]~176_combout\ : std_logic;
SIGNAL \subk_sel[40]~177_combout\ : std_logic;
SIGNAL \f1|x[40]~72_combout\ : std_logic;
SIGNAL \f1|x[40]~73_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector6~5_combout\ : std_logic;
SIGNAL \r_next~9_combout\ : std_logic;
SIGNAL \subk_sel[45]~108_combout\ : std_logic;
SIGNAL \subk_sel[45]~109_combout\ : std_logic;
SIGNAL \subk_sel[45]~110_combout\ : std_logic;
SIGNAL \subk_sel[45]~111_combout\ : std_logic;
SIGNAL \subk_sel[45]~103_combout\ : std_logic;
SIGNAL \subk_sel[45]~104_combout\ : std_logic;
SIGNAL \subk_sel[45]~105_combout\ : std_logic;
SIGNAL \subk_sel[45]~106_combout\ : std_logic;
SIGNAL \subk_sel[45]~107_combout\ : std_logic;
SIGNAL \subk_sel[45]~112_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~4_combout\ : std_logic;
SIGNAL \subk_sel[43]~98_combout\ : std_logic;
SIGNAL \subk_sel[43]~99_combout\ : std_logic;
SIGNAL \subk_sel[43]~100_combout\ : std_logic;
SIGNAL \subk_sel[43]~101_combout\ : std_logic;
SIGNAL \subk_sel[43]~93_combout\ : std_logic;
SIGNAL \subk_sel[43]~94_combout\ : std_logic;
SIGNAL \subk_sel[43]~95_combout\ : std_logic;
SIGNAL \subk_sel[43]~96_combout\ : std_logic;
SIGNAL \subk_sel[43]~97_combout\ : std_logic;
SIGNAL \subk_sel[43]~102_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector2~5_combout\ : std_logic;
SIGNAL \r_next~33_combout\ : std_logic;
SIGNAL \subk_sel[14]~278_combout\ : std_logic;
SIGNAL \subk_sel[14]~279_combout\ : std_logic;
SIGNAL \subk_sel[14]~280_combout\ : std_logic;
SIGNAL \subk_sel[14]~281_combout\ : std_logic;
SIGNAL \subk_sel[14]~273_combout\ : std_logic;
SIGNAL \subk_sel[14]~274_combout\ : std_logic;
SIGNAL \subk_sel[14]~275_combout\ : std_logic;
SIGNAL \subk_sel[14]~276_combout\ : std_logic;
SIGNAL \subk_sel[14]~277_combout\ : std_logic;
SIGNAL \subk_sel[14]~282_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~2_combout\ : std_logic;
SIGNAL \subk_sel[15]~293_combout\ : std_logic;
SIGNAL \subk_sel[15]~294_combout\ : std_logic;
SIGNAL \subk_sel[15]~295_combout\ : std_logic;
SIGNAL \subk_sel[15]~296_combout\ : std_logic;
SIGNAL \subk_sel[15]~288_combout\ : std_logic;
SIGNAL \subk_sel[15]~289_combout\ : std_logic;
SIGNAL \subk_sel[15]~290_combout\ : std_logic;
SIGNAL \subk_sel[15]~291_combout\ : std_logic;
SIGNAL \subk_sel[15]~292_combout\ : std_logic;
SIGNAL \subk_sel[15]~297_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector21~5_combout\ : std_logic;
SIGNAL \r_next~24_combout\ : std_logic;
SIGNAL \inR[3]~12_combout\ : std_logic;
SIGNAL \f1|x[4]~88_combout\ : std_logic;
SIGNAL \f1|x[4]~149_combout\ : std_logic;
SIGNAL \subk_sel[4]~218_combout\ : std_logic;
SIGNAL \subk_sel[4]~219_combout\ : std_logic;
SIGNAL \f1|x[4]~89_combout\ : std_logic;
SIGNAL \f1|x[4]~90_combout\ : std_logic;
SIGNAL \f1|x[4]~91_combout\ : std_logic;
SIGNAL \subk_sel[4]~220_combout\ : std_logic;
SIGNAL \subk_sel[4]~221_combout\ : std_logic;
SIGNAL \subk_sel[4]~222_combout\ : std_logic;
SIGNAL \f1|x[4]~92_combout\ : std_logic;
SIGNAL \f1|x[4]~93_combout\ : std_logic;
SIGNAL \f1|x[1]~94_combout\ : std_logic;
SIGNAL \l_next[0]~feeder_combout\ : std_logic;
SIGNAL \subk_sel[5]~255_combout\ : std_logic;
SIGNAL \subk_sel[5]~256_combout\ : std_logic;
SIGNAL \subk_sel[5]~257_combout\ : std_logic;
SIGNAL \f1|x[5]~109_combout\ : std_logic;
SIGNAL \f1|x[5]~112_combout\ : std_logic;
SIGNAL \f1|x[5]~110_combout\ : std_logic;
SIGNAL \f1|x[5]~154_combout\ : std_logic;
SIGNAL \subk_sel[5]~253_combout\ : std_logic;
SIGNAL \subk_sel[5]~254_combout\ : std_logic;
SIGNAL \f1|x[5]~111_combout\ : std_logic;
SIGNAL \f1|x[5]~153_combout\ : std_logic;
SIGNAL \inR[2]~23_combout\ : std_logic;
SIGNAL \subk_sel[30]~393_combout\ : std_logic;
SIGNAL \subk_sel[30]~394_combout\ : std_logic;
SIGNAL \subk_sel[30]~395_combout\ : std_logic;
SIGNAL \subk_sel[30]~396_combout\ : std_logic;
SIGNAL \subk_sel[30]~388_combout\ : std_logic;
SIGNAL \subk_sel[30]~389_combout\ : std_logic;
SIGNAL \subk_sel[30]~390_combout\ : std_logic;
SIGNAL \subk_sel[30]~391_combout\ : std_logic;
SIGNAL \subk_sel[30]~392_combout\ : std_logic;
SIGNAL \subk_sel[30]~397_combout\ : std_logic;
SIGNAL \inR[23]~6_combout\ : std_logic;
SIGNAL \subk_sel[34]~363_combout\ : std_logic;
SIGNAL \subk_sel[34]~364_combout\ : std_logic;
SIGNAL \subk_sel[34]~365_combout\ : std_logic;
SIGNAL \subk_sel[34]~366_combout\ : std_logic;
SIGNAL \subk_sel[34]~358_combout\ : std_logic;
SIGNAL \subk_sel[34]~359_combout\ : std_logic;
SIGNAL \subk_sel[34]~360_combout\ : std_logic;
SIGNAL \subk_sel[34]~361_combout\ : std_logic;
SIGNAL \subk_sel[34]~362_combout\ : std_logic;
SIGNAL \subk_sel[34]~367_combout\ : std_logic;
SIGNAL \l_next[24]~feeder_combout\ : std_logic;
SIGNAL \inR[15]~5_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~0_combout\ : std_logic;
SIGNAL \subk_sel[44]~83_combout\ : std_logic;
SIGNAL \subk_sel[44]~84_combout\ : std_logic;
SIGNAL \subk_sel[44]~85_combout\ : std_logic;
SIGNAL \subk_sel[44]~86_combout\ : std_logic;
SIGNAL \subk_sel[44]~78_combout\ : std_logic;
SIGNAL \subk_sel[44]~79_combout\ : std_logic;
SIGNAL \subk_sel[44]~80_combout\ : std_logic;
SIGNAL \subk_sel[44]~81_combout\ : std_logic;
SIGNAL \subk_sel[44]~82_combout\ : std_logic;
SIGNAL \subk_sel[44]~87_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector1~5_combout\ : std_logic;
SIGNAL \r_next~3_combout\ : std_logic;
SIGNAL \subk_sel[24]~168_combout\ : std_logic;
SIGNAL \subk_sel[24]~169_combout\ : std_logic;
SIGNAL \subk_sel[24]~170_combout\ : std_logic;
SIGNAL \subk_sel[24]~171_combout\ : std_logic;
SIGNAL \subk_sel[24]~163_combout\ : std_logic;
SIGNAL \subk_sel[24]~164_combout\ : std_logic;
SIGNAL \subk_sel[24]~165_combout\ : std_logic;
SIGNAL \subk_sel[24]~166_combout\ : std_logic;
SIGNAL \subk_sel[24]~167_combout\ : std_logic;
SIGNAL \subk_sel[24]~172_combout\ : std_logic;
SIGNAL \inR[20]~20_combout\ : std_logic;
SIGNAL \f1|x[10]~159_combout\ : std_logic;
SIGNAL \subk_sel[10]~303_combout\ : std_logic;
SIGNAL \subk_sel[10]~304_combout\ : std_logic;
SIGNAL \f1|x[10]~135_combout\ : std_logic;
SIGNAL \f1|x[10]~136_combout\ : std_logic;
SIGNAL \f1|x[10]~137_combout\ : std_logic;
SIGNAL \subk_sel[10]~305_combout\ : std_logic;
SIGNAL \subk_sel[10]~306_combout\ : std_logic;
SIGNAL \subk_sel[10]~307_combout\ : std_logic;
SIGNAL \f1|x[10]~138_combout\ : std_logic;
SIGNAL \f1|x[10]~139_combout\ : std_logic;
SIGNAL \subk_sel[9]~308_combout\ : std_logic;
SIGNAL \subk_sel[9]~309_combout\ : std_logic;
SIGNAL \subk_sel[9]~310_combout\ : std_logic;
SIGNAL \subk_sel[9]~311_combout\ : std_logic;
SIGNAL \subk_sel[9]~312_combout\ : std_logic;
SIGNAL \subk_sel[9]~313_combout\ : std_logic;
SIGNAL \subk_sel[9]~314_combout\ : std_logic;
SIGNAL \subk_sel[9]~315_combout\ : std_logic;
SIGNAL \subk_sel[9]~316_combout\ : std_logic;
SIGNAL \subk_sel[9]~317_combout\ : std_logic;
SIGNAL \f1|s1|WideOr87~0_combout\ : std_logic;
SIGNAL \subk_sel[32]~378_combout\ : std_logic;
SIGNAL \subk_sel[32]~379_combout\ : std_logic;
SIGNAL \subk_sel[32]~380_combout\ : std_logic;
SIGNAL \subk_sel[32]~381_combout\ : std_logic;
SIGNAL \subk_sel[32]~382_combout\ : std_logic;
SIGNAL \subk_sel[32]~383_combout\ : std_logic;
SIGNAL \subk_sel[32]~384_combout\ : std_logic;
SIGNAL \subk_sel[32]~385_combout\ : std_logic;
SIGNAL \subk_sel[32]~386_combout\ : std_logic;
SIGNAL \subk_sel[32]~387_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~4_combout\ : std_logic;
SIGNAL \subk_sel[31]~413_combout\ : std_logic;
SIGNAL \subk_sel[31]~414_combout\ : std_logic;
SIGNAL \subk_sel[31]~415_combout\ : std_logic;
SIGNAL \subk_sel[31]~416_combout\ : std_logic;
SIGNAL \subk_sel[31]~408_combout\ : std_logic;
SIGNAL \subk_sel[31]~409_combout\ : std_logic;
SIGNAL \subk_sel[31]~410_combout\ : std_logic;
SIGNAL \subk_sel[31]~411_combout\ : std_logic;
SIGNAL \subk_sel[31]~412_combout\ : std_logic;
SIGNAL \subk_sel[31]~417_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector8~5_combout\ : std_logic;
SIGNAL \r_next~41_combout\ : std_logic;
SIGNAL \inR[8]~15_combout\ : std_logic;
SIGNAL \subk_sel[11]~343_combout\ : std_logic;
SIGNAL \subk_sel[11]~344_combout\ : std_logic;
SIGNAL \subk_sel[11]~345_combout\ : std_logic;
SIGNAL \subk_sel[11]~346_combout\ : std_logic;
SIGNAL \subk_sel[11]~338_combout\ : std_logic;
SIGNAL \subk_sel[11]~339_combout\ : std_logic;
SIGNAL \subk_sel[11]~340_combout\ : std_logic;
SIGNAL \subk_sel[11]~341_combout\ : std_logic;
SIGNAL \subk_sel[11]~342_combout\ : std_logic;
SIGNAL \subk_sel[11]~347_combout\ : std_logic;
SIGNAL \f1|s1|WideOr88~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr92~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector25~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector25~1_combout\ : std_logic;
SIGNAL \r_next~18_combout\ : std_logic;
SIGNAL \subk_sel[29]~153_combout\ : std_logic;
SIGNAL \subk_sel[29]~154_combout\ : std_logic;
SIGNAL \subk_sel[29]~155_combout\ : std_logic;
SIGNAL \subk_sel[29]~156_combout\ : std_logic;
SIGNAL \subk_sel[29]~157_combout\ : std_logic;
SIGNAL \subk_sel[29]~158_combout\ : std_logic;
SIGNAL \subk_sel[29]~159_combout\ : std_logic;
SIGNAL \subk_sel[29]~160_combout\ : std_logic;
SIGNAL \subk_sel[29]~161_combout\ : std_logic;
SIGNAL \subk_sel[29]~162_combout\ : std_logic;
SIGNAL \subk_sel[27]~128_combout\ : std_logic;
SIGNAL \subk_sel[27]~129_combout\ : std_logic;
SIGNAL \subk_sel[27]~130_combout\ : std_logic;
SIGNAL \subk_sel[27]~131_combout\ : std_logic;
SIGNAL \subk_sel[27]~123_combout\ : std_logic;
SIGNAL \subk_sel[27]~124_combout\ : std_logic;
SIGNAL \subk_sel[27]~125_combout\ : std_logic;
SIGNAL \subk_sel[27]~126_combout\ : std_logic;
SIGNAL \subk_sel[27]~127_combout\ : std_logic;
SIGNAL \subk_sel[27]~132_combout\ : std_logic;
SIGNAL \subk_sel[25]~148_combout\ : std_logic;
SIGNAL \subk_sel[25]~149_combout\ : std_logic;
SIGNAL \subk_sel[25]~150_combout\ : std_logic;
SIGNAL \subk_sel[25]~151_combout\ : std_logic;
SIGNAL \subk_sel[25]~143_combout\ : std_logic;
SIGNAL \subk_sel[25]~144_combout\ : std_logic;
SIGNAL \subk_sel[25]~145_combout\ : std_logic;
SIGNAL \subk_sel[25]~146_combout\ : std_logic;
SIGNAL \subk_sel[25]~147_combout\ : std_logic;
SIGNAL \subk_sel[25]~152_combout\ : std_logic;
SIGNAL \subk_sel[28]~118_combout\ : std_logic;
SIGNAL \subk_sel[28]~119_combout\ : std_logic;
SIGNAL \subk_sel[28]~120_combout\ : std_logic;
SIGNAL \subk_sel[28]~121_combout\ : std_logic;
SIGNAL \subk_sel[28]~113_combout\ : std_logic;
SIGNAL \subk_sel[28]~114_combout\ : std_logic;
SIGNAL \subk_sel[28]~115_combout\ : std_logic;
SIGNAL \subk_sel[28]~116_combout\ : std_logic;
SIGNAL \subk_sel[28]~117_combout\ : std_logic;
SIGNAL \subk_sel[28]~122_combout\ : std_logic;
SIGNAL \f1|s1|WideOr53~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr49~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector13~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr51~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr46~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector12~0_combout\ : std_logic;
SIGNAL \r_next~17_combout\ : std_logic;
SIGNAL \subk_sel[19]~52_combout\ : std_logic;
SIGNAL \subk_sel[19]~53_combout\ : std_logic;
SIGNAL \subk_sel[19]~54_combout\ : std_logic;
SIGNAL \subk_sel[19]~55_combout\ : std_logic;
SIGNAL \subk_sel[19]~56_combout\ : std_logic;
SIGNAL \subk_sel[19]~57_combout\ : std_logic;
SIGNAL \subk_sel[22]~18_combout\ : std_logic;
SIGNAL \subk_sel[22]~19_combout\ : std_logic;
SIGNAL \subk_sel[22]~20_combout\ : std_logic;
SIGNAL \subk_sel[22]~21_combout\ : std_logic;
SIGNAL \subk_sel[22]~8_combout\ : std_logic;
SIGNAL \subk_sel[22]~9_combout\ : std_logic;
SIGNAL \subk_sel[22]~10_combout\ : std_logic;
SIGNAL \subk_sel[22]~11_combout\ : std_logic;
SIGNAL \subk_sel[22]~12_combout\ : std_logic;
SIGNAL \subk_sel[22]~22_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector23~5_combout\ : std_logic;
SIGNAL \r_next~10_combout\ : std_logic;
SIGNAL \subk_sel[20]~63_combout\ : std_logic;
SIGNAL \subk_sel[20]~64_combout\ : std_logic;
SIGNAL \subk_sel[20]~65_combout\ : std_logic;
SIGNAL \subk_sel[20]~66_combout\ : std_logic;
SIGNAL \subk_sel[20]~58_combout\ : std_logic;
SIGNAL \subk_sel[20]~59_combout\ : std_logic;
SIGNAL \subk_sel[20]~60_combout\ : std_logic;
SIGNAL \subk_sel[20]~61_combout\ : std_logic;
SIGNAL \subk_sel[20]~62_combout\ : std_logic;
SIGNAL \subk_sel[20]~67_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~1_combout\ : std_logic;
SIGNAL \inR[16]~31_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector9~5_combout\ : std_logic;
SIGNAL \r_next~42_combout\ : std_logic;
SIGNAL \subk_sel[23]~43_combout\ : std_logic;
SIGNAL \subk_sel[23]~44_combout\ : std_logic;
SIGNAL \subk_sel[23]~45_combout\ : std_logic;
SIGNAL \subk_sel[23]~46_combout\ : std_logic;
SIGNAL \subk_sel[23]~38_combout\ : std_logic;
SIGNAL \subk_sel[23]~39_combout\ : std_logic;
SIGNAL \subk_sel[23]~40_combout\ : std_logic;
SIGNAL \subk_sel[23]~41_combout\ : std_logic;
SIGNAL \subk_sel[23]~42_combout\ : std_logic;
SIGNAL \subk_sel[23]~47_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector16~5_combout\ : std_logic;
SIGNAL \r_next~43_combout\ : std_logic;
SIGNAL \inR[24]~8_combout\ : std_logic;
SIGNAL \subk_sel[35]~368_combout\ : std_logic;
SIGNAL \subk_sel[35]~369_combout\ : std_logic;
SIGNAL \subk_sel[35]~370_combout\ : std_logic;
SIGNAL \subk_sel[35]~371_combout\ : std_logic;
SIGNAL \subk_sel[35]~372_combout\ : std_logic;
SIGNAL \subk_sel[35]~373_combout\ : std_logic;
SIGNAL \subk_sel[35]~374_combout\ : std_logic;
SIGNAL \subk_sel[35]~375_combout\ : std_logic;
SIGNAL \subk_sel[35]~376_combout\ : std_logic;
SIGNAL \subk_sel[35]~377_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~4_combout\ : std_logic;
SIGNAL \subk_sel[33]~403_combout\ : std_logic;
SIGNAL \subk_sel[33]~404_combout\ : std_logic;
SIGNAL \subk_sel[33]~405_combout\ : std_logic;
SIGNAL \subk_sel[33]~406_combout\ : std_logic;
SIGNAL \subk_sel[33]~398_combout\ : std_logic;
SIGNAL \subk_sel[33]~399_combout\ : std_logic;
SIGNAL \subk_sel[33]~400_combout\ : std_logic;
SIGNAL \subk_sel[33]~401_combout\ : std_logic;
SIGNAL \subk_sel[33]~402_combout\ : std_logic;
SIGNAL \subk_sel[33]~407_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector10~5_combout\ : std_logic;
SIGNAL \r_next~28_combout\ : std_logic;
SIGNAL \subk_sel[3]~223_combout\ : std_logic;
SIGNAL \subk_sel[3]~224_combout\ : std_logic;
SIGNAL \subk_sel[3]~225_combout\ : std_logic;
SIGNAL \subk_sel[3]~226_combout\ : std_logic;
SIGNAL \subk_sel[3]~227_combout\ : std_logic;
SIGNAL \subk_sel[3]~228_combout\ : std_logic;
SIGNAL \subk_sel[3]~229_combout\ : std_logic;
SIGNAL \subk_sel[3]~230_combout\ : std_logic;
SIGNAL \subk_sel[3]~231_combout\ : std_logic;
SIGNAL \subk_sel[3]~232_combout\ : std_logic;
SIGNAL \f1|s1|WideOr108~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr111~0_combout\ : std_logic;
SIGNAL \r_next~45_combout\ : std_logic;
SIGNAL \subk_sel[2]~238_combout\ : std_logic;
SIGNAL \subk_sel[2]~239_combout\ : std_logic;
SIGNAL \subk_sel[2]~240_combout\ : std_logic;
SIGNAL \subk_sel[2]~241_combout\ : std_logic;
SIGNAL \subk_sel[2]~233_combout\ : std_logic;
SIGNAL \subk_sel[2]~234_combout\ : std_logic;
SIGNAL \subk_sel[2]~235_combout\ : std_logic;
SIGNAL \subk_sel[2]~236_combout\ : std_logic;
SIGNAL \subk_sel[2]~237_combout\ : std_logic;
SIGNAL \subk_sel[2]~242_combout\ : std_logic;
SIGNAL \f1|s1|WideOr102~0_combout\ : std_logic;
SIGNAL \r_next~46_combout\ : std_logic;
SIGNAL \subk_sel[8]~318_combout\ : std_logic;
SIGNAL \subk_sel[8]~319_combout\ : std_logic;
SIGNAL \subk_sel[8]~320_combout\ : std_logic;
SIGNAL \subk_sel[8]~321_combout\ : std_logic;
SIGNAL \subk_sel[8]~322_combout\ : std_logic;
SIGNAL \subk_sel[8]~323_combout\ : std_logic;
SIGNAL \subk_sel[8]~324_combout\ : std_logic;
SIGNAL \subk_sel[8]~325_combout\ : std_logic;
SIGNAL \subk_sel[8]~326_combout\ : std_logic;
SIGNAL \subk_sel[8]~327_combout\ : std_logic;
SIGNAL \f1|s1|WideOr91~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr97~0_combout\ : std_logic;
SIGNAL \subk_sel[7]~333_combout\ : std_logic;
SIGNAL \subk_sel[7]~334_combout\ : std_logic;
SIGNAL \subk_sel[7]~335_combout\ : std_logic;
SIGNAL \subk_sel[7]~336_combout\ : std_logic;
SIGNAL \subk_sel[7]~328_combout\ : std_logic;
SIGNAL \subk_sel[7]~329_combout\ : std_logic;
SIGNAL \subk_sel[7]~330_combout\ : std_logic;
SIGNAL \subk_sel[7]~331_combout\ : std_logic;
SIGNAL \subk_sel[7]~332_combout\ : std_logic;
SIGNAL \subk_sel[7]~337_combout\ : std_logic;
SIGNAL \l_next[4]~feeder_combout\ : std_logic;
SIGNAL \inL[4]~4_combout\ : std_logic;
SIGNAL \subk_sel[38]~213_combout\ : std_logic;
SIGNAL \subk_sel[38]~214_combout\ : std_logic;
SIGNAL \subk_sel[38]~215_combout\ : std_logic;
SIGNAL \subk_sel[38]~216_combout\ : std_logic;
SIGNAL \subk_sel[38]~208_combout\ : std_logic;
SIGNAL \subk_sel[38]~209_combout\ : std_logic;
SIGNAL \subk_sel[38]~210_combout\ : std_logic;
SIGNAL \subk_sel[38]~211_combout\ : std_logic;
SIGNAL \subk_sel[38]~212_combout\ : std_logic;
SIGNAL \subk_sel[38]~217_combout\ : std_logic;
SIGNAL \r_next~13_combout\ : std_logic;
SIGNAL \r_next~14_combout\ : std_logic;
SIGNAL \r_next~15_combout\ : std_logic;
SIGNAL \r_next~16_combout\ : std_logic;
SIGNAL \inR[4]~13_combout\ : std_logic;
SIGNAL \f1|s1|WideOr95~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector24~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector24~1_combout\ : std_logic;
SIGNAL \r_next~40_combout\ : std_logic;
SIGNAL \inR[0]~3_combout\ : std_logic;
SIGNAL \f1|x[1]~95_combout\ : std_logic;
SIGNAL \f1|x[1]~96_combout\ : std_logic;
SIGNAL \subk_sel[1]~243_combout\ : std_logic;
SIGNAL \subk_sel[1]~244_combout\ : std_logic;
SIGNAL \f1|x[1]~97_combout\ : std_logic;
SIGNAL \f1|x[1]~98_combout\ : std_logic;
SIGNAL \f1|x[1]~150_combout\ : std_logic;
SIGNAL \subk_sel[1]~245_combout\ : std_logic;
SIGNAL \subk_sel[1]~246_combout\ : std_logic;
SIGNAL \subk_sel[1]~247_combout\ : std_logic;
SIGNAL \f1|x[1]~99_combout\ : std_logic;
SIGNAL \f1|x[1]~151_combout\ : std_logic;
SIGNAL \f1|s1|WideOr113~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr106~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr104~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector31~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr110~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector31~1_combout\ : std_logic;
SIGNAL \r_next~25_combout\ : std_logic;
SIGNAL \inR[11]~0_combout\ : std_logic;
SIGNAL \f1|x[18]~41_combout\ : std_logic;
SIGNAL \f1|x[18]~42_combout\ : std_logic;
SIGNAL \subk_sel[18]~33_combout\ : std_logic;
SIGNAL \subk_sel[18]~34_combout\ : std_logic;
SIGNAL \f1|x[18]~43_combout\ : std_logic;
SIGNAL \f1|x[18]~44_combout\ : std_logic;
SIGNAL \subk_sel[18]~35_combout\ : std_logic;
SIGNAL \subk_sel[18]~36_combout\ : std_logic;
SIGNAL \subk_sel[18]~37_combout\ : std_logic;
SIGNAL \f1|x[18]~45_combout\ : std_logic;
SIGNAL \f1|x[18]~46_combout\ : std_logic;
SIGNAL \inR[14]~9_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector7~5_combout\ : std_logic;
SIGNAL \r_next~7_combout\ : std_logic;
SIGNAL \subk_sel[21]~23_combout\ : std_logic;
SIGNAL \subk_sel[21]~24_combout\ : std_logic;
SIGNAL \subk_sel[21]~25_combout\ : std_logic;
SIGNAL \subk_sel[21]~26_combout\ : std_logic;
SIGNAL \subk_sel[21]~27_combout\ : std_logic;
SIGNAL \subk_sel[21]~28_combout\ : std_logic;
SIGNAL \subk_sel[21]~29_combout\ : std_logic;
SIGNAL \subk_sel[21]~30_combout\ : std_logic;
SIGNAL \subk_sel[21]~31_combout\ : std_logic;
SIGNAL \subk_sel[21]~32_combout\ : std_logic;
SIGNAL \f1|s1|Selector18~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector18~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector18~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector18~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector18~5_combout\ : std_logic;
SIGNAL \r_next~2_combout\ : std_logic;
SIGNAL \dectext[0]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[0]~reg0_regout\ : std_logic;
SIGNAL \dectext[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[1]~reg0_regout\ : std_logic;
SIGNAL \dectext[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[2]~reg0_regout\ : std_logic;
SIGNAL \dectext[3]~reg0_regout\ : std_logic;
SIGNAL \f1|s1|Selector0~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector0~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector0~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector0~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector0~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector0~5_combout\ : std_logic;
SIGNAL \r_next~4_combout\ : std_logic;
SIGNAL \dectext[4]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[4]~reg0_regout\ : std_logic;
SIGNAL \l_next[23]~feeder_combout\ : std_logic;
SIGNAL \dectext[5]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[5]~reg0_regout\ : std_logic;
SIGNAL \inR[31]~2_combout\ : std_logic;
SIGNAL \l_next[31]~feeder_combout\ : std_logic;
SIGNAL \inL[31]~0_combout\ : std_logic;
SIGNAL \inR[17]~29_combout\ : std_logic;
SIGNAL \f1|x[0]~100_combout\ : std_logic;
SIGNAL \f1|x[0]~101_combout\ : std_logic;
SIGNAL \f1|x[0]~152_combout\ : std_logic;
SIGNAL \subk_sel[0]~248_combout\ : std_logic;
SIGNAL \subk_sel[0]~249_combout\ : std_logic;
SIGNAL \f1|x[0]~102_combout\ : std_logic;
SIGNAL \f1|x[0]~103_combout\ : std_logic;
SIGNAL \f1|x[0]~104_combout\ : std_logic;
SIGNAL \subk_sel[0]~250_combout\ : std_logic;
SIGNAL \subk_sel[0]~251_combout\ : std_logic;
SIGNAL \subk_sel[0]~252_combout\ : std_logic;
SIGNAL \f1|x[0]~105_combout\ : std_logic;
SIGNAL \f1|x[0]~106_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector30~5_combout\ : std_logic;
SIGNAL \r_next~34_combout\ : std_logic;
SIGNAL \subk_sel[26]~138_combout\ : std_logic;
SIGNAL \subk_sel[26]~139_combout\ : std_logic;
SIGNAL \subk_sel[26]~140_combout\ : std_logic;
SIGNAL \subk_sel[26]~141_combout\ : std_logic;
SIGNAL \subk_sel[26]~133_combout\ : std_logic;
SIGNAL \subk_sel[26]~134_combout\ : std_logic;
SIGNAL \subk_sel[26]~135_combout\ : std_logic;
SIGNAL \subk_sel[26]~136_combout\ : std_logic;
SIGNAL \subk_sel[26]~137_combout\ : std_logic;
SIGNAL \subk_sel[26]~142_combout\ : std_logic;
SIGNAL \f1|s1|WideOr50~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr54~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector15~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr48~1_combout\ : std_logic;
SIGNAL \f1|s1|WideOr48~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector14~0_combout\ : std_logic;
SIGNAL \r_next~5_combout\ : std_logic;
SIGNAL \dectext[6]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[6]~reg0_regout\ : std_logic;
SIGNAL \dectext[7]~reg0_regout\ : std_logic;
SIGNAL \r_next~6_combout\ : std_logic;
SIGNAL \dectext[8]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[8]~reg0_regout\ : std_logic;
SIGNAL \inR[6]~7_combout\ : std_logic;
SIGNAL \dectext[9]~reg0_regout\ : std_logic;
SIGNAL \dectext[10]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[10]~reg0_regout\ : std_logic;
SIGNAL \dectext[11]~reg0_regout\ : std_logic;
SIGNAL \inL[22]~2_combout\ : std_logic;
SIGNAL \r_next~8_combout\ : std_logic;
SIGNAL \dectext[12]~reg0_regout\ : std_logic;
SIGNAL \inR[22]~10_combout\ : std_logic;
SIGNAL \dectext[13]~reg0_regout\ : std_logic;
SIGNAL \dectext[14]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[14]~reg0_regout\ : std_logic;
SIGNAL \dectext[15]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[15]~reg0_regout\ : std_logic;
SIGNAL \dectext[16]~reg0_regout\ : std_logic;
SIGNAL \inR[5]~14_combout\ : std_logic;
SIGNAL \dectext[17]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[17]~reg0_regout\ : std_logic;
SIGNAL \dectext[18]~reg0_regout\ : std_logic;
SIGNAL \inR[13]~16_combout\ : std_logic;
SIGNAL \dectext[19]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[19]~reg0_regout\ : std_logic;
SIGNAL \inR[21]~17_combout\ : std_logic;
SIGNAL \subk_sel[17]~268_combout\ : std_logic;
SIGNAL \subk_sel[17]~269_combout\ : std_logic;
SIGNAL \subk_sel[17]~270_combout\ : std_logic;
SIGNAL \subk_sel[17]~271_combout\ : std_logic;
SIGNAL \subk_sel[17]~263_combout\ : std_logic;
SIGNAL \subk_sel[17]~264_combout\ : std_logic;
SIGNAL \subk_sel[17]~265_combout\ : std_logic;
SIGNAL \subk_sel[17]~266_combout\ : std_logic;
SIGNAL \subk_sel[17]~267_combout\ : std_logic;
SIGNAL \subk_sel[17]~272_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector22~5_combout\ : std_logic;
SIGNAL \r_next~11_combout\ : std_logic;
SIGNAL \dectext[20]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[20]~reg0_regout\ : std_logic;
SIGNAL \dectext[21]~reg0_regout\ : std_logic;
SIGNAL \inR[29]~18_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector19~5_combout\ : std_logic;
SIGNAL \r_next~12_combout\ : std_logic;
SIGNAL \dectext[22]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[22]~reg0_regout\ : std_logic;
SIGNAL \dectext[23]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[23]~reg0_regout\ : std_logic;
SIGNAL \dectext[24]~reg0_regout\ : std_logic;
SIGNAL \dectext[25]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[25]~reg0_regout\ : std_logic;
SIGNAL \dectext[26]~reg0_regout\ : std_logic;
SIGNAL \inR[12]~19_combout\ : std_logic;
SIGNAL \dectext[27]~reg0_regout\ : std_logic;
SIGNAL \dectext[28]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[28]~reg0_regout\ : std_logic;
SIGNAL \dectext[29]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[29]~reg0_regout\ : std_logic;
SIGNAL \dectext[30]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[30]~reg0_regout\ : std_logic;
SIGNAL \dectext[31]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[31]~reg0_regout\ : std_logic;
SIGNAL \dectext[32]~reg0_regout\ : std_logic;
SIGNAL \dectext[33]~reg0_regout\ : std_logic;
SIGNAL \dectext[34]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[34]~reg0_regout\ : std_logic;
SIGNAL \dectext[35]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[35]~reg0_regout\ : std_logic;
SIGNAL \inR[19]~22_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector4~5_combout\ : std_logic;
SIGNAL \r_next~26_combout\ : std_logic;
SIGNAL \dectext[36]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[36]~reg0_regout\ : std_logic;
SIGNAL \dectext[37]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[37]~reg0_regout\ : std_logic;
SIGNAL \inR[27]~4_combout\ : std_logic;
SIGNAL \f1|s1|WideOr107~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr101~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector28~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector28~1_combout\ : std_logic;
SIGNAL \r_next~27_combout\ : std_logic;
SIGNAL \dectext[38]~reg0_regout\ : std_logic;
SIGNAL \dectext[39]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[39]~reg0_regout\ : std_logic;
SIGNAL \dectext[40]~reg0_regout\ : std_logic;
SIGNAL \dectext[41]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[41]~reg0_regout\ : std_logic;
SIGNAL \inR[10]~24_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector26~5_combout\ : std_logic;
SIGNAL \r_next~29_combout\ : std_logic;
SIGNAL \dectext[42]~reg0_regout\ : std_logic;
SIGNAL \dectext[43]~reg0_regout\ : std_logic;
SIGNAL \inR[18]~25_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector17~5_combout\ : std_logic;
SIGNAL \r_next~30_combout\ : std_logic;
SIGNAL \dectext[44]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[44]~reg0_regout\ : std_logic;
SIGNAL \dectext[45]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[45]~reg0_regout\ : std_logic;
SIGNAL \f1|s1|WideOr41~0_combout\ : std_logic;
SIGNAL \f1|s1|WideOr45~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector11~2_combout\ : std_logic;
SIGNAL \f1|s1|WideOr34~0_combout\ : std_logic;
SIGNAL \f1|s1|Selector11~3_combout\ : std_logic;
SIGNAL \r_next~31_combout\ : std_logic;
SIGNAL \dectext[46]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[46]~reg0_regout\ : std_logic;
SIGNAL \inR[26]~26_combout\ : std_logic;
SIGNAL \dectext[47]~reg0_regout\ : std_logic;
SIGNAL \inR[1]~27_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~1_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~2_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~3_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~4_combout\ : std_logic;
SIGNAL \f1|s1|Selector3~5_combout\ : std_logic;
SIGNAL \r_next~32_combout\ : std_logic;
SIGNAL \dectext[48]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[48]~reg0_regout\ : std_logic;
SIGNAL \dectext[49]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[49]~reg0_regout\ : std_logic;
SIGNAL \dectext[50]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[50]~reg0_regout\ : std_logic;
SIGNAL \dectext[51]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[51]~reg0_regout\ : std_logic;
SIGNAL \dectext[52]~reg0_regout\ : std_logic;
SIGNAL \dectext[53]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[53]~reg0_regout\ : std_logic;
SIGNAL \inL[25]~7_combout\ : std_logic;
SIGNAL \subk_sel[6]~348_combout\ : std_logic;
SIGNAL \subk_sel[6]~349_combout\ : std_logic;
SIGNAL \subk_sel[6]~350_combout\ : std_logic;
SIGNAL \subk_sel[6]~351_combout\ : std_logic;
SIGNAL \subk_sel[6]~352_combout\ : std_logic;
SIGNAL \subk_sel[6]~353_combout\ : std_logic;
SIGNAL \subk_sel[6]~354_combout\ : std_logic;
SIGNAL \subk_sel[6]~355_combout\ : std_logic;
SIGNAL \subk_sel[6]~356_combout\ : std_logic;
SIGNAL \subk_sel[6]~357_combout\ : std_logic;
SIGNAL \r_next~36_combout\ : std_logic;
SIGNAL \r_next~35_combout\ : std_logic;
SIGNAL \r_next~38_combout\ : std_logic;
SIGNAL \r_next~37_combout\ : std_logic;
SIGNAL \r_next~39_combout\ : std_logic;
SIGNAL \dectext[54]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[54]~reg0_regout\ : std_logic;
SIGNAL \inR[25]~30_combout\ : std_logic;
SIGNAL \dectext[55]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[55]~reg0_regout\ : std_logic;
SIGNAL \dectext[56]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[56]~reg0_regout\ : std_logic;
SIGNAL \dectext[57]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[57]~reg0_regout\ : std_logic;
SIGNAL \dectext[58]~reg0_regout\ : std_logic;
SIGNAL \l_next[8]~feeder_combout\ : std_logic;
SIGNAL \dectext[59]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[59]~reg0_regout\ : std_logic;
SIGNAL \dectext[60]~reg0_regout\ : std_logic;
SIGNAL \dectext[61]~reg0_regout\ : std_logic;
SIGNAL \dectext[62]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[62]~reg0_regout\ : std_logic;
SIGNAL \dectext[63]~reg0feeder_combout\ : std_logic;
SIGNAL \dectext[63]~reg0_regout\ : std_logic;
SIGNAL \done~reg0_regout\ : std_logic;
SIGNAL \plaintext~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \f1|x\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL r_next : std_logic_vector(31 DOWNTO 0);
SIGNAL l_next : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_rst <= rst;
ww_start <= start;
ww_plaintext <= plaintext;
ww_key <= key;
dectext <= ww_dectext;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: LCCOMB_X15_Y23_N24
\f1|s1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~0_combout\ = (\f1|x\(23) & (\f1|x\(21) $ (\f1|x\(22) $ (!\f1|x\(18))))) # (!\f1|x\(23) & (!\f1|x\(22) & ((\f1|x\(21)) # (\f1|x\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(18),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector18~0_combout\);

-- Location: LCCOMB_X19_Y21_N12
\subk_sel[19]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~48_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & (\key~combout\(41))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(41),
	datac => \key~combout\(17),
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[19]~48_combout\);

-- Location: LCCOMB_X19_Y21_N22
\subk_sel[19]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~49_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[19]~48_combout\ & (\key~combout\(1))) # (!\subk_sel[19]~48_combout\ & ((\key~combout\(33)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[19]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(1),
	datac => \key~combout\(33),
	datad => \subk_sel[19]~48_combout\,
	combout => \subk_sel[19]~49_combout\);

-- Location: LCCOMB_X18_Y23_N2
\subk_sel[19]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~50_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[19]~49_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(36),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[19]~49_combout\,
	combout => \subk_sel[19]~50_combout\);

-- Location: LCCOMB_X18_Y23_N4
\subk_sel[19]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~51_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[19]~50_combout\ & ((\key~combout\(51)))) # (!\subk_sel[19]~50_combout\ & (\key~combout\(52))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[19]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(52),
	datac => \key~combout\(51),
	datad => \subk_sel[19]~50_combout\,
	combout => \subk_sel[19]~51_combout\);

-- Location: LCCOMB_X18_Y22_N30
\f1|x[46]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~47_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & ((!\key~combout\(47)))) # (!\subk_sel[6]~13_combout\ & (!\key~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(14),
	datac => \key~combout\(47),
	datad => \subk_sel[6]~13_combout\,
	combout => \f1|x[46]~47_combout\);

-- Location: LCCOMB_X19_Y21_N16
\f1|x[46]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~48_combout\ = \inR[31]~2_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[46]~47_combout\) # (!\subk_sel[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \inR[31]~2_combout\,
	datad => \f1|x[46]~47_combout\,
	combout => \f1|x[46]~48_combout\);

-- Location: LCCOMB_X21_Y22_N12
\f1|x[47]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~54_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (!\key~combout\(23))) # (!\subk_sel[6]~14_combout\ & ((!\key~combout\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(39),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \f1|x[47]~54_combout\);

-- Location: LCCOMB_X21_Y20_N20
\f1|x[47]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~55_combout\ = \inR[0]~3_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[47]~54_combout\) # (!\subk_sel[6]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \inR[0]~3_combout\,
	datad => \f1|x[47]~54_combout\,
	combout => \f1|x[47]~55_combout\);

-- Location: LCCOMB_X17_Y21_N30
\subk_sel[42]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[42]~88_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(28)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(15) & (\subk_sel[6]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(15),
	datab => \subk_sel[6]~17_combout\,
	datac => \subk_sel[6]~16_combout\,
	datad => \key~combout\(28),
	combout => \subk_sel[42]~88_combout\);

-- Location: LCCOMB_X17_Y21_N24
\subk_sel[42]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[42]~89_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[42]~88_combout\ & ((\key~combout\(31)))) # (!\subk_sel[42]~88_combout\ & (\key~combout\(39))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[42]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \subk_sel[6]~15_combout\,
	datac => \key~combout\(31),
	datad => \subk_sel[42]~88_combout\,
	combout => \subk_sel[42]~89_combout\);

-- Location: LCCOMB_X17_Y21_N16
\f1|x[42]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~63_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[42]~62_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[42]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[42]~89_combout\,
	datad => \f1|x[42]~62_combout\,
	combout => \f1|x[42]~63_combout\);

-- Location: LCCOMB_X18_Y21_N18
\f1|x[42]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~64_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[42]~63_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[42]~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[42]~144_combout\,
	datad => \f1|x[42]~63_combout\,
	combout => \f1|x[42]~64_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inL[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[6]~1_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(8))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (l_next(6))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(6),
	datab => \plaintext~combout\(8),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inL[6]~1_combout\);

-- Location: LCCOMB_X21_Y22_N16
\f1|x[40]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~67_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(5))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(37),
	datad => \subk_sel[6]~13_combout\,
	combout => \f1|x[40]~67_combout\);

-- Location: LCCOMB_X24_Y21_N20
\f1|x[40]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~68_combout\ = \inR[27]~4_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\subk_sel[6]~4_combout\) # (!\f1|x[40]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[40]~67_combout\,
	datab => \inR[27]~4_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[40]~68_combout\);

-- Location: LCCOMB_X24_Y21_N18
\f1|x[37]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~74_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (!\key~combout\(14))) # (!\subk_sel[6]~14_combout\ & ((!\key~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[37]~74_combout\);

-- Location: LCCOMB_X25_Y20_N12
\f1|x[37]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~75_combout\ = \inR[24]~8_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\subk_sel[6]~5_combout\) # (!\f1|x[37]~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inR[24]~8_combout\,
	datab => \f1|x[37]~74_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[37]~75_combout\);

-- Location: LCCOMB_X23_Y22_N2
\f1|x[36]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~80_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(20))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \key~combout\(23),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[36]~80_combout\);

-- Location: LCCOMB_X23_Y24_N24
\f1|x[36]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~81_combout\ = \inR[23]~6_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\subk_sel[6]~4_combout\) # (!\f1|x[36]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inR[23]~6_combout\,
	datab => \f1|x[36]~80_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[36]~81_combout\);

-- Location: LCCOMB_X18_Y24_N26
\f1|x[5]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~107_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (!\key~combout\(49))) # (!\subk_sel[6]~14_combout\ & ((!\key~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(49),
	datab => \key~combout\(2),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[5]~107_combout\);

-- Location: LCCOMB_X23_Y24_N20
\f1|x[5]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~108_combout\ = \inR[4]~13_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[5]~107_combout\) # (!\subk_sel[6]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inR[4]~13_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[5]~107_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[5]~108_combout\);

-- Location: LCCOMB_X20_Y25_N10
\inL[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[5]~3_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(16)))) # (!\state.R1~regout\ & (l_next(5))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(5),
	datab => \plaintext~combout\(16),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inL[5]~3_combout\);

-- Location: LCCOMB_X19_Y24_N26
\f1|x[13]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~120_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (!\key~combout\(43))) # (!\subk_sel[6]~14_combout\ & ((!\key~combout\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \key~combout\(59),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[13]~120_combout\);

-- Location: LCCOMB_X17_Y21_N6
\f1|x[13]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~121_combout\ = \inR[8]~15_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[13]~120_combout\) # (!\subk_sel[6]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \inR[8]~15_combout\,
	datad => \f1|x[13]~120_combout\,
	combout => \f1|x[13]~121_combout\);

-- Location: LCCOMB_X15_Y20_N10
\f1|s1|Selector23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~4_combout\ = (\f1|x\(17) & (\f1|x\(12) $ (((!\f1|x\(13)) # (!\f1|x\(14)))))) # (!\f1|x\(17) & ((\f1|x\(14) & ((!\f1|x\(13)) # (!\f1|x\(12)))) # (!\f1|x\(14) & ((\f1|x\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(12),
	datac => \f1|x\(14),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector23~4_combout\);

-- Location: LCCOMB_X24_Y24_N10
\inL[12]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[12]~5_combout\ = (\state.R1~regout\ & (\plaintext~combout\(26))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((l_next(12)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(26),
	datab => l_next(12),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inL[12]~5_combout\);

-- Location: LCCOMB_X18_Y26_N16
\f1|x[10]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~133_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & ((!\key~combout\(10)))) # (!\subk_sel[6]~13_combout\ & (!\key~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(42),
	datac => \key~combout\(10),
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[10]~133_combout\);

-- Location: LCCOMB_X18_Y26_N22
\f1|x[10]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~134_combout\ = \inR[7]~1_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\subk_sel[6]~4_combout\) # (!\f1|x[10]~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[10]~133_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \inR[7]~1_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[10]~134_combout\);

-- Location: LCCOMB_X18_Y25_N26
\f1|s1|WideOr98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr98~0_combout\ = \f1|x\(7) $ (((\f1|x\(10) & ((\f1|x\(8)) # (!\f1|x\(9)))) # (!\f1|x\(10) & ((\f1|x\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr98~0_combout\);

-- Location: LCCOMB_X16_Y20_N24
\f1|s1|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~1_combout\ = (\f1|x\(14) & ((\f1|x\(17) & ((\f1|x\(12)) # (!\f1|x\(16)))) # (!\f1|x\(17) & ((\f1|x\(16)) # (!\f1|x\(12)))))) # (!\f1|x\(14) & (\f1|x\(17) $ (\f1|x\(16) $ (\f1|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(16),
	datac => \f1|x\(14),
	datad => \f1|x\(12),
	combout => \f1|s1|Selector21~1_combout\);

-- Location: LCCOMB_X25_Y20_N24
\f1|s1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~0_combout\ = (\f1|x\(40) & (\f1|x\(37) $ ((!\f1|x\(38))))) # (!\f1|x\(40) & ((\f1|x\(37) & (!\f1|x\(38))) # (!\f1|x\(37) & ((\f1|x\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(37),
	datac => \f1|x\(38),
	datad => \f1|x\(41),
	combout => \f1|s1|Selector4~0_combout\);

-- Location: LCCOMB_X21_Y23_N26
\inL[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[26]~6_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(46)))) # (!\state.R1~regout\ & (l_next(26))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => l_next(26),
	datad => \plaintext~combout\(46),
	combout => \inL[26]~6_combout\);

-- Location: LCCOMB_X23_Y21_N6
\f1|s1|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~0_combout\ = (\f1|x\(44) & ((\f1|x\(47) & (\f1|x\(46) & !\f1|x\(42))) # (!\f1|x\(47) & (\f1|x\(46) $ (!\f1|x\(42)))))) # (!\f1|x\(44) & ((\f1|x\(47) & (\f1|x\(46) $ (!\f1|x\(42)))) # (!\f1|x\(47) & (!\f1|x\(46) & \f1|x\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(44),
	datab => \f1|x\(47),
	datac => \f1|x\(46),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y24_N6
\f1|s1|Selector30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~4_combout\ = \f1|x\(4) $ (((\f1|x\(5) & ((\f1|x\(0)))) # (!\f1|x\(5) & (\f1|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(5),
	datac => \f1|x\(1),
	datad => \f1|x\(0),
	combout => \f1|s1|Selector30~4_combout\);

-- Location: LCCOMB_X15_Y23_N12
\f1|s1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~0_combout\ = (\f1|x\(18) & ((\f1|x\(23) & (!\f1|x\(22) & \f1|x\(20))) # (!\f1|x\(23) & (\f1|x\(22) & !\f1|x\(20))))) # (!\f1|x\(18) & (\f1|x\(23) $ (\f1|x\(22) $ (\f1|x\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(23),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(20),
	combout => \f1|s1|Selector16~0_combout\);

-- Location: LCCOMB_X15_Y25_N6
\f1|x[18]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~140_combout\ = (\state.R1~regout\ & (!\key~combout\(60))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((!\key~combout\(33)))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \key~combout\(60),
	datac => \key~combout\(33),
	datad => \subk_sel[6]~3_combout\,
	combout => \f1|x[18]~140_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(11),
	combout => \plaintext~combout\(11));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(1),
	combout => \plaintext~combout\(1));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(31),
	combout => \plaintext~combout\(31));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(8),
	combout => \plaintext~combout\(8));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(63),
	combout => \plaintext~combout\(63));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(33),
	combout => \plaintext~combout\(33));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(25),
	combout => \plaintext~combout\(25));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(16),
	combout => \plaintext~combout\(16));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(20),
	combout => \plaintext~combout\(20));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(26),
	combout => \plaintext~combout\(26));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(28),
	combout => \plaintext~combout\(28));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(30),
	combout => \plaintext~combout\(30));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(36),
	combout => \plaintext~combout\(36));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(42),
	combout => \plaintext~combout\(42));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(46),
	combout => \plaintext~combout\(46));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(48),
	combout => \plaintext~combout\(48));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(50),
	combout => \plaintext~combout\(50));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(52),
	combout => \plaintext~combout\(52));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(56),
	combout => \plaintext~combout\(56));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X18_Y21_N3
\state.R2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R1~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R2~regout\);

-- Location: LCFF_X18_Y21_N15
\state.R3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R2~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R3~regout\);

-- Location: LCFF_X18_Y21_N31
\state.R4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R3~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R4~regout\);

-- Location: LCFF_X18_Y21_N5
\state.R5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R4~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R5~regout\);

-- Location: LCFF_X18_Y21_N27
\state.R6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R5~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R6~regout\);

-- Location: LCFF_X18_Y21_N17
\state.R7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R6~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R7~regout\);

-- Location: LCFF_X18_Y21_N19
\state.R8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R7~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R8~regout\);

-- Location: LCFF_X18_Y21_N1
\state.R9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R8~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R9~regout\);

-- Location: LCCOMB_X16_Y22_N30
\state.R10~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.R10~feeder_combout\ = \state.R9~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.R9~regout\,
	combout => \state.R10~feeder_combout\);

-- Location: LCFF_X16_Y22_N31
\state.R10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.R10~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R10~regout\);

-- Location: LCCOMB_X16_Y22_N24
\state.R11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.R11~feeder_combout\ = \state.R10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.R10~regout\,
	combout => \state.R11~feeder_combout\);

-- Location: LCFF_X16_Y22_N25
\state.R11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.R11~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R11~regout\);

-- Location: LCFF_X16_Y22_N15
\state.R12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R11~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R12~regout\);

-- Location: LCCOMB_X18_Y22_N14
\state.R13~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.R13~feeder_combout\ = \state.R12~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.R12~regout\,
	combout => \state.R13~feeder_combout\);

-- Location: LCFF_X18_Y22_N15
\state.R13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state.R13~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R13~regout\);

-- Location: LCFF_X18_Y22_N5
\state.R14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R13~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R14~regout\);

-- Location: LCFF_X18_Y22_N25
\state.R15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R14~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R15~regout\);

-- Location: LCFF_X18_Y22_N9
\state.R16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.R15~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R16~regout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X18_Y22_N18
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.R16~regout\) # ((\state.DONE~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.R16~regout\,
	datac => \state.DONE~regout\,
	datad => \start~combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X18_Y22_N19
\state.DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.DONE~regout\);

-- Location: LCCOMB_X16_Y21_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\start~combout\) # ((!\state.DONE~regout\ & \state.IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.DONE~regout\,
	datac => \state.IDLE~regout\,
	datad => \start~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X16_Y21_N17
\state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.IDLE~regout\);

-- Location: LCCOMB_X18_Y21_N6
\nstate.R1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \nstate.R1~0_combout\ = (\start~combout\ & !\state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \state.IDLE~regout\,
	combout => \nstate.R1~0_combout\);

-- Location: LCFF_X18_Y21_N7
\state.R1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \nstate.R1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.R1~regout\);

-- Location: LCCOMB_X21_Y23_N30
\inR[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[7]~1_combout\ = (\state.R1~regout\ & (\plaintext~combout\(1))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(7)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(1),
	datab => \state.R1~regout\,
	datac => r_next(7),
	datad => \state.IDLE~regout\,
	combout => \inR[7]~1_combout\);

-- Location: LCCOMB_X22_Y23_N20
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\state.IDLE~regout\ & !\state.DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.IDLE~regout\,
	datad => \state.DONE~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCFF_X22_Y23_N29
\l_next[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inR[7]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(7));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(0),
	combout => \plaintext~combout\(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(58),
	combout => \key~combout\(58));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(27),
	combout => \key~combout\(27));

-- Location: LCCOMB_X16_Y22_N14
\subk_sel[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~14_combout\ = (\state.R10~regout\) # ((!\state.R11~regout\ & \state.R12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R11~regout\,
	datac => \state.R12~regout\,
	datad => \state.R10~regout\,
	combout => \subk_sel[6]~14_combout\);

-- Location: LCCOMB_X15_Y25_N8
\f1|x[18]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~40_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(58))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(58),
	datac => \key~combout\(27),
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[18]~40_combout\);

-- Location: LCCOMB_X18_Y21_N20
\subk_sel[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~0_combout\ = (\state.R2~regout\) # ((\state.R8~regout\) # ((\state.R5~regout\) # (\state.R1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R2~regout\,
	datab => \state.R8~regout\,
	datac => \state.R5~regout\,
	datad => \state.R1~regout\,
	combout => \subk_sel[6]~0_combout\);

-- Location: LCCOMB_X18_Y21_N16
\subk_sel[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~2_combout\ = (!\state.R7~regout\ & !\state.R6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.R7~regout\,
	datad => \state.R6~regout\,
	combout => \subk_sel[6]~2_combout\);

-- Location: LCCOMB_X18_Y21_N28
\subk_sel[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~3_combout\ = ((\state.R9~regout\) # ((\subk_sel[6]~0_combout\) # (!\subk_sel[6]~2_combout\))) # (!\subk_sel[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \state.R9~regout\,
	datac => \subk_sel[6]~0_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[6]~3_combout\);

-- Location: LCCOMB_X18_Y21_N0
\subk_sel[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~5_combout\ = ((!\state.R1~regout\ & \state.R2~regout\)) # (!\subk_sel[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \state.R2~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \subk_sel[6]~5_combout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(35),
	combout => \plaintext~combout\(35));

-- Location: LCCOMB_X15_Y24_N18
\l_next[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[11]~feeder_combout\ = \inR[11]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[11]~0_combout\,
	combout => \l_next[11]~feeder_combout\);

-- Location: LCFF_X15_Y24_N19
\l_next[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[11]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(11));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(34),
	combout => \plaintext~combout\(34));

-- Location: LCCOMB_X16_Y22_N16
\subk_sel[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~13_combout\ = (\state.R11~regout\) # (\state.R10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R11~regout\,
	datad => \state.R10~regout\,
	combout => \subk_sel[6]~13_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(49),
	combout => \key~combout\(49));

-- Location: LCCOMB_X17_Y22_N2
\f1|x[4]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~87_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(17))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(49),
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[4]~87_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(32),
	combout => \plaintext~combout\(32));

-- Location: LCFF_X16_Y20_N17
\l_next[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[3]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(3));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(33),
	combout => \key~combout\(33));

-- Location: LCCOMB_X18_Y24_N8
\f1|x[16]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~126_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(1))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \key~combout\(33),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[16]~126_combout\);

-- Location: LCCOMB_X17_Y24_N30
\f1|x[16]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~127_combout\ = \inR[11]~0_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[16]~126_combout\) # (!\subk_sel[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[16]~126_combout\,
	datad => \inR[11]~0_combout\,
	combout => \f1|x[16]~127_combout\);

-- Location: LCCOMB_X18_Y21_N12
\subk_sel[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~1_combout\ = (!\state.R3~regout\ & !\state.R4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.R3~regout\,
	datad => \state.R4~regout\,
	combout => \subk_sel[6]~1_combout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(59),
	combout => \key~combout\(59));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(43),
	combout => \key~combout\(43));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(44),
	combout => \key~combout\(44));

-- Location: LCCOMB_X18_Y21_N2
\subk_sel[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~7_combout\ = (\state.R6~regout\) # ((!\state.R7~regout\ & \state.R8~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R7~regout\,
	datab => \state.R6~regout\,
	datad => \state.R8~regout\,
	combout => \subk_sel[6]~7_combout\);

-- Location: LCCOMB_X17_Y24_N6
\subk_sel[16]~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[16]~300_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(44)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(52))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(52),
	datab => \key~combout\(44),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[16]~300_combout\);

-- Location: LCCOMB_X17_Y24_N0
\subk_sel[16]~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[16]~301_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[16]~300_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[16]~300_combout\ & ((\key~combout\(43)))) # (!\subk_sel[16]~300_combout\ & (\key~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(59),
	datac => \key~combout\(43),
	datad => \subk_sel[16]~300_combout\,
	combout => \subk_sel[16]~301_combout\);

-- Location: LCCOMB_X17_Y24_N14
\subk_sel[16]~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[16]~302_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(27)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[16]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(27),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[16]~301_combout\,
	combout => \subk_sel[16]~302_combout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(34),
	combout => \key~combout\(34));

-- Location: LCCOMB_X17_Y24_N18
\f1|x[16]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~158_combout\ = (\state.R1~regout\ & (((!\key~combout\(34))))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & (!\key~combout\(11))) # (!\subk_sel[6]~3_combout\ & ((!\key~combout\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(11),
	datab => \key~combout\(34),
	datac => \state.R1~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \f1|x[16]~158_combout\);

-- Location: LCCOMB_X17_Y24_N4
\f1|x[16]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~131_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[16]~302_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[16]~302_combout\ & (!\key~combout\(58))) # (!\subk_sel[16]~302_combout\ & ((\f1|x[16]~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(58),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[16]~302_combout\,
	datad => \f1|x[16]~158_combout\,
	combout => \f1|x[16]~131_combout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(42),
	combout => \key~combout\(42));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(17),
	combout => \key~combout\(17));

-- Location: LCCOMB_X18_Y21_N4
\subk_sel[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~4_combout\ = (\state.R1~regout\) # (!\subk_sel[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \subk_sel[6]~4_combout\);

-- Location: LCCOMB_X17_Y24_N28
\f1|x[16]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~128_combout\ = (\subk_sel[6]~4_combout\ & (!\subk_sel[6]~14_combout\ & ((!\key~combout\(17))))) # (!\subk_sel[6]~4_combout\ & (((!\key~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(42),
	datac => \key~combout\(17),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[16]~128_combout\);

-- Location: LCCOMB_X17_Y24_N26
\f1|x[16]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~132_combout\ = (\subk_sel[6]~5_combout\ & ((!\f1|x[16]~128_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[16]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[16]~131_combout\,
	datad => \f1|x[16]~128_combout\,
	combout => \f1|x[16]~132_combout\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(18),
	combout => \key~combout\(18));

-- Location: LCCOMB_X18_Y22_N6
\subk_sel[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~15_combout\ = (!\state.R13~regout\ & (!\state.R14~regout\ & ((\state.R15~regout\) # (\state.R16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R15~regout\,
	datab => \state.R16~regout\,
	datac => \state.R13~regout\,
	datad => \state.R14~regout\,
	combout => \subk_sel[6]~15_combout\);

-- Location: LCCOMB_X18_Y22_N26
\subk_sel[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~17_combout\ = (\state.R13~regout\) # ((\state.R15~regout\ & !\state.R14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R15~regout\,
	datab => \state.R13~regout\,
	datad => \state.R14~regout\,
	combout => \subk_sel[6]~17_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(2),
	combout => \key~combout\(2));

-- Location: LCCOMB_X18_Y22_N0
\subk_sel[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~16_combout\ = (\state.R14~regout\) # (\state.R13~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.R14~regout\,
	datad => \state.R13~regout\,
	combout => \subk_sel[6]~16_combout\);

-- Location: LCCOMB_X18_Y22_N28
\subk_sel[16]~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[16]~298_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(49)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(2) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(49),
	datab => \subk_sel[6]~17_combout\,
	datac => \key~combout\(2),
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[16]~298_combout\);

-- Location: LCCOMB_X18_Y22_N2
\subk_sel[16]~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[16]~299_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[16]~298_combout\ & ((\key~combout\(18)))) # (!\subk_sel[16]~298_combout\ & (\key~combout\(26))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[16]~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(26),
	datab => \key~combout\(18),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[16]~298_combout\,
	combout => \subk_sel[16]~299_combout\);

-- Location: LCCOMB_X17_Y24_N22
\f1|x[16]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~129_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[16]~128_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[16]~299_combout\) # ((\subk_sel[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[16]~299_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \f1|x[16]~128_combout\,
	combout => \f1|x[16]~129_combout\);

-- Location: LCCOMB_X17_Y24_N20
\f1|x[16]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[16]~130_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[16]~129_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[16]~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[16]~158_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[16]~129_combout\,
	combout => \f1|x[16]~130_combout\);

-- Location: LCCOMB_X16_Y24_N26
\f1|x[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(16) = \f1|x[16]~127_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[16]~130_combout\))) # (!\subk_sel[6]~4_combout\ & (!\f1|x[16]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[16]~127_combout\,
	datac => \f1|x[16]~132_combout\,
	datad => \f1|x[16]~130_combout\,
	combout => \f1|x\(16));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(51),
	combout => \plaintext~combout\(51));

-- Location: LCCOMB_X23_Y22_N18
\inR[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[9]~28_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(51))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (r_next(9))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(9),
	datab => \plaintext~combout\(51),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inR[9]~28_combout\);

-- Location: LCFF_X23_Y22_N19
\l_next[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[9]~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(9));

-- Location: LCCOMB_X18_Y21_N30
\comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~17_combout\ = (\state.R1~regout\) # (!\state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \state.IDLE~regout\,
	combout => \comb~17_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(21),
	combout => \key~combout\(21));

-- Location: LCCOMB_X23_Y20_N18
\f1|x[46]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~49_combout\ = (\subk_sel[6]~4_combout\ & (!\key~combout\(63) & ((!\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\key~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[46]~49_combout\);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(53),
	combout => \key~combout\(53));

-- Location: LCCOMB_X22_Y20_N4
\f1|x[46]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~141_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & (!\key~combout\(13))) # (!\state.R1~regout\ & ((!\key~combout\(53)))))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \key~combout\(53),
	datac => \subk_sel[6]~3_combout\,
	datad => \state.R1~regout\,
	combout => \f1|x[46]~141_combout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(4),
	combout => \key~combout\(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(20),
	combout => \key~combout\(20));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(31),
	combout => \key~combout\(31));

-- Location: LCCOMB_X18_Y20_N24
\subk_sel[46]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[46]~70_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(23))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(31)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(31),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[46]~70_combout\);

-- Location: LCCOMB_X18_Y20_N18
\subk_sel[46]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[46]~71_combout\ = (\subk_sel[46]~70_combout\ & (((\key~combout\(20)) # (\subk_sel[6]~2_combout\)))) # (!\subk_sel[46]~70_combout\ & (\key~combout\(7) & ((!\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(20),
	datac => \subk_sel[46]~70_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[46]~71_combout\);

-- Location: LCCOMB_X22_Y20_N0
\subk_sel[46]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[46]~72_combout\ = (\subk_sel[6]~6_combout\ & (((\key~combout\(4))) # (!\subk_sel[6]~1_combout\))) # (!\subk_sel[6]~6_combout\ & (\subk_sel[6]~1_combout\ & ((\subk_sel[46]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(4),
	datad => \subk_sel[46]~71_combout\,
	combout => \subk_sel[46]~72_combout\);

-- Location: LCCOMB_X22_Y20_N10
\f1|x[46]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~52_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[46]~72_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[46]~72_combout\ & (!\key~combout\(37))) # (!\subk_sel[46]~72_combout\ & ((\f1|x[46]~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \subk_sel[6]~1_combout\,
	datac => \f1|x[46]~141_combout\,
	datad => \subk_sel[46]~72_combout\,
	combout => \f1|x[46]~52_combout\);

-- Location: LCCOMB_X23_Y20_N24
\f1|x[46]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~53_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[46]~49_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[46]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[46]~49_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[46]~52_combout\,
	combout => \f1|x[46]~53_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(62),
	combout => \key~combout\(62));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(46),
	combout => \key~combout\(46));

-- Location: LCCOMB_X22_Y22_N28
\subk_sel[46]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[46]~68_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(30))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(46)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(30),
	datab => \subk_sel[6]~16_combout\,
	datac => \key~combout\(46),
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[46]~68_combout\);

-- Location: LCCOMB_X22_Y22_N18
\subk_sel[46]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[46]~69_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[46]~68_combout\ & ((\key~combout\(62)))) # (!\subk_sel[46]~68_combout\ & (\key~combout\(5))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[46]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \key~combout\(62),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[46]~68_combout\,
	combout => \subk_sel[46]~69_combout\);

-- Location: LCCOMB_X23_Y20_N16
\f1|x[46]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~50_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[46]~49_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[46]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[46]~69_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \f1|x[46]~49_combout\,
	combout => \f1|x[46]~50_combout\);

-- Location: LCCOMB_X23_Y20_N30
\f1|x[46]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[46]~51_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[46]~50_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[46]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[46]~141_combout\,
	datac => \f1|x[46]~50_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[46]~51_combout\);

-- Location: LCCOMB_X23_Y20_N22
\f1|x[46]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(46) = \f1|x[46]~48_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[46]~51_combout\))) # (!\subk_sel[6]~4_combout\ & (!\f1|x[46]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[46]~48_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \f1|x[46]~53_combout\,
	datad => \f1|x[46]~51_combout\,
	combout => \f1|x\(46));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(45),
	combout => \key~combout\(45));

-- Location: LCCOMB_X17_Y22_N18
\f1|x[42]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~60_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & ((!\key~combout\(45)))) # (!\subk_sel[6]~13_combout\ & (!\key~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(45),
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[42]~60_combout\);

-- Location: LCCOMB_X17_Y22_N8
\f1|x[42]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~61_combout\ = \inR[27]~4_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\subk_sel[6]~4_combout\) # (!\f1|x[42]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inR[27]~4_combout\,
	datab => \f1|x[42]~60_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[42]~61_combout\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(61),
	combout => \key~combout\(61));

-- Location: LCCOMB_X17_Y21_N22
\f1|x[42]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~62_combout\ = (\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~14_combout\ & !\key~combout\(61))))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(55),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(61),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[42]~62_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(47),
	combout => \key~combout\(47));

-- Location: LCCOMB_X19_Y21_N30
\f1|x[42]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~144_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((!\key~combout\(47)))) # (!\state.R1~regout\ & (!\key~combout\(22))))) # (!\subk_sel[6]~3_combout\ & (((!\key~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \subk_sel[6]~3_combout\,
	datac => \state.R1~regout\,
	datad => \key~combout\(47),
	combout => \f1|x[42]~144_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(6),
	combout => \key~combout\(6));

-- Location: LCCOMB_X18_Y21_N14
\subk_sel[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~6_combout\ = (\state.R3~regout\) # ((\state.R5~regout\ & !\state.R4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.R5~regout\,
	datac => \state.R3~regout\,
	datad => \state.R4~regout\,
	combout => \subk_sel[6]~6_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(5),
	combout => \key~combout\(5));

-- Location: LCCOMB_X19_Y21_N26
\subk_sel[42]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[42]~90_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(21)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(29))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(21),
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[42]~90_combout\);

-- Location: LCCOMB_X19_Y21_N20
\subk_sel[42]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[42]~91_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[42]~90_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[42]~90_combout\ & (\key~combout\(54))) # (!\subk_sel[42]~90_combout\ & ((\key~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(5),
	datad => \subk_sel[42]~90_combout\,
	combout => \subk_sel[42]~91_combout\);

-- Location: LCCOMB_X18_Y21_N10
\subk_sel[42]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[42]~92_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(38))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[42]~91_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[42]~91_combout\,
	combout => \subk_sel[42]~92_combout\);

-- Location: LCCOMB_X18_Y21_N8
\f1|x[42]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~65_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[42]~92_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[42]~92_combout\ & ((!\key~combout\(6)))) # (!\subk_sel[42]~92_combout\ & (\f1|x[42]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \f1|x[42]~144_combout\,
	datac => \key~combout\(6),
	datad => \subk_sel[42]~92_combout\,
	combout => \f1|x[42]~65_combout\);

-- Location: LCCOMB_X18_Y21_N26
\f1|x[42]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[42]~66_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[42]~62_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[42]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[42]~62_combout\,
	datad => \f1|x[42]~65_combout\,
	combout => \f1|x[42]~66_combout\);

-- Location: LCCOMB_X18_Y21_N24
\f1|x[42]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(42) = \f1|x[42]~61_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[42]~64_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[42]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[42]~64_combout\,
	datab => \f1|x[42]~61_combout\,
	datac => \f1|x[42]~66_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x\(42));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(55),
	combout => \key~combout\(55));

-- Location: LCCOMB_X21_Y20_N24
\f1|x[47]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~57_combout\ = (\subk_sel[6]~5_combout\ & (((!\key~combout\(55) & !\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~5_combout\ & (!\key~combout\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[47]~57_combout\);

-- Location: LCCOMB_X21_Y20_N18
\f1|x[47]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~56_combout\ = (\subk_sel[6]~5_combout\ & ((!\key~combout\(62)))) # (!\subk_sel[6]~5_combout\ & (!\key~combout\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(45),
	datac => \key~combout\(62),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[47]~56_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(29),
	combout => \key~combout\(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(28),
	combout => \key~combout\(28));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(12),
	combout => \key~combout\(12));

-- Location: LCCOMB_X19_Y20_N4
\subk_sel[47]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[47]~75_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(7) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(12)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(12),
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[47]~75_combout\);

-- Location: LCCOMB_X19_Y20_N14
\subk_sel[47]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[47]~76_combout\ = (\subk_sel[47]~75_combout\ & ((\key~combout\(61)) # ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[47]~75_combout\ & (((\key~combout\(28) & \subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(61),
	datab => \key~combout\(28),
	datac => \subk_sel[47]~75_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[47]~76_combout\);

-- Location: LCCOMB_X20_Y20_N8
\subk_sel[47]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[47]~77_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[47]~76_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(29)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(29),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[47]~76_combout\,
	combout => \subk_sel[47]~77_combout\);

-- Location: LCCOMB_X21_Y20_N12
\f1|x[47]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~59_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[47]~77_combout\ & (!\key~combout\(13))) # (!\subk_sel[47]~77_combout\ & ((\f1|x[47]~56_combout\))))) # (!\subk_sel[6]~6_combout\ & (((!\subk_sel[47]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \f1|x[47]~56_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[47]~77_combout\,
	combout => \f1|x[47]~59_combout\);

-- Location: LCCOMB_X21_Y20_N8
\f1|x[47]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~143_combout\ = (\state.R1~regout\ & (((!\f1|x[47]~57_combout\)))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((\f1|x[47]~59_combout\))) # (!\subk_sel[6]~3_combout\ & (!\f1|x[47]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \subk_sel[6]~3_combout\,
	datac => \f1|x[47]~57_combout\,
	datad => \f1|x[47]~59_combout\,
	combout => \f1|x[47]~143_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(22),
	combout => \key~combout\(22));

-- Location: LCCOMB_X22_Y20_N24
\subk_sel[47]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[47]~73_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(6))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(22)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(22),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[47]~73_combout\);

-- Location: LCCOMB_X22_Y20_N30
\subk_sel[47]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[47]~74_combout\ = (\subk_sel[47]~73_combout\ & ((\key~combout\(38)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[47]~73_combout\ & (((\key~combout\(46) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \key~combout\(46),
	datac => \subk_sel[47]~73_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[47]~74_combout\);

-- Location: LCCOMB_X21_Y20_N14
\f1|x[47]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~58_combout\ = (\subk_sel[6]~14_combout\ & (((!\f1|x[47]~57_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\subk_sel[47]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \f1|x[47]~57_combout\,
	datad => \subk_sel[47]~74_combout\,
	combout => \f1|x[47]~58_combout\);

-- Location: LCCOMB_X21_Y20_N30
\f1|x[47]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[47]~142_combout\ = (\state.R1~regout\ & (((\f1|x[47]~58_combout\)))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((\f1|x[47]~56_combout\))) # (!\subk_sel[6]~3_combout\ & (\f1|x[47]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \subk_sel[6]~3_combout\,
	datac => \f1|x[47]~58_combout\,
	datad => \f1|x[47]~56_combout\,
	combout => \f1|x[47]~142_combout\);

-- Location: LCCOMB_X21_Y20_N2
\f1|x[47]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(47) = \f1|x[47]~55_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[47]~142_combout\))) # (!\subk_sel[6]~5_combout\ & (!\f1|x[47]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[47]~55_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[47]~143_combout\,
	datad => \f1|x[47]~142_combout\,
	combout => \f1|x\(47));

-- Location: LCCOMB_X23_Y21_N2
\f1|s1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~0_combout\ = (\f1|x\(46) & (\f1|x\(45) $ (((\f1|x\(42)) # (!\f1|x\(47)))))) # (!\f1|x\(46) & ((\f1|x\(42) & ((!\f1|x\(47)))) # (!\f1|x\(42) & (\f1|x\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(45),
	datab => \f1|x\(46),
	datac => \f1|x\(42),
	datad => \f1|x\(47),
	combout => \f1|s1|Selector2~0_combout\);

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(15),
	combout => \plaintext~combout\(15));

-- Location: LCCOMB_X14_Y24_N6
\inR[30]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[30]~11_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(15))) # (!\state.R1~regout\ & ((r_next(30)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(15),
	datad => r_next(30),
	combout => \inR[30]~11_combout\);

-- Location: LCFF_X14_Y24_N7
\l_next[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[30]~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(30));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(14),
	combout => \plaintext~combout\(14));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(7),
	combout => \key~combout\(7));

-- Location: LCCOMB_X18_Y20_N6
\f1|x[37]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~76_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(53))) # (!\subk_sel[6]~5_combout\ & ((!\key~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(53),
	datac => \key~combout\(7),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[37]~76_combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(37),
	combout => \key~combout\(37));

-- Location: LCCOMB_X17_Y22_N10
\subk_sel[37]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[37]~198_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(62)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(13))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \subk_sel[6]~16_combout\,
	datac => \subk_sel[6]~17_combout\,
	datad => \key~combout\(62),
	combout => \subk_sel[37]~198_combout\);

-- Location: LCCOMB_X17_Y22_N24
\subk_sel[37]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[37]~199_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[37]~198_combout\ & (\key~combout\(29))) # (!\subk_sel[37]~198_combout\ & ((\key~combout\(37)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[37]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \key~combout\(37),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[37]~198_combout\,
	combout => \subk_sel[37]~199_combout\);

-- Location: LCCOMB_X17_Y22_N26
\f1|x[37]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~77_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(46) & (!\subk_sel[6]~13_combout\))) # (!\subk_sel[6]~5_combout\ & (((!\key~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(45),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[37]~77_combout\);

-- Location: LCCOMB_X17_Y22_N20
\f1|x[37]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~78_combout\ = (\subk_sel[6]~14_combout\ & (((!\f1|x[37]~77_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\subk_sel[37]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[37]~199_combout\,
	datad => \f1|x[37]~77_combout\,
	combout => \f1|x[37]~78_combout\);

-- Location: LCCOMB_X25_Y20_N8
\f1|x[37]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~146_combout\ = (\state.R1~regout\ & (((\f1|x[37]~78_combout\)))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & (\f1|x[37]~76_combout\)) # (!\subk_sel[6]~3_combout\ & ((\f1|x[37]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \subk_sel[6]~3_combout\,
	datac => \f1|x[37]~76_combout\,
	datad => \f1|x[37]~78_combout\,
	combout => \f1|x[37]~146_combout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(63),
	combout => \key~combout\(63));

-- Location: LCCOMB_X18_Y20_N20
\subk_sel[37]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[37]~200_combout\ = (\subk_sel[6]~2_combout\ & (((\key~combout\(63) & !\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(39)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \key~combout\(63),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[37]~200_combout\);

-- Location: LCCOMB_X18_Y20_N10
\subk_sel[37]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[37]~201_combout\ = (\subk_sel[37]~200_combout\ & ((\key~combout\(23)) # ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[37]~200_combout\ & (((\key~combout\(55) & \subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(55),
	datac => \subk_sel[37]~200_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[37]~201_combout\);

-- Location: LCCOMB_X18_Y20_N4
\subk_sel[37]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[37]~202_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[37]~201_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[37]~201_combout\,
	combout => \subk_sel[37]~202_combout\);

-- Location: LCCOMB_X18_Y20_N14
\f1|x[37]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~79_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[37]~202_combout\ & (!\key~combout\(4))) # (!\subk_sel[37]~202_combout\ & ((\f1|x[37]~76_combout\))))) # (!\subk_sel[6]~6_combout\ & (((!\subk_sel[37]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[37]~202_combout\,
	datad => \f1|x[37]~76_combout\,
	combout => \f1|x[37]~79_combout\);

-- Location: LCCOMB_X25_Y20_N6
\f1|x[37]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[37]~147_combout\ = (\state.R1~regout\ & (((!\f1|x[37]~77_combout\)))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & (\f1|x[37]~79_combout\)) # (!\subk_sel[6]~3_combout\ & ((!\f1|x[37]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \subk_sel[6]~3_combout\,
	datac => \f1|x[37]~79_combout\,
	datad => \f1|x[37]~77_combout\,
	combout => \f1|x[37]~147_combout\);

-- Location: LCCOMB_X25_Y20_N30
\f1|x[37]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(37) = \f1|x[37]~75_combout\ $ (((\subk_sel[6]~5_combout\ & (!\f1|x[37]~146_combout\)) # (!\subk_sel[6]~5_combout\ & ((!\f1|x[37]~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[37]~75_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[37]~146_combout\,
	datad => \f1|x[37]~147_combout\,
	combout => \f1|x\(37));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(47),
	combout => \plaintext~combout\(47));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(54),
	combout => \key~combout\(54));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(30),
	combout => \key~combout\(30));

-- Location: LCCOMB_X18_Y22_N20
\subk_sel[39]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~183_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(14)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(30) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \subk_sel[6]~17_combout\,
	datac => \key~combout\(30),
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[39]~183_combout\);

-- Location: LCCOMB_X22_Y22_N6
\subk_sel[39]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~184_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[39]~183_combout\ & (\key~combout\(46))) # (!\subk_sel[39]~183_combout\ & ((\key~combout\(54)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[39]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \key~combout\(54),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[39]~183_combout\,
	combout => \subk_sel[39]~184_combout\);

-- Location: LCCOMB_X23_Y20_N6
\subk_sel[39]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~185_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(47))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[39]~184_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(47),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[39]~184_combout\,
	combout => \subk_sel[39]~185_combout\);

-- Location: LCCOMB_X23_Y20_N8
\subk_sel[39]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~186_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[39]~185_combout\ & ((\key~combout\(31)))) # (!\subk_sel[39]~185_combout\ & (\key~combout\(63))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[39]~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \key~combout\(31),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[39]~185_combout\,
	combout => \subk_sel[39]~186_combout\);

-- Location: LCCOMB_X22_Y20_N14
\subk_sel[39]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~178_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(15) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(20)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(15),
	datab => \key~combout\(20),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[39]~178_combout\);

-- Location: LCCOMB_X22_Y20_N28
\subk_sel[39]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~179_combout\ = (\subk_sel[39]~178_combout\ & (((\key~combout\(4)) # (!\subk_sel[6]~7_combout\)))) # (!\subk_sel[39]~178_combout\ & (\key~combout\(7) & ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(4),
	datac => \subk_sel[39]~178_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[39]~179_combout\);

-- Location: LCCOMB_X22_Y20_N6
\subk_sel[39]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~180_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[39]~179_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(37)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[39]~179_combout\,
	combout => \subk_sel[39]~180_combout\);

-- Location: LCCOMB_X22_Y20_N8
\subk_sel[39]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~181_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[39]~180_combout\ & ((\key~combout\(21)))) # (!\subk_sel[39]~180_combout\ & (\key~combout\(53))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[39]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[39]~180_combout\,
	combout => \subk_sel[39]~181_combout\);

-- Location: LCCOMB_X23_Y20_N28
\subk_sel[39]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~182_combout\ = (\subk_sel[6]~5_combout\ & (\subk_sel[6]~4_combout\)) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(62))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[39]~181_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \key~combout\(62),
	datad => \subk_sel[39]~181_combout\,
	combout => \subk_sel[39]~182_combout\);

-- Location: LCCOMB_X23_Y20_N26
\subk_sel[39]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[39]~187_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[39]~182_combout\ & ((\subk_sel[39]~186_combout\))) # (!\subk_sel[39]~182_combout\ & (\key~combout\(5))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[39]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(5),
	datac => \subk_sel[39]~186_combout\,
	datad => \subk_sel[39]~182_combout\,
	combout => \subk_sel[39]~187_combout\);

-- Location: LCCOMB_X23_Y20_N4
\f1|x[39]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(39) = \subk_sel[39]~187_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(47)))) # (!\comb~17_combout\ & (r_next(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(26),
	datab => \plaintext~combout\(47),
	datac => \comb~17_combout\,
	datad => \subk_sel[39]~187_combout\,
	combout => \f1|x\(39));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(39),
	combout => \key~combout\(39));

-- Location: LCCOMB_X22_Y22_N0
\subk_sel[36]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[36]~203_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(39)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(55))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(55),
	datab => \key~combout\(39),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[36]~203_combout\);

-- Location: LCCOMB_X22_Y22_N2
\subk_sel[36]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[36]~204_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[36]~203_combout\ & ((\key~combout\(6)))) # (!\subk_sel[36]~203_combout\ & (\key~combout\(14))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[36]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(6),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[36]~203_combout\,
	combout => \subk_sel[36]~204_combout\);

-- Location: LCCOMB_X23_Y24_N22
\f1|x[36]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~82_combout\ = (\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~14_combout\ & !\key~combout\(7))))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(30),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(7),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[36]~82_combout\);

-- Location: LCCOMB_X23_Y24_N0
\f1|x[36]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~83_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[36]~82_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[36]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[36]~204_combout\,
	datad => \f1|x[36]~82_combout\,
	combout => \f1|x[36]~83_combout\);

-- Location: LCCOMB_X23_Y24_N14
\f1|x[36]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~84_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[36]~83_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[36]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[36]~148_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[36]~83_combout\,
	combout => \f1|x[36]~84_combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(13),
	combout => \key~combout\(13));

-- Location: LCCOMB_X23_Y24_N8
\subk_sel[36]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[36]~205_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(61)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(4) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(61),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[36]~205_combout\);

-- Location: LCCOMB_X23_Y24_N18
\subk_sel[36]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[36]~206_combout\ = (\subk_sel[36]~205_combout\ & (((\key~combout\(29)) # (\subk_sel[6]~2_combout\)))) # (!\subk_sel[36]~205_combout\ & (\key~combout\(45) & ((!\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(45),
	datab => \key~combout\(29),
	datac => \subk_sel[36]~205_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[36]~206_combout\);

-- Location: LCCOMB_X23_Y24_N4
\subk_sel[36]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[36]~207_combout\ = (\subk_sel[6]~6_combout\ & (((\key~combout\(13))) # (!\subk_sel[6]~1_combout\))) # (!\subk_sel[6]~6_combout\ & (\subk_sel[6]~1_combout\ & ((\subk_sel[36]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(13),
	datad => \subk_sel[36]~206_combout\,
	combout => \subk_sel[36]~207_combout\);

-- Location: LCCOMB_X19_Y21_N0
\f1|x[36]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~148_combout\ = (\state.R1~regout\ & (((!\key~combout\(22))))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & (!\key~combout\(62))) # (!\subk_sel[6]~3_combout\ & ((!\key~combout\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \key~combout\(22),
	datac => \state.R1~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \f1|x[36]~148_combout\);

-- Location: LCCOMB_X23_Y24_N6
\f1|x[36]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~85_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[36]~207_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[36]~207_combout\ & (!\key~combout\(46))) # (!\subk_sel[36]~207_combout\ & ((\f1|x[36]~148_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(46),
	datac => \subk_sel[36]~207_combout\,
	datad => \f1|x[36]~148_combout\,
	combout => \f1|x[36]~85_combout\);

-- Location: LCCOMB_X23_Y24_N28
\f1|x[36]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[36]~86_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[36]~82_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[36]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[36]~82_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[36]~85_combout\,
	combout => \f1|x[36]~86_combout\);

-- Location: LCCOMB_X23_Y24_N10
\f1|x[36]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(36) = \f1|x[36]~81_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[36]~84_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[36]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[36]~81_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \f1|x[36]~84_combout\,
	datad => \f1|x[36]~86_combout\,
	combout => \f1|x\(36));

-- Location: LCCOMB_X24_Y20_N0
\f1|s1|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~0_combout\ = (\f1|x\(41) & (\f1|x\(39) $ (((!\f1|x\(36)) # (!\f1|x\(37)))))) # (!\f1|x\(41) & (\f1|x\(37) $ (((\f1|x\(39) & !\f1|x\(36))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(41),
	datab => \f1|x\(37),
	datac => \f1|x\(39),
	datad => \f1|x\(36),
	combout => \f1|s1|Selector6~0_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inR[28]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[28]~21_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(31))) # (!\state.R1~regout\ & ((r_next(28)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(31),
	datab => r_next(28),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inR[28]~21_combout\);

-- Location: LCFF_X25_Y21_N11
\l_next[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[28]~21_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(28));

-- Location: LCCOMB_X15_Y22_N8
\r_next~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~44_combout\ = (\state.R1~regout\ & (\plaintext~combout\(30))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((l_next(28)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(30),
	datab => \state.R1~regout\,
	datac => \state.IDLE~regout\,
	datad => l_next(28),
	combout => \r_next~44_combout\);

-- Location: LCCOMB_X16_Y24_N16
\f1|x[13]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~122_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(49))) # (!\subk_sel[6]~5_combout\ & ((!\key~combout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key~combout\(49),
	datac => \key~combout\(34),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[13]~122_combout\);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(60),
	combout => \key~combout\(60));

-- Location: LCCOMB_X16_Y22_N12
\subk_sel[13]~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[13]~283_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(60)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(9))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[13]~283_combout\);

-- Location: LCCOMB_X16_Y22_N8
\subk_sel[13]~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[13]~284_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[13]~283_combout\ & (\key~combout\(25))) # (!\subk_sel[13]~283_combout\ & ((\key~combout\(33)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[13]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \key~combout\(33),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[13]~283_combout\,
	combout => \subk_sel[13]~284_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(41),
	combout => \key~combout\(41));

-- Location: LCCOMB_X16_Y22_N10
\f1|x[13]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~123_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(44) & ((!\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\key~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \key~combout\(41),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[13]~123_combout\);

-- Location: LCCOMB_X16_Y22_N28
\f1|x[13]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~124_combout\ = (\subk_sel[6]~14_combout\ & (((!\f1|x[13]~123_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\subk_sel[13]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[13]~284_combout\,
	datad => \f1|x[13]~123_combout\,
	combout => \f1|x[13]~124_combout\);

-- Location: LCCOMB_X16_Y24_N24
\f1|x[13]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~156_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((\f1|x[13]~124_combout\))) # (!\state.R1~regout\ & (\f1|x[13]~122_combout\)))) # (!\subk_sel[6]~3_combout\ & (((\f1|x[13]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~3_combout\,
	datab => \state.R1~regout\,
	datac => \f1|x[13]~122_combout\,
	datad => \f1|x[13]~124_combout\,
	combout => \f1|x[13]~156_combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(19),
	combout => \key~combout\(19));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(3),
	combout => \key~combout\(3));

-- Location: LCCOMB_X17_Y23_N10
\subk_sel[13]~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[13]~285_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(27) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(3)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \key~combout\(3),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[13]~285_combout\);

-- Location: LCCOMB_X17_Y23_N28
\subk_sel[13]~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[13]~286_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[13]~285_combout\ & (\key~combout\(50))) # (!\subk_sel[13]~285_combout\ & ((\key~combout\(19)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[13]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(19),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[13]~285_combout\,
	combout => \subk_sel[13]~286_combout\);

-- Location: LCCOMB_X17_Y23_N6
\subk_sel[13]~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[13]~287_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[13]~286_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(18)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[13]~286_combout\,
	combout => \subk_sel[13]~287_combout\);

-- Location: LCCOMB_X16_Y24_N2
\f1|x[13]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~125_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[13]~287_combout\ & (!\key~combout\(2))) # (!\subk_sel[13]~287_combout\ & ((\f1|x[13]~122_combout\))))) # (!\subk_sel[6]~6_combout\ & (((!\subk_sel[13]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(2),
	datac => \f1|x[13]~122_combout\,
	datad => \subk_sel[13]~287_combout\,
	combout => \f1|x[13]~125_combout\);

-- Location: LCCOMB_X16_Y24_N18
\f1|x[13]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[13]~157_combout\ = (\state.R1~regout\ & (!\f1|x[13]~123_combout\)) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((\f1|x[13]~125_combout\))) # (!\subk_sel[6]~3_combout\ & (!\f1|x[13]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[13]~123_combout\,
	datab => \state.R1~regout\,
	datac => \subk_sel[6]~3_combout\,
	datad => \f1|x[13]~125_combout\,
	combout => \f1|x[13]~157_combout\);

-- Location: LCCOMB_X16_Y24_N20
\f1|x[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(13) = \f1|x[13]~121_combout\ $ (((\subk_sel[6]~5_combout\ & (!\f1|x[13]~156_combout\)) # (!\subk_sel[6]~5_combout\ & ((!\f1|x[13]~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[13]~121_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[13]~156_combout\,
	datad => \f1|x[13]~157_combout\,
	combout => \f1|x\(13));

-- Location: LCCOMB_X16_Y24_N30
\f1|x[12]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~113_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(2))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \key~combout\(34),
	combout => \f1|x[12]~113_combout\);

-- Location: LCCOMB_X20_Y24_N14
\f1|x[12]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~114_combout\ = \inR[7]~1_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[12]~113_combout\) # (!\subk_sel[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[12]~113_combout\,
	datac => \inR[7]~1_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[12]~114_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(35),
	combout => \key~combout\(35));

-- Location: LCCOMB_X19_Y21_N2
\f1|x[12]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~155_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((!\key~combout\(35)))) # (!\state.R1~regout\ & (!\key~combout\(44))))) # (!\subk_sel[6]~3_combout\ & (((!\key~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \subk_sel[6]~3_combout\,
	datac => \key~combout\(35),
	datad => \state.R1~regout\,
	combout => \f1|x[12]~155_combout\);

-- Location: LCCOMB_X19_Y24_N4
\f1|x[12]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~115_combout\ = (\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~14_combout\ & !\key~combout\(18))))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(18),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[12]~115_combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(50),
	combout => \key~combout\(50));

-- Location: LCCOMB_X19_Y26_N8
\subk_sel[12]~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[12]~258_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(50)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(3))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(50),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[12]~258_combout\);

-- Location: LCCOMB_X19_Y26_N2
\subk_sel[12]~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[12]~259_combout\ = (\subk_sel[12]~258_combout\ & (((\key~combout\(19)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[12]~258_combout\ & (\key~combout\(27) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \key~combout\(19),
	datac => \subk_sel[12]~258_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[12]~259_combout\);

-- Location: LCCOMB_X19_Y24_N6
\f1|x[12]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~116_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[12]~115_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[12]~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \f1|x[12]~115_combout\,
	datad => \subk_sel[12]~259_combout\,
	combout => \f1|x[12]~116_combout\);

-- Location: LCCOMB_X19_Y24_N8
\f1|x[12]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~117_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[12]~116_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[12]~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datac => \f1|x[12]~155_combout\,
	datad => \f1|x[12]~116_combout\,
	combout => \f1|x[12]~117_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(25),
	combout => \key~combout\(25));

-- Location: LCCOMB_X19_Y21_N18
\subk_sel[12]~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[12]~260_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(41)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(49) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(41),
	datac => \key~combout\(49),
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[12]~260_combout\);

-- Location: LCCOMB_X19_Y21_N24
\subk_sel[12]~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[12]~261_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[12]~260_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[12]~260_combout\ & (\key~combout\(9))) # (!\subk_sel[12]~260_combout\ & ((\key~combout\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(25),
	datad => \subk_sel[12]~260_combout\,
	combout => \subk_sel[12]~261_combout\);

-- Location: LCCOMB_X19_Y21_N10
\subk_sel[12]~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[12]~262_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(60))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[12]~261_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(60),
	datac => \subk_sel[12]~261_combout\,
	datad => \subk_sel[6]~6_combout\,
	combout => \subk_sel[12]~262_combout\);

-- Location: LCCOMB_X19_Y21_N28
\f1|x[12]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~118_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[12]~262_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[12]~262_combout\ & (!\key~combout\(59))) # (!\subk_sel[12]~262_combout\ & ((\f1|x[12]~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(59),
	datab => \f1|x[12]~155_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[12]~262_combout\,
	combout => \f1|x[12]~118_combout\);

-- Location: LCCOMB_X19_Y24_N18
\f1|x[12]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[12]~119_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[12]~115_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[12]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datac => \f1|x[12]~115_combout\,
	datad => \f1|x[12]~118_combout\,
	combout => \f1|x[12]~119_combout\);

-- Location: LCCOMB_X19_Y24_N24
\f1|x[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(12) = \f1|x[12]~114_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[12]~117_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[12]~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[12]~114_combout\,
	datac => \f1|x[12]~117_combout\,
	datad => \f1|x[12]~119_combout\,
	combout => \f1|x\(12));

-- Location: LCCOMB_X15_Y22_N4
\r_next~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~19_combout\ = \f1|x\(17) $ (\f1|x\(12) $ (\f1|x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datac => \f1|x\(12),
	datad => \f1|x\(14),
	combout => \r_next~19_combout\);

-- Location: LCCOMB_X15_Y22_N18
\r_next~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~20_combout\ = (\f1|x\(12) & ((\f1|x\(17) & (!\f1|x\(13))) # (!\f1|x\(17) & ((\f1|x\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(13),
	datac => \f1|x\(12),
	datad => \f1|x\(14),
	combout => \r_next~20_combout\);

-- Location: LCCOMB_X15_Y22_N20
\r_next~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~21_combout\ = (\f1|x\(13) & (\f1|x\(16) & ((\r_next~19_combout\) # (!\r_next~20_combout\)))) # (!\f1|x\(13) & ((\r_next~20_combout\) # (\f1|x\(16) $ (\r_next~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(16),
	datab => \f1|x\(13),
	datac => \r_next~19_combout\,
	datad => \r_next~20_combout\,
	combout => \r_next~21_combout\);

-- Location: LCCOMB_X15_Y22_N2
\r_next~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~22_combout\ = \f1|x\(13) $ (((\r_next~19_combout\ & ((!\r_next~20_combout\))) # (!\r_next~19_combout\ & (\f1|x\(16) & \r_next~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(16),
	datab => \f1|x\(13),
	datac => \r_next~19_combout\,
	datad => \r_next~20_combout\,
	combout => \r_next~22_combout\);

-- Location: LCCOMB_X15_Y22_N24
\r_next~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~23_combout\ = \r_next~44_combout\ $ (\r_next~22_combout\ $ (((\f1|x\(15)) # (!\r_next~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(15),
	datab => \r_next~44_combout\,
	datac => \r_next~21_combout\,
	datad => \r_next~22_combout\,
	combout => \r_next~23_combout\);

-- Location: LCFF_X15_Y22_N25
\r_next[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(28));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(15),
	combout => \key~combout\(15));

-- Location: LCCOMB_X19_Y20_N10
\subk_sel[41]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~193_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(12))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(28)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \key~combout\(28),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[41]~193_combout\);

-- Location: LCCOMB_X19_Y20_N12
\subk_sel[41]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~194_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[41]~193_combout\ & ((\key~combout\(15)))) # (!\subk_sel[41]~193_combout\ & (\key~combout\(23))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[41]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[41]~193_combout\,
	combout => \subk_sel[41]~194_combout\);

-- Location: LCCOMB_X19_Y20_N26
\subk_sel[41]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~195_combout\ = (\subk_sel[6]~14_combout\ & (\subk_sel[6]~13_combout\)) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(45))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[41]~194_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(45),
	datad => \subk_sel[41]~194_combout\,
	combout => \subk_sel[41]~195_combout\);

-- Location: LCCOMB_X19_Y20_N20
\subk_sel[41]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~196_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[41]~195_combout\ & (\key~combout\(29))) # (!\subk_sel[41]~195_combout\ & ((\key~combout\(61)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[41]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \key~combout\(61),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[41]~195_combout\,
	combout => \subk_sel[41]~196_combout\);

-- Location: LCCOMB_X22_Y20_N22
\subk_sel[41]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~188_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(13) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(54)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \key~combout\(54),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[41]~188_combout\);

-- Location: LCCOMB_X22_Y20_N12
\subk_sel[41]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~189_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[41]~188_combout\ & (\key~combout\(38))) # (!\subk_sel[41]~188_combout\ & ((\key~combout\(5)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[41]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~7_combout\,
	datac => \key~combout\(5),
	datad => \subk_sel[41]~188_combout\,
	combout => \subk_sel[41]~189_combout\);

-- Location: LCCOMB_X22_Y20_N2
\subk_sel[41]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~190_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[41]~189_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(6)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[41]~189_combout\,
	combout => \subk_sel[41]~190_combout\);

-- Location: LCCOMB_X22_Y20_N16
\subk_sel[41]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~191_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[41]~190_combout\ & (\key~combout\(55))) # (!\subk_sel[41]~190_combout\ & ((\key~combout\(22)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[41]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(55),
	datab => \key~combout\(22),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[41]~190_combout\,
	combout => \subk_sel[41]~191_combout\);

-- Location: LCCOMB_X23_Y20_N10
\subk_sel[41]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~192_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(31)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[41]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[41]~191_combout\,
	combout => \subk_sel[41]~192_combout\);

-- Location: LCCOMB_X23_Y20_N12
\subk_sel[41]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[41]~197_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[41]~192_combout\ & ((\subk_sel[41]~196_combout\))) # (!\subk_sel[41]~192_combout\ & (\key~combout\(39))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[41]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[41]~196_combout\,
	datad => \subk_sel[41]~192_combout\,
	combout => \subk_sel[41]~197_combout\);

-- Location: LCCOMB_X23_Y20_N14
\f1|x[41]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(41) = \subk_sel[41]~197_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(31))) # (!\comb~17_combout\ & ((r_next(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(31),
	datab => r_next(28),
	datac => \comb~17_combout\,
	datad => \subk_sel[41]~197_combout\,
	combout => \f1|x\(41));

-- Location: LCCOMB_X24_Y20_N16
\f1|s1|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~4_combout\ = (\f1|x\(41) & ((\f1|x\(36) & ((\f1|x\(37)))) # (!\f1|x\(36) & (!\f1|x\(39) & !\f1|x\(37))))) # (!\f1|x\(41) & (\f1|x\(36) $ (\f1|x\(39) $ (\f1|x\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector6~4_combout\);

-- Location: LCCOMB_X24_Y21_N30
\f1|x[40]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~145_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & (!\key~combout\(7))) # (!\state.R1~regout\ & ((!\key~combout\(47)))))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~3_combout\,
	datad => \state.R1~regout\,
	combout => \f1|x[40]~145_combout\);

-- Location: LCCOMB_X24_Y21_N24
\f1|x[40]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~69_combout\ = (\subk_sel[6]~4_combout\ & (((!\key~combout\(21) & !\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(15),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[40]~69_combout\);

-- Location: LCCOMB_X23_Y21_N18
\subk_sel[40]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[40]~173_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(53))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(4)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[40]~173_combout\);

-- Location: LCCOMB_X24_Y21_N26
\subk_sel[40]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[40]~174_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[40]~173_combout\ & ((\key~combout\(20)))) # (!\subk_sel[40]~173_combout\ & (\key~combout\(28))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[40]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \key~combout\(20),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[40]~173_combout\,
	combout => \subk_sel[40]~174_combout\);

-- Location: LCCOMB_X24_Y21_N6
\f1|x[40]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~70_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[40]~69_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[40]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \f1|x[40]~69_combout\,
	datad => \subk_sel[40]~174_combout\,
	combout => \f1|x[40]~70_combout\);

-- Location: LCCOMB_X24_Y21_N8
\f1|x[40]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~71_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[40]~70_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[40]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[40]~145_combout\,
	datad => \f1|x[40]~70_combout\,
	combout => \f1|x[40]~71_combout\);

-- Location: LCCOMB_X24_Y21_N22
\subk_sel[40]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[40]~175_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(46))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(54)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \key~combout\(54),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[40]~175_combout\);

-- Location: LCCOMB_X24_Y21_N28
\subk_sel[40]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[40]~176_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[40]~175_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[40]~175_combout\ & (\key~combout\(14))) # (!\subk_sel[40]~175_combout\ & ((\key~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[40]~175_combout\,
	combout => \subk_sel[40]~176_combout\);

-- Location: LCCOMB_X24_Y21_N14
\subk_sel[40]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[40]~177_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(63)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[40]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[40]~176_combout\,
	combout => \subk_sel[40]~177_combout\);

-- Location: LCCOMB_X24_Y21_N12
\f1|x[40]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~72_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[40]~177_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[40]~177_combout\ & (!\key~combout\(31))) # (!\subk_sel[40]~177_combout\ & ((\f1|x[40]~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[40]~177_combout\,
	datad => \f1|x[40]~145_combout\,
	combout => \f1|x[40]~72_combout\);

-- Location: LCCOMB_X24_Y21_N10
\f1|x[40]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[40]~73_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[40]~69_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[40]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datac => \f1|x[40]~69_combout\,
	datad => \f1|x[40]~72_combout\,
	combout => \f1|x[40]~73_combout\);

-- Location: LCCOMB_X24_Y21_N16
\f1|x[40]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(40) = \f1|x[40]~68_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[40]~71_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[40]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[40]~68_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \f1|x[40]~71_combout\,
	datad => \f1|x[40]~73_combout\,
	combout => \f1|x\(40));

-- Location: LCCOMB_X24_Y20_N20
\f1|s1|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~2_combout\ = (\f1|x\(41) & (\f1|x\(39) $ (((\f1|x\(36)) # (!\f1|x\(37)))))) # (!\f1|x\(41) & (((!\f1|x\(39) & \f1|x\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector6~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\f1|s1|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~1_combout\ = (\f1|x\(36) & ((\f1|x\(41) & (!\f1|x\(39))) # (!\f1|x\(41) & (\f1|x\(39) & !\f1|x\(37))))) # (!\f1|x\(36) & (\f1|x\(37) & (\f1|x\(41) $ (!\f1|x\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y20_N22
\f1|s1|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~3_combout\ = (\f1|x\(38) & (\f1|x\(40))) # (!\f1|x\(38) & ((\f1|x\(40) & ((\f1|s1|Selector6~1_combout\))) # (!\f1|x\(40) & (!\f1|s1|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(38),
	datab => \f1|x\(40),
	datac => \f1|s1|Selector6~2_combout\,
	datad => \f1|s1|Selector6~1_combout\,
	combout => \f1|s1|Selector6~3_combout\);

-- Location: LCCOMB_X24_Y20_N30
\f1|s1|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector6~5_combout\ = (\f1|x\(38) & ((\f1|s1|Selector6~3_combout\ & ((!\f1|s1|Selector6~4_combout\))) # (!\f1|s1|Selector6~3_combout\ & (\f1|s1|Selector6~0_combout\)))) # (!\f1|x\(38) & (((\f1|s1|Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(38),
	datab => \f1|s1|Selector6~0_combout\,
	datac => \f1|s1|Selector6~4_combout\,
	datad => \f1|s1|Selector6~3_combout\,
	combout => \f1|s1|Selector6~5_combout\);

-- Location: LCCOMB_X24_Y20_N14
\r_next~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~9_combout\ = \f1|s1|Selector6~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(14)))) # (!\comb~17_combout\ & (l_next(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(30),
	datac => \plaintext~combout\(14),
	datad => \f1|s1|Selector6~5_combout\,
	combout => \r_next~9_combout\);

-- Location: LCFF_X24_Y20_N15
\r_next[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(30));

-- Location: LCCOMB_X22_Y22_N12
\subk_sel[45]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~108_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(47)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(63))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[45]~108_combout\);

-- Location: LCCOMB_X22_Y22_N10
\subk_sel[45]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~109_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[45]~108_combout\ & (\key~combout\(14))) # (!\subk_sel[45]~108_combout\ & ((\key~combout\(22)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[45]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(22),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[45]~108_combout\,
	combout => \subk_sel[45]~109_combout\);

-- Location: LCCOMB_X22_Y22_N20
\subk_sel[45]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~110_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\key~combout\(15))))) # (!\subk_sel[6]~13_combout\ & (!\subk_sel[6]~14_combout\ & ((\subk_sel[45]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(15),
	datad => \subk_sel[45]~109_combout\,
	combout => \subk_sel[45]~110_combout\);

-- Location: LCCOMB_X21_Y21_N8
\subk_sel[45]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~111_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[45]~110_combout\ & (\key~combout\(28))) # (!\subk_sel[45]~110_combout\ & ((\key~combout\(31)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[45]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \key~combout\(31),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[45]~110_combout\,
	combout => \subk_sel[45]~111_combout\);

-- Location: LCCOMB_X21_Y21_N10
\subk_sel[45]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~103_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & ((\key~combout\(12)))) # (!\subk_sel[6]~2_combout\ & (\key~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(12),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[45]~103_combout\);

-- Location: LCCOMB_X21_Y21_N16
\subk_sel[45]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~104_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[45]~103_combout\ & (\key~combout\(37))) # (!\subk_sel[45]~103_combout\ & ((\key~combout\(4)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[45]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[45]~103_combout\,
	combout => \subk_sel[45]~104_combout\);

-- Location: LCCOMB_X21_Y21_N18
\subk_sel[45]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~105_combout\ = (\subk_sel[6]~6_combout\ & (!\subk_sel[6]~1_combout\)) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & (\subk_sel[45]~104_combout\)) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[45]~104_combout\,
	datad => \key~combout\(5),
	combout => \subk_sel[45]~105_combout\);

-- Location: LCCOMB_X21_Y21_N4
\subk_sel[45]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~106_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[45]~105_combout\ & (\key~combout\(54))) # (!\subk_sel[45]~105_combout\ & ((\key~combout\(21)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[45]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \subk_sel[6]~6_combout\,
	datac => \key~combout\(21),
	datad => \subk_sel[45]~105_combout\,
	combout => \subk_sel[45]~106_combout\);

-- Location: LCCOMB_X21_Y21_N26
\subk_sel[45]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~107_combout\ = (\subk_sel[6]~5_combout\ & (\subk_sel[6]~4_combout\)) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & ((\key~combout\(30)))) # (!\subk_sel[6]~4_combout\ & (\subk_sel[45]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[45]~106_combout\,
	datad => \key~combout\(30),
	combout => \subk_sel[45]~107_combout\);

-- Location: LCCOMB_X21_Y21_N14
\subk_sel[45]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[45]~112_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[45]~107_combout\ & ((\subk_sel[45]~111_combout\))) # (!\subk_sel[45]~107_combout\ & (\key~combout\(38))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[45]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[45]~111_combout\,
	datad => \subk_sel[45]~107_combout\,
	combout => \subk_sel[45]~112_combout\);

-- Location: LCCOMB_X22_Y21_N8
\f1|x[45]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(45) = \subk_sel[45]~112_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(15))) # (!\comb~17_combout\ & ((r_next(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(15),
	datac => r_next(30),
	datad => \subk_sel[45]~112_combout\,
	combout => \f1|x\(45));

-- Location: LCCOMB_X22_Y21_N30
\f1|s1|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~4_combout\ = (\f1|x\(46) & (\f1|x\(45) $ (((\f1|x\(47)) # (\f1|x\(42)))))) # (!\f1|x\(46) & (\f1|x\(47) & ((\f1|x\(45)) # (\f1|x\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(47),
	datac => \f1|x\(45),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector2~4_combout\);

-- Location: LCCOMB_X21_Y22_N26
\subk_sel[43]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~98_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(61))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(12)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(61),
	datab => \key~combout\(12),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[43]~98_combout\);

-- Location: LCCOMB_X21_Y22_N4
\subk_sel[43]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~99_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[43]~98_combout\ & (\key~combout\(28))) # (!\subk_sel[43]~98_combout\ & ((\key~combout\(7)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[43]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \key~combout\(7),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[43]~98_combout\,
	combout => \subk_sel[43]~99_combout\);

-- Location: LCCOMB_X20_Y22_N26
\subk_sel[43]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~100_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(29))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[43]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[43]~99_combout\,
	combout => \subk_sel[43]~100_combout\);

-- Location: LCCOMB_X20_Y22_N16
\subk_sel[43]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~101_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[43]~100_combout\ & (\key~combout\(13))) # (!\subk_sel[43]~100_combout\ & ((\key~combout\(45)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[43]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \key~combout\(45),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[43]~100_combout\,
	combout => \subk_sel[43]~101_combout\);

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(38),
	combout => \key~combout\(38));

-- Location: LCCOMB_X19_Y21_N14
\subk_sel[43]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~93_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & (\key~combout\(62))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(62),
	datac => \key~combout\(38),
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[43]~93_combout\);

-- Location: LCCOMB_X19_Y21_N8
\subk_sel[43]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~94_combout\ = (\subk_sel[43]~93_combout\ & ((\key~combout\(22)) # ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[43]~93_combout\ & (((\key~combout\(54) & \subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \key~combout\(54),
	datac => \subk_sel[43]~93_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[43]~94_combout\);

-- Location: LCCOMB_X20_Y21_N20
\subk_sel[43]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~95_combout\ = (\subk_sel[6]~6_combout\ & (!\subk_sel[6]~1_combout\)) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[43]~94_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(55),
	datad => \subk_sel[43]~94_combout\,
	combout => \subk_sel[43]~95_combout\);

-- Location: LCCOMB_X20_Y21_N18
\subk_sel[43]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~96_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[43]~95_combout\ & (\key~combout\(39))) # (!\subk_sel[43]~95_combout\ & ((\key~combout\(6)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[43]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \subk_sel[6]~6_combout\,
	datac => \key~combout\(6),
	datad => \subk_sel[43]~95_combout\,
	combout => \subk_sel[43]~96_combout\);

-- Location: LCCOMB_X20_Y21_N12
\subk_sel[43]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~97_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(15)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[43]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(15),
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[43]~96_combout\,
	combout => \subk_sel[43]~97_combout\);

-- Location: LCCOMB_X20_Y21_N2
\subk_sel[43]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[43]~102_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[43]~97_combout\ & ((\subk_sel[43]~101_combout\))) # (!\subk_sel[43]~97_combout\ & (\key~combout\(23))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[43]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[43]~101_combout\,
	datad => \subk_sel[43]~97_combout\,
	combout => \subk_sel[43]~102_combout\);

-- Location: LCCOMB_X23_Y21_N4
\f1|x[43]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(43) = \subk_sel[43]~102_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(31))) # (!\comb~17_combout\ & ((r_next(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(31),
	datab => r_next(28),
	datac => \comb~17_combout\,
	datad => \subk_sel[43]~102_combout\,
	combout => \f1|x\(43));

-- Location: LCCOMB_X23_Y21_N14
\f1|s1|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~2_combout\ = (\f1|x\(45) & (\f1|x\(46) $ ((\f1|x\(47))))) # (!\f1|x\(45) & ((\f1|x\(46) & (\f1|x\(47) & \f1|x\(42))) # (!\f1|x\(46) & (\f1|x\(47) $ (\f1|x\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(45),
	datab => \f1|x\(46),
	datac => \f1|x\(47),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector2~2_combout\);

-- Location: LCCOMB_X23_Y21_N0
\f1|s1|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~1_combout\ = \f1|x\(46) $ (\f1|x\(42) $ (((\f1|x\(45)) # (\f1|x\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(45),
	datab => \f1|x\(46),
	datac => \f1|x\(47),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector2~1_combout\);

-- Location: LCCOMB_X23_Y21_N28
\f1|s1|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~3_combout\ = (\f1|x\(44) & ((\f1|x\(43)) # ((\f1|s1|Selector2~1_combout\)))) # (!\f1|x\(44) & (!\f1|x\(43) & (!\f1|s1|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(44),
	datab => \f1|x\(43),
	datac => \f1|s1|Selector2~2_combout\,
	datad => \f1|s1|Selector2~1_combout\,
	combout => \f1|s1|Selector2~3_combout\);

-- Location: LCCOMB_X23_Y21_N26
\f1|s1|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector2~5_combout\ = (\f1|x\(43) & ((\f1|s1|Selector2~3_combout\ & ((\f1|s1|Selector2~4_combout\))) # (!\f1|s1|Selector2~3_combout\ & (\f1|s1|Selector2~0_combout\)))) # (!\f1|x\(43) & (((\f1|s1|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(43),
	datab => \f1|s1|Selector2~0_combout\,
	datac => \f1|s1|Selector2~4_combout\,
	datad => \f1|s1|Selector2~3_combout\,
	combout => \f1|s1|Selector2~5_combout\);

-- Location: LCCOMB_X23_Y21_N10
\r_next~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~33_combout\ = \f1|s1|Selector2~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(50))) # (!\comb~17_combout\ & ((l_next(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(50),
	datab => l_next(9),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector2~5_combout\,
	combout => \r_next~33_combout\);

-- Location: LCFF_X23_Y21_N11
\r_next[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~33_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(9));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(11),
	combout => \key~combout\(11));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(26),
	combout => \key~combout\(26));

-- Location: LCCOMB_X14_Y20_N12
\subk_sel[14]~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~278_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(26)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(42) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(42),
	datab => \key~combout\(26),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[14]~278_combout\);

-- Location: LCCOMB_X15_Y20_N8
\subk_sel[14]~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~279_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[14]~278_combout\ & ((\key~combout\(58)))) # (!\subk_sel[14]~278_combout\ & (\key~combout\(3))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[14]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(58),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[14]~278_combout\,
	combout => \subk_sel[14]~279_combout\);

-- Location: LCCOMB_X15_Y20_N22
\subk_sel[14]~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~280_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(10))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[14]~279_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[14]~279_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[14]~280_combout\);

-- Location: LCCOMB_X15_Y20_N16
\subk_sel[14]~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~281_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[14]~280_combout\ & ((\key~combout\(41)))) # (!\subk_sel[14]~280_combout\ & (\key~combout\(57))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[14]~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(57),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(41),
	datad => \subk_sel[14]~280_combout\,
	combout => \subk_sel[14]~281_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(51),
	combout => \key~combout\(51));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(1),
	combout => \key~combout\(1));

-- Location: LCCOMB_X16_Y21_N4
\subk_sel[14]~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~273_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(17)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(25))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \key~combout\(17),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[14]~273_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(52),
	combout => \key~combout\(52));

-- Location: LCCOMB_X16_Y21_N2
\subk_sel[14]~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~274_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[14]~273_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[14]~273_combout\ & ((\key~combout\(52)))) # (!\subk_sel[14]~273_combout\ & (\key~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(1),
	datac => \subk_sel[14]~273_combout\,
	datad => \key~combout\(52),
	combout => \subk_sel[14]~274_combout\);

-- Location: LCCOMB_X16_Y21_N0
\subk_sel[14]~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~275_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(36))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[14]~274_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[14]~274_combout\,
	combout => \subk_sel[14]~275_combout\);

-- Location: LCCOMB_X16_Y21_N10
\subk_sel[14]~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~276_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[14]~275_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[14]~275_combout\ & (\key~combout\(35))) # (!\subk_sel[14]~275_combout\ & ((\key~combout\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(35),
	datab => \key~combout\(51),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[14]~275_combout\,
	combout => \subk_sel[14]~276_combout\);

-- Location: LCCOMB_X15_Y20_N18
\subk_sel[14]~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~277_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(19))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[14]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(19),
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[14]~276_combout\,
	combout => \subk_sel[14]~277_combout\);

-- Location: LCCOMB_X15_Y20_N2
\subk_sel[14]~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[14]~282_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[14]~277_combout\ & ((\subk_sel[14]~281_combout\))) # (!\subk_sel[14]~277_combout\ & (\key~combout\(11))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[14]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(11),
	datac => \subk_sel[14]~281_combout\,
	datad => \subk_sel[14]~277_combout\,
	combout => \subk_sel[14]~282_combout\);

-- Location: LCCOMB_X15_Y20_N4
\f1|x[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(14) = \subk_sel[14]~282_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(51))) # (!\comb~17_combout\ & ((r_next(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(51),
	datab => r_next(9),
	datac => \comb~17_combout\,
	datad => \subk_sel[14]~282_combout\,
	combout => \f1|x\(14));

-- Location: LCCOMB_X15_Y20_N24
\f1|s1|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~0_combout\ = (\f1|x\(17) & ((\f1|x\(16) & (!\f1|x\(14) & \f1|x\(12))) # (!\f1|x\(16) & (\f1|x\(14))))) # (!\f1|x\(17) & (\f1|x\(12) $ (((\f1|x\(16)) # (\f1|x\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(16),
	datac => \f1|x\(14),
	datad => \f1|x\(12),
	combout => \f1|s1|Selector21~0_combout\);

-- Location: LCCOMB_X15_Y20_N30
\f1|s1|Selector21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~4_combout\ = (\f1|x\(16) & ((\f1|x\(14) & (\f1|x\(17))) # (!\f1|x\(14) & ((!\f1|x\(12)))))) # (!\f1|x\(16) & (\f1|x\(12) & ((!\f1|x\(14)) # (!\f1|x\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(16),
	datac => \f1|x\(14),
	datad => \f1|x\(12),
	combout => \f1|s1|Selector21~4_combout\);

-- Location: LCCOMB_X16_Y20_N14
\f1|s1|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~2_combout\ = \f1|x\(17) $ (\f1|x\(12) $ (((\f1|x\(14)) # (\f1|x\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(14),
	datac => \f1|x\(12),
	datad => \f1|x\(16),
	combout => \f1|s1|Selector21~2_combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(43),
	combout => \plaintext~combout\(43));

-- Location: LCCOMB_X15_Y22_N16
\subk_sel[15]~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~293_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(11)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(27) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \key~combout\(11),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[15]~293_combout\);

-- Location: LCCOMB_X15_Y22_N30
\subk_sel[15]~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~294_combout\ = (\subk_sel[15]~293_combout\ & ((\key~combout\(43)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[15]~293_combout\ & (((\key~combout\(51) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \key~combout\(51),
	datac => \subk_sel[15]~293_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[15]~294_combout\);

-- Location: LCCOMB_X15_Y22_N28
\subk_sel[15]~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~295_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(42)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[15]~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(42),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[15]~294_combout\,
	combout => \subk_sel[15]~295_combout\);

-- Location: LCCOMB_X15_Y22_N14
\subk_sel[15]~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~296_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[15]~295_combout\ & (\key~combout\(26))) # (!\subk_sel[15]~295_combout\ & ((\key~combout\(58)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[15]~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(26),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(58),
	datad => \subk_sel[15]~295_combout\,
	combout => \subk_sel[15]~296_combout\);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(36),
	combout => \key~combout\(36));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(10),
	combout => \key~combout\(10));

-- Location: LCCOMB_X19_Y25_N0
\subk_sel[15]~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~288_combout\ = (\subk_sel[6]~2_combout\ & (((!\subk_sel[6]~7_combout\ & \key~combout\(10))))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(49)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(49),
	datac => \subk_sel[6]~7_combout\,
	datad => \key~combout\(10),
	combout => \subk_sel[15]~288_combout\);

-- Location: LCCOMB_X19_Y25_N18
\subk_sel[15]~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~289_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[15]~288_combout\ & (\key~combout\(33))) # (!\subk_sel[15]~288_combout\ & ((\key~combout\(2)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[15]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(33),
	datab => \key~combout\(2),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[15]~288_combout\,
	combout => \subk_sel[15]~289_combout\);

-- Location: LCCOMB_X19_Y25_N28
\subk_sel[15]~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~290_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[15]~289_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(1)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[15]~289_combout\,
	combout => \subk_sel[15]~290_combout\);

-- Location: LCCOMB_X19_Y25_N30
\subk_sel[15]~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~291_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[15]~290_combout\ & ((\key~combout\(52)))) # (!\subk_sel[15]~290_combout\ & (\key~combout\(17))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[15]~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(17),
	datac => \key~combout\(52),
	datad => \subk_sel[15]~290_combout\,
	combout => \subk_sel[15]~291_combout\);

-- Location: LCCOMB_X19_Y25_N16
\subk_sel[15]~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~292_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(59)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[15]~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(59),
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[15]~291_combout\,
	combout => \subk_sel[15]~292_combout\);

-- Location: LCCOMB_X15_Y22_N12
\subk_sel[15]~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[15]~297_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[15]~292_combout\ & (\subk_sel[15]~296_combout\)) # (!\subk_sel[15]~292_combout\ & ((\key~combout\(36)))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[15]~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[15]~296_combout\,
	datac => \key~combout\(36),
	datad => \subk_sel[15]~292_combout\,
	combout => \subk_sel[15]~297_combout\);

-- Location: LCCOMB_X15_Y22_N26
\f1|x[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(15) = \subk_sel[15]~297_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(43)))) # (!\comb~17_combout\ & (r_next(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(10),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(43),
	datad => \subk_sel[15]~297_combout\,
	combout => \f1|x\(15));

-- Location: LCCOMB_X16_Y20_N12
\f1|s1|Selector21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~3_combout\ = (\f1|x\(13) & ((\f1|s1|Selector21~1_combout\) # ((\f1|x\(15))))) # (!\f1|x\(13) & (((!\f1|s1|Selector21~2_combout\ & !\f1|x\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector21~1_combout\,
	datab => \f1|x\(13),
	datac => \f1|s1|Selector21~2_combout\,
	datad => \f1|x\(15),
	combout => \f1|s1|Selector21~3_combout\);

-- Location: LCCOMB_X16_Y20_N26
\f1|s1|Selector21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector21~5_combout\ = (\f1|x\(15) & ((\f1|s1|Selector21~3_combout\ & ((\f1|s1|Selector21~4_combout\))) # (!\f1|s1|Selector21~3_combout\ & (\f1|s1|Selector21~0_combout\)))) # (!\f1|x\(15) & (((\f1|s1|Selector21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(15),
	datab => \f1|s1|Selector21~0_combout\,
	datac => \f1|s1|Selector21~4_combout\,
	datad => \f1|s1|Selector21~3_combout\,
	combout => \f1|s1|Selector21~5_combout\);

-- Location: LCCOMB_X16_Y20_N30
\r_next~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~24_combout\ = \f1|s1|Selector21~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(32))) # (!\comb~17_combout\ & ((l_next(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(32),
	datac => l_next(3),
	datad => \f1|s1|Selector21~5_combout\,
	combout => \r_next~24_combout\);

-- Location: LCFF_X16_Y20_N31
\r_next[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(3));

-- Location: LCCOMB_X16_Y20_N16
\inR[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[3]~12_combout\ = (\state.R1~regout\ & (\plaintext~combout\(33))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(3)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(33),
	datab => \state.R1~regout\,
	datac => \state.IDLE~regout\,
	datad => r_next(3),
	combout => \inR[3]~12_combout\);

-- Location: LCCOMB_X20_Y24_N18
\f1|x[4]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~88_combout\ = \inR[3]~12_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[4]~87_combout\) # (!\subk_sel[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[4]~87_combout\,
	datac => \inR[3]~12_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[4]~88_combout\);

-- Location: LCCOMB_X17_Y24_N16
\f1|x[4]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~149_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & (!\key~combout\(50))) # (!\state.R1~regout\ & ((!\key~combout\(27)))))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(27),
	datac => \subk_sel[6]~3_combout\,
	datad => \state.R1~regout\,
	combout => \f1|x[4]~149_combout\);

-- Location: LCCOMB_X18_Y22_N12
\subk_sel[4]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[4]~218_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(2)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(18) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \key~combout\(2),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[4]~218_combout\);

-- Location: LCCOMB_X18_Y22_N10
\subk_sel[4]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[4]~219_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[4]~218_combout\ & (\key~combout\(34))) # (!\subk_sel[4]~218_combout\ & ((\key~combout\(42)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[4]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[4]~218_combout\,
	combout => \subk_sel[4]~219_combout\);

-- Location: LCCOMB_X18_Y24_N4
\f1|x[4]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~89_combout\ = (\subk_sel[6]~4_combout\ & (!\subk_sel[6]~14_combout\ & ((!\key~combout\(33))))) # (!\subk_sel[6]~4_combout\ & (((!\key~combout\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(58),
	datac => \subk_sel[6]~4_combout\,
	datad => \key~combout\(33),
	combout => \f1|x[4]~89_combout\);

-- Location: LCCOMB_X19_Y24_N28
\f1|x[4]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~90_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[4]~89_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[4]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[4]~219_combout\,
	datac => \f1|x[4]~89_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \f1|x[4]~90_combout\);

-- Location: LCCOMB_X20_Y24_N8
\f1|x[4]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~91_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[4]~90_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[4]~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[4]~149_combout\,
	datad => \f1|x[4]~90_combout\,
	combout => \f1|x[4]~91_combout\);

-- Location: LCCOMB_X18_Y24_N2
\subk_sel[4]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[4]~220_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(60)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(1))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[4]~220_combout\);

-- Location: LCCOMB_X18_Y24_N28
\subk_sel[4]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[4]~221_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[4]~220_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[4]~220_combout\ & (\key~combout\(59))) # (!\subk_sel[4]~220_combout\ & ((\key~combout\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(59),
	datab => \key~combout\(44),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[4]~220_combout\,
	combout => \subk_sel[4]~221_combout\);

-- Location: LCCOMB_X18_Y24_N14
\subk_sel[4]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[4]~222_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(43))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[4]~221_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[4]~221_combout\,
	combout => \subk_sel[4]~222_combout\);

-- Location: LCCOMB_X18_Y24_N24
\f1|x[4]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~92_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[4]~222_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[4]~222_combout\ & (!\key~combout\(11))) # (!\subk_sel[4]~222_combout\ & ((\f1|x[4]~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(11),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[4]~222_combout\,
	datad => \f1|x[4]~149_combout\,
	combout => \f1|x[4]~92_combout\);

-- Location: LCCOMB_X19_Y24_N10
\f1|x[4]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[4]~93_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[4]~89_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[4]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datac => \f1|x[4]~89_combout\,
	datad => \f1|x[4]~92_combout\,
	combout => \f1|x[4]~93_combout\);

-- Location: LCCOMB_X20_Y24_N0
\f1|x[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(4) = \f1|x[4]~88_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[4]~91_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[4]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[4]~88_combout\,
	datac => \f1|x[4]~91_combout\,
	datad => \f1|x[4]~93_combout\,
	combout => \f1|x\(4));

-- Location: LCCOMB_X16_Y24_N28
\f1|x[1]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~94_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (!\key~combout\(11))) # (!\subk_sel[6]~14_combout\ & ((!\key~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(11),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \key~combout\(27),
	combout => \f1|x[1]~94_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(57),
	combout => \plaintext~combout\(57));

-- Location: LCCOMB_X14_Y24_N0
\l_next[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[0]~feeder_combout\ = \inR[0]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[0]~3_combout\,
	combout => \l_next[0]~feeder_combout\);

-- Location: LCFF_X14_Y24_N1
\l_next[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(9),
	combout => \key~combout\(9));

-- Location: LCCOMB_X19_Y21_N6
\subk_sel[5]~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[5]~255_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & (\key~combout\(33))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(33),
	datac => \key~combout\(9),
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[5]~255_combout\);

-- Location: LCCOMB_X19_Y21_N4
\subk_sel[5]~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[5]~256_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[5]~255_combout\ & (\key~combout\(60))) # (!\subk_sel[5]~255_combout\ & ((\key~combout\(25)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[5]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(60),
	datac => \key~combout\(25),
	datad => \subk_sel[5]~255_combout\,
	combout => \subk_sel[5]~256_combout\);

-- Location: LCCOMB_X19_Y24_N20
\subk_sel[5]~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[5]~257_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[5]~256_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(59),
	datac => \subk_sel[5]~256_combout\,
	datad => \subk_sel[6]~1_combout\,
	combout => \subk_sel[5]~257_combout\);

-- Location: LCCOMB_X19_Y24_N22
\f1|x[5]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~109_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(27))) # (!\subk_sel[6]~5_combout\ & ((!\key~combout\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \key~combout\(44),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[5]~109_combout\);

-- Location: LCCOMB_X19_Y24_N30
\f1|x[5]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~112_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[5]~257_combout\ & (!\key~combout\(43))) # (!\subk_sel[5]~257_combout\ & ((\f1|x[5]~109_combout\))))) # (!\subk_sel[6]~6_combout\ & (((!\subk_sel[5]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(43),
	datac => \subk_sel[5]~257_combout\,
	datad => \f1|x[5]~109_combout\,
	combout => \f1|x[5]~112_combout\);

-- Location: LCCOMB_X19_Y26_N28
\f1|x[5]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~110_combout\ = (\subk_sel[6]~5_combout\ & (!\subk_sel[6]~13_combout\ & ((!\key~combout\(18))))) # (!\subk_sel[6]~5_combout\ & (((!\key~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(19),
	datac => \subk_sel[6]~5_combout\,
	datad => \key~combout\(18),
	combout => \f1|x[5]~110_combout\);

-- Location: LCCOMB_X20_Y24_N30
\f1|x[5]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~154_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((!\f1|x[5]~110_combout\))) # (!\state.R1~regout\ & (\f1|x[5]~112_combout\)))) # (!\subk_sel[6]~3_combout\ & (((!\f1|x[5]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~3_combout\,
	datab => \state.R1~regout\,
	datac => \f1|x[5]~112_combout\,
	datad => \f1|x[5]~110_combout\,
	combout => \f1|x[5]~154_combout\);

-- Location: LCCOMB_X19_Y26_N4
\subk_sel[5]~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[5]~253_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(34)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(50))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(34),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[5]~253_combout\);

-- Location: LCCOMB_X19_Y26_N14
\subk_sel[5]~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[5]~254_combout\ = (\subk_sel[5]~253_combout\ & ((\key~combout\(3)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[5]~253_combout\ & (((\key~combout\(11) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(11),
	datac => \subk_sel[5]~253_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[5]~254_combout\);

-- Location: LCCOMB_X19_Y26_N26
\f1|x[5]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~111_combout\ = (\subk_sel[6]~14_combout\ & (((!\f1|x[5]~110_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\subk_sel[5]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[5]~254_combout\,
	datad => \f1|x[5]~110_combout\,
	combout => \f1|x[5]~111_combout\);

-- Location: LCCOMB_X20_Y24_N12
\f1|x[5]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[5]~153_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((\f1|x[5]~111_combout\))) # (!\state.R1~regout\ & (\f1|x[5]~109_combout\)))) # (!\subk_sel[6]~3_combout\ & (((\f1|x[5]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~3_combout\,
	datab => \f1|x[5]~109_combout\,
	datac => \state.R1~regout\,
	datad => \f1|x[5]~111_combout\,
	combout => \f1|x[5]~153_combout\);

-- Location: LCCOMB_X21_Y24_N4
\f1|x[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(5) = \f1|x[5]~108_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[5]~153_combout\))) # (!\subk_sel[6]~5_combout\ & (!\f1|x[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[5]~108_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[5]~154_combout\,
	datad => \f1|x[5]~153_combout\,
	combout => \f1|x\(5));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(41),
	combout => \plaintext~combout\(41));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(40),
	combout => \plaintext~combout\(40));

-- Location: LCCOMB_X23_Y22_N26
\inR[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[2]~23_combout\ = (\state.R1~regout\ & (\plaintext~combout\(41))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(2)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(41),
	datab => r_next(2),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inR[2]~23_combout\);

-- Location: LCFF_X23_Y22_N27
\l_next[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[2]~23_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(2));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(37),
	combout => \plaintext~combout\(37));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(23),
	combout => \key~combout\(23));

-- Location: LCCOMB_X19_Y20_N18
\subk_sel[30]~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~393_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(23)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(39))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \key~combout\(23),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[30]~393_combout\);

-- Location: LCCOMB_X19_Y20_N8
\subk_sel[30]~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~394_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[30]~393_combout\ & (\key~combout\(55))) # (!\subk_sel[30]~393_combout\ & ((\key~combout\(63)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[30]~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(55),
	datab => \key~combout\(63),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[30]~393_combout\,
	combout => \subk_sel[30]~394_combout\);

-- Location: LCCOMB_X20_Y20_N18
\subk_sel[30]~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~395_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(7))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[30]~394_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(7),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[30]~394_combout\,
	combout => \subk_sel[30]~395_combout\);

-- Location: LCCOMB_X20_Y20_N24
\subk_sel[30]~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~396_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[30]~395_combout\ & ((\key~combout\(4)))) # (!\subk_sel[30]~395_combout\ & (\key~combout\(20))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[30]~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[30]~395_combout\,
	combout => \subk_sel[30]~396_combout\);

-- Location: LCCOMB_X21_Y20_N22
\subk_sel[30]~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~388_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(45))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(53)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(45),
	datac => \subk_sel[6]~7_combout\,
	datad => \key~combout\(53),
	combout => \subk_sel[30]~388_combout\);

-- Location: LCCOMB_X21_Y20_N0
\subk_sel[30]~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~389_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[30]~388_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[30]~388_combout\ & (\key~combout\(13))) # (!\subk_sel[30]~388_combout\ & ((\key~combout\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \key~combout\(29),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[30]~388_combout\,
	combout => \subk_sel[30]~389_combout\);

-- Location: LCCOMB_X21_Y20_N26
\subk_sel[30]~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~390_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(62)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[30]~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[30]~389_combout\,
	combout => \subk_sel[30]~390_combout\);

-- Location: LCCOMB_X21_Y20_N4
\subk_sel[30]~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~391_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[30]~390_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[30]~390_combout\ & ((\key~combout\(30)))) # (!\subk_sel[30]~390_combout\ & (\key~combout\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[30]~390_combout\,
	combout => \subk_sel[30]~391_combout\);

-- Location: LCCOMB_X20_Y20_N12
\subk_sel[30]~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~392_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(14)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[30]~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[30]~391_combout\,
	combout => \subk_sel[30]~392_combout\);

-- Location: LCCOMB_X20_Y20_N30
\subk_sel[30]~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[30]~397_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[30]~392_combout\ & ((\subk_sel[30]~396_combout\))) # (!\subk_sel[30]~392_combout\ & (\key~combout\(6))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[30]~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(6),
	datac => \subk_sel[30]~396_combout\,
	datad => \subk_sel[30]~392_combout\,
	combout => \subk_sel[30]~397_combout\);

-- Location: LCCOMB_X20_Y20_N0
\f1|x[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(30) = \subk_sel[30]~397_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(37)))) # (!\comb~17_combout\ & (r_next(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(19),
	datab => \plaintext~combout\(37),
	datac => \comb~17_combout\,
	datad => \subk_sel[30]~397_combout\,
	combout => \f1|x\(30));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(5),
	combout => \plaintext~combout\(5));

-- Location: LCCOMB_X23_Y24_N16
\inR[23]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[23]~6_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(5)))) # (!\state.R1~regout\ & (r_next(23))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(23),
	datab => \plaintext~combout\(5),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inR[23]~6_combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(14),
	combout => \key~combout\(14));

-- Location: LCCOMB_X17_Y22_N22
\subk_sel[34]~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~363_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(46))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(62)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \subk_sel[6]~16_combout\,
	datac => \subk_sel[6]~17_combout\,
	datad => \key~combout\(62),
	combout => \subk_sel[34]~363_combout\);

-- Location: LCCOMB_X17_Y22_N4
\subk_sel[34]~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~364_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[34]~363_combout\ & (\key~combout\(13))) # (!\subk_sel[34]~363_combout\ & ((\key~combout\(21)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[34]~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[34]~363_combout\,
	combout => \subk_sel[34]~364_combout\);

-- Location: LCCOMB_X17_Y22_N6
\subk_sel[34]~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~365_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(30))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[34]~364_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(30),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[34]~364_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[34]~365_combout\);

-- Location: LCCOMB_X17_Y22_N0
\subk_sel[34]~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~366_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[34]~365_combout\ & (\key~combout\(63))) # (!\subk_sel[34]~365_combout\ & ((\key~combout\(14)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[34]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(14),
	datad => \subk_sel[34]~365_combout\,
	combout => \subk_sel[34]~366_combout\);

-- Location: LCCOMB_X18_Y20_N28
\subk_sel[34]~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~358_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(39))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(47)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[34]~358_combout\);

-- Location: LCCOMB_X18_Y20_N2
\subk_sel[34]~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~359_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[34]~358_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[34]~358_combout\ & (\key~combout\(7))) # (!\subk_sel[34]~358_combout\ & ((\key~combout\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(23),
	datad => \subk_sel[34]~358_combout\,
	combout => \subk_sel[34]~359_combout\);

-- Location: LCCOMB_X18_Y20_N0
\subk_sel[34]~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~360_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(20)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[34]~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[34]~359_combout\,
	combout => \subk_sel[34]~360_combout\);

-- Location: LCCOMB_X18_Y20_N22
\subk_sel[34]~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~361_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[34]~360_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[34]~360_combout\ & ((\key~combout\(53)))) # (!\subk_sel[34]~360_combout\ & (\key~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(4),
	datac => \key~combout\(53),
	datad => \subk_sel[34]~360_combout\,
	combout => \subk_sel[34]~361_combout\);

-- Location: LCCOMB_X17_Y22_N28
\subk_sel[34]~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~362_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(37)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[34]~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(37),
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[34]~361_combout\,
	combout => \subk_sel[34]~362_combout\);

-- Location: LCCOMB_X17_Y22_N30
\subk_sel[34]~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[34]~367_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[34]~362_combout\ & ((\subk_sel[34]~366_combout\))) # (!\subk_sel[34]~362_combout\ & (\key~combout\(29))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[34]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \subk_sel[34]~366_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[34]~362_combout\,
	combout => \subk_sel[34]~367_combout\);

-- Location: LCCOMB_X20_Y22_N0
\f1|x[34]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(34) = \inR[23]~6_combout\ $ (\subk_sel[34]~367_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inR[23]~6_combout\,
	datad => \subk_sel[34]~367_combout\,
	combout => \f1|x\(34));

-- Location: LCCOMB_X25_Y21_N30
\l_next[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[24]~feeder_combout\ = \inR[24]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[24]~8_combout\,
	combout => \l_next[24]~feeder_combout\);

-- Location: LCFF_X25_Y21_N31
\l_next[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[24]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(24));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(62),
	combout => \plaintext~combout\(62));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(3),
	combout => \plaintext~combout\(3));

-- Location: LCCOMB_X14_Y24_N20
\inR[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[15]~5_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(3))) # (!\state.R1~regout\ & ((r_next(15)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(3),
	datad => r_next(15),
	combout => \inR[15]~5_combout\);

-- Location: LCFF_X14_Y24_N21
\l_next[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[15]~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(15));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(2),
	combout => \plaintext~combout\(2));

-- Location: LCCOMB_X22_Y21_N28
\f1|s1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~0_combout\ = (\f1|x\(44) & (\f1|x\(46) $ (((\f1|x\(47)) # (!\f1|x\(42)))))) # (!\f1|x\(44) & ((\f1|x\(47) & (\f1|x\(42) $ (!\f1|x\(46)))) # (!\f1|x\(47) & (!\f1|x\(42) & \f1|x\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(44),
	datab => \f1|x\(47),
	datac => \f1|x\(42),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector1~0_combout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(23),
	combout => \plaintext~combout\(23));

-- Location: LCCOMB_X21_Y22_N2
\subk_sel[44]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~83_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(21)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(37))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[44]~83_combout\);

-- Location: LCCOMB_X21_Y22_N8
\subk_sel[44]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~84_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[44]~83_combout\ & (\key~combout\(53))) # (!\subk_sel[44]~83_combout\ & ((\key~combout\(61)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[44]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~15_combout\,
	datab => \key~combout\(53),
	datac => \key~combout\(61),
	datad => \subk_sel[44]~83_combout\,
	combout => \subk_sel[44]~84_combout\);

-- Location: LCCOMB_X21_Y22_N30
\subk_sel[44]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~85_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(5)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[44]~84_combout\ & !\subk_sel[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[44]~84_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \subk_sel[44]~85_combout\);

-- Location: LCCOMB_X21_Y22_N24
\subk_sel[44]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~86_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[44]~85_combout\ & ((\key~combout\(38)))) # (!\subk_sel[44]~85_combout\ & (\key~combout\(54))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[44]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(38),
	datad => \subk_sel[44]~85_combout\,
	combout => \subk_sel[44]~86_combout\);

-- Location: LCCOMB_X21_Y21_N0
\subk_sel[44]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~78_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(14)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(22) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(22),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[44]~78_combout\);

-- Location: LCCOMB_X21_Y21_N22
\subk_sel[44]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~79_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[44]~78_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[44]~78_combout\ & ((\key~combout\(47)))) # (!\subk_sel[44]~78_combout\ & (\key~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[44]~78_combout\,
	combout => \subk_sel[44]~79_combout\);

-- Location: LCCOMB_X21_Y21_N24
\subk_sel[44]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~80_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(31))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[44]~79_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[44]~79_combout\,
	combout => \subk_sel[44]~80_combout\);

-- Location: LCCOMB_X20_Y21_N16
\subk_sel[44]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~81_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[44]~80_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[44]~80_combout\ & (\key~combout\(28))) # (!\subk_sel[44]~80_combout\ & ((\key~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[44]~80_combout\,
	combout => \subk_sel[44]~81_combout\);

-- Location: LCCOMB_X20_Y21_N26
\subk_sel[44]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~82_combout\ = (\subk_sel[6]~4_combout\ & (\subk_sel[6]~5_combout\)) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & ((\key~combout\(12)))) # (!\subk_sel[6]~5_combout\ & (\subk_sel[44]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[44]~81_combout\,
	datad => \key~combout\(12),
	combout => \subk_sel[44]~82_combout\);

-- Location: LCCOMB_X20_Y21_N4
\subk_sel[44]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[44]~87_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[44]~82_combout\ & ((\subk_sel[44]~86_combout\))) # (!\subk_sel[44]~82_combout\ & (\key~combout\(4))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[44]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(4),
	datac => \subk_sel[44]~86_combout\,
	datad => \subk_sel[44]~82_combout\,
	combout => \subk_sel[44]~87_combout\);

-- Location: LCCOMB_X20_Y21_N14
\f1|x[44]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(44) = \subk_sel[44]~87_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(23)))) # (!\comb~17_combout\ & (r_next(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(29),
	datab => \plaintext~combout\(23),
	datac => \subk_sel[44]~87_combout\,
	datad => \comb~17_combout\,
	combout => \f1|x\(44));

-- Location: LCCOMB_X22_Y21_N14
\f1|s1|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~2_combout\ = (\f1|x\(42) & (\f1|x\(47) $ ((!\f1|x\(44))))) # (!\f1|x\(42) & (\f1|x\(46) & (\f1|x\(47) $ (!\f1|x\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(42),
	datab => \f1|x\(47),
	datac => \f1|x\(44),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector1~2_combout\);

-- Location: LCCOMB_X22_Y21_N2
\f1|s1|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~1_combout\ = (\f1|x\(47) & (\f1|x\(44) $ (((!\f1|x\(46)))))) # (!\f1|x\(47) & ((\f1|x\(42) & ((!\f1|x\(46)))) # (!\f1|x\(42) & (!\f1|x\(44) & \f1|x\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(44),
	datab => \f1|x\(47),
	datac => \f1|x\(42),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector1~1_combout\);

-- Location: LCCOMB_X22_Y21_N20
\f1|s1|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~3_combout\ = (\f1|x\(43) & (\f1|x\(45))) # (!\f1|x\(43) & ((\f1|x\(45) & ((\f1|s1|Selector1~1_combout\))) # (!\f1|x\(45) & (!\f1|s1|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(43),
	datab => \f1|x\(45),
	datac => \f1|s1|Selector1~2_combout\,
	datad => \f1|s1|Selector1~1_combout\,
	combout => \f1|s1|Selector1~3_combout\);

-- Location: LCCOMB_X22_Y21_N6
\f1|s1|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~4_combout\ = (\f1|x\(42) & ((\f1|x\(44) & (!\f1|x\(47))) # (!\f1|x\(44) & ((\f1|x\(47)) # (!\f1|x\(46)))))) # (!\f1|x\(42) & ((\f1|x\(44) & ((\f1|x\(47)) # (!\f1|x\(46)))) # (!\f1|x\(44) & ((\f1|x\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(42),
	datab => \f1|x\(44),
	datac => \f1|x\(47),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector1~4_combout\);

-- Location: LCCOMB_X22_Y21_N12
\f1|s1|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector1~5_combout\ = (\f1|x\(43) & ((\f1|s1|Selector1~3_combout\ & ((!\f1|s1|Selector1~4_combout\))) # (!\f1|s1|Selector1~3_combout\ & (!\f1|s1|Selector1~0_combout\)))) # (!\f1|x\(43) & (((\f1|s1|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(43),
	datab => \f1|s1|Selector1~0_combout\,
	datac => \f1|s1|Selector1~3_combout\,
	datad => \f1|s1|Selector1~4_combout\,
	combout => \f1|s1|Selector1~5_combout\);

-- Location: LCCOMB_X22_Y21_N4
\r_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~3_combout\ = \f1|s1|Selector1~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(2)))) # (!\comb~17_combout\ & (l_next(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(15),
	datac => \plaintext~combout\(2),
	datad => \f1|s1|Selector1~5_combout\,
	combout => \r_next~3_combout\);

-- Location: LCFF_X22_Y21_N5
\r_next[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(15));

-- Location: LCCOMB_X20_Y20_N20
\subk_sel[24]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~168_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(4)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(20))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[24]~168_combout\);

-- Location: LCCOMB_X19_Y20_N24
\subk_sel[24]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~169_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[24]~168_combout\ & (\key~combout\(7))) # (!\subk_sel[24]~168_combout\ & ((\key~combout\(15)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[24]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[24]~168_combout\,
	combout => \subk_sel[24]~169_combout\);

-- Location: LCCOMB_X20_Y20_N6
\subk_sel[24]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~170_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(37))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[24]~169_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(37),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[24]~169_combout\,
	combout => \subk_sel[24]~170_combout\);

-- Location: LCCOMB_X20_Y20_N16
\subk_sel[24]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~171_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[24]~170_combout\ & ((\key~combout\(21)))) # (!\subk_sel[24]~170_combout\ & (\key~combout\(53))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[24]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(21),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[24]~170_combout\,
	combout => \subk_sel[24]~171_combout\);

-- Location: LCCOMB_X22_Y22_N14
\subk_sel[24]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~163_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & (\key~combout\(5))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(5),
	datab => \key~combout\(46),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[24]~163_combout\);

-- Location: LCCOMB_X22_Y22_N8
\subk_sel[24]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~164_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[24]~163_combout\ & ((\key~combout\(30)))) # (!\subk_sel[24]~163_combout\ & (\key~combout\(62))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[24]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[24]~163_combout\,
	combout => \subk_sel[24]~164_combout\);

-- Location: LCCOMB_X20_Y20_N2
\subk_sel[24]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~165_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[24]~164_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(63)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(63),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[24]~164_combout\,
	combout => \subk_sel[24]~165_combout\);

-- Location: LCCOMB_X20_Y20_N4
\subk_sel[24]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~166_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[24]~165_combout\ & ((\key~combout\(47)))) # (!\subk_sel[24]~165_combout\ & (\key~combout\(14))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[24]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[24]~165_combout\,
	combout => \subk_sel[24]~166_combout\);

-- Location: LCCOMB_X20_Y20_N22
\subk_sel[24]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~167_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\) # ((\key~combout\(23))))) # (!\subk_sel[6]~4_combout\ & (!\subk_sel[6]~5_combout\ & (\subk_sel[24]~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[24]~166_combout\,
	datad => \key~combout\(23),
	combout => \subk_sel[24]~167_combout\);

-- Location: LCCOMB_X20_Y20_N14
\subk_sel[24]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[24]~172_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[24]~167_combout\ & ((\subk_sel[24]~171_combout\))) # (!\subk_sel[24]~167_combout\ & (\key~combout\(31))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[24]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[24]~171_combout\,
	datad => \subk_sel[24]~167_combout\,
	combout => \subk_sel[24]~172_combout\);

-- Location: LCCOMB_X21_Y20_N16
\f1|x[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(24) = \subk_sel[24]~172_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(3))) # (!\comb~17_combout\ & ((r_next(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(3),
	datac => r_next(15),
	datad => \subk_sel[24]~172_combout\,
	combout => \f1|x\(24));

-- Location: LCCOMB_X25_Y21_N28
\inR[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[20]~20_combout\ = (\state.R1~regout\ & (\plaintext~combout\(29))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(20)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(29),
	datab => \state.R1~regout\,
	datac => \state.IDLE~regout\,
	datad => r_next(20),
	combout => \inR[20]~20_combout\);

-- Location: LCFF_X25_Y21_N29
\l_next[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[20]~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(20));

-- Location: LCCOMB_X17_Y26_N30
\f1|x[10]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~159_combout\ = (\state.R1~regout\ & (!\key~combout\(43))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((!\key~combout\(52)))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \key~combout\(52),
	datac => \state.R1~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \f1|x[10]~159_combout\);

-- Location: LCCOMB_X18_Y26_N20
\subk_sel[10]~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[10]~303_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(58)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(11) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(11),
	datab => \key~combout\(58),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[10]~303_combout\);

-- Location: LCCOMB_X18_Y26_N10
\subk_sel[10]~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[10]~304_combout\ = (\subk_sel[10]~303_combout\ & (((\key~combout\(27)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[10]~303_combout\ & (\key~combout\(35) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(35),
	datab => \key~combout\(27),
	datac => \subk_sel[10]~303_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[10]~304_combout\);

-- Location: LCCOMB_X17_Y26_N18
\f1|x[10]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~135_combout\ = (\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~14_combout\ & !\key~combout\(26))))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(26),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[10]~135_combout\);

-- Location: LCCOMB_X17_Y26_N20
\f1|x[10]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~136_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[10]~135_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[10]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[10]~304_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \f1|x[10]~135_combout\,
	combout => \f1|x[10]~136_combout\);

-- Location: LCCOMB_X17_Y26_N14
\f1|x[10]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~137_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[10]~136_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[10]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[10]~159_combout\,
	datac => \f1|x[10]~136_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[10]~137_combout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(57),
	combout => \key~combout\(57));

-- Location: LCCOMB_X18_Y26_N12
\subk_sel[10]~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[10]~305_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(49))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(57)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(49),
	datab => \key~combout\(57),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[10]~305_combout\);

-- Location: LCCOMB_X18_Y26_N2
\subk_sel[10]~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[10]~306_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[10]~305_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[10]~305_combout\ & ((\key~combout\(17)))) # (!\subk_sel[10]~305_combout\ & (\key~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(33),
	datab => \key~combout\(17),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[10]~305_combout\,
	combout => \subk_sel[10]~306_combout\);

-- Location: LCCOMB_X18_Y26_N24
\subk_sel[10]~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[10]~307_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(1))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[10]~306_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(1),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[10]~306_combout\,
	combout => \subk_sel[10]~307_combout\);

-- Location: LCCOMB_X17_Y26_N28
\f1|x[10]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~138_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[10]~307_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[10]~307_combout\ & (!\key~combout\(36))) # (!\subk_sel[10]~307_combout\ & ((\f1|x[10]~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \f1|x[10]~159_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[10]~307_combout\,
	combout => \f1|x[10]~138_combout\);

-- Location: LCCOMB_X17_Y26_N10
\f1|x[10]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[10]~139_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[10]~135_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[10]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x[10]~135_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[10]~138_combout\,
	combout => \f1|x[10]~139_combout\);

-- Location: LCCOMB_X17_Y26_N16
\f1|x[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(10) = \f1|x[10]~134_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[10]~137_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[10]~139_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[10]~134_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \f1|x[10]~137_combout\,
	datad => \f1|x[10]~139_combout\,
	combout => \f1|x\(10));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(9),
	combout => \plaintext~combout\(9));

-- Location: LCCOMB_X17_Y24_N12
\subk_sel[9]~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~308_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(44) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(51)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \key~combout\(51),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[9]~308_combout\);

-- Location: LCCOMB_X17_Y24_N2
\subk_sel[9]~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~309_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[9]~308_combout\ & ((\key~combout\(35)))) # (!\subk_sel[9]~308_combout\ & (\key~combout\(36))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[9]~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(36),
	datac => \key~combout\(35),
	datad => \subk_sel[9]~308_combout\,
	combout => \subk_sel[9]~309_combout\);

-- Location: LCCOMB_X17_Y25_N28
\subk_sel[9]~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~310_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[9]~309_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(3)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[9]~309_combout\,
	combout => \subk_sel[9]~310_combout\);

-- Location: LCCOMB_X17_Y25_N30
\subk_sel[9]~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~311_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[9]~310_combout\ & (\key~combout\(50))) # (!\subk_sel[9]~310_combout\ & ((\key~combout\(19)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[9]~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(19),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[9]~310_combout\,
	combout => \subk_sel[9]~311_combout\);

-- Location: LCCOMB_X17_Y25_N4
\subk_sel[9]~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~312_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(26)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[9]~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(26),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[9]~311_combout\,
	combout => \subk_sel[9]~312_combout\);

-- Location: LCCOMB_X16_Y22_N6
\subk_sel[9]~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~313_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(41))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(57)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(41),
	datab => \key~combout\(57),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[9]~313_combout\);

-- Location: LCCOMB_X16_Y22_N18
\subk_sel[9]~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~314_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[9]~313_combout\ & ((\key~combout\(10)))) # (!\subk_sel[9]~313_combout\ & (\key~combout\(18))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[9]~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \subk_sel[6]~15_combout\,
	datac => \key~combout\(10),
	datad => \subk_sel[9]~313_combout\,
	combout => \subk_sel[9]~314_combout\);

-- Location: LCCOMB_X16_Y22_N2
\subk_sel[9]~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~315_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(9))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[9]~314_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[9]~314_combout\,
	combout => \subk_sel[9]~315_combout\);

-- Location: LCCOMB_X16_Y22_N4
\subk_sel[9]~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~316_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[9]~315_combout\ & ((\key~combout\(60)))) # (!\subk_sel[9]~315_combout\ & (\key~combout\(25))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[9]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[9]~315_combout\,
	combout => \subk_sel[9]~316_combout\);

-- Location: LCCOMB_X17_Y25_N6
\subk_sel[9]~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[9]~317_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[9]~312_combout\ & ((\subk_sel[9]~316_combout\))) # (!\subk_sel[9]~312_combout\ & (\key~combout\(34))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[9]~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[9]~312_combout\,
	datad => \subk_sel[9]~316_combout\,
	combout => \subk_sel[9]~317_combout\);

-- Location: LCCOMB_X17_Y25_N8
\f1|x[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(9) = \subk_sel[9]~317_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(9)))) # (!\comb~17_combout\ & (r_next(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(6),
	datab => \plaintext~combout\(9),
	datac => \comb~17_combout\,
	datad => \subk_sel[9]~317_combout\,
	combout => \f1|x\(9));

-- Location: LCCOMB_X18_Y25_N20
\f1|s1|WideOr87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr87~0_combout\ = (\f1|x\(8) & (\f1|x\(10) $ (((\f1|x\(7)) # (\f1|x\(9)))))) # (!\f1|x\(8) & (\f1|x\(7) $ (((!\f1|x\(10) & \f1|x\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr87~0_combout\);

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(59),
	combout => \plaintext~combout\(59));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(58),
	combout => \plaintext~combout\(58));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(21),
	combout => \plaintext~combout\(21));

-- Location: LCCOMB_X21_Y21_N12
\subk_sel[32]~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~378_combout\ = (\subk_sel[6]~7_combout\ & (((\key~combout\(13)) # (!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(21) & ((\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(21),
	datab => \key~combout\(13),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[32]~378_combout\);

-- Location: LCCOMB_X21_Y21_N30
\subk_sel[32]~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~379_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[32]~378_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[32]~378_combout\ & ((\key~combout\(46)))) # (!\subk_sel[32]~378_combout\ & (\key~combout\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(46),
	datad => \subk_sel[32]~378_combout\,
	combout => \subk_sel[32]~379_combout\);

-- Location: LCCOMB_X21_Y21_N28
\subk_sel[32]~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~380_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(30))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[32]~379_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(30),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[32]~379_combout\,
	combout => \subk_sel[32]~380_combout\);

-- Location: LCCOMB_X21_Y21_N2
\subk_sel[32]~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~381_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[32]~380_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[32]~380_combout\ & ((\key~combout\(63)))) # (!\subk_sel[32]~380_combout\ & (\key~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(63),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[32]~380_combout\,
	combout => \subk_sel[32]~381_combout\);

-- Location: LCCOMB_X21_Y21_N20
\subk_sel[32]~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~382_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(47))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[32]~381_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(47),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[32]~381_combout\,
	combout => \subk_sel[32]~382_combout\);

-- Location: LCCOMB_X19_Y20_N22
\subk_sel[32]~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~383_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(20)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(7))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(20),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[32]~383_combout\);

-- Location: LCCOMB_X19_Y20_N16
\subk_sel[32]~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~384_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[32]~383_combout\ & (\key~combout\(23))) # (!\subk_sel[32]~383_combout\ & ((\key~combout\(31)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[32]~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(31),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[32]~383_combout\,
	combout => \subk_sel[32]~384_combout\);

-- Location: LCCOMB_X20_Y20_N28
\subk_sel[32]~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~385_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(4)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((!\subk_sel[6]~13_combout\ & \subk_sel[32]~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(4),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[32]~384_combout\,
	combout => \subk_sel[32]~385_combout\);

-- Location: LCCOMB_X20_Y20_N10
\subk_sel[32]~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~386_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[32]~385_combout\ & ((\key~combout\(37)))) # (!\subk_sel[32]~385_combout\ & (\key~combout\(53))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[32]~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(37),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[32]~385_combout\,
	combout => \subk_sel[32]~386_combout\);

-- Location: LCCOMB_X21_Y21_N6
\subk_sel[32]~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[32]~387_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[32]~382_combout\ & ((\subk_sel[32]~386_combout\))) # (!\subk_sel[32]~382_combout\ & (\key~combout\(39))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[32]~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(39),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[32]~382_combout\,
	datad => \subk_sel[32]~386_combout\,
	combout => \subk_sel[32]~387_combout\);

-- Location: LCCOMB_X20_Y22_N6
\f1|x[32]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(32) = \subk_sel[32]~387_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(21)))) # (!\comb~17_combout\ & (r_next(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(21),
	datab => \plaintext~combout\(21),
	datac => \comb~17_combout\,
	datad => \subk_sel[32]~387_combout\,
	combout => \f1|x\(32));

-- Location: LCCOMB_X19_Y23_N28
\f1|s1|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~4_combout\ = (\f1|x\(31) & (\f1|x\(35) $ (\f1|x\(30) $ (!\f1|x\(32))))) # (!\f1|x\(31) & ((\f1|x\(35) & (\f1|x\(30) $ (!\f1|x\(32)))) # (!\f1|x\(35) & (!\f1|x\(30) & \f1|x\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(31),
	datab => \f1|x\(35),
	datac => \f1|x\(30),
	datad => \f1|x\(32),
	combout => \f1|s1|Selector8~4_combout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(29),
	combout => \plaintext~combout\(29));

-- Location: LCCOMB_X19_Y22_N0
\subk_sel[31]~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~413_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(37)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(53))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~16_combout\,
	datab => \key~combout\(53),
	datac => \key~combout\(37),
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[31]~413_combout\);

-- Location: LCCOMB_X19_Y22_N22
\subk_sel[31]~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~414_combout\ = (\subk_sel[31]~413_combout\ & (((\key~combout\(4)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[31]~413_combout\ & (\key~combout\(12) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \subk_sel[31]~413_combout\,
	datac => \key~combout\(4),
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[31]~414_combout\);

-- Location: LCCOMB_X19_Y22_N20
\subk_sel[31]~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~415_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\key~combout\(5))))) # (!\subk_sel[6]~13_combout\ & (!\subk_sel[6]~14_combout\ & ((\subk_sel[31]~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(5),
	datad => \subk_sel[31]~414_combout\,
	combout => \subk_sel[31]~415_combout\);

-- Location: LCCOMB_X19_Y22_N14
\subk_sel[31]~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~416_combout\ = (\subk_sel[31]~415_combout\ & (((\key~combout\(54)) # (!\subk_sel[6]~14_combout\)))) # (!\subk_sel[31]~415_combout\ & (\key~combout\(21) & ((\subk_sel[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(21),
	datab => \key~combout\(54),
	datac => \subk_sel[31]~415_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[31]~416_combout\);

-- Location: LCCOMB_X18_Y21_N22
\subk_sel[31]~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~408_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(38) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(14)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~2_combout\,
	datac => \key~combout\(14),
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[31]~408_combout\);

-- Location: LCCOMB_X19_Y22_N16
\subk_sel[31]~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~409_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[31]~408_combout\ & (\key~combout\(63))) # (!\subk_sel[31]~408_combout\ & ((\key~combout\(30)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[31]~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \subk_sel[6]~7_combout\,
	datac => \key~combout\(30),
	datad => \subk_sel[31]~408_combout\,
	combout => \subk_sel[31]~409_combout\);

-- Location: LCCOMB_X19_Y22_N18
\subk_sel[31]~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~410_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[31]~409_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[31]~409_combout\,
	datad => \subk_sel[6]~1_combout\,
	combout => \subk_sel[31]~410_combout\);

-- Location: LCCOMB_X19_Y22_N4
\subk_sel[31]~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~411_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[31]~410_combout\ & ((\key~combout\(15)))) # (!\subk_sel[31]~410_combout\ & (\key~combout\(47))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[31]~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(47),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[31]~410_combout\,
	combout => \subk_sel[31]~411_combout\);

-- Location: LCCOMB_X19_Y22_N2
\subk_sel[31]~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~412_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(20))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[31]~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(20),
	datac => \subk_sel[31]~411_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \subk_sel[31]~412_combout\);

-- Location: LCCOMB_X19_Y22_N28
\subk_sel[31]~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[31]~417_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[31]~412_combout\ & ((\subk_sel[31]~416_combout\))) # (!\subk_sel[31]~412_combout\ & (\key~combout\(28))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[31]~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(28),
	datac => \subk_sel[31]~416_combout\,
	datad => \subk_sel[31]~412_combout\,
	combout => \subk_sel[31]~417_combout\);

-- Location: LCCOMB_X19_Y22_N10
\f1|x[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(31) = \subk_sel[31]~417_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(29)))) # (!\comb~17_combout\ & (r_next(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(20),
	datac => \plaintext~combout\(29),
	datad => \subk_sel[31]~417_combout\,
	combout => \f1|x\(31));

-- Location: LCCOMB_X20_Y21_N10
\f1|s1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~0_combout\ = \f1|x\(31) $ (((\f1|x\(35) & (\f1|x\(30) $ (!\f1|x\(32)))) # (!\f1|x\(35) & (!\f1|x\(30) & \f1|x\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(35),
	datab => \f1|x\(30),
	datac => \f1|x\(31),
	datad => \f1|x\(32),
	combout => \f1|s1|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y23_N4
\f1|s1|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~2_combout\ = (\f1|x\(30) & (\f1|x\(35) $ (\f1|x\(31) $ (\f1|x\(32))))) # (!\f1|x\(30) & ((\f1|x\(31) & ((!\f1|x\(32)))) # (!\f1|x\(31) & (\f1|x\(35) & \f1|x\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(30),
	datab => \f1|x\(35),
	datac => \f1|x\(31),
	datad => \f1|x\(32),
	combout => \f1|s1|Selector8~2_combout\);

-- Location: LCCOMB_X19_Y23_N10
\f1|s1|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~1_combout\ = (\f1|x\(35) & (\f1|x\(32) $ (((\f1|x\(31)) # (!\f1|x\(30)))))) # (!\f1|x\(35) & (\f1|x\(32) & (\f1|x\(30) $ (!\f1|x\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(30),
	datab => \f1|x\(35),
	datac => \f1|x\(31),
	datad => \f1|x\(32),
	combout => \f1|s1|Selector8~1_combout\);

-- Location: LCCOMB_X19_Y23_N22
\f1|s1|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~3_combout\ = (\f1|x\(33) & ((\f1|x\(34)) # ((\f1|s1|Selector8~1_combout\)))) # (!\f1|x\(33) & (!\f1|x\(34) & (!\f1|s1|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(34),
	datac => \f1|s1|Selector8~2_combout\,
	datad => \f1|s1|Selector8~1_combout\,
	combout => \f1|s1|Selector8~3_combout\);

-- Location: LCCOMB_X19_Y23_N30
\f1|s1|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector8~5_combout\ = (\f1|x\(34) & ((\f1|s1|Selector8~3_combout\ & (!\f1|s1|Selector8~4_combout\)) # (!\f1|s1|Selector8~3_combout\ & ((\f1|s1|Selector8~0_combout\))))) # (!\f1|x\(34) & (((\f1|s1|Selector8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(34),
	datab => \f1|s1|Selector8~4_combout\,
	datac => \f1|s1|Selector8~0_combout\,
	datad => \f1|s1|Selector8~3_combout\,
	combout => \f1|s1|Selector8~5_combout\);

-- Location: LCCOMB_X19_Y23_N0
\r_next~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~41_combout\ = \f1|s1|Selector8~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(58)))) # (!\comb~17_combout\ & (l_next(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(8),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(58),
	datad => \f1|s1|Selector8~5_combout\,
	combout => \r_next~41_combout\);

-- Location: LCFF_X19_Y23_N1
\r_next[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~41_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(8));

-- Location: LCCOMB_X15_Y24_N22
\inR[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[8]~15_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(59))) # (!\state.R1~regout\ & ((r_next(8)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \plaintext~combout\(59),
	datac => r_next(8),
	datad => \state.R1~regout\,
	combout => \inR[8]~15_combout\);

-- Location: LCCOMB_X19_Y26_N20
\subk_sel[11]~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~343_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(18))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(34)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \key~combout\(34),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[11]~343_combout\);

-- Location: LCCOMB_X19_Y26_N18
\subk_sel[11]~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~344_combout\ = (\subk_sel[11]~343_combout\ & (((\key~combout\(50)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[11]~343_combout\ & (\key~combout\(58) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(58),
	datab => \key~combout\(50),
	datac => \subk_sel[11]~343_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[11]~344_combout\);

-- Location: LCCOMB_X19_Y26_N0
\subk_sel[11]~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~345_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(49)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[11]~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(49),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[11]~344_combout\,
	combout => \subk_sel[11]~345_combout\);

-- Location: LCCOMB_X19_Y26_N22
\subk_sel[11]~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~346_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[11]~345_combout\ & ((\key~combout\(33)))) # (!\subk_sel[11]~345_combout\ & (\key~combout\(2))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[11]~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \key~combout\(33),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[11]~345_combout\,
	combout => \subk_sel[11]~346_combout\);

-- Location: LCCOMB_X16_Y21_N28
\subk_sel[11]~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~338_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(17) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(60)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[11]~338_combout\);

-- Location: LCCOMB_X16_Y21_N6
\subk_sel[11]~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~339_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[11]~338_combout\ & ((\key~combout\(44)))) # (!\subk_sel[11]~338_combout\ & (\key~combout\(9))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[11]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \key~combout\(44),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[11]~338_combout\,
	combout => \subk_sel[11]~339_combout\);

-- Location: LCCOMB_X16_Y21_N24
\subk_sel[11]~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~340_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[11]~339_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(43)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[11]~339_combout\,
	combout => \subk_sel[11]~340_combout\);

-- Location: LCCOMB_X16_Y21_N26
\subk_sel[11]~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~341_combout\ = (\subk_sel[11]~340_combout\ & (((\key~combout\(27)) # (!\subk_sel[6]~6_combout\)))) # (!\subk_sel[11]~340_combout\ & (\key~combout\(59) & ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(59),
	datab => \key~combout\(27),
	datac => \subk_sel[11]~340_combout\,
	datad => \subk_sel[6]~6_combout\,
	combout => \subk_sel[11]~341_combout\);

-- Location: LCCOMB_X16_Y25_N0
\subk_sel[11]~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~342_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(3)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[11]~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[11]~341_combout\,
	combout => \subk_sel[11]~342_combout\);

-- Location: LCCOMB_X16_Y25_N10
\subk_sel[11]~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[11]~347_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[11]~342_combout\ & ((\subk_sel[11]~346_combout\))) # (!\subk_sel[11]~342_combout\ & (\key~combout\(11))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[11]~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(11),
	datac => \subk_sel[11]~346_combout\,
	datad => \subk_sel[11]~342_combout\,
	combout => \subk_sel[11]~347_combout\);

-- Location: LCCOMB_X16_Y25_N4
\f1|x[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(11) = \inR[8]~15_combout\ $ (\subk_sel[11]~347_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inR[8]~15_combout\,
	datad => \subk_sel[11]~347_combout\,
	combout => \f1|x\(11));

-- Location: LCCOMB_X18_Y25_N16
\f1|s1|WideOr88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr88~0_combout\ = \f1|x\(7) $ (((\f1|x\(10) & ((!\f1|x\(9)))) # (!\f1|x\(10) & (\f1|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr88~0_combout\);

-- Location: LCCOMB_X18_Y25_N18
\f1|s1|WideOr92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr92~0_combout\ = (\f1|x\(7) & ((\f1|x\(9) & ((!\f1|x\(10)))) # (!\f1|x\(9) & (!\f1|x\(8))))) # (!\f1|x\(7) & ((\f1|x\(10) & ((\f1|x\(9)))) # (!\f1|x\(10) & (\f1|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr92~0_combout\);

-- Location: LCCOMB_X17_Y25_N10
\f1|s1|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector25~0_combout\ = (\f1|x\(6) & ((\f1|x\(11)) # ((!\f1|s1|WideOr92~0_combout\)))) # (!\f1|x\(6) & (!\f1|x\(11) & (!\f1|s1|WideOr88~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|s1|WideOr88~0_combout\,
	datad => \f1|s1|WideOr92~0_combout\,
	combout => \f1|s1|Selector25~0_combout\);

-- Location: LCCOMB_X17_Y25_N0
\f1|s1|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector25~1_combout\ = (\f1|x\(11) & ((\f1|s1|Selector25~0_combout\ & (!\f1|s1|WideOr98~0_combout\)) # (!\f1|s1|Selector25~0_combout\ & ((\f1|s1|WideOr87~0_combout\))))) # (!\f1|x\(11) & (((\f1|s1|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|WideOr98~0_combout\,
	datab => \f1|s1|WideOr87~0_combout\,
	datac => \f1|x\(11),
	datad => \f1|s1|Selector25~0_combout\,
	combout => \f1|s1|Selector25~1_combout\);

-- Location: LCCOMB_X17_Y25_N20
\r_next~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~18_combout\ = \f1|s1|Selector25~1_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(28))) # (!\comb~17_combout\ & ((l_next(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(28),
	datab => \comb~17_combout\,
	datac => l_next(20),
	datad => \f1|s1|Selector25~1_combout\,
	combout => \r_next~18_combout\);

-- Location: LCFF_X17_Y25_N21
\r_next[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(20));

-- Location: LCCOMB_X18_Y20_N8
\subk_sel[29]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~153_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(15)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(23))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[29]~153_combout\);

-- Location: LCCOMB_X18_Y20_N26
\subk_sel[29]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~154_combout\ = (\subk_sel[29]~153_combout\ & ((\key~combout\(12)) # ((\subk_sel[6]~2_combout\)))) # (!\subk_sel[29]~153_combout\ & (((\key~combout\(28) & !\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \key~combout\(28),
	datac => \subk_sel[29]~153_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[29]~154_combout\);

-- Location: LCCOMB_X18_Y20_N12
\subk_sel[29]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~155_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(61)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[29]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(61),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[29]~154_combout\,
	combout => \subk_sel[29]~155_combout\);

-- Location: LCCOMB_X18_Y20_N30
\subk_sel[29]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~156_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[29]~155_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[29]~155_combout\ & ((\key~combout\(29)))) # (!\subk_sel[29]~155_combout\ & (\key~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(45),
	datac => \key~combout\(29),
	datad => \subk_sel[29]~155_combout\,
	combout => \subk_sel[29]~156_combout\);

-- Location: LCCOMB_X18_Y20_N16
\subk_sel[29]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~157_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(13)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[29]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(13),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[29]~156_combout\,
	combout => \subk_sel[29]~157_combout\);

-- Location: LCCOMB_X22_Y22_N26
\subk_sel[29]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~158_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(22)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(38))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \key~combout\(22),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[29]~158_combout\);

-- Location: LCCOMB_X22_Y22_N24
\subk_sel[29]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~159_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[29]~158_combout\ & ((\key~combout\(54)))) # (!\subk_sel[29]~158_combout\ & (\key~combout\(62))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[29]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \key~combout\(54),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[29]~158_combout\,
	combout => \subk_sel[29]~159_combout\);

-- Location: LCCOMB_X21_Y22_N22
\subk_sel[29]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~160_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(6))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[29]~159_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[29]~159_combout\,
	combout => \subk_sel[29]~160_combout\);

-- Location: LCCOMB_X20_Y22_N18
\subk_sel[29]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~161_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[29]~160_combout\ & ((\key~combout\(39)))) # (!\subk_sel[29]~160_combout\ & (\key~combout\(55))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[29]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(55),
	datab => \key~combout\(39),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[29]~160_combout\,
	combout => \subk_sel[29]~161_combout\);

-- Location: LCCOMB_X19_Y22_N12
\subk_sel[29]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[29]~162_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[29]~157_combout\ & ((\subk_sel[29]~161_combout\))) # (!\subk_sel[29]~157_combout\ & (\key~combout\(5))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[29]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(5),
	datac => \subk_sel[29]~157_combout\,
	datad => \subk_sel[29]~161_combout\,
	combout => \subk_sel[29]~162_combout\);

-- Location: LCCOMB_X19_Y22_N6
\f1|x[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(29) = \subk_sel[29]~162_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(29)))) # (!\comb~17_combout\ & (r_next(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(20),
	datac => \plaintext~combout\(29),
	datad => \subk_sel[29]~162_combout\,
	combout => \f1|x\(29));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(45),
	combout => \plaintext~combout\(45));

-- Location: LCCOMB_X22_Y22_N30
\subk_sel[27]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~128_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(45))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(61)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(45),
	datab => \key~combout\(61),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[27]~128_combout\);

-- Location: LCCOMB_X22_Y22_N4
\subk_sel[27]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~129_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[27]~128_combout\ & ((\key~combout\(12)))) # (!\subk_sel[27]~128_combout\ & (\key~combout\(20))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[27]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \key~combout\(12),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[27]~128_combout\,
	combout => \subk_sel[27]~129_combout\);

-- Location: LCCOMB_X22_Y22_N22
\subk_sel[27]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~130_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(13))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[27]~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(13),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[27]~129_combout\,
	combout => \subk_sel[27]~130_combout\);

-- Location: LCCOMB_X22_Y23_N14
\subk_sel[27]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~131_combout\ = (\subk_sel[27]~130_combout\ & ((\key~combout\(62)) # ((!\subk_sel[6]~14_combout\)))) # (!\subk_sel[27]~130_combout\ & (((\key~combout\(29) & \subk_sel[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \key~combout\(29),
	datac => \subk_sel[27]~130_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[27]~131_combout\);

-- Location: LCCOMB_X22_Y23_N24
\subk_sel[27]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~123_combout\ = (\subk_sel[6]~2_combout\ & (((\key~combout\(46) & !\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(22)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \key~combout\(46),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[27]~123_combout\);

-- Location: LCCOMB_X22_Y23_N18
\subk_sel[27]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~124_combout\ = (\subk_sel[27]~123_combout\ & (((\key~combout\(6)) # (!\subk_sel[6]~7_combout\)))) # (!\subk_sel[27]~123_combout\ & (\key~combout\(38) & ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \key~combout\(6),
	datac => \subk_sel[27]~123_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[27]~124_combout\);

-- Location: LCCOMB_X22_Y23_N0
\subk_sel[27]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~125_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[27]~124_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(39)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(39),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[27]~124_combout\,
	combout => \subk_sel[27]~125_combout\);

-- Location: LCCOMB_X22_Y23_N26
\subk_sel[27]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~126_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[27]~125_combout\ & (\key~combout\(23))) # (!\subk_sel[27]~125_combout\ & ((\key~combout\(55)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[27]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[27]~125_combout\,
	combout => \subk_sel[27]~126_combout\);

-- Location: LCCOMB_X22_Y23_N12
\subk_sel[27]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~127_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(28))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[27]~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(28),
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[27]~126_combout\,
	combout => \subk_sel[27]~127_combout\);

-- Location: LCCOMB_X22_Y23_N16
\subk_sel[27]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[27]~132_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[27]~127_combout\ & ((\subk_sel[27]~131_combout\))) # (!\subk_sel[27]~127_combout\ & (\key~combout\(7))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[27]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(7),
	datac => \subk_sel[27]~131_combout\,
	datad => \subk_sel[27]~127_combout\,
	combout => \subk_sel[27]~132_combout\);

-- Location: LCCOMB_X22_Y23_N6
\f1|x[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(27) = \subk_sel[27]~132_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(45)))) # (!\comb~17_combout\ & (r_next(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(18),
	datab => \plaintext~combout\(45),
	datac => \subk_sel[27]~132_combout\,
	datad => \comb~17_combout\,
	combout => \f1|x\(27));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(61),
	combout => \plaintext~combout\(61));

-- Location: LCCOMB_X18_Y22_N22
\subk_sel[25]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~148_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(63)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(14) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \subk_sel[6]~17_combout\,
	datac => \key~combout\(14),
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[25]~148_combout\);

-- Location: LCCOMB_X22_Y22_N16
\subk_sel[25]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~149_combout\ = (\subk_sel[25]~148_combout\ & (((\key~combout\(30)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[25]~148_combout\ & (\key~combout\(38) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \key~combout\(30),
	datac => \subk_sel[25]~148_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[25]~149_combout\);

-- Location: LCCOMB_X23_Y22_N16
\subk_sel[25]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~150_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(31))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[25]~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[25]~149_combout\,
	combout => \subk_sel[25]~150_combout\);

-- Location: LCCOMB_X24_Y22_N0
\subk_sel[25]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~151_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[25]~150_combout\ & (\key~combout\(15))) # (!\subk_sel[25]~150_combout\ & ((\key~combout\(47)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[25]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(15),
	datab => \key~combout\(47),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[25]~150_combout\,
	combout => \subk_sel[25]~151_combout\);

-- Location: LCCOMB_X22_Y20_N20
\subk_sel[25]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~143_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(28) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(4)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[25]~143_combout\);

-- Location: LCCOMB_X21_Y20_N28
\subk_sel[25]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~144_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[25]~143_combout\ & ((\key~combout\(53)))) # (!\subk_sel[25]~143_combout\ & (\key~combout\(20))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[25]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \key~combout\(53),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[25]~143_combout\,
	combout => \subk_sel[25]~144_combout\);

-- Location: LCCOMB_X21_Y20_N6
\subk_sel[25]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~145_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[25]~144_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(21)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(21),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[25]~144_combout\,
	combout => \subk_sel[25]~145_combout\);

-- Location: LCCOMB_X20_Y23_N22
\subk_sel[25]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~146_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[25]~145_combout\ & ((\key~combout\(5)))) # (!\subk_sel[25]~145_combout\ & (\key~combout\(37))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[25]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \key~combout\(5),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[25]~145_combout\,
	combout => \subk_sel[25]~146_combout\);

-- Location: LCCOMB_X20_Y23_N28
\subk_sel[25]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~147_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(46)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[25]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[25]~146_combout\,
	combout => \subk_sel[25]~147_combout\);

-- Location: LCCOMB_X20_Y23_N26
\subk_sel[25]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[25]~152_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[25]~147_combout\ & ((\subk_sel[25]~151_combout\))) # (!\subk_sel[25]~147_combout\ & (\key~combout\(54))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[25]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[25]~151_combout\,
	datad => \subk_sel[25]~147_combout\,
	combout => \subk_sel[25]~152_combout\);

-- Location: LCCOMB_X20_Y23_N20
\f1|x[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(25) = \subk_sel[25]~152_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(61)))) # (!\comb~17_combout\ & (r_next(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(16),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(61),
	datad => \subk_sel[25]~152_combout\,
	combout => \f1|x\(25));

-- Location: LCCOMB_X19_Y20_N28
\subk_sel[28]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~118_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(15)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(31))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(31),
	datab => \key~combout\(15),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[28]~118_combout\);

-- Location: LCCOMB_X19_Y20_N6
\subk_sel[28]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~119_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[28]~118_combout\ & (\key~combout\(47))) # (!\subk_sel[28]~118_combout\ & ((\key~combout\(55)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[28]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(47),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[28]~118_combout\,
	combout => \subk_sel[28]~119_combout\);

-- Location: LCCOMB_X19_Y20_N0
\subk_sel[28]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~120_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\key~combout\(28))))) # (!\subk_sel[6]~14_combout\ & (!\subk_sel[6]~13_combout\ & ((\subk_sel[28]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(28),
	datad => \subk_sel[28]~119_combout\,
	combout => \subk_sel[28]~120_combout\);

-- Location: LCCOMB_X19_Y20_N2
\subk_sel[28]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~121_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[28]~120_combout\ & ((\key~combout\(61)))) # (!\subk_sel[28]~120_combout\ & (\key~combout\(12))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[28]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \subk_sel[6]~13_combout\,
	datac => \key~combout\(61),
	datad => \subk_sel[28]~120_combout\,
	combout => \subk_sel[28]~121_combout\);

-- Location: LCCOMB_X21_Y23_N12
\subk_sel[28]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~113_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(37)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(45) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \key~combout\(45),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[28]~113_combout\);

-- Location: LCCOMB_X21_Y23_N14
\subk_sel[28]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~114_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[28]~113_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[28]~113_combout\ & ((\key~combout\(5)))) # (!\subk_sel[28]~113_combout\ & (\key~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(21),
	datab => \key~combout\(5),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[28]~113_combout\,
	combout => \subk_sel[28]~114_combout\);

-- Location: LCCOMB_X22_Y23_N22
\subk_sel[28]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~115_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(54))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[28]~114_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(54),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[28]~114_combout\,
	combout => \subk_sel[28]~115_combout\);

-- Location: LCCOMB_X22_Y23_N8
\subk_sel[28]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~116_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[28]~115_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[28]~115_combout\ & (\key~combout\(22))) # (!\subk_sel[28]~115_combout\ & ((\key~combout\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \key~combout\(38),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[28]~115_combout\,
	combout => \subk_sel[28]~116_combout\);

-- Location: LCCOMB_X22_Y23_N30
\subk_sel[28]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~117_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(6))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[28]~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(6),
	datac => \subk_sel[28]~116_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \subk_sel[28]~117_combout\);

-- Location: LCCOMB_X21_Y23_N0
\subk_sel[28]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[28]~122_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[28]~117_combout\ & ((\subk_sel[28]~121_combout\))) # (!\subk_sel[28]~117_combout\ & (\key~combout\(63))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[28]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(63),
	datac => \subk_sel[28]~121_combout\,
	datad => \subk_sel[28]~117_combout\,
	combout => \subk_sel[28]~122_combout\);

-- Location: LCCOMB_X21_Y23_N10
\f1|x[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(28) = \subk_sel[28]~122_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(37)))) # (!\comb~17_combout\ & (r_next(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(19),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(37),
	datad => \subk_sel[28]~122_combout\,
	combout => \f1|x\(28));

-- Location: LCCOMB_X23_Y23_N4
\f1|s1|WideOr53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr53~0_combout\ = (\f1|x\(28) & (\f1|x\(26) $ (((!\f1|x\(25)))))) # (!\f1|x\(28) & (\f1|x\(27) $ (((!\f1|x\(26) & \f1|x\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(26),
	datab => \f1|x\(27),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr53~0_combout\);

-- Location: LCCOMB_X23_Y23_N30
\f1|s1|WideOr49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr49~0_combout\ = (\f1|x\(26) & (\f1|x\(28) $ (((\f1|x\(27)) # (\f1|x\(25)))))) # (!\f1|x\(26) & ((\f1|x\(27) & (!\f1|x\(25))) # (!\f1|x\(27) & ((\f1|x\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(26),
	datab => \f1|x\(27),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr49~0_combout\);

-- Location: LCCOMB_X23_Y23_N16
\f1|s1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector13~0_combout\ = (\f1|x\(29) & (\f1|s1|WideOr53~0_combout\)) # (!\f1|x\(29) & ((!\f1|s1|WideOr49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x\(29),
	datac => \f1|s1|WideOr53~0_combout\,
	datad => \f1|s1|WideOr49~0_combout\,
	combout => \f1|s1|Selector13~0_combout\);

-- Location: LCCOMB_X23_Y23_N8
\f1|s1|WideOr51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr51~0_combout\ = (\f1|x\(26) & (\f1|x\(27) $ (\f1|x\(25) $ (\f1|x\(28))))) # (!\f1|x\(26) & ((\f1|x\(27) & ((\f1|x\(28)))) # (!\f1|x\(27) & (\f1|x\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(26),
	datab => \f1|x\(27),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr51~0_combout\);

-- Location: LCCOMB_X23_Y23_N22
\f1|s1|WideOr46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr46~0_combout\ = (\f1|x\(25) & (\f1|x\(27) $ (((!\f1|x\(26) & !\f1|x\(28)))))) # (!\f1|x\(25) & (\f1|x\(26) $ (((\f1|x\(27) & \f1|x\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(26),
	datab => \f1|x\(27),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr46~0_combout\);

-- Location: LCCOMB_X23_Y23_N12
\f1|s1|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector12~0_combout\ = (\f1|x\(29) & (\f1|s1|WideOr51~0_combout\)) # (!\f1|x\(29) & ((!\f1|s1|WideOr46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|x\(29),
	datac => \f1|s1|WideOr51~0_combout\,
	datad => \f1|s1|WideOr46~0_combout\,
	combout => \f1|s1|Selector12~0_combout\);

-- Location: LCCOMB_X23_Y23_N6
\r_next~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~17_combout\ = \inL[12]~5_combout\ $ (((\f1|x\(24) & ((\f1|s1|Selector12~0_combout\))) # (!\f1|x\(24) & (\f1|s1|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inL[12]~5_combout\,
	datab => \f1|x\(24),
	datac => \f1|s1|Selector13~0_combout\,
	datad => \f1|s1|Selector12~0_combout\,
	combout => \r_next~17_combout\);

-- Location: LCFF_X23_Y23_N7
\r_next[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(12));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(27),
	combout => \plaintext~combout\(27));

-- Location: LCCOMB_X17_Y23_N4
\subk_sel[19]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~52_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & ((\key~combout\(27)))) # (!\subk_sel[6]~4_combout\ & (\subk_sel[19]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[19]~51_combout\,
	datab => \subk_sel[6]~5_combout\,
	datac => \key~combout\(27),
	datad => \subk_sel[6]~4_combout\,
	combout => \subk_sel[19]~52_combout\);

-- Location: LCCOMB_X18_Y26_N8
\subk_sel[19]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~53_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(42)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(58) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(42),
	datab => \key~combout\(58),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[19]~53_combout\);

-- Location: LCCOMB_X18_Y26_N18
\subk_sel[19]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~54_combout\ = (\subk_sel[19]~53_combout\ & (((\key~combout\(11)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[19]~53_combout\ & (\key~combout\(19) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(19),
	datab => \key~combout\(11),
	datac => \subk_sel[19]~53_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[19]~54_combout\);

-- Location: LCCOMB_X18_Y26_N4
\subk_sel[19]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~55_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\key~combout\(10))))) # (!\subk_sel[6]~13_combout\ & (!\subk_sel[6]~14_combout\ & ((\subk_sel[19]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(10),
	datad => \subk_sel[19]~54_combout\,
	combout => \subk_sel[19]~55_combout\);

-- Location: LCCOMB_X18_Y26_N6
\subk_sel[19]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~56_combout\ = (\subk_sel[19]~55_combout\ & (((\key~combout\(57)) # (!\subk_sel[6]~14_combout\)))) # (!\subk_sel[19]~55_combout\ & (\key~combout\(26) & ((\subk_sel[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(26),
	datab => \key~combout\(57),
	datac => \subk_sel[19]~55_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[19]~56_combout\);

-- Location: LCCOMB_X17_Y23_N30
\subk_sel[19]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[19]~57_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[19]~52_combout\ & ((\subk_sel[19]~56_combout\))) # (!\subk_sel[19]~52_combout\ & (\key~combout\(35))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[19]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(35),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[19]~52_combout\,
	datad => \subk_sel[19]~56_combout\,
	combout => \subk_sel[19]~57_combout\);

-- Location: LCCOMB_X16_Y23_N12
\f1|x[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(19) = \subk_sel[19]~57_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(27)))) # (!\comb~17_combout\ & (r_next(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(12),
	datac => \plaintext~combout\(27),
	datad => \subk_sel[19]~57_combout\,
	combout => \f1|x\(19));

-- Location: LCCOMB_X18_Y23_N10
\subk_sel[22]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~18_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(19))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(35)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(19),
	datab => \subk_sel[6]~16_combout\,
	datac => \subk_sel[6]~17_combout\,
	datad => \key~combout\(35),
	combout => \subk_sel[22]~18_combout\);

-- Location: LCCOMB_X18_Y23_N0
\subk_sel[22]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~19_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[22]~18_combout\ & (\key~combout\(51))) # (!\subk_sel[22]~18_combout\ & ((\key~combout\(59)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[22]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \key~combout\(59),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[22]~18_combout\,
	combout => \subk_sel[22]~19_combout\);

-- Location: LCCOMB_X18_Y23_N18
\subk_sel[22]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~20_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(3)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[22]~19_combout\ & !\subk_sel[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \subk_sel[22]~19_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \subk_sel[22]~20_combout\);

-- Location: LCCOMB_X18_Y23_N8
\subk_sel[22]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~21_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[22]~20_combout\ & (\key~combout\(34))) # (!\subk_sel[22]~20_combout\ & ((\key~combout\(50)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[22]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \key~combout\(50),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[22]~20_combout\,
	combout => \subk_sel[22]~21_combout\);

-- Location: LCCOMB_X18_Y23_N16
\subk_sel[22]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~8_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(10))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(18)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \key~combout\(18),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[22]~8_combout\);

-- Location: LCCOMB_X18_Y23_N22
\subk_sel[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~9_combout\ = (\subk_sel[22]~8_combout\ & ((\key~combout\(41)) # ((\subk_sel[6]~2_combout\)))) # (!\subk_sel[22]~8_combout\ & (((\key~combout\(57) & !\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(41),
	datab => \key~combout\(57),
	datac => \subk_sel[22]~8_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[22]~9_combout\);

-- Location: LCCOMB_X18_Y23_N28
\subk_sel[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~10_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(25)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(25),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[22]~9_combout\,
	combout => \subk_sel[22]~10_combout\);

-- Location: LCCOMB_X18_Y23_N26
\subk_sel[22]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~11_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[22]~10_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[22]~10_combout\ & ((\key~combout\(60)))) # (!\subk_sel[22]~10_combout\ & (\key~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[22]~10_combout\,
	combout => \subk_sel[22]~11_combout\);

-- Location: LCCOMB_X18_Y23_N24
\subk_sel[22]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~12_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(44)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[22]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(44),
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[22]~11_combout\,
	combout => \subk_sel[22]~12_combout\);

-- Location: LCCOMB_X17_Y23_N20
\subk_sel[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[22]~22_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[22]~12_combout\ & ((\subk_sel[22]~21_combout\))) # (!\subk_sel[22]~12_combout\ & (\key~combout\(36))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[22]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[22]~21_combout\,
	datad => \subk_sel[22]~12_combout\,
	combout => \subk_sel[22]~22_combout\);

-- Location: LCCOMB_X16_Y23_N14
\f1|x[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(22) = \subk_sel[22]~22_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(3)))) # (!\comb~17_combout\ & (r_next(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(15),
	datac => \plaintext~combout\(3),
	datad => \subk_sel[22]~22_combout\,
	combout => \f1|x\(22));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(18),
	combout => \plaintext~combout\(18));

-- Location: LCCOMB_X15_Y20_N26
\f1|s1|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~0_combout\ = (\f1|x\(17) & (\f1|x\(12) $ (((!\f1|x\(13)) # (!\f1|x\(14)))))) # (!\f1|x\(17) & ((\f1|x\(14) & (!\f1|x\(12))) # (!\f1|x\(14) & ((\f1|x\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(12),
	datac => \f1|x\(14),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector23~0_combout\);

-- Location: LCCOMB_X15_Y20_N14
\f1|s1|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~2_combout\ = (\f1|x\(17) & (\f1|x\(12) $ (((\f1|x\(14)) # (!\f1|x\(13)))))) # (!\f1|x\(17) & (\f1|x\(13) & ((!\f1|x\(12)) # (!\f1|x\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(14),
	datac => \f1|x\(12),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector23~2_combout\);

-- Location: LCCOMB_X15_Y20_N28
\f1|s1|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~1_combout\ = (\f1|x\(17) & ((\f1|x\(14) & (\f1|x\(12))) # (!\f1|x\(14) & ((!\f1|x\(13)))))) # (!\f1|x\(17) & ((\f1|x\(14) $ (\f1|x\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(12),
	datac => \f1|x\(14),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector23~1_combout\);

-- Location: LCCOMB_X15_Y20_N0
\f1|s1|Selector23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~3_combout\ = (\f1|x\(16) & ((\f1|x\(15)) # ((\f1|s1|Selector23~1_combout\)))) # (!\f1|x\(16) & (!\f1|x\(15) & (\f1|s1|Selector23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(16),
	datab => \f1|x\(15),
	datac => \f1|s1|Selector23~2_combout\,
	datad => \f1|s1|Selector23~1_combout\,
	combout => \f1|s1|Selector23~3_combout\);

-- Location: LCCOMB_X15_Y20_N12
\f1|s1|Selector23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector23~5_combout\ = (\f1|x\(15) & ((\f1|s1|Selector23~3_combout\ & (\f1|s1|Selector23~4_combout\)) # (!\f1|s1|Selector23~3_combout\ & ((!\f1|s1|Selector23~0_combout\))))) # (!\f1|x\(15) & (((\f1|s1|Selector23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector23~4_combout\,
	datab => \f1|s1|Selector23~0_combout\,
	datac => \f1|x\(15),
	datad => \f1|s1|Selector23~3_combout\,
	combout => \f1|s1|Selector23~5_combout\);

-- Location: LCCOMB_X15_Y20_N20
\r_next~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~10_combout\ = \f1|s1|Selector23~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(18)))) # (!\comb~17_combout\ & (l_next(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(13),
	datab => \plaintext~combout\(18),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector23~5_combout\,
	combout => \r_next~10_combout\);

-- Location: LCFF_X15_Y20_N21
\r_next[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(13));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(19),
	combout => \plaintext~combout\(19));

-- Location: LCCOMB_X16_Y22_N22
\subk_sel[20]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~63_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(25)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(41))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(41),
	datab => \key~combout\(25),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[20]~63_combout\);

-- Location: LCCOMB_X16_Y22_N26
\subk_sel[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~64_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[20]~63_combout\ & ((\key~combout\(57)))) # (!\subk_sel[20]~63_combout\ & (\key~combout\(2))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[20]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \key~combout\(57),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[20]~63_combout\,
	combout => \subk_sel[20]~64_combout\);

-- Location: LCCOMB_X16_Y22_N20
\subk_sel[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~65_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(9)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((!\subk_sel[6]~13_combout\ & \subk_sel[20]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[20]~64_combout\,
	combout => \subk_sel[20]~65_combout\);

-- Location: LCCOMB_X16_Y22_N0
\subk_sel[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~66_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[20]~65_combout\ & (\key~combout\(44))) # (!\subk_sel[20]~65_combout\ & ((\key~combout\(60)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[20]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(44),
	datac => \subk_sel[20]~65_combout\,
	datad => \key~combout\(60),
	combout => \subk_sel[20]~66_combout\);

-- Location: LCCOMB_X18_Y23_N6
\subk_sel[20]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~58_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(51))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(59)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \key~combout\(59),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[20]~58_combout\);

-- Location: LCCOMB_X18_Y23_N12
\subk_sel[20]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~59_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[20]~58_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[20]~58_combout\ & (\key~combout\(19))) # (!\subk_sel[20]~58_combout\ & ((\key~combout\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(19),
	datab => \key~combout\(35),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[20]~58_combout\,
	combout => \subk_sel[20]~59_combout\);

-- Location: LCCOMB_X18_Y23_N30
\subk_sel[20]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~60_combout\ = (\subk_sel[6]~6_combout\ & (((\key~combout\(3))) # (!\subk_sel[6]~1_combout\))) # (!\subk_sel[6]~6_combout\ & (\subk_sel[6]~1_combout\ & ((\subk_sel[20]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(3),
	datad => \subk_sel[20]~59_combout\,
	combout => \subk_sel[20]~60_combout\);

-- Location: LCCOMB_X17_Y23_N16
\subk_sel[20]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~61_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[20]~60_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[20]~60_combout\ & (\key~combout\(34))) # (!\subk_sel[20]~60_combout\ & ((\key~combout\(50))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(34),
	datac => \key~combout\(50),
	datad => \subk_sel[20]~60_combout\,
	combout => \subk_sel[20]~61_combout\);

-- Location: LCCOMB_X17_Y23_N22
\subk_sel[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~62_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(18))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[20]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[20]~61_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \subk_sel[20]~62_combout\);

-- Location: LCCOMB_X17_Y23_N24
\subk_sel[20]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[20]~67_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[20]~62_combout\ & ((\subk_sel[20]~66_combout\))) # (!\subk_sel[20]~62_combout\ & (\key~combout\(10))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[20]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[20]~66_combout\,
	datad => \subk_sel[20]~62_combout\,
	combout => \subk_sel[20]~67_combout\);

-- Location: LCCOMB_X16_Y23_N30
\f1|x[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(20) = \subk_sel[20]~67_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(19)))) # (!\comb~17_combout\ & (r_next(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(13),
	datac => \plaintext~combout\(19),
	datad => \subk_sel[20]~67_combout\,
	combout => \f1|x\(20));

-- Location: LCCOMB_X15_Y23_N4
\f1|s1|Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~4_combout\ = (\f1|x\(20) & ((\f1|x\(22) & ((\f1|x\(18)))) # (!\f1|x\(22) & (!\f1|x\(23))))) # (!\f1|x\(20) & (\f1|x\(22) $ (((!\f1|x\(23) & \f1|x\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(23),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(20),
	combout => \f1|s1|Selector16~4_combout\);

-- Location: LCCOMB_X15_Y23_N22
\f1|s1|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~1_combout\ = (\f1|x\(23) & (!\f1|x\(20) & (\f1|x\(18) $ (!\f1|x\(22))))) # (!\f1|x\(23) & ((\f1|x\(20)) # ((!\f1|x\(18) & \f1|x\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(23),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(20),
	combout => \f1|s1|Selector16~1_combout\);

-- Location: LCCOMB_X20_Y23_N0
\inR[16]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[16]~31_combout\ = (\state.R1~regout\ & (\plaintext~combout\(61))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(16)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(61),
	datab => \state.R1~regout\,
	datac => \state.IDLE~regout\,
	datad => r_next(16),
	combout => \inR[16]~31_combout\);

-- Location: LCFF_X20_Y23_N1
\l_next[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[16]~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(16));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(60),
	combout => \plaintext~combout\(60));

-- Location: LCCOMB_X19_Y23_N8
\f1|s1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~0_combout\ = (\f1|x\(33) & (\f1|x\(35) $ (\f1|x\(30) $ (\f1|x\(31))))) # (!\f1|x\(33) & ((\f1|x\(35) & (\f1|x\(30))) # (!\f1|x\(35) & (!\f1|x\(30) & \f1|x\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(35),
	datac => \f1|x\(30),
	datad => \f1|x\(31),
	combout => \f1|s1|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y23_N20
\f1|s1|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~4_combout\ = (\f1|x\(33) & (\f1|x\(35) $ (((\f1|x\(31)) # (!\f1|x\(30)))))) # (!\f1|x\(33) & (\f1|x\(35) & (\f1|x\(30) $ (!\f1|x\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(35),
	datac => \f1|x\(30),
	datad => \f1|x\(31),
	combout => \f1|s1|Selector9~4_combout\);

-- Location: LCCOMB_X19_Y23_N16
\f1|s1|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~2_combout\ = \f1|x\(35) $ (\f1|x\(30) $ (((\f1|x\(33) & !\f1|x\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(35),
	datac => \f1|x\(30),
	datad => \f1|x\(31),
	combout => \f1|s1|Selector9~2_combout\);

-- Location: LCCOMB_X19_Y23_N26
\f1|s1|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~1_combout\ = (\f1|x\(31) & ((\f1|x\(35) & (\f1|x\(33) & \f1|x\(30))) # (!\f1|x\(35) & ((!\f1|x\(30)))))) # (!\f1|x\(31) & (\f1|x\(33) $ ((\f1|x\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(35),
	datac => \f1|x\(30),
	datad => \f1|x\(31),
	combout => \f1|s1|Selector9~1_combout\);

-- Location: LCCOMB_X19_Y23_N6
\f1|s1|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~3_combout\ = (\f1|x\(34) & (\f1|x\(32))) # (!\f1|x\(34) & ((\f1|x\(32) & ((\f1|s1|Selector9~1_combout\))) # (!\f1|x\(32) & (\f1|s1|Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(34),
	datab => \f1|x\(32),
	datac => \f1|s1|Selector9~2_combout\,
	datad => \f1|s1|Selector9~1_combout\,
	combout => \f1|s1|Selector9~3_combout\);

-- Location: LCCOMB_X19_Y23_N18
\f1|s1|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector9~5_combout\ = (\f1|x\(34) & ((\f1|s1|Selector9~3_combout\ & ((!\f1|s1|Selector9~4_combout\))) # (!\f1|s1|Selector9~3_combout\ & (\f1|s1|Selector9~0_combout\)))) # (!\f1|x\(34) & (((\f1|s1|Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(34),
	datab => \f1|s1|Selector9~0_combout\,
	datac => \f1|s1|Selector9~4_combout\,
	datad => \f1|s1|Selector9~3_combout\,
	combout => \f1|s1|Selector9~5_combout\);

-- Location: LCCOMB_X19_Y23_N14
\r_next~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~42_combout\ = \f1|s1|Selector9~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(60)))) # (!\comb~17_combout\ & (l_next(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(16),
	datac => \plaintext~combout\(60),
	datad => \f1|s1|Selector9~5_combout\,
	combout => \r_next~42_combout\);

-- Location: LCFF_X19_Y23_N15
\r_next[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~42_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(16));

-- Location: LCCOMB_X18_Y23_N14
\subk_sel[23]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~43_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(57)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(10))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \subk_sel[6]~16_combout\,
	datac => \key~combout\(57),
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[23]~43_combout\);

-- Location: LCCOMB_X18_Y23_N20
\subk_sel[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~44_combout\ = (\subk_sel[23]~43_combout\ & (((\key~combout\(26)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[23]~43_combout\ & (\key~combout\(34) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \key~combout\(26),
	datac => \subk_sel[23]~43_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[23]~44_combout\);

-- Location: LCCOMB_X15_Y21_N6
\subk_sel[23]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~45_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(25))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[23]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[23]~44_combout\,
	combout => \subk_sel[23]~45_combout\);

-- Location: LCCOMB_X15_Y21_N20
\subk_sel[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~46_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[23]~45_combout\ & ((\key~combout\(9)))) # (!\subk_sel[23]~45_combout\ & (\key~combout\(41))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[23]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(41),
	datab => \key~combout\(9),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[23]~45_combout\,
	combout => \subk_sel[23]~46_combout\);

-- Location: LCCOMB_X17_Y21_N20
\subk_sel[23]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~38_combout\ = (\subk_sel[6]~2_combout\ & (((\key~combout\(60) & !\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(36)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[23]~38_combout\);

-- Location: LCCOMB_X16_Y21_N18
\subk_sel[23]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~39_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[23]~38_combout\ & ((\key~combout\(51)))) # (!\subk_sel[23]~38_combout\ & (\key~combout\(52))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[23]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(52),
	datab => \key~combout\(51),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[23]~38_combout\,
	combout => \subk_sel[23]~39_combout\);

-- Location: LCCOMB_X15_Y21_N28
\subk_sel[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~40_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[23]~39_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(19),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[23]~39_combout\,
	combout => \subk_sel[23]~40_combout\);

-- Location: LCCOMB_X15_Y21_N10
\subk_sel[23]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~41_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[23]~40_combout\ & ((\key~combout\(3)))) # (!\subk_sel[23]~40_combout\ & (\key~combout\(35))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(35),
	datac => \key~combout\(3),
	datad => \subk_sel[23]~40_combout\,
	combout => \subk_sel[23]~41_combout\);

-- Location: LCCOMB_X15_Y21_N12
\subk_sel[23]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~42_combout\ = (\subk_sel[6]~5_combout\ & (\subk_sel[6]~4_combout\)) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(42))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[23]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \key~combout\(42),
	datad => \subk_sel[23]~41_combout\,
	combout => \subk_sel[23]~42_combout\);

-- Location: LCCOMB_X15_Y21_N30
\subk_sel[23]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[23]~47_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[23]~42_combout\ & ((\subk_sel[23]~46_combout\))) # (!\subk_sel[23]~42_combout\ & (\key~combout\(50))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[23]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(50),
	datac => \subk_sel[23]~46_combout\,
	datad => \subk_sel[23]~42_combout\,
	combout => \subk_sel[23]~47_combout\);

-- Location: LCCOMB_X15_Y21_N8
\f1|x[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(23) = \subk_sel[23]~47_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(61)))) # (!\comb~17_combout\ & (r_next(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => r_next(16),
	datac => \plaintext~combout\(61),
	datad => \subk_sel[23]~47_combout\,
	combout => \f1|x\(23));

-- Location: LCCOMB_X15_Y23_N0
\f1|s1|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~2_combout\ = (\f1|x\(18) & (\f1|x\(22) $ (((\f1|x\(23)) # (!\f1|x\(20)))))) # (!\f1|x\(18) & (\f1|x\(22) & ((\f1|x\(23)) # (!\f1|x\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(18),
	datab => \f1|x\(20),
	datac => \f1|x\(22),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector16~2_combout\);

-- Location: LCCOMB_X15_Y23_N6
\f1|s1|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~3_combout\ = (\f1|x\(21) & ((\f1|s1|Selector16~1_combout\) # ((\f1|x\(19))))) # (!\f1|x\(21) & (((!\f1|x\(19) & \f1|s1|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|s1|Selector16~1_combout\,
	datac => \f1|x\(19),
	datad => \f1|s1|Selector16~2_combout\,
	combout => \f1|s1|Selector16~3_combout\);

-- Location: LCCOMB_X15_Y23_N2
\f1|s1|Selector16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector16~5_combout\ = (\f1|x\(19) & ((\f1|s1|Selector16~3_combout\ & ((!\f1|s1|Selector16~4_combout\))) # (!\f1|s1|Selector16~3_combout\ & (!\f1|s1|Selector16~0_combout\)))) # (!\f1|x\(19) & (((\f1|s1|Selector16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector16~0_combout\,
	datab => \f1|x\(19),
	datac => \f1|s1|Selector16~4_combout\,
	datad => \f1|s1|Selector16~3_combout\,
	combout => \f1|s1|Selector16~5_combout\);

-- Location: LCCOMB_X15_Y23_N14
\r_next~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~43_combout\ = \f1|s1|Selector16~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(62)))) # (!\comb~17_combout\ & (l_next(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(24),
	datac => \plaintext~combout\(62),
	datad => \f1|s1|Selector16~5_combout\,
	combout => \r_next~43_combout\);

-- Location: LCFF_X15_Y23_N15
\r_next[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~43_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(24));

-- Location: LCCOMB_X25_Y21_N0
\inR[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[24]~8_combout\ = (\state.R1~regout\ & (\plaintext~combout\(63))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(24)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(63),
	datab => \state.R1~regout\,
	datac => \state.IDLE~regout\,
	datad => r_next(24),
	combout => \inR[24]~8_combout\);

-- Location: LCCOMB_X20_Y21_N28
\subk_sel[35]~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~368_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(14) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(55)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[35]~368_combout\);

-- Location: LCCOMB_X20_Y21_N30
\subk_sel[35]~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~369_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[35]~368_combout\ & ((\key~combout\(39)))) # (!\subk_sel[35]~368_combout\ & (\key~combout\(6))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[35]~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(39),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[35]~368_combout\,
	combout => \subk_sel[35]~369_combout\);

-- Location: LCCOMB_X20_Y21_N8
\subk_sel[35]~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~370_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[35]~369_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[35]~369_combout\,
	combout => \subk_sel[35]~370_combout\);

-- Location: LCCOMB_X20_Y21_N22
\subk_sel[35]~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~371_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[35]~370_combout\ & (\key~combout\(20))) # (!\subk_sel[35]~370_combout\ & ((\key~combout\(23)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[35]~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[35]~370_combout\,
	datad => \key~combout\(23),
	combout => \subk_sel[35]~371_combout\);

-- Location: LCCOMB_X20_Y21_N24
\subk_sel[35]~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~372_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(61))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[35]~371_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(61),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[35]~371_combout\,
	combout => \subk_sel[35]~372_combout\);

-- Location: LCCOMB_X20_Y22_N22
\subk_sel[35]~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~373_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(13)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(29) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \key~combout\(13),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[35]~373_combout\);

-- Location: LCCOMB_X20_Y22_N28
\subk_sel[35]~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~374_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[35]~373_combout\ & ((\key~combout\(45)))) # (!\subk_sel[35]~373_combout\ & (\key~combout\(53))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[35]~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(45),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[35]~373_combout\,
	combout => \subk_sel[35]~374_combout\);

-- Location: LCCOMB_X20_Y22_N30
\subk_sel[35]~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~375_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(46)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[35]~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(46),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[35]~374_combout\,
	combout => \subk_sel[35]~375_combout\);

-- Location: LCCOMB_X20_Y22_N20
\subk_sel[35]~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~376_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[35]~375_combout\ & (\key~combout\(30))) # (!\subk_sel[35]~375_combout\ & ((\key~combout\(62)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[35]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(30),
	datab => \key~combout\(62),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[35]~375_combout\,
	combout => \subk_sel[35]~376_combout\);

-- Location: LCCOMB_X20_Y21_N6
\subk_sel[35]~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[35]~377_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[35]~372_combout\ & ((\subk_sel[35]~376_combout\))) # (!\subk_sel[35]~372_combout\ & (\key~combout\(4))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[35]~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(4),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[35]~372_combout\,
	datad => \subk_sel[35]~376_combout\,
	combout => \subk_sel[35]~377_combout\);

-- Location: LCCOMB_X20_Y21_N0
\f1|x[35]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(35) = \inR[24]~8_combout\ $ (\subk_sel[35]~377_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inR[24]~8_combout\,
	datad => \subk_sel[35]~377_combout\,
	combout => \f1|x\(35));

-- Location: LCCOMB_X20_Y22_N4
\f1|s1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~0_combout\ = (\f1|x\(34) & (!\f1|x\(32) & (\f1|x\(30) $ (\f1|x\(35))))) # (!\f1|x\(34) & (\f1|x\(35) & (\f1|x\(32) $ (!\f1|x\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(32),
	datab => \f1|x\(30),
	datac => \f1|x\(34),
	datad => \f1|x\(35),
	combout => \f1|s1|Selector10~0_combout\);

-- Location: LCCOMB_X20_Y22_N8
\f1|s1|Selector10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~4_combout\ = (\f1|x\(34) & ((\f1|x\(30) & ((\f1|x\(32)) # (\f1|x\(35)))) # (!\f1|x\(30) & ((!\f1|x\(35)))))) # (!\f1|x\(34) & (\f1|x\(32) $ ((\f1|x\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(32),
	datab => \f1|x\(30),
	datac => \f1|x\(34),
	datad => \f1|x\(35),
	combout => \f1|s1|Selector10~4_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(13),
	combout => \plaintext~combout\(13));

-- Location: LCCOMB_X21_Y22_N0
\subk_sel[33]~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~403_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(55)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(6))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(6),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[33]~403_combout\);

-- Location: LCCOMB_X21_Y22_N18
\subk_sel[33]~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~404_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[33]~403_combout\ & (\key~combout\(22))) # (!\subk_sel[33]~403_combout\ & ((\key~combout\(30)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[33]~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[33]~403_combout\,
	combout => \subk_sel[33]~404_combout\);

-- Location: LCCOMB_X21_Y22_N28
\subk_sel[33]~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~405_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(23)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[33]~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[33]~404_combout\,
	combout => \subk_sel[33]~405_combout\);

-- Location: LCCOMB_X21_Y22_N10
\subk_sel[33]~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~406_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[33]~405_combout\ & (\key~combout\(7))) # (!\subk_sel[33]~405_combout\ & ((\key~combout\(39)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[33]~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(7),
	datab => \key~combout\(39),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[33]~405_combout\,
	combout => \subk_sel[33]~406_combout\);

-- Location: LCCOMB_X19_Y23_N12
\subk_sel[33]~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~398_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & ((\key~combout\(20)))) # (!\subk_sel[6]~2_combout\ & (\key~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(61),
	datac => \subk_sel[6]~2_combout\,
	datad => \key~combout\(20),
	combout => \subk_sel[33]~398_combout\);

-- Location: LCCOMB_X19_Y23_N2
\subk_sel[33]~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~399_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[33]~398_combout\ & ((\key~combout\(45)))) # (!\subk_sel[33]~398_combout\ & (\key~combout\(12))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[33]~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \key~combout\(45),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[33]~398_combout\,
	combout => \subk_sel[33]~399_combout\);

-- Location: LCCOMB_X19_Y23_N24
\subk_sel[33]~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~400_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[33]~399_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(13),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[33]~399_combout\,
	combout => \subk_sel[33]~400_combout\);

-- Location: LCCOMB_X20_Y23_N10
\subk_sel[33]~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~401_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[33]~400_combout\ & ((\key~combout\(62)))) # (!\subk_sel[33]~400_combout\ & (\key~combout\(29))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[33]~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \subk_sel[6]~6_combout\,
	datac => \key~combout\(62),
	datad => \subk_sel[33]~400_combout\,
	combout => \subk_sel[33]~401_combout\);

-- Location: LCCOMB_X20_Y23_N12
\subk_sel[33]~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~402_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(38))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[33]~401_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[33]~401_combout\,
	combout => \subk_sel[33]~402_combout\);

-- Location: LCCOMB_X20_Y23_N6
\subk_sel[33]~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[33]~407_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[33]~402_combout\ & ((\subk_sel[33]~406_combout\))) # (!\subk_sel[33]~402_combout\ & (\key~combout\(46))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[33]~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[33]~406_combout\,
	datad => \subk_sel[33]~402_combout\,
	combout => \subk_sel[33]~407_combout\);

-- Location: LCCOMB_X20_Y23_N16
\f1|x[33]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(33) = \subk_sel[33]~407_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(13)))) # (!\comb~17_combout\ & (r_next(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(22),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(13),
	datad => \subk_sel[33]~407_combout\,
	combout => \f1|x\(33));

-- Location: LCCOMB_X20_Y22_N14
\f1|s1|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~1_combout\ = (\f1|x\(34) & ((\f1|x\(35) & ((\f1|x\(30)))) # (!\f1|x\(35) & (\f1|x\(32))))) # (!\f1|x\(34) & (\f1|x\(32) $ (((\f1|x\(35)) # (\f1|x\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(32),
	datab => \f1|x\(34),
	datac => \f1|x\(35),
	datad => \f1|x\(30),
	combout => \f1|s1|Selector10~1_combout\);

-- Location: LCCOMB_X20_Y22_N12
\f1|s1|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~2_combout\ = (\f1|x\(35) & (((!\f1|x\(32) & \f1|x\(30))) # (!\f1|x\(34)))) # (!\f1|x\(35) & ((\f1|x\(32)) # (\f1|x\(30) $ (\f1|x\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(32),
	datab => \f1|x\(30),
	datac => \f1|x\(35),
	datad => \f1|x\(34),
	combout => \f1|s1|Selector10~2_combout\);

-- Location: LCCOMB_X20_Y22_N10
\f1|s1|Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~3_combout\ = (\f1|x\(31) & ((\f1|x\(33)) # ((\f1|s1|Selector10~1_combout\)))) # (!\f1|x\(31) & (!\f1|x\(33) & ((!\f1|s1|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(31),
	datab => \f1|x\(33),
	datac => \f1|s1|Selector10~1_combout\,
	datad => \f1|s1|Selector10~2_combout\,
	combout => \f1|s1|Selector10~3_combout\);

-- Location: LCCOMB_X20_Y22_N2
\f1|s1|Selector10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector10~5_combout\ = (\f1|x\(33) & ((\f1|s1|Selector10~3_combout\ & ((!\f1|s1|Selector10~4_combout\))) # (!\f1|s1|Selector10~3_combout\ & (!\f1|s1|Selector10~0_combout\)))) # (!\f1|x\(33) & (((\f1|s1|Selector10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|s1|Selector10~0_combout\,
	datac => \f1|s1|Selector10~4_combout\,
	datad => \f1|s1|Selector10~3_combout\,
	combout => \f1|s1|Selector10~5_combout\);

-- Location: LCCOMB_X20_Y22_N24
\r_next~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~28_combout\ = \f1|s1|Selector10~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(40))) # (!\comb~17_combout\ & ((l_next(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(40),
	datac => l_next(2),
	datad => \f1|s1|Selector10~5_combout\,
	combout => \r_next~28_combout\);

-- Location: LCFF_X20_Y22_N25
\r_next[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(2));

-- Location: LCCOMB_X19_Y24_N0
\subk_sel[3]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~223_combout\ = (\subk_sel[6]~7_combout\ & (((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & ((\subk_sel[6]~2_combout\ & (\key~combout\(2))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \key~combout\(41),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[3]~223_combout\);

-- Location: LCCOMB_X19_Y24_N14
\subk_sel[3]~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~224_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[3]~223_combout\ & (\key~combout\(25))) # (!\subk_sel[3]~223_combout\ & ((\key~combout\(57)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[3]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \key~combout\(57),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[3]~223_combout\,
	combout => \subk_sel[3]~224_combout\);

-- Location: LCCOMB_X19_Y24_N16
\subk_sel[3]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~225_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[3]~224_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(60),
	datac => \subk_sel[3]~224_combout\,
	datad => \subk_sel[6]~1_combout\,
	combout => \subk_sel[3]~225_combout\);

-- Location: LCCOMB_X20_Y24_N2
\subk_sel[3]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~226_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[3]~225_combout\ & ((\key~combout\(44)))) # (!\subk_sel[3]~225_combout\ & (\key~combout\(9))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[3]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \subk_sel[6]~6_combout\,
	datac => \key~combout\(44),
	datad => \subk_sel[3]~225_combout\,
	combout => \subk_sel[3]~226_combout\);

-- Location: LCCOMB_X20_Y24_N24
\subk_sel[3]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~227_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(51)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((!\subk_sel[6]~5_combout\ & \subk_sel[3]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(51),
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[3]~226_combout\,
	combout => \subk_sel[3]~227_combout\);

-- Location: LCCOMB_X19_Y26_N24
\subk_sel[3]~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~228_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(3))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(19)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(19),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[3]~228_combout\);

-- Location: LCCOMB_X19_Y26_N6
\subk_sel[3]~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~229_combout\ = (\subk_sel[3]~228_combout\ & ((\key~combout\(35)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[3]~228_combout\ & (((\key~combout\(43) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(35),
	datab => \key~combout\(43),
	datac => \subk_sel[3]~228_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[3]~229_combout\);

-- Location: LCCOMB_X19_Y26_N12
\subk_sel[3]~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~230_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(34)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[3]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(34),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[3]~229_combout\,
	combout => \subk_sel[3]~230_combout\);

-- Location: LCCOMB_X19_Y26_N10
\subk_sel[3]~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~231_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[3]~230_combout\ & (\key~combout\(18))) # (!\subk_sel[3]~230_combout\ & ((\key~combout\(50)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[3]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(50),
	datad => \subk_sel[3]~230_combout\,
	combout => \subk_sel[3]~231_combout\);

-- Location: LCCOMB_X20_Y24_N6
\subk_sel[3]~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[3]~232_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[3]~227_combout\ & ((\subk_sel[3]~231_combout\))) # (!\subk_sel[3]~227_combout\ & (\key~combout\(59))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[3]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(59),
	datac => \subk_sel[3]~227_combout\,
	datad => \subk_sel[3]~231_combout\,
	combout => \subk_sel[3]~232_combout\);

-- Location: LCCOMB_X20_Y24_N20
\f1|x[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(3) = \subk_sel[3]~232_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(41))) # (!\comb~17_combout\ & ((r_next(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(41),
	datac => r_next(2),
	datad => \subk_sel[3]~232_combout\,
	combout => \f1|x\(3));

-- Location: LCCOMB_X20_Y25_N24
\f1|s1|WideOr108~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr108~0_combout\ = \f1|x\(1) $ (((\f1|x\(4) & ((!\f1|x\(3)))) # (!\f1|x\(4) & (!\f1|x\(2) & \f1|x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(2),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(3),
	combout => \f1|s1|WideOr108~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\f1|s1|WideOr111~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr111~0_combout\ = \f1|x\(2) $ (\f1|x\(4) $ (((!\f1|x\(1) & \f1|x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(2),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(3),
	combout => \f1|s1|WideOr111~0_combout\);

-- Location: LCCOMB_X20_Y25_N14
\r_next~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~45_combout\ = (\f1|x\(0) & (\f1|x\(5) & ((\f1|s1|WideOr111~0_combout\)))) # (!\f1|x\(0) & (((!\f1|s1|WideOr108~0_combout\)) # (!\f1|x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(0),
	datab => \f1|x\(5),
	datac => \f1|s1|WideOr108~0_combout\,
	datad => \f1|s1|WideOr111~0_combout\,
	combout => \r_next~45_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(49),
	combout => \plaintext~combout\(49));

-- Location: LCCOMB_X18_Y24_N22
\subk_sel[2]~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~238_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(17))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(33)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \key~combout\(33),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[2]~238_combout\);

-- Location: LCCOMB_X18_Y24_N12
\subk_sel[2]~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~239_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[2]~238_combout\ & ((\key~combout\(49)))) # (!\subk_sel[2]~238_combout\ & (\key~combout\(57))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[2]~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(57),
	datab => \subk_sel[6]~15_combout\,
	datac => \key~combout\(49),
	datad => \subk_sel[2]~238_combout\,
	combout => \subk_sel[2]~239_combout\);

-- Location: LCCOMB_X18_Y24_N30
\subk_sel[2]~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~240_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(1))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[2]~239_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[2]~239_combout\,
	combout => \subk_sel[2]~240_combout\);

-- Location: LCCOMB_X18_Y24_N20
\subk_sel[2]~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~241_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[2]~240_combout\ & (\key~combout\(36))) # (!\subk_sel[2]~240_combout\ & ((\key~combout\(52)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[2]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \key~combout\(52),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[2]~240_combout\,
	combout => \subk_sel[2]~241_combout\);

-- Location: LCCOMB_X18_Y24_N10
\subk_sel[2]~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~233_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(43))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(51)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \key~combout\(51),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[2]~233_combout\);

-- Location: LCCOMB_X18_Y24_N0
\subk_sel[2]~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~234_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[2]~233_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[2]~233_combout\ & (\key~combout\(11))) # (!\subk_sel[2]~233_combout\ & ((\key~combout\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(11),
	datac => \key~combout\(27),
	datad => \subk_sel[2]~233_combout\,
	combout => \subk_sel[2]~234_combout\);

-- Location: LCCOMB_X18_Y24_N6
\subk_sel[2]~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~235_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(58))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[2]~234_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(58),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[2]~234_combout\,
	combout => \subk_sel[2]~235_combout\);

-- Location: LCCOMB_X18_Y24_N16
\subk_sel[2]~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~236_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[2]~235_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[2]~235_combout\ & ((\key~combout\(26)))) # (!\subk_sel[2]~235_combout\ & (\key~combout\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(42),
	datab => \key~combout\(26),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[2]~235_combout\,
	combout => \subk_sel[2]~236_combout\);

-- Location: LCCOMB_X19_Y24_N2
\subk_sel[2]~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~237_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\) # ((\key~combout\(10))))) # (!\subk_sel[6]~5_combout\ & (!\subk_sel[6]~4_combout\ & ((\subk_sel[2]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \key~combout\(10),
	datad => \subk_sel[2]~236_combout\,
	combout => \subk_sel[2]~237_combout\);

-- Location: LCCOMB_X19_Y24_N12
\subk_sel[2]~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[2]~242_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[2]~237_combout\ & ((\subk_sel[2]~241_combout\))) # (!\subk_sel[2]~237_combout\ & (\key~combout\(2))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[2]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(2),
	datac => \subk_sel[2]~241_combout\,
	datad => \subk_sel[2]~237_combout\,
	combout => \subk_sel[2]~242_combout\);

-- Location: LCCOMB_X20_Y24_N22
\f1|x[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(2) = \subk_sel[2]~242_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(49)))) # (!\comb~17_combout\ & (r_next(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(1),
	datab => \comb~17_combout\,
	datac => \plaintext~combout\(49),
	datad => \subk_sel[2]~242_combout\,
	combout => \f1|x\(2));

-- Location: LCCOMB_X20_Y24_N28
\f1|s1|WideOr102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr102~0_combout\ = (\f1|x\(4) & ((\f1|x\(1) & ((!\f1|x\(2)))) # (!\f1|x\(1) & (!\f1|x\(3))))) # (!\f1|x\(4) & (\f1|x\(2) $ (((!\f1|x\(3) & \f1|x\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr102~0_combout\);

-- Location: LCCOMB_X20_Y25_N20
\r_next~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~46_combout\ = \inL[5]~3_combout\ $ (\r_next~45_combout\ $ (((!\f1|x\(5) & \f1|s1|WideOr102~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inL[5]~3_combout\,
	datab => \f1|x\(5),
	datac => \r_next~45_combout\,
	datad => \f1|s1|WideOr102~0_combout\,
	combout => \r_next~46_combout\);

-- Location: LCFF_X20_Y25_N21
\r_next[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~46_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(5));

-- Location: LCCOMB_X18_Y25_N4
\subk_sel[8]~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~318_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(42)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(50))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[8]~318_combout\);

-- Location: LCCOMB_X18_Y25_N6
\subk_sel[8]~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~319_combout\ = (\subk_sel[8]~318_combout\ & ((\key~combout\(10)) # ((\subk_sel[6]~2_combout\)))) # (!\subk_sel[8]~318_combout\ & (((\key~combout\(26) & !\subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \key~combout\(26),
	datac => \subk_sel[8]~318_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[8]~319_combout\);

-- Location: LCCOMB_X18_Y25_N28
\subk_sel[8]~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~320_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(57))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[8]~319_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(57),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[8]~319_combout\,
	combout => \subk_sel[8]~320_combout\);

-- Location: LCCOMB_X18_Y25_N22
\subk_sel[8]~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~321_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[8]~320_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[8]~320_combout\ & (\key~combout\(25))) # (!\subk_sel[8]~320_combout\ & ((\key~combout\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(25),
	datac => \key~combout\(41),
	datad => \subk_sel[8]~320_combout\,
	combout => \subk_sel[8]~321_combout\);

-- Location: LCCOMB_X18_Y25_N8
\subk_sel[8]~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~322_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(9))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[8]~321_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[8]~321_combout\,
	combout => \subk_sel[8]~322_combout\);

-- Location: LCCOMB_X18_Y22_N16
\subk_sel[8]~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~323_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(51)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(36) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \key~combout\(36),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[8]~323_combout\);

-- Location: LCCOMB_X18_Y25_N10
\subk_sel[8]~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~324_combout\ = (\subk_sel[8]~323_combout\ & ((\key~combout\(52)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[8]~323_combout\ & (((\key~combout\(60) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(52),
	datab => \key~combout\(60),
	datac => \subk_sel[8]~323_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[8]~324_combout\);

-- Location: LCCOMB_X18_Y25_N12
\subk_sel[8]~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~325_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(35))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[8]~324_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(35),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[8]~324_combout\,
	combout => \subk_sel[8]~325_combout\);

-- Location: LCCOMB_X18_Y25_N2
\subk_sel[8]~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~326_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[8]~325_combout\ & (\key~combout\(3))) # (!\subk_sel[8]~325_combout\ & ((\key~combout\(19)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[8]~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(3),
	datac => \key~combout\(19),
	datad => \subk_sel[8]~325_combout\,
	combout => \subk_sel[8]~326_combout\);

-- Location: LCCOMB_X18_Y25_N0
\subk_sel[8]~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[8]~327_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[8]~322_combout\ & ((\subk_sel[8]~326_combout\))) # (!\subk_sel[8]~322_combout\ & (\key~combout\(1))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[8]~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(1),
	datac => \subk_sel[8]~322_combout\,
	datad => \subk_sel[8]~326_combout\,
	combout => \subk_sel[8]~327_combout\);

-- Location: LCCOMB_X18_Y25_N30
\f1|x[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(8) = \subk_sel[8]~327_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(17))) # (!\comb~17_combout\ & ((r_next(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(17),
	datab => r_next(5),
	datac => \comb~17_combout\,
	datad => \subk_sel[8]~327_combout\,
	combout => \f1|x\(8));

-- Location: LCCOMB_X18_Y25_N24
\f1|s1|WideOr91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr91~0_combout\ = \f1|x\(7) $ (\f1|x\(9) $ (((\f1|x\(8) & \f1|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr91~0_combout\);

-- Location: LCCOMB_X18_Y25_N14
\f1|s1|WideOr97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr97~0_combout\ = (\f1|x\(7) & ((\f1|x\(10) & (\f1|x\(8))) # (!\f1|x\(10) & ((!\f1|x\(9)))))) # (!\f1|x\(7) & (\f1|x\(8) $ ((\f1|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|x\(10),
	datad => \f1|x\(9),
	combout => \f1|s1|WideOr97~0_combout\);

-- Location: LCCOMB_X19_Y25_N24
\subk_sel[7]~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~333_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(1))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(17)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \key~combout\(17),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[7]~333_combout\);

-- Location: LCCOMB_X19_Y25_N22
\subk_sel[7]~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~334_combout\ = (\subk_sel[7]~333_combout\ & ((\key~combout\(33)) # ((!\subk_sel[6]~15_combout\)))) # (!\subk_sel[7]~333_combout\ & (((\key~combout\(41) & \subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(33),
	datab => \key~combout\(41),
	datac => \subk_sel[7]~333_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[7]~334_combout\);

-- Location: LCCOMB_X19_Y25_N12
\subk_sel[7]~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~335_combout\ = (\subk_sel[6]~13_combout\ & ((\key~combout\(36)) # ((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & (((!\subk_sel[6]~14_combout\ & \subk_sel[7]~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[7]~334_combout\,
	combout => \subk_sel[7]~335_combout\);

-- Location: LCCOMB_X19_Y25_N14
\subk_sel[7]~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~336_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[7]~335_combout\ & (\key~combout\(51))) # (!\subk_sel[7]~335_combout\ & ((\key~combout\(52)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[7]~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \key~combout\(52),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[7]~335_combout\,
	combout => \subk_sel[7]~336_combout\);

-- Location: LCCOMB_X19_Y25_N26
\subk_sel[7]~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~328_combout\ = (\subk_sel[6]~2_combout\ & (((!\subk_sel[6]~7_combout\ & \key~combout\(35))))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(11)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~2_combout\,
	datab => \key~combout\(11),
	datac => \subk_sel[6]~7_combout\,
	datad => \key~combout\(35),
	combout => \subk_sel[7]~328_combout\);

-- Location: LCCOMB_X19_Y25_N4
\subk_sel[7]~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~329_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[7]~328_combout\ & ((\key~combout\(58)))) # (!\subk_sel[7]~328_combout\ & (\key~combout\(27))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[7]~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \key~combout\(58),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[7]~328_combout\,
	combout => \subk_sel[7]~329_combout\);

-- Location: LCCOMB_X19_Y25_N2
\subk_sel[7]~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~330_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[7]~329_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(26),
	datac => \subk_sel[7]~329_combout\,
	datad => \subk_sel[6]~1_combout\,
	combout => \subk_sel[7]~330_combout\);

-- Location: LCCOMB_X19_Y25_N8
\subk_sel[7]~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~331_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[7]~330_combout\ & (\key~combout\(10))) # (!\subk_sel[7]~330_combout\ & ((\key~combout\(42)))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[7]~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(10),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[7]~330_combout\,
	combout => \subk_sel[7]~331_combout\);

-- Location: LCCOMB_X19_Y25_N10
\subk_sel[7]~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~332_combout\ = (\subk_sel[6]~5_combout\ & (((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(49))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[7]~331_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(49),
	datac => \subk_sel[7]~331_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \subk_sel[7]~332_combout\);

-- Location: LCCOMB_X19_Y25_N20
\subk_sel[7]~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[7]~337_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[7]~332_combout\ & ((\subk_sel[7]~336_combout\))) # (!\subk_sel[7]~332_combout\ & (\key~combout\(57))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[7]~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(57),
	datac => \subk_sel[7]~336_combout\,
	datad => \subk_sel[7]~332_combout\,
	combout => \subk_sel[7]~337_combout\);

-- Location: LCCOMB_X24_Y24_N28
\l_next[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[4]~feeder_combout\ = \inR[4]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[4]~13_combout\,
	combout => \l_next[4]~feeder_combout\);

-- Location: LCFF_X24_Y24_N29
\l_next[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[4]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(24),
	combout => \plaintext~combout\(24));

-- Location: LCCOMB_X24_Y24_N16
\inL[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[4]~4_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(24))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (l_next(4))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => l_next(4),
	datac => \plaintext~combout\(24),
	datad => \state.IDLE~regout\,
	combout => \inL[4]~4_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(55),
	combout => \plaintext~combout\(55));

-- Location: LCCOMB_X21_Y22_N14
\subk_sel[38]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~213_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(7)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(23))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(23),
	datab => \key~combout\(7),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[38]~213_combout\);

-- Location: LCCOMB_X21_Y22_N20
\subk_sel[38]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~214_combout\ = (\subk_sel[38]~213_combout\ & (((\key~combout\(39)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[38]~213_combout\ & (\key~combout\(47) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(47),
	datab => \key~combout\(39),
	datac => \subk_sel[38]~213_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[38]~214_combout\);

-- Location: LCCOMB_X21_Y22_N6
\subk_sel[38]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~215_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(20)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[38]~214_combout\ & !\subk_sel[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(20),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[38]~214_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \subk_sel[38]~215_combout\);

-- Location: LCCOMB_X22_Y20_N26
\subk_sel[38]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~216_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[38]~215_combout\ & (\key~combout\(53))) # (!\subk_sel[38]~215_combout\ & ((\key~combout\(4)))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[38]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(53),
	datab => \key~combout\(4),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[38]~215_combout\,
	combout => \subk_sel[38]~216_combout\);

-- Location: LCCOMB_X23_Y21_N16
\subk_sel[38]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~208_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(29))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(37)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(29),
	datab => \key~combout\(37),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[38]~208_combout\);

-- Location: LCCOMB_X24_Y21_N0
\subk_sel[38]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~209_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[38]~208_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[38]~208_combout\ & (\key~combout\(62))) # (!\subk_sel[38]~208_combout\ & ((\key~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(62),
	datab => \key~combout\(13),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[38]~208_combout\,
	combout => \subk_sel[38]~209_combout\);

-- Location: LCCOMB_X24_Y21_N2
\subk_sel[38]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~210_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(46)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[38]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(46),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[38]~209_combout\,
	combout => \subk_sel[38]~210_combout\);

-- Location: LCCOMB_X24_Y21_N4
\subk_sel[38]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~211_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[38]~210_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[38]~210_combout\ & (\key~combout\(14))) # (!\subk_sel[38]~210_combout\ & ((\key~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(14),
	datab => \key~combout\(30),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[38]~210_combout\,
	combout => \subk_sel[38]~211_combout\);

-- Location: LCCOMB_X25_Y20_N28
\subk_sel[38]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~212_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(63)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[38]~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(63),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[38]~211_combout\,
	combout => \subk_sel[38]~212_combout\);

-- Location: LCCOMB_X25_Y20_N26
\subk_sel[38]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[38]~217_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[38]~212_combout\ & ((\subk_sel[38]~216_combout\))) # (!\subk_sel[38]~212_combout\ & (\key~combout\(55))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[38]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \key~combout\(55),
	datac => \subk_sel[38]~216_combout\,
	datad => \subk_sel[38]~212_combout\,
	combout => \subk_sel[38]~217_combout\);

-- Location: LCCOMB_X25_Y20_N4
\f1|x[38]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(38) = \subk_sel[38]~217_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(55)))) # (!\comb~17_combout\ & (r_next(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(25),
	datab => \plaintext~combout\(55),
	datac => \comb~17_combout\,
	datad => \subk_sel[38]~217_combout\,
	combout => \f1|x\(38));

-- Location: LCCOMB_X25_Y20_N14
\r_next~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~13_combout\ = (\f1|x\(36) & ((\f1|x\(39) & ((!\f1|x\(38)))) # (!\f1|x\(39) & (\f1|x\(40))))) # (!\f1|x\(36) & ((\f1|x\(40) & (!\f1|x\(39))) # (!\f1|x\(40) & ((\f1|x\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(39),
	datac => \f1|x\(36),
	datad => \f1|x\(38),
	combout => \r_next~13_combout\);

-- Location: LCCOMB_X24_Y20_N12
\r_next~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~14_combout\ = (\f1|x\(36) & (\f1|x\(38) & (!\f1|x\(39)))) # (!\f1|x\(36) & (\f1|x\(40) & (\f1|x\(38) $ (\f1|x\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(38),
	datab => \f1|x\(39),
	datac => \f1|x\(36),
	datad => \f1|x\(40),
	combout => \r_next~14_combout\);

-- Location: LCCOMB_X24_Y20_N2
\r_next~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~15_combout\ = (\r_next~14_combout\ & ((\f1|x\(41)) # ((!\f1|x\(36) & \f1|x\(37))))) # (!\r_next~14_combout\ & (\f1|x\(36) $ (\f1|x\(41) $ (\f1|x\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|x\(41),
	datac => \f1|x\(37),
	datad => \r_next~14_combout\,
	combout => \r_next~15_combout\);

-- Location: LCCOMB_X25_Y20_N0
\r_next~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~16_combout\ = \inL[4]~4_combout\ $ (\r_next~13_combout\ $ (!\r_next~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inL[4]~4_combout\,
	datac => \r_next~13_combout\,
	datad => \r_next~15_combout\,
	combout => \r_next~16_combout\);

-- Location: LCFF_X25_Y20_N1
\r_next[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(4));

-- Location: LCCOMB_X24_Y24_N6
\inR[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[4]~13_combout\ = (\state.R1~regout\ & (\plaintext~combout\(25))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(4)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(25),
	datab => \state.R1~regout\,
	datac => r_next(4),
	datad => \state.IDLE~regout\,
	combout => \inR[4]~13_combout\);

-- Location: LCCOMB_X19_Y25_N6
\f1|x[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(7) = \subk_sel[7]~337_combout\ $ (\inR[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \subk_sel[7]~337_combout\,
	datad => \inR[4]~13_combout\,
	combout => \f1|x\(7));

-- Location: LCCOMB_X17_Y25_N14
\f1|s1|WideOr95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr95~0_combout\ = (\f1|x\(10) & (\f1|x\(9) $ (((\f1|x\(7)) # (!\f1|x\(8)))))) # (!\f1|x\(10) & (\f1|x\(8) $ (((\f1|x\(9) & !\f1|x\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(10),
	datab => \f1|x\(8),
	datac => \f1|x\(9),
	datad => \f1|x\(7),
	combout => \f1|s1|WideOr95~0_combout\);

-- Location: LCCOMB_X17_Y25_N12
\f1|s1|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector24~0_combout\ = (\f1|x\(6) & (\f1|x\(11))) # (!\f1|x\(6) & ((\f1|x\(11) & (\f1|s1|WideOr95~0_combout\)) # (!\f1|x\(11) & ((\f1|s1|WideOr87~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|s1|WideOr95~0_combout\,
	datad => \f1|s1|WideOr87~0_combout\,
	combout => \f1|s1|Selector24~0_combout\);

-- Location: LCCOMB_X17_Y25_N26
\f1|s1|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector24~1_combout\ = (\f1|x\(6) & ((\f1|s1|Selector24~0_combout\ & ((\f1|s1|WideOr97~0_combout\))) # (!\f1|s1|Selector24~0_combout\ & (!\f1|s1|WideOr91~0_combout\)))) # (!\f1|x\(6) & (((\f1|s1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|s1|WideOr91~0_combout\,
	datac => \f1|s1|WideOr97~0_combout\,
	datad => \f1|s1|Selector24~0_combout\,
	combout => \f1|s1|Selector24~1_combout\);

-- Location: LCCOMB_X17_Y25_N22
\r_next~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~40_combout\ = \f1|s1|Selector24~1_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(56))) # (!\comb~17_combout\ & ((l_next(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(56),
	datab => l_next(0),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector24~1_combout\,
	combout => \r_next~40_combout\);

-- Location: LCFF_X17_Y25_N23
\r_next[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~40_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(0));

-- Location: LCCOMB_X14_Y24_N2
\inR[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[0]~3_combout\ = (\state.R1~regout\ & (\plaintext~combout\(57))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(0)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \plaintext~combout\(57),
	datac => \state.IDLE~regout\,
	datad => r_next(0),
	combout => \inR[0]~3_combout\);

-- Location: LCCOMB_X16_Y24_N14
\f1|x[1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~95_combout\ = \inR[0]~3_combout\ $ (((\subk_sel[6]~4_combout\ & ((!\f1|x[1]~94_combout\) # (!\subk_sel[6]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[1]~94_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \inR[0]~3_combout\,
	combout => \f1|x[1]~95_combout\);

-- Location: LCCOMB_X16_Y24_N4
\f1|x[1]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~96_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(17))) # (!\subk_sel[6]~5_combout\ & ((!\key~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datac => \key~combout\(2),
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[1]~96_combout\);

-- Location: LCCOMB_X17_Y21_N14
\subk_sel[1]~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[1]~243_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(59)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(44) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \key~combout\(59),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[1]~243_combout\);

-- Location: LCCOMB_X17_Y21_N8
\subk_sel[1]~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[1]~244_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[1]~243_combout\ & ((\key~combout\(60)))) # (!\subk_sel[1]~243_combout\ & (\key~combout\(1))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[1]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \subk_sel[6]~15_combout\,
	datac => \subk_sel[1]~243_combout\,
	datad => \key~combout\(60),
	combout => \subk_sel[1]~244_combout\);

-- Location: LCCOMB_X16_Y24_N10
\f1|x[1]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~97_combout\ = (\subk_sel[6]~5_combout\ & (!\key~combout\(43) & ((!\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\key~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \key~combout\(9),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \f1|x[1]~97_combout\);

-- Location: LCCOMB_X16_Y24_N12
\f1|x[1]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~98_combout\ = (\subk_sel[6]~14_combout\ & (((!\f1|x[1]~97_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\) # ((\subk_sel[1]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \subk_sel[6]~13_combout\,
	datac => \subk_sel[1]~244_combout\,
	datad => \f1|x[1]~97_combout\,
	combout => \f1|x[1]~98_combout\);

-- Location: LCCOMB_X16_Y24_N8
\f1|x[1]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~150_combout\ = (\subk_sel[6]~3_combout\ & ((\state.R1~regout\ & ((\f1|x[1]~98_combout\))) # (!\state.R1~regout\ & (\f1|x[1]~96_combout\)))) # (!\subk_sel[6]~3_combout\ & (((\f1|x[1]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~3_combout\,
	datab => \state.R1~regout\,
	datac => \f1|x[1]~96_combout\,
	datad => \f1|x[1]~98_combout\,
	combout => \f1|x[1]~150_combout\);

-- Location: LCCOMB_X17_Y24_N8
\subk_sel[1]~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[1]~245_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(58) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(34)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(58),
	datab => \key~combout\(34),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[1]~245_combout\);

-- Location: LCCOMB_X17_Y24_N10
\subk_sel[1]~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[1]~246_combout\ = (\subk_sel[1]~245_combout\ & (((\key~combout\(18)) # (!\subk_sel[6]~7_combout\)))) # (!\subk_sel[1]~245_combout\ & (\key~combout\(50) & ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(18),
	datac => \subk_sel[1]~245_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[1]~246_combout\);

-- Location: LCCOMB_X17_Y24_N24
\subk_sel[1]~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[1]~247_combout\ = (\subk_sel[6]~6_combout\ & (((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[6]~1_combout\ & ((\subk_sel[1]~246_combout\))) # (!\subk_sel[6]~1_combout\ & (\key~combout\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(49),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[1]~246_combout\,
	combout => \subk_sel[1]~247_combout\);

-- Location: LCCOMB_X16_Y24_N6
\f1|x[1]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~99_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[1]~247_combout\ & (!\key~combout\(33))) # (!\subk_sel[1]~247_combout\ & ((\f1|x[1]~96_combout\))))) # (!\subk_sel[6]~6_combout\ & (((!\subk_sel[1]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(33),
	datac => \f1|x[1]~96_combout\,
	datad => \subk_sel[1]~247_combout\,
	combout => \f1|x[1]~99_combout\);

-- Location: LCCOMB_X16_Y24_N22
\f1|x[1]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[1]~151_combout\ = (\state.R1~regout\ & (!\f1|x[1]~97_combout\)) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((\f1|x[1]~99_combout\))) # (!\subk_sel[6]~3_combout\ & (!\f1|x[1]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[1]~97_combout\,
	datab => \state.R1~regout\,
	datac => \subk_sel[6]~3_combout\,
	datad => \f1|x[1]~99_combout\,
	combout => \f1|x[1]~151_combout\);

-- Location: LCCOMB_X16_Y24_N0
\f1|x[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(1) = \f1|x[1]~95_combout\ $ (((\subk_sel[6]~5_combout\ & (!\f1|x[1]~150_combout\)) # (!\subk_sel[6]~5_combout\ & ((!\f1|x[1]~151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[1]~95_combout\,
	datac => \f1|x[1]~150_combout\,
	datad => \f1|x[1]~151_combout\,
	combout => \f1|x\(1));

-- Location: LCCOMB_X20_Y24_N16
\f1|s1|WideOr113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr113~0_combout\ = (\f1|x\(3) & ((\f1|x\(2) & ((\f1|x\(1)))) # (!\f1|x\(2) & (\f1|x\(4))))) # (!\f1|x\(3) & (\f1|x\(4) $ ((\f1|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr113~0_combout\);

-- Location: LCCOMB_X20_Y24_N4
\f1|s1|WideOr106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr106~0_combout\ = (\f1|x\(1) & ((\f1|x\(4) & (\f1|x\(3))) # (!\f1|x\(4) & ((\f1|x\(2)))))) # (!\f1|x\(1) & ((\f1|x\(3) & ((!\f1|x\(2)))) # (!\f1|x\(3) & (\f1|x\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr106~0_combout\);

-- Location: LCCOMB_X20_Y24_N26
\f1|s1|WideOr104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr104~0_combout\ = \f1|x\(3) $ (((\f1|x\(4) & (\f1|x\(1) $ (!\f1|x\(2)))) # (!\f1|x\(4) & ((\f1|x\(1)) # (\f1|x\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr104~0_combout\);

-- Location: LCCOMB_X21_Y24_N20
\f1|s1|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector31~0_combout\ = (\f1|x\(0) & ((\f1|x\(5)) # ((!\f1|s1|WideOr106~0_combout\)))) # (!\f1|x\(0) & (!\f1|x\(5) & ((!\f1|s1|WideOr104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(0),
	datab => \f1|x\(5),
	datac => \f1|s1|WideOr106~0_combout\,
	datad => \f1|s1|WideOr104~0_combout\,
	combout => \f1|s1|Selector31~0_combout\);

-- Location: LCCOMB_X21_Y24_N22
\f1|s1|WideOr110~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr110~0_combout\ = (\f1|x\(4) & (\f1|x\(3) $ (((!\f1|x\(1)) # (!\f1|x\(2)))))) # (!\f1|x\(4) & ((\f1|x\(1) & ((\f1|x\(3)))) # (!\f1|x\(1) & (\f1|x\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(2),
	datac => \f1|x\(3),
	datad => \f1|x\(1),
	combout => \f1|s1|WideOr110~0_combout\);

-- Location: LCCOMB_X21_Y24_N30
\f1|s1|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector31~1_combout\ = (\f1|x\(5) & ((\f1|s1|Selector31~0_combout\ & (\f1|s1|WideOr113~0_combout\)) # (!\f1|s1|Selector31~0_combout\ & ((!\f1|s1|WideOr110~0_combout\))))) # (!\f1|x\(5) & (((\f1|s1|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(5),
	datab => \f1|s1|WideOr113~0_combout\,
	datac => \f1|s1|Selector31~0_combout\,
	datad => \f1|s1|WideOr110~0_combout\,
	combout => \f1|s1|Selector31~1_combout\);

-- Location: LCCOMB_X21_Y24_N8
\r_next~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~25_combout\ = \f1|s1|Selector31~1_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(34)))) # (!\comb~17_combout\ & (l_next(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(11),
	datac => \plaintext~combout\(34),
	datad => \f1|s1|Selector31~1_combout\,
	combout => \r_next~25_combout\);

-- Location: LCFF_X21_Y24_N9
\r_next[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~25_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(11));

-- Location: LCCOMB_X15_Y24_N0
\inR[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[11]~0_combout\ = (\state.R1~regout\ & (\plaintext~combout\(35))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(11)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \plaintext~combout\(35),
	datac => \state.IDLE~regout\,
	datad => r_next(11),
	combout => \inR[11]~0_combout\);

-- Location: LCCOMB_X15_Y25_N14
\f1|x[18]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~41_combout\ = \inR[11]~0_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\f1|x[18]~40_combout\) # (!\subk_sel[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[18]~40_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \inR[11]~0_combout\,
	combout => \f1|x[18]~41_combout\);

-- Location: LCCOMB_X15_Y25_N4
\f1|x[18]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~42_combout\ = (\subk_sel[6]~4_combout\ & (((!\key~combout\(11) & !\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~4_combout\ & (!\key~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \key~combout\(11),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[18]~42_combout\);

-- Location: LCCOMB_X14_Y25_N0
\subk_sel[18]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[18]~33_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & ((\key~combout\(43)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(59))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(59),
	datab => \key~combout\(43),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[18]~33_combout\);

-- Location: LCCOMB_X14_Y25_N14
\subk_sel[18]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[18]~34_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[18]~33_combout\ & ((\key~combout\(44)))) # (!\subk_sel[18]~33_combout\ & (\key~combout\(52))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[18]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(52),
	datab => \key~combout\(44),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[18]~33_combout\,
	combout => \subk_sel[18]~34_combout\);

-- Location: LCCOMB_X15_Y25_N18
\f1|x[18]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~43_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[18]~42_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[18]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \f1|x[18]~42_combout\,
	datad => \subk_sel[18]~34_combout\,
	combout => \f1|x[18]~43_combout\);

-- Location: LCCOMB_X15_Y25_N24
\f1|x[18]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~44_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[18]~43_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[18]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[18]~140_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \f1|x[18]~43_combout\,
	combout => \f1|x[18]~44_combout\);

-- Location: LCCOMB_X15_Y25_N30
\subk_sel[18]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[18]~35_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & (\key~combout\(34))) # (!\subk_sel[6]~7_combout\ & ((\key~combout\(42)))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[18]~35_combout\);

-- Location: LCCOMB_X15_Y25_N12
\subk_sel[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[18]~36_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[18]~35_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[18]~35_combout\ & ((\key~combout\(2)))) # (!\subk_sel[18]~35_combout\ & (\key~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \key~combout\(2),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[18]~35_combout\,
	combout => \subk_sel[18]~36_combout\);

-- Location: LCCOMB_X15_Y25_N26
\subk_sel[18]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[18]~37_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(49)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[18]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(49),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[18]~36_combout\,
	combout => \subk_sel[18]~37_combout\);

-- Location: LCCOMB_X15_Y25_N28
\f1|x[18]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~45_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[18]~37_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[18]~37_combout\ & ((!\key~combout\(17)))) # (!\subk_sel[18]~37_combout\ & (\f1|x[18]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[18]~140_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(17),
	datad => \subk_sel[18]~37_combout\,
	combout => \f1|x[18]~45_combout\);

-- Location: LCCOMB_X15_Y25_N10
\f1|x[18]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[18]~46_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[18]~42_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[18]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datac => \f1|x[18]~42_combout\,
	datad => \f1|x[18]~45_combout\,
	combout => \f1|x[18]~46_combout\);

-- Location: LCCOMB_X15_Y25_N20
\f1|x[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(18) = \f1|x[18]~41_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[18]~44_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[18]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[18]~41_combout\,
	datac => \f1|x[18]~44_combout\,
	datad => \f1|x[18]~46_combout\,
	combout => \f1|x\(18));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(10),
	combout => \plaintext~combout\(10));

-- Location: LCCOMB_X24_Y24_N24
\inR[14]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[14]~9_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(11))) # (!\state.R1~regout\ & ((r_next(14)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(11),
	datab => \state.IDLE~regout\,
	datac => \state.R1~regout\,
	datad => r_next(14),
	combout => \inR[14]~9_combout\);

-- Location: LCFF_X24_Y24_N25
\l_next[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[14]~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(14));

-- Location: LCCOMB_X24_Y20_N8
\f1|s1|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~0_combout\ = (\f1|x\(37) & (\f1|x\(39) $ (((\f1|x\(40)) # (\f1|x\(41)))))) # (!\f1|x\(37) & (\f1|x\(40) & ((\f1|x\(39)) # (!\f1|x\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\f1|s1|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~4_combout\ = (\f1|x\(39) & (\f1|x\(40) & ((\f1|x\(37)) # (!\f1|x\(41))))) # (!\f1|x\(39) & (\f1|x\(40) $ (((\f1|x\(37))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector7~4_combout\);

-- Location: LCCOMB_X24_Y20_N24
\f1|s1|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~2_combout\ = (\f1|x\(41) & (((!\f1|x\(39) & \f1|x\(37))) # (!\f1|x\(40)))) # (!\f1|x\(41) & (\f1|x\(39) & ((\f1|x\(40)) # (!\f1|x\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector7~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\f1|s1|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~1_combout\ = (\f1|x\(37) & (\f1|x\(41) $ (((\f1|x\(40) & !\f1|x\(39)))))) # (!\f1|x\(37) & ((\f1|x\(41) & (!\f1|x\(40))) # (!\f1|x\(41) & ((\f1|x\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(41),
	datac => \f1|x\(39),
	datad => \f1|x\(37),
	combout => \f1|s1|Selector7~1_combout\);

-- Location: LCCOMB_X24_Y20_N10
\f1|s1|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~3_combout\ = (\f1|x\(38) & ((\f1|x\(36)) # ((\f1|s1|Selector7~1_combout\)))) # (!\f1|x\(38) & (!\f1|x\(36) & (!\f1|s1|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(38),
	datab => \f1|x\(36),
	datac => \f1|s1|Selector7~2_combout\,
	datad => \f1|s1|Selector7~1_combout\,
	combout => \f1|s1|Selector7~3_combout\);

-- Location: LCCOMB_X24_Y20_N18
\f1|s1|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector7~5_combout\ = (\f1|x\(36) & ((\f1|s1|Selector7~3_combout\ & ((\f1|s1|Selector7~4_combout\))) # (!\f1|s1|Selector7~3_combout\ & (!\f1|s1|Selector7~0_combout\)))) # (!\f1|x\(36) & (((\f1|s1|Selector7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|s1|Selector7~0_combout\,
	datac => \f1|s1|Selector7~4_combout\,
	datad => \f1|s1|Selector7~3_combout\,
	combout => \f1|s1|Selector7~5_combout\);

-- Location: LCCOMB_X24_Y20_N28
\r_next~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~7_combout\ = \f1|s1|Selector7~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(10))) # (!\comb~17_combout\ & ((l_next(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(10),
	datac => l_next(14),
	datad => \f1|s1|Selector7~5_combout\,
	combout => \r_next~7_combout\);

-- Location: LCFF_X24_Y20_N29
\r_next[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(14));

-- Location: LCCOMB_X17_Y23_N18
\subk_sel[21]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~23_combout\ = (\subk_sel[6]~2_combout\ & (((\key~combout\(11) & !\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\key~combout\(50)) # ((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(50),
	datab => \key~combout\(11),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[21]~23_combout\);

-- Location: LCCOMB_X17_Y23_N12
\subk_sel[21]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~24_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[21]~23_combout\ & (\key~combout\(34))) # (!\subk_sel[21]~23_combout\ & ((\key~combout\(3)))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[21]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(34),
	datab => \key~combout\(3),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[21]~23_combout\,
	combout => \subk_sel[21]~24_combout\);

-- Location: LCCOMB_X17_Y23_N26
\subk_sel[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~25_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[6]~6_combout\ & \subk_sel[21]~24_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(2)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(2),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[21]~24_combout\,
	combout => \subk_sel[21]~25_combout\);

-- Location: LCCOMB_X17_Y23_N8
\subk_sel[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~26_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[21]~25_combout\ & ((\key~combout\(49)))) # (!\subk_sel[21]~25_combout\ & (\key~combout\(18))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[21]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \subk_sel[6]~6_combout\,
	datac => \key~combout\(49),
	datad => \subk_sel[21]~25_combout\,
	combout => \subk_sel[21]~26_combout\);

-- Location: LCCOMB_X17_Y23_N14
\subk_sel[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~27_combout\ = (\subk_sel[6]~4_combout\ & ((\key~combout\(25)) # ((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[21]~26_combout\ & !\subk_sel[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(25),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[21]~26_combout\,
	datad => \subk_sel[6]~5_combout\,
	combout => \subk_sel[21]~27_combout\);

-- Location: LCCOMB_X17_Y21_N4
\subk_sel[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~28_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(44)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\key~combout\(60) & \subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \key~combout\(60),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[21]~28_combout\);

-- Location: LCCOMB_X17_Y21_N10
\subk_sel[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~29_combout\ = (\subk_sel[21]~28_combout\ & (((\key~combout\(9)) # (!\subk_sel[6]~15_combout\)))) # (!\subk_sel[21]~28_combout\ & (\key~combout\(17) & ((\subk_sel[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \key~combout\(9),
	datac => \subk_sel[21]~28_combout\,
	datad => \subk_sel[6]~15_combout\,
	combout => \subk_sel[21]~29_combout\);

-- Location: LCCOMB_X17_Y21_N12
\subk_sel[21]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~30_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(43))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[21]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(43),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[21]~29_combout\,
	combout => \subk_sel[21]~30_combout\);

-- Location: LCCOMB_X17_Y21_N26
\subk_sel[21]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~31_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[21]~30_combout\ & (\key~combout\(27))) # (!\subk_sel[21]~30_combout\ & ((\key~combout\(59)))))) # (!\subk_sel[6]~14_combout\ & (((\subk_sel[21]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(59),
	datad => \subk_sel[21]~30_combout\,
	combout => \subk_sel[21]~31_combout\);

-- Location: LCCOMB_X17_Y23_N0
\subk_sel[21]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[21]~32_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[21]~27_combout\ & ((\subk_sel[21]~31_combout\))) # (!\subk_sel[21]~27_combout\ & (\key~combout\(33))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[21]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(33),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[21]~27_combout\,
	datad => \subk_sel[21]~31_combout\,
	combout => \subk_sel[21]~32_combout\);

-- Location: LCCOMB_X17_Y23_N2
\f1|x[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(21) = \subk_sel[21]~32_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(11))) # (!\comb~17_combout\ & ((r_next(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(11),
	datab => \comb~17_combout\,
	datac => r_next(14),
	datad => \subk_sel[21]~32_combout\,
	combout => \f1|x\(21));

-- Location: LCCOMB_X15_Y23_N8
\f1|s1|Selector18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~4_combout\ = \f1|x\(22) $ (((\f1|x\(23) & ((!\f1|x\(21)))) # (!\f1|x\(23) & (!\f1|x\(18) & \f1|x\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(23),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(21),
	combout => \f1|s1|Selector18~4_combout\);

-- Location: LCCOMB_X15_Y23_N20
\f1|s1|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~2_combout\ = (\f1|x\(23) & (!\f1|x\(22) & (\f1|x\(21) $ (!\f1|x\(18))))) # (!\f1|x\(23) & (\f1|x\(22) $ (((\f1|x\(21) & \f1|x\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector18~2_combout\);

-- Location: LCCOMB_X15_Y23_N10
\f1|s1|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~1_combout\ = (\f1|x\(23) & (((!\f1|x\(22) & \f1|x\(21))))) # (!\f1|x\(23) & ((\f1|x\(18) & ((!\f1|x\(21)))) # (!\f1|x\(18) & ((\f1|x\(22)) # (\f1|x\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(23),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(21),
	combout => \f1|s1|Selector18~1_combout\);

-- Location: LCCOMB_X15_Y23_N30
\f1|s1|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~3_combout\ = (\f1|x\(20) & ((\f1|x\(19)) # ((\f1|s1|Selector18~1_combout\)))) # (!\f1|x\(20) & (!\f1|x\(19) & (!\f1|s1|Selector18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(20),
	datab => \f1|x\(19),
	datac => \f1|s1|Selector18~2_combout\,
	datad => \f1|s1|Selector18~1_combout\,
	combout => \f1|s1|Selector18~3_combout\);

-- Location: LCCOMB_X15_Y23_N18
\f1|s1|Selector18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector18~5_combout\ = (\f1|x\(19) & ((\f1|s1|Selector18~3_combout\ & ((\f1|s1|Selector18~4_combout\))) # (!\f1|s1|Selector18~3_combout\ & (\f1|s1|Selector18~0_combout\)))) # (!\f1|x\(19) & (((\f1|s1|Selector18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector18~0_combout\,
	datab => \f1|s1|Selector18~4_combout\,
	datac => \f1|x\(19),
	datad => \f1|s1|Selector18~3_combout\,
	combout => \f1|s1|Selector18~5_combout\);

-- Location: LCCOMB_X15_Y23_N26
\r_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~2_combout\ = \f1|s1|Selector18~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(0)))) # (!\comb~17_combout\ & (l_next(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(7),
	datac => \plaintext~combout\(0),
	datad => \f1|s1|Selector18~5_combout\,
	combout => \r_next~2_combout\);

-- Location: LCFF_X15_Y23_N27
\r_next[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(7));

-- Location: LCCOMB_X22_Y23_N4
\dectext[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[0]~reg0feeder_combout\ = r_next(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(7),
	combout => \dectext[0]~reg0feeder_combout\);

-- Location: LCFF_X22_Y23_N5
\dectext[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[0]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[0]~reg0_regout\);

-- Location: LCCOMB_X15_Y23_N28
\dectext[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[1]~reg0feeder_combout\ = l_next(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(7),
	combout => \dectext[1]~reg0feeder_combout\);

-- Location: LCFF_X15_Y23_N29
\dectext[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[1]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[1]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N16
\dectext[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[2]~reg0feeder_combout\ = r_next(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(15),
	combout => \dectext[2]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N17
\dectext[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[2]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[2]~reg0_regout\);

-- Location: LCFF_X14_Y24_N19
\dectext[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(15),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[3]~reg0_regout\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(4),
	combout => \plaintext~combout\(4));

-- Location: LCCOMB_X22_Y21_N18
\f1|s1|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~4_combout\ = \f1|x\(42) $ (((\f1|x\(44) & ((\f1|x\(46)))) # (!\f1|x\(44) & (\f1|x\(47) & !\f1|x\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(44),
	datab => \f1|x\(47),
	datac => \f1|x\(42),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector0~4_combout\);

-- Location: LCCOMB_X22_Y21_N16
\f1|s1|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~1_combout\ = (\f1|x\(46) & (((!\f1|x\(44) & \f1|x\(42))))) # (!\f1|x\(46) & (\f1|x\(47) $ (((\f1|x\(44)) # (\f1|x\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(47),
	datac => \f1|x\(44),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y21_N26
\f1|s1|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~2_combout\ = (\f1|x\(46) & (\f1|x\(47) $ (((!\f1|x\(42)))))) # (!\f1|x\(46) & ((\f1|x\(47) & (!\f1|x\(44) & !\f1|x\(42))) # (!\f1|x\(47) & ((\f1|x\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(47),
	datac => \f1|x\(44),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y21_N24
\f1|s1|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~3_combout\ = (\f1|x\(43) & (\f1|x\(45))) # (!\f1|x\(43) & ((\f1|x\(45) & (\f1|s1|Selector0~1_combout\)) # (!\f1|x\(45) & ((!\f1|s1|Selector0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(43),
	datab => \f1|x\(45),
	datac => \f1|s1|Selector0~1_combout\,
	datad => \f1|s1|Selector0~2_combout\,
	combout => \f1|s1|Selector0~3_combout\);

-- Location: LCCOMB_X22_Y21_N22
\f1|s1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~0_combout\ = (\f1|x\(42) & ((\f1|x\(44) & ((\f1|x\(46)))) # (!\f1|x\(44) & ((\f1|x\(47)) # (!\f1|x\(46)))))) # (!\f1|x\(42) & (\f1|x\(46) $ (((\f1|x\(44) & \f1|x\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(42),
	datab => \f1|x\(44),
	datac => \f1|x\(47),
	datad => \f1|x\(46),
	combout => \f1|s1|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\f1|s1|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector0~5_combout\ = (\f1|x\(43) & ((\f1|s1|Selector0~3_combout\ & (!\f1|s1|Selector0~4_combout\)) # (!\f1|s1|Selector0~3_combout\ & ((\f1|s1|Selector0~0_combout\))))) # (!\f1|x\(43) & (((\f1|s1|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(43),
	datab => \f1|s1|Selector0~4_combout\,
	datac => \f1|s1|Selector0~3_combout\,
	datad => \f1|s1|Selector0~0_combout\,
	combout => \f1|s1|Selector0~5_combout\);

-- Location: LCCOMB_X22_Y21_N10
\r_next~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~4_combout\ = \f1|s1|Selector0~5_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(4)))) # (!\comb~17_combout\ & (l_next(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(23),
	datab => \plaintext~combout\(4),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector0~5_combout\,
	combout => \r_next~4_combout\);

-- Location: LCFF_X22_Y21_N11
\r_next[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(23));

-- Location: LCCOMB_X14_Y24_N12
\dectext[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[4]~reg0feeder_combout\ = r_next(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(23),
	combout => \dectext[4]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N13
\dectext[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[4]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[4]~reg0_regout\);

-- Location: LCCOMB_X21_Y23_N24
\l_next[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[23]~feeder_combout\ = \inR[23]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[23]~6_combout\,
	combout => \l_next[23]~feeder_combout\);

-- Location: LCFF_X21_Y23_N25
\l_next[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[23]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(23));

-- Location: LCCOMB_X14_Y24_N14
\dectext[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[5]~reg0feeder_combout\ = l_next(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(23),
	combout => \dectext[5]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N15
\dectext[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[5]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[5]~reg0_regout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(6),
	combout => \plaintext~combout\(6));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(7),
	combout => \plaintext~combout\(7));

-- Location: LCCOMB_X15_Y24_N26
\inR[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[31]~2_combout\ = (\state.R1~regout\ & (\plaintext~combout\(7))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(31)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \plaintext~combout\(7),
	datac => \state.IDLE~regout\,
	datad => r_next(31),
	combout => \inR[31]~2_combout\);

-- Location: LCCOMB_X15_Y24_N24
\l_next[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[31]~feeder_combout\ = \inR[31]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[31]~2_combout\,
	combout => \l_next[31]~feeder_combout\);

-- Location: LCFF_X15_Y24_N25
\l_next[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[31]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(31));

-- Location: LCCOMB_X15_Y24_N16
\inL[31]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[31]~0_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(6))) # (!\state.R1~regout\ & ((l_next(31)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \plaintext~combout\(6),
	datac => l_next(31),
	datad => \state.R1~regout\,
	combout => \inL[31]~0_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(53),
	combout => \plaintext~combout\(53));

-- Location: LCCOMB_X22_Y24_N26
\inR[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[17]~29_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(53))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (r_next(17))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.R1~regout\,
	datab => \state.IDLE~regout\,
	datac => r_next(17),
	datad => \plaintext~combout\(53),
	combout => \inR[17]~29_combout\);

-- Location: LCFF_X22_Y24_N27
\l_next[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[17]~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(17));

-- Location: LCCOMB_X17_Y26_N24
\f1|x[0]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~100_combout\ = (\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (!\key~combout\(35))) # (!\subk_sel[6]~13_combout\ & ((!\key~combout\(36))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(35),
	datab => \key~combout\(36),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \f1|x[0]~100_combout\);

-- Location: LCCOMB_X17_Y26_N22
\f1|x[0]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~101_combout\ = \inR[31]~2_combout\ $ (((\subk_sel[6]~5_combout\ & ((!\subk_sel[6]~4_combout\) # (!\f1|x[0]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \f1|x[0]~100_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \inR[31]~2_combout\,
	combout => \f1|x[0]~101_combout\);

-- Location: LCCOMB_X18_Y26_N14
\f1|x[0]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~152_combout\ = (\state.R1~regout\ & (!\key~combout\(33))) # (!\state.R1~regout\ & ((\subk_sel[6]~3_combout\ & ((!\key~combout\(10)))) # (!\subk_sel[6]~3_combout\ & (!\key~combout\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(33),
	datab => \key~combout\(10),
	datac => \state.R1~regout\,
	datad => \subk_sel[6]~3_combout\,
	combout => \f1|x[0]~152_combout\);

-- Location: LCCOMB_X17_Y21_N2
\subk_sel[0]~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[0]~248_combout\ = (\subk_sel[6]~17_combout\ & (((\key~combout\(52)) # (!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (\key~combout\(1) & ((\subk_sel[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(1),
	datab => \key~combout\(52),
	datac => \subk_sel[6]~17_combout\,
	datad => \subk_sel[6]~16_combout\,
	combout => \subk_sel[0]~248_combout\);

-- Location: LCCOMB_X17_Y21_N0
\subk_sel[0]~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[0]~249_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[0]~248_combout\ & (\key~combout\(17))) # (!\subk_sel[0]~248_combout\ & ((\key~combout\(25)))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[0]~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \subk_sel[6]~15_combout\,
	datac => \key~combout\(25),
	datad => \subk_sel[0]~248_combout\,
	combout => \subk_sel[0]~249_combout\);

-- Location: LCCOMB_X17_Y26_N12
\f1|x[0]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~102_combout\ = (\subk_sel[6]~4_combout\ & (!\key~combout\(51) & (!\subk_sel[6]~14_combout\))) # (!\subk_sel[6]~4_combout\ & (((!\key~combout\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \subk_sel[6]~14_combout\,
	datac => \key~combout\(41),
	datad => \subk_sel[6]~4_combout\,
	combout => \f1|x[0]~102_combout\);

-- Location: LCCOMB_X17_Y26_N6
\f1|x[0]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~103_combout\ = (\subk_sel[6]~13_combout\ & (((!\f1|x[0]~102_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\) # ((\subk_sel[0]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[0]~249_combout\,
	datad => \f1|x[0]~102_combout\,
	combout => \f1|x[0]~103_combout\);

-- Location: LCCOMB_X17_Y26_N4
\f1|x[0]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~104_combout\ = (\subk_sel[6]~5_combout\ & ((\f1|x[0]~103_combout\))) # (!\subk_sel[6]~5_combout\ & (\f1|x[0]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subk_sel[6]~5_combout\,
	datac => \f1|x[0]~152_combout\,
	datad => \f1|x[0]~103_combout\,
	combout => \f1|x[0]~104_combout\);

-- Location: LCCOMB_X18_Y26_N0
\subk_sel[0]~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[0]~250_combout\ = (\subk_sel[6]~2_combout\ & ((\subk_sel[6]~7_combout\ & ((\key~combout\(11)))) # (!\subk_sel[6]~7_combout\ & (\key~combout\(19))))) # (!\subk_sel[6]~2_combout\ & (((\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(19),
	datab => \key~combout\(11),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[0]~250_combout\);

-- Location: LCCOMB_X18_Y26_N26
\subk_sel[0]~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[0]~251_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[0]~250_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[0]~250_combout\ & (\key~combout\(42))) # (!\subk_sel[0]~250_combout\ & ((\key~combout\(58))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(42),
	datab => \key~combout\(58),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[0]~250_combout\,
	combout => \subk_sel[0]~251_combout\);

-- Location: LCCOMB_X18_Y26_N28
\subk_sel[0]~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[0]~252_combout\ = (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~6_combout\ & (\key~combout\(26))) # (!\subk_sel[6]~6_combout\ & ((\subk_sel[0]~251_combout\))))) # (!\subk_sel[6]~1_combout\ & (((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(26),
	datac => \subk_sel[6]~6_combout\,
	datad => \subk_sel[0]~251_combout\,
	combout => \subk_sel[0]~252_combout\);

-- Location: LCCOMB_X18_Y26_N30
\f1|x[0]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~105_combout\ = (\subk_sel[6]~1_combout\ & (((!\subk_sel[0]~252_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[0]~252_combout\ & (!\key~combout\(57))) # (!\subk_sel[0]~252_combout\ & ((\f1|x[0]~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~1_combout\,
	datab => \key~combout\(57),
	datac => \f1|x[0]~152_combout\,
	datad => \subk_sel[0]~252_combout\,
	combout => \f1|x[0]~105_combout\);

-- Location: LCCOMB_X17_Y26_N26
\f1|x[0]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x[0]~106_combout\ = (\subk_sel[6]~5_combout\ & (!\f1|x[0]~102_combout\)) # (!\subk_sel[6]~5_combout\ & ((\f1|x[0]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x[0]~102_combout\,
	datab => \subk_sel[6]~5_combout\,
	datad => \f1|x[0]~105_combout\,
	combout => \f1|x[0]~106_combout\);

-- Location: LCCOMB_X17_Y26_N0
\f1|x[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(0) = \f1|x[0]~101_combout\ $ (((\subk_sel[6]~4_combout\ & (!\f1|x[0]~104_combout\)) # (!\subk_sel[6]~4_combout\ & ((!\f1|x[0]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~4_combout\,
	datab => \f1|x[0]~101_combout\,
	datac => \f1|x[0]~104_combout\,
	datad => \f1|x[0]~106_combout\,
	combout => \f1|x\(0));

-- Location: LCCOMB_X21_Y24_N14
\f1|s1|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~0_combout\ = (\f1|x\(4) & (((!\f1|x\(1) & !\f1|x\(0))) # (!\f1|x\(5)))) # (!\f1|x\(4) & (((\f1|x\(5) & \f1|x\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(1),
	datac => \f1|x\(5),
	datad => \f1|x\(0),
	combout => \f1|s1|Selector30~0_combout\);

-- Location: LCCOMB_X21_Y24_N16
\f1|s1|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~1_combout\ = (\f1|x\(4) & (\f1|x\(5) $ (((!\f1|x\(0)) # (!\f1|x\(1)))))) # (!\f1|x\(4) & (\f1|x\(5) & ((!\f1|x\(0)) # (!\f1|x\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(5),
	datac => \f1|x\(1),
	datad => \f1|x\(0),
	combout => \f1|s1|Selector30~1_combout\);

-- Location: LCCOMB_X21_Y24_N18
\f1|s1|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~2_combout\ = (\f1|x\(1) & ((\f1|x\(5) & ((!\f1|x\(0)))) # (!\f1|x\(5) & (!\f1|x\(4))))) # (!\f1|x\(1) & (\f1|x\(5) $ (((\f1|x\(4) & !\f1|x\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(1),
	datac => \f1|x\(5),
	datad => \f1|x\(0),
	combout => \f1|s1|Selector30~2_combout\);

-- Location: LCCOMB_X21_Y24_N28
\f1|s1|Selector30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~3_combout\ = (\f1|x\(3) & ((\f1|x\(2)) # ((!\f1|s1|Selector30~1_combout\)))) # (!\f1|x\(3) & (!\f1|x\(2) & ((\f1|s1|Selector30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(2),
	datac => \f1|s1|Selector30~1_combout\,
	datad => \f1|s1|Selector30~2_combout\,
	combout => \f1|s1|Selector30~3_combout\);

-- Location: LCCOMB_X21_Y24_N12
\f1|s1|Selector30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector30~5_combout\ = (\f1|x\(2) & ((\f1|s1|Selector30~3_combout\ & (!\f1|s1|Selector30~4_combout\)) # (!\f1|s1|Selector30~3_combout\ & ((\f1|s1|Selector30~0_combout\))))) # (!\f1|x\(2) & (((\f1|s1|Selector30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector30~4_combout\,
	datab => \f1|x\(2),
	datac => \f1|s1|Selector30~0_combout\,
	datad => \f1|s1|Selector30~3_combout\,
	combout => \f1|s1|Selector30~5_combout\);

-- Location: LCCOMB_X22_Y24_N24
\r_next~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~34_combout\ = \f1|s1|Selector30~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(52))) # (!\comb~17_combout\ & ((l_next(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(52),
	datab => l_next(17),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector30~5_combout\,
	combout => \r_next~34_combout\);

-- Location: LCFF_X22_Y24_N25
\r_next[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~34_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(17));

-- Location: LCCOMB_X24_Y24_N4
\subk_sel[26]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~138_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(54))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(5)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(54),
	datab => \key~combout\(5),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[26]~138_combout\);

-- Location: LCCOMB_X23_Y24_N30
\subk_sel[26]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~139_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[26]~138_combout\ & ((\key~combout\(21)))) # (!\subk_sel[26]~138_combout\ & (\key~combout\(29))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[26]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~15_combout\,
	datab => \key~combout\(29),
	datac => \key~combout\(21),
	datad => \subk_sel[26]~138_combout\,
	combout => \subk_sel[26]~139_combout\);

-- Location: LCCOMB_X22_Y24_N10
\subk_sel[26]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~140_combout\ = (\subk_sel[6]~14_combout\ & ((\key~combout\(38)) # ((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & (((!\subk_sel[6]~13_combout\ & \subk_sel[26]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(38),
	datab => \subk_sel[6]~14_combout\,
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[26]~139_combout\,
	combout => \subk_sel[26]~140_combout\);

-- Location: LCCOMB_X22_Y24_N20
\subk_sel[26]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~141_combout\ = (\subk_sel[6]~13_combout\ & ((\subk_sel[26]~140_combout\ & ((\key~combout\(6)))) # (!\subk_sel[26]~140_combout\ & (\key~combout\(22))))) # (!\subk_sel[6]~13_combout\ & (((\subk_sel[26]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(22),
	datab => \key~combout\(6),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[26]~140_combout\,
	combout => \subk_sel[26]~141_combout\);

-- Location: LCCOMB_X22_Y24_N12
\subk_sel[26]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~133_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(47)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(55) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(47),
	datab => \key~combout\(55),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[26]~133_combout\);

-- Location: LCCOMB_X22_Y24_N6
\subk_sel[26]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~134_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[26]~133_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[26]~133_combout\ & (\key~combout\(15))) # (!\subk_sel[26]~133_combout\ & ((\key~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(15),
	datab => \key~combout\(31),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[26]~133_combout\,
	combout => \subk_sel[26]~134_combout\);

-- Location: LCCOMB_X22_Y24_N0
\subk_sel[26]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~135_combout\ = (\subk_sel[6]~6_combout\ & ((\key~combout\(28)) # ((!\subk_sel[6]~1_combout\)))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[6]~1_combout\ & \subk_sel[26]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(28),
	datab => \subk_sel[6]~6_combout\,
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[26]~134_combout\,
	combout => \subk_sel[26]~135_combout\);

-- Location: LCCOMB_X22_Y24_N18
\subk_sel[26]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~136_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[26]~135_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[26]~135_combout\ & ((\key~combout\(61)))) # (!\subk_sel[26]~135_combout\ & (\key~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(12),
	datab => \key~combout\(61),
	datac => \subk_sel[6]~1_combout\,
	datad => \subk_sel[26]~135_combout\,
	combout => \subk_sel[26]~136_combout\);

-- Location: LCCOMB_X22_Y24_N28
\subk_sel[26]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~137_combout\ = (\subk_sel[6]~5_combout\ & ((\key~combout\(45)) # ((\subk_sel[6]~4_combout\)))) # (!\subk_sel[6]~5_combout\ & (((!\subk_sel[6]~4_combout\ & \subk_sel[26]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(45),
	datab => \subk_sel[6]~5_combout\,
	datac => \subk_sel[6]~4_combout\,
	datad => \subk_sel[26]~136_combout\,
	combout => \subk_sel[26]~137_combout\);

-- Location: LCCOMB_X22_Y24_N2
\subk_sel[26]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[26]~142_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[26]~137_combout\ & ((\subk_sel[26]~141_combout\))) # (!\subk_sel[26]~137_combout\ & (\key~combout\(37))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[26]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(37),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[26]~141_combout\,
	datad => \subk_sel[26]~137_combout\,
	combout => \subk_sel[26]~142_combout\);

-- Location: LCCOMB_X22_Y24_N16
\f1|x[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(26) = \subk_sel[26]~142_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(53))) # (!\comb~17_combout\ & ((r_next(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(53),
	datab => \comb~17_combout\,
	datac => r_next(17),
	datad => \subk_sel[26]~142_combout\,
	combout => \f1|x\(26));

-- Location: LCCOMB_X21_Y23_N16
\f1|s1|WideOr50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr50~0_combout\ = (\f1|x\(28) & ((\f1|x\(26) $ (\f1|x\(25))))) # (!\f1|x\(28) & (\f1|x\(27) $ (((\f1|x\(26) & !\f1|x\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(27),
	datab => \f1|x\(26),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr50~0_combout\);

-- Location: LCCOMB_X21_Y23_N2
\f1|s1|WideOr54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr54~0_combout\ = (\f1|x\(27) & (\f1|x\(28) $ (((\f1|x\(26)) # (\f1|x\(25)))))) # (!\f1|x\(27) & ((\f1|x\(26) & (!\f1|x\(25))) # (!\f1|x\(26) & ((\f1|x\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(27),
	datab => \f1|x\(26),
	datac => \f1|x\(25),
	datad => \f1|x\(28),
	combout => \f1|s1|WideOr54~0_combout\);

-- Location: LCCOMB_X21_Y23_N8
\f1|s1|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector15~0_combout\ = (\f1|x\(29) & ((!\f1|s1|WideOr54~0_combout\))) # (!\f1|x\(29) & (\f1|s1|WideOr50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(29),
	datac => \f1|s1|WideOr50~0_combout\,
	datad => \f1|s1|WideOr54~0_combout\,
	combout => \f1|s1|Selector15~0_combout\);

-- Location: LCCOMB_X21_Y23_N20
\f1|s1|WideOr48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr48~1_combout\ = (\f1|x\(28) & ((\f1|x\(29) & ((\f1|x\(27)))) # (!\f1|x\(29) & ((\f1|x\(26)) # (!\f1|x\(27)))))) # (!\f1|x\(28) & (\f1|x\(27) $ (((\f1|x\(26) & \f1|x\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(28),
	datab => \f1|x\(26),
	datac => \f1|x\(29),
	datad => \f1|x\(27),
	combout => \f1|s1|WideOr48~1_combout\);

-- Location: LCCOMB_X21_Y23_N6
\f1|s1|WideOr48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr48~0_combout\ = (\f1|x\(28) & (\f1|x\(26) $ (\f1|x\(29) $ (!\f1|x\(27))))) # (!\f1|x\(28) & ((\f1|x\(26) & (!\f1|x\(29))) # (!\f1|x\(26) & ((\f1|x\(29)) # (\f1|x\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(28),
	datab => \f1|x\(26),
	datac => \f1|x\(29),
	datad => \f1|x\(27),
	combout => \f1|s1|WideOr48~0_combout\);

-- Location: LCCOMB_X21_Y23_N18
\f1|s1|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector14~0_combout\ = (\f1|x\(25) & ((\f1|s1|WideOr48~0_combout\))) # (!\f1|x\(25) & (!\f1|s1|WideOr48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(25),
	datac => \f1|s1|WideOr48~1_combout\,
	datad => \f1|s1|WideOr48~0_combout\,
	combout => \f1|s1|Selector14~0_combout\);

-- Location: LCCOMB_X21_Y23_N22
\r_next~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~5_combout\ = \inL[31]~0_combout\ $ (((\f1|x\(24) & ((\f1|s1|Selector14~0_combout\))) # (!\f1|x\(24) & (!\f1|s1|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(24),
	datab => \inL[31]~0_combout\,
	datac => \f1|s1|Selector15~0_combout\,
	datad => \f1|s1|Selector14~0_combout\,
	combout => \r_next~5_combout\);

-- Location: LCFF_X21_Y23_N23
\r_next[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(31));

-- Location: LCCOMB_X15_Y24_N8
\dectext[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[6]~reg0feeder_combout\ = r_next(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(31),
	combout => \dectext[6]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N9
\dectext[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[6]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[6]~reg0_regout\);

-- Location: LCFF_X15_Y24_N3
\dectext[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(31),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[7]~reg0_regout\);

-- Location: LCCOMB_X23_Y23_N18
\r_next~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~6_combout\ = \inL[6]~1_combout\ $ (((\f1|x\(24) & (\f1|s1|Selector13~0_combout\)) # (!\f1|x\(24) & ((!\f1|s1|Selector12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inL[6]~1_combout\,
	datab => \f1|x\(24),
	datac => \f1|s1|Selector13~0_combout\,
	datad => \f1|s1|Selector12~0_combout\,
	combout => \r_next~6_combout\);

-- Location: LCFF_X23_Y23_N19
\r_next[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(6));

-- Location: LCCOMB_X23_Y23_N0
\dectext[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[8]~reg0feeder_combout\ = r_next(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(6),
	combout => \dectext[8]~reg0feeder_combout\);

-- Location: LCFF_X23_Y23_N1
\dectext[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[8]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[8]~reg0_regout\);

-- Location: LCCOMB_X23_Y23_N20
\inR[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[6]~7_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(9))) # (!\state.R1~regout\ & ((r_next(6)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(9),
	datad => r_next(6),
	combout => \inR[6]~7_combout\);

-- Location: LCFF_X23_Y23_N21
\l_next[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[6]~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(6));

-- Location: LCFF_X23_Y23_N11
\dectext[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(6),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[9]~reg0_regout\);

-- Location: LCCOMB_X24_Y24_N20
\dectext[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[10]~reg0feeder_combout\ = r_next(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(14),
	combout => \dectext[10]~reg0feeder_combout\);

-- Location: LCFF_X24_Y24_N21
\dectext[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[10]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[10]~reg0_regout\);

-- Location: LCFF_X24_Y24_N23
\dectext[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(14),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[11]~reg0_regout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(12),
	combout => \plaintext~combout\(12));

-- Location: LCCOMB_X23_Y23_N26
\inL[22]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[22]~2_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(12))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (l_next(22))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(22),
	datab => \plaintext~combout\(12),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inL[22]~2_combout\);

-- Location: LCCOMB_X21_Y23_N4
\r_next~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~8_combout\ = \inL[22]~2_combout\ $ (((\f1|x\(24) & (\f1|s1|Selector15~0_combout\)) # (!\f1|x\(24) & ((\f1|s1|Selector14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(24),
	datab => \inL[22]~2_combout\,
	datac => \f1|s1|Selector15~0_combout\,
	datad => \f1|s1|Selector14~0_combout\,
	combout => \r_next~8_combout\);

-- Location: LCFF_X21_Y23_N5
\r_next[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(22));

-- Location: LCFF_X21_Y23_N29
\dectext[12]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(22),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[12]~reg0_regout\);

-- Location: LCCOMB_X20_Y23_N24
\inR[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[22]~10_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(13))) # (!\state.R1~regout\ & ((r_next(22)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(13),
	datab => \state.IDLE~regout\,
	datac => \state.R1~regout\,
	datad => r_next(22),
	combout => \inR[22]~10_combout\);

-- Location: LCFF_X20_Y23_N25
\l_next[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[22]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(22));

-- Location: LCFF_X23_Y23_N25
\dectext[13]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(22),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[13]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N24
\dectext[14]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[14]~reg0feeder_combout\ = r_next(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(30),
	combout => \dectext[14]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N25
\dectext[14]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[14]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[14]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N22
\dectext[15]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[15]~reg0feeder_combout\ = l_next(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(30),
	combout => \dectext[15]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N23
\dectext[15]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[15]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[15]~reg0_regout\);

-- Location: LCFF_X16_Y25_N5
\dectext[16]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(5),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[16]~reg0_regout\);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(17),
	combout => \plaintext~combout\(17));

-- Location: LCCOMB_X20_Y25_N6
\inR[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[5]~14_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(17)))) # (!\state.R1~regout\ & (r_next(5))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => r_next(5),
	datad => \plaintext~combout\(17),
	combout => \inR[5]~14_combout\);

-- Location: LCFF_X20_Y25_N7
\l_next[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[5]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(5));

-- Location: LCCOMB_X20_Y25_N0
\dectext[17]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[17]~reg0feeder_combout\ = l_next(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(5),
	combout => \dectext[17]~reg0feeder_combout\);

-- Location: LCFF_X20_Y25_N1
\dectext[17]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[17]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[17]~reg0_regout\);

-- Location: LCFF_X16_Y22_N17
\dectext[18]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(13),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[18]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N8
\inR[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[13]~16_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(19))) # (!\state.R1~regout\ & ((r_next(13)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(19),
	datad => r_next(13),
	combout => \inR[13]~16_combout\);

-- Location: LCFF_X14_Y24_N9
\l_next[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[13]~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(13));

-- Location: LCCOMB_X23_Y22_N20
\dectext[19]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[19]~reg0feeder_combout\ = l_next(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(13),
	combout => \dectext[19]~reg0feeder_combout\);

-- Location: LCFF_X23_Y22_N21
\dectext[19]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[19]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[19]~reg0_regout\);

-- Location: LCCOMB_X16_Y20_N4
\inR[21]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[21]~17_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(21))) # (!\state.R1~regout\ & ((r_next(21)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(21),
	datad => r_next(21),
	combout => \inR[21]~17_combout\);

-- Location: LCFF_X16_Y20_N5
\l_next[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[21]~17_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(21));

-- Location: LCCOMB_X16_Y21_N12
\subk_sel[17]~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~268_combout\ = (\subk_sel[6]~16_combout\ & ((\subk_sel[6]~17_combout\ & (\key~combout\(36))) # (!\subk_sel[6]~17_combout\ & ((\key~combout\(52)))))) # (!\subk_sel[6]~16_combout\ & (((\subk_sel[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \key~combout\(52),
	datac => \subk_sel[6]~16_combout\,
	datad => \subk_sel[6]~17_combout\,
	combout => \subk_sel[17]~268_combout\);

-- Location: LCCOMB_X16_Y21_N22
\subk_sel[17]~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~269_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[17]~268_combout\ & ((\key~combout\(1)))) # (!\subk_sel[17]~268_combout\ & (\key~combout\(9))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[17]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(9),
	datab => \key~combout\(1),
	datac => \subk_sel[6]~15_combout\,
	datad => \subk_sel[17]~268_combout\,
	combout => \subk_sel[17]~269_combout\);

-- Location: LCCOMB_X15_Y21_N16
\subk_sel[17]~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~270_combout\ = (\subk_sel[6]~14_combout\ & (((\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~13_combout\ & (\key~combout\(35))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[17]~269_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~14_combout\,
	datab => \key~combout\(35),
	datac => \subk_sel[6]~13_combout\,
	datad => \subk_sel[17]~269_combout\,
	combout => \subk_sel[17]~270_combout\);

-- Location: LCCOMB_X15_Y21_N14
\subk_sel[17]~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~271_combout\ = (\subk_sel[17]~270_combout\ & (((\key~combout\(19)) # (!\subk_sel[6]~14_combout\)))) # (!\subk_sel[17]~270_combout\ & (\key~combout\(51) & ((\subk_sel[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(51),
	datab => \key~combout\(19),
	datac => \subk_sel[17]~270_combout\,
	datad => \subk_sel[6]~14_combout\,
	combout => \subk_sel[17]~271_combout\);

-- Location: LCCOMB_X15_Y21_N26
\subk_sel[17]~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~263_combout\ = (\subk_sel[6]~2_combout\ & (\key~combout\(3) & ((!\subk_sel[6]~7_combout\)))) # (!\subk_sel[6]~2_combout\ & (((\key~combout\(42)) # (\subk_sel[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(3),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~7_combout\,
	combout => \subk_sel[17]~263_combout\);

-- Location: LCCOMB_X15_Y21_N24
\subk_sel[17]~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~264_combout\ = (\subk_sel[6]~7_combout\ & ((\subk_sel[17]~263_combout\ & ((\key~combout\(26)))) # (!\subk_sel[17]~263_combout\ & (\key~combout\(58))))) # (!\subk_sel[6]~7_combout\ & (((\subk_sel[17]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~7_combout\,
	datab => \key~combout\(58),
	datac => \key~combout\(26),
	datad => \subk_sel[17]~263_combout\,
	combout => \subk_sel[17]~264_combout\);

-- Location: LCCOMB_X15_Y21_N22
\subk_sel[17]~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~265_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[17]~264_combout\ & !\subk_sel[6]~6_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\key~combout\(57)) # ((\subk_sel[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(57),
	datab => \subk_sel[6]~1_combout\,
	datac => \subk_sel[17]~264_combout\,
	datad => \subk_sel[6]~6_combout\,
	combout => \subk_sel[17]~265_combout\);

-- Location: LCCOMB_X15_Y21_N0
\subk_sel[17]~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~266_combout\ = (\subk_sel[6]~6_combout\ & ((\subk_sel[17]~265_combout\ & ((\key~combout\(41)))) # (!\subk_sel[17]~265_combout\ & (\key~combout\(10))))) # (!\subk_sel[6]~6_combout\ & (((\subk_sel[17]~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \key~combout\(10),
	datac => \key~combout\(41),
	datad => \subk_sel[17]~265_combout\,
	combout => \subk_sel[17]~266_combout\);

-- Location: LCCOMB_X15_Y21_N2
\subk_sel[17]~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~267_combout\ = (\subk_sel[6]~5_combout\ & (\subk_sel[6]~4_combout\)) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~4_combout\ & (\key~combout\(17))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[17]~266_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \subk_sel[6]~4_combout\,
	datac => \key~combout\(17),
	datad => \subk_sel[17]~266_combout\,
	combout => \subk_sel[17]~267_combout\);

-- Location: LCCOMB_X15_Y21_N4
\subk_sel[17]~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[17]~272_combout\ = (\subk_sel[6]~5_combout\ & ((\subk_sel[17]~267_combout\ & ((\subk_sel[17]~271_combout\))) # (!\subk_sel[17]~267_combout\ & (\key~combout\(25))))) # (!\subk_sel[6]~5_combout\ & (((\subk_sel[17]~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~5_combout\,
	datab => \key~combout\(25),
	datac => \subk_sel[17]~271_combout\,
	datad => \subk_sel[17]~267_combout\,
	combout => \subk_sel[17]~272_combout\);

-- Location: LCCOMB_X15_Y21_N18
\f1|x[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(17) = \subk_sel[17]~272_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(27))) # (!\comb~17_combout\ & ((r_next(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(27),
	datac => \subk_sel[17]~272_combout\,
	datad => r_next(12),
	combout => \f1|x\(17));

-- Location: LCCOMB_X16_Y20_N8
\f1|s1|Selector22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~4_combout\ = (\f1|x\(16) & (\f1|x\(12) $ (((!\f1|x\(17) & !\f1|x\(13)))))) # (!\f1|x\(16) & (\f1|x\(17) $ (((\f1|x\(12)) # (\f1|x\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(12),
	datab => \f1|x\(16),
	datac => \f1|x\(17),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector22~4_combout\);

-- Location: LCCOMB_X15_Y20_N6
\f1|s1|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~0_combout\ = (\f1|x\(13) & (!\f1|x\(17) & ((\f1|x\(16)) # (!\f1|x\(12))))) # (!\f1|x\(13) & (\f1|x\(17) $ (\f1|x\(16) $ (\f1|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(16),
	datac => \f1|x\(12),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector22~0_combout\);

-- Location: LCCOMB_X16_Y20_N20
\f1|s1|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~2_combout\ = (\f1|x\(17) & ((\f1|x\(16) & ((\f1|x\(12)) # (!\f1|x\(13)))) # (!\f1|x\(16) & ((\f1|x\(13)))))) # (!\f1|x\(17) & (\f1|x\(12) & ((!\f1|x\(13)) # (!\f1|x\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(16),
	datab => \f1|x\(12),
	datac => \f1|x\(17),
	datad => \f1|x\(13),
	combout => \f1|s1|Selector22~2_combout\);

-- Location: LCCOMB_X16_Y20_N10
\f1|s1|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~1_combout\ = (\f1|x\(17) & (\f1|x\(13) $ (((\f1|x\(16)))))) # (!\f1|x\(17) & ((\f1|x\(13) & (!\f1|x\(12) & \f1|x\(16))) # (!\f1|x\(13) & (\f1|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(17),
	datab => \f1|x\(13),
	datac => \f1|x\(12),
	datad => \f1|x\(16),
	combout => \f1|s1|Selector22~1_combout\);

-- Location: LCCOMB_X16_Y20_N22
\f1|s1|Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~3_combout\ = (\f1|x\(15) & (\f1|x\(14))) # (!\f1|x\(15) & ((\f1|x\(14) & ((!\f1|s1|Selector22~1_combout\))) # (!\f1|x\(14) & (\f1|s1|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(15),
	datab => \f1|x\(14),
	datac => \f1|s1|Selector22~2_combout\,
	datad => \f1|s1|Selector22~1_combout\,
	combout => \f1|s1|Selector22~3_combout\);

-- Location: LCCOMB_X16_Y20_N6
\f1|s1|Selector22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector22~5_combout\ = (\f1|x\(15) & ((\f1|s1|Selector22~3_combout\ & (!\f1|s1|Selector22~4_combout\)) # (!\f1|s1|Selector22~3_combout\ & ((\f1|s1|Selector22~0_combout\))))) # (!\f1|x\(15) & (((\f1|s1|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(15),
	datab => \f1|s1|Selector22~4_combout\,
	datac => \f1|s1|Selector22~0_combout\,
	datad => \f1|s1|Selector22~3_combout\,
	combout => \f1|s1|Selector22~5_combout\);

-- Location: LCCOMB_X16_Y20_N2
\r_next~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~11_combout\ = \f1|s1|Selector22~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(20))) # (!\comb~17_combout\ & ((l_next(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(20),
	datab => l_next(21),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector22~5_combout\,
	combout => \r_next~11_combout\);

-- Location: LCFF_X16_Y20_N3
\r_next[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(21));

-- Location: LCCOMB_X16_Y20_N28
\dectext[20]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[20]~reg0feeder_combout\ = r_next(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(21),
	combout => \dectext[20]~reg0feeder_combout\);

-- Location: LCFF_X16_Y20_N29
\dectext[20]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[20]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[20]~reg0_regout\);

-- Location: LCFF_X16_Y20_N19
\dectext[21]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(21),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[21]~reg0_regout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(22),
	combout => \plaintext~combout\(22));

-- Location: LCCOMB_X24_Y24_N26
\inR[29]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[29]~18_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(23))) # (!\state.R1~regout\ & ((r_next(29)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(23),
	datab => \state.IDLE~regout\,
	datac => \state.R1~regout\,
	datad => r_next(29),
	combout => \inR[29]~18_combout\);

-- Location: LCFF_X24_Y24_N27
\l_next[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[29]~18_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(29));

-- Location: LCCOMB_X16_Y23_N0
\f1|s1|Selector19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~4_combout\ = (\f1|x\(21) & (\f1|x\(18) $ (((\f1|x\(23)) # (!\f1|x\(22)))))) # (!\f1|x\(21) & (((\f1|x\(18) & !\f1|x\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(18),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector19~4_combout\);

-- Location: LCCOMB_X16_Y23_N16
\f1|s1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~0_combout\ = (\f1|x\(21) & ((\f1|x\(18) $ (\f1|x\(23))))) # (!\f1|x\(21) & (\f1|x\(22) $ (((\f1|x\(18) & !\f1|x\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(18),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector19~0_combout\);

-- Location: LCCOMB_X16_Y23_N24
\f1|s1|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~2_combout\ = (\f1|x\(18) & ((\f1|x\(22) $ (\f1|x\(23))))) # (!\f1|x\(18) & ((\f1|x\(21) & ((!\f1|x\(23)))) # (!\f1|x\(21) & (\f1|x\(22) & \f1|x\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(18),
	datac => \f1|x\(22),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector19~2_combout\);

-- Location: LCCOMB_X16_Y23_N26
\f1|s1|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~1_combout\ = (\f1|x\(23) & ((\f1|x\(22) & (\f1|x\(21) & \f1|x\(18))) # (!\f1|x\(22) & ((!\f1|x\(18)))))) # (!\f1|x\(23) & (\f1|x\(21) $ ((\f1|x\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(18),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector19~1_combout\);

-- Location: LCCOMB_X16_Y23_N10
\f1|s1|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~3_combout\ = (\f1|x\(19) & (\f1|x\(20))) # (!\f1|x\(19) & ((\f1|x\(20) & ((\f1|s1|Selector19~1_combout\))) # (!\f1|x\(20) & (\f1|s1|Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(19),
	datab => \f1|x\(20),
	datac => \f1|s1|Selector19~2_combout\,
	datad => \f1|s1|Selector19~1_combout\,
	combout => \f1|s1|Selector19~3_combout\);

-- Location: LCCOMB_X16_Y23_N2
\f1|s1|Selector19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector19~5_combout\ = (\f1|x\(19) & ((\f1|s1|Selector19~3_combout\ & (!\f1|s1|Selector19~4_combout\)) # (!\f1|s1|Selector19~3_combout\ & ((\f1|s1|Selector19~0_combout\))))) # (!\f1|x\(19) & (((\f1|s1|Selector19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(19),
	datab => \f1|s1|Selector19~4_combout\,
	datac => \f1|s1|Selector19~0_combout\,
	datad => \f1|s1|Selector19~3_combout\,
	combout => \f1|s1|Selector19~5_combout\);

-- Location: LCCOMB_X16_Y23_N8
\r_next~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~12_combout\ = \f1|s1|Selector19~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(22))) # (!\comb~17_combout\ & ((l_next(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(22),
	datac => l_next(29),
	datad => \f1|s1|Selector19~5_combout\,
	combout => \r_next~12_combout\);

-- Location: LCFF_X16_Y23_N9
\r_next[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(29));

-- Location: LCCOMB_X24_Y24_N12
\dectext[22]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[22]~reg0feeder_combout\ = r_next(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(29),
	combout => \dectext[22]~reg0feeder_combout\);

-- Location: LCFF_X24_Y24_N13
\dectext[22]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[22]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[22]~reg0_regout\);

-- Location: LCCOMB_X24_Y24_N18
\dectext[23]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[23]~reg0feeder_combout\ = l_next(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(29),
	combout => \dectext[23]~reg0feeder_combout\);

-- Location: LCFF_X24_Y24_N19
\dectext[23]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[23]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[23]~reg0_regout\);

-- Location: LCFF_X24_Y24_N1
\dectext[24]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(4),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[24]~reg0_regout\);

-- Location: LCCOMB_X24_Y24_N2
\dectext[25]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[25]~reg0feeder_combout\ = l_next(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(4),
	combout => \dectext[25]~reg0feeder_combout\);

-- Location: LCFF_X24_Y24_N3
\dectext[25]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[25]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[25]~reg0_regout\);

-- Location: LCFF_X14_Y24_N29
\dectext[26]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(12),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[26]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N10
\inR[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[12]~19_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(27))) # (!\state.R1~regout\ & ((r_next(12)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \plaintext~combout\(27),
	datac => r_next(12),
	datad => \state.R1~regout\,
	combout => \inR[12]~19_combout\);

-- Location: LCFF_X14_Y24_N11
\l_next[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[12]~19_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(12));

-- Location: LCFF_X24_Y24_N9
\dectext[27]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(12),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[27]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N8
\dectext[28]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[28]~reg0feeder_combout\ = r_next(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(20),
	combout => \dectext[28]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N9
\dectext[28]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[28]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[28]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N18
\dectext[29]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[29]~reg0feeder_combout\ = l_next(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(20),
	combout => \dectext[29]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N19
\dectext[29]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[29]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[29]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N4
\dectext[30]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[30]~reg0feeder_combout\ = r_next(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(28),
	combout => \dectext[30]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N5
\dectext[30]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[30]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[30]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N26
\dectext[31]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[31]~reg0feeder_combout\ = l_next(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(28),
	combout => \dectext[31]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N27
\dectext[31]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[31]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[31]~reg0_regout\);

-- Location: LCFF_X17_Y20_N9
\dectext[32]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[32]~reg0_regout\);

-- Location: LCFF_X16_Y20_N1
\dectext[33]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[33]~reg0_regout\);

-- Location: LCCOMB_X15_Y24_N4
\dectext[34]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[34]~reg0feeder_combout\ = r_next(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(11),
	combout => \dectext[34]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N5
\dectext[34]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[34]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[34]~reg0_regout\);

-- Location: LCCOMB_X15_Y24_N14
\dectext[35]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[35]~reg0feeder_combout\ = l_next(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(11),
	combout => \dectext[35]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N15
\dectext[35]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[35]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[35]~reg0_regout\);

-- Location: LCCOMB_X15_Y24_N28
\inR[19]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[19]~22_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(37))) # (!\state.R1~regout\ & ((r_next(19)))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => \state.R1~regout\,
	datac => \plaintext~combout\(37),
	datad => r_next(19),
	combout => \inR[19]~22_combout\);

-- Location: LCFF_X15_Y24_N29
\l_next[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[19]~22_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(19));

-- Location: LCCOMB_X25_Y20_N20
\f1|s1|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~4_combout\ = (\f1|x\(40) & (\f1|x\(38) $ (((\f1|x\(41)) # (!\f1|x\(37)))))) # (!\f1|x\(40) & (\f1|x\(41) $ (((\f1|x\(37) & !\f1|x\(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(37),
	datac => \f1|x\(38),
	datad => \f1|x\(41),
	combout => \f1|s1|Selector4~4_combout\);

-- Location: LCCOMB_X25_Y20_N16
\f1|s1|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~2_combout\ = (\f1|x\(40) & (\f1|x\(37) $ (\f1|x\(41) $ (\f1|x\(38))))) # (!\f1|x\(40) & ((\f1|x\(37) & (!\f1|x\(41) & !\f1|x\(38))) # (!\f1|x\(37) & (\f1|x\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(37),
	datac => \f1|x\(41),
	datad => \f1|x\(38),
	combout => \f1|s1|Selector4~2_combout\);

-- Location: LCCOMB_X25_Y20_N22
\f1|s1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~1_combout\ = (\f1|x\(40) & (\f1|x\(37) $ ((!\f1|x\(38))))) # (!\f1|x\(40) & ((\f1|x\(37) & (!\f1|x\(38) & !\f1|x\(41))) # (!\f1|x\(37) & ((\f1|x\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(40),
	datab => \f1|x\(37),
	datac => \f1|x\(38),
	datad => \f1|x\(41),
	combout => \f1|s1|Selector4~1_combout\);

-- Location: LCCOMB_X25_Y20_N10
\f1|s1|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~3_combout\ = (\f1|x\(36) & (\f1|x\(39))) # (!\f1|x\(36) & ((\f1|x\(39) & ((\f1|s1|Selector4~1_combout\))) # (!\f1|x\(39) & (!\f1|s1|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(36),
	datab => \f1|x\(39),
	datac => \f1|s1|Selector4~2_combout\,
	datad => \f1|s1|Selector4~1_combout\,
	combout => \f1|s1|Selector4~3_combout\);

-- Location: LCCOMB_X25_Y20_N18
\f1|s1|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector4~5_combout\ = (\f1|x\(36) & ((\f1|s1|Selector4~3_combout\ & ((!\f1|s1|Selector4~4_combout\))) # (!\f1|s1|Selector4~3_combout\ & (\f1|s1|Selector4~0_combout\)))) # (!\f1|x\(36) & (((\f1|s1|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector4~0_combout\,
	datab => \f1|x\(36),
	datac => \f1|s1|Selector4~4_combout\,
	datad => \f1|s1|Selector4~3_combout\,
	combout => \f1|s1|Selector4~5_combout\);

-- Location: LCCOMB_X25_Y20_N2
\r_next~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~26_combout\ = \f1|s1|Selector4~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(36))) # (!\comb~17_combout\ & ((l_next(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(36),
	datab => l_next(19),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector4~5_combout\,
	combout => \r_next~26_combout\);

-- Location: LCFF_X25_Y20_N3
\r_next[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(19));

-- Location: LCCOMB_X15_Y24_N20
\dectext[36]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[36]~reg0feeder_combout\ = r_next(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(19),
	combout => \dectext[36]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N21
\dectext[36]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[36]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[36]~reg0_regout\);

-- Location: LCCOMB_X15_Y24_N30
\dectext[37]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[37]~reg0feeder_combout\ = l_next(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(19),
	combout => \dectext[37]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N31
\dectext[37]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[37]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[37]~reg0_regout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(39),
	combout => \plaintext~combout\(39));

-- Location: LCCOMB_X17_Y22_N16
\inR[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[27]~4_combout\ = (\state.R1~regout\ & (((\plaintext~combout\(39))))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & (r_next(27))) # (!\state.IDLE~regout\ & ((\plaintext~combout\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(27),
	datab => \plaintext~combout\(39),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inR[27]~4_combout\);

-- Location: LCFF_X25_Y21_N13
\l_next[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \inR[27]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(27));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(38),
	combout => \plaintext~combout\(38));

-- Location: LCCOMB_X21_Y24_N24
\f1|s1|WideOr107~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr107~0_combout\ = (\f1|x\(1) & (\f1|x\(4) $ (((!\f1|x\(2)))))) # (!\f1|x\(1) & (\f1|x\(3) $ (((\f1|x\(4) & \f1|x\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(4),
	datab => \f1|x\(1),
	datac => \f1|x\(3),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr107~0_combout\);

-- Location: LCCOMB_X20_Y24_N10
\f1|s1|WideOr101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr101~0_combout\ = (\f1|x\(4) & (\f1|x\(3) $ (((!\f1|x\(1) & \f1|x\(2)))))) # (!\f1|x\(4) & (\f1|x\(1) $ (((\f1|x\(3) & !\f1|x\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(3),
	datab => \f1|x\(4),
	datac => \f1|x\(1),
	datad => \f1|x\(2),
	combout => \f1|s1|WideOr101~0_combout\);

-- Location: LCCOMB_X21_Y24_N10
\f1|s1|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector28~0_combout\ = (\f1|x\(0) & (\f1|x\(5))) # (!\f1|x\(0) & ((\f1|x\(5) & (\f1|s1|WideOr107~0_combout\)) # (!\f1|x\(5) & ((!\f1|s1|WideOr101~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(0),
	datab => \f1|x\(5),
	datac => \f1|s1|WideOr107~0_combout\,
	datad => \f1|s1|WideOr101~0_combout\,
	combout => \f1|s1|Selector28~0_combout\);

-- Location: LCCOMB_X21_Y24_N0
\f1|s1|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector28~1_combout\ = (\f1|x\(0) & ((\f1|s1|Selector28~0_combout\ & ((\f1|s1|WideOr110~0_combout\))) # (!\f1|s1|Selector28~0_combout\ & (\f1|s1|WideOr104~0_combout\)))) # (!\f1|x\(0) & (((\f1|s1|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(0),
	datab => \f1|s1|WideOr104~0_combout\,
	datac => \f1|s1|WideOr110~0_combout\,
	datad => \f1|s1|Selector28~0_combout\,
	combout => \f1|s1|Selector28~1_combout\);

-- Location: LCCOMB_X21_Y24_N26
\r_next~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~27_combout\ = \f1|s1|Selector28~1_combout\ $ (((\comb~17_combout\ & ((\plaintext~combout\(38)))) # (!\comb~17_combout\ & (l_next(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => l_next(27),
	datac => \plaintext~combout\(38),
	datad => \f1|s1|Selector28~1_combout\,
	combout => \r_next~27_combout\);

-- Location: LCFF_X21_Y24_N27
\r_next[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~27_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(27));

-- Location: LCFF_X25_Y21_N25
\dectext[38]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(27),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[38]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N2
\dectext[39]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[39]~reg0feeder_combout\ = l_next(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(27),
	combout => \dectext[39]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N3
\dectext[39]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[39]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[39]~reg0_regout\);

-- Location: LCFF_X20_Y24_N9
\dectext[40]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[40]~reg0_regout\);

-- Location: LCCOMB_X23_Y22_N6
\dectext[41]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[41]~reg0feeder_combout\ = l_next(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(2),
	combout => \dectext[41]~reg0feeder_combout\);

-- Location: LCFF_X23_Y22_N7
\dectext[41]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[41]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[41]~reg0_regout\);

-- Location: LCCOMB_X15_Y22_N22
\inR[10]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[10]~24_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(43)))) # (!\state.R1~regout\ & (r_next(10))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~regout\,
	datab => r_next(10),
	datac => \plaintext~combout\(43),
	datad => \state.R1~regout\,
	combout => \inR[10]~24_combout\);

-- Location: LCFF_X15_Y22_N23
\l_next[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[10]~24_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(10));

-- Location: LCCOMB_X16_Y25_N8
\f1|s1|Selector26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~4_combout\ = (\f1|x\(6) & ((\f1|x\(11) & (\f1|x\(9) $ (!\f1|x\(10)))) # (!\f1|x\(11) & (!\f1|x\(9) & \f1|x\(10))))) # (!\f1|x\(6) & (\f1|x\(11) $ ((\f1|x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|x\(9),
	datad => \f1|x\(10),
	combout => \f1|s1|Selector26~4_combout\);

-- Location: LCCOMB_X16_Y25_N16
\f1|s1|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~0_combout\ = \f1|x\(10) $ (((\f1|x\(6) & ((\f1|x\(9)) # (!\f1|x\(11)))) # (!\f1|x\(6) & (\f1|x\(11) $ (\f1|x\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|x\(9),
	datad => \f1|x\(10),
	combout => \f1|s1|Selector26~0_combout\);

-- Location: LCCOMB_X16_Y25_N14
\f1|s1|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~1_combout\ = (\f1|x\(9) & (\f1|x\(11) $ (((\f1|x\(6)) # (!\f1|x\(10)))))) # (!\f1|x\(9) & ((\f1|x\(11) & (\f1|x\(6))) # (!\f1|x\(11) & ((\f1|x\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|x\(9),
	datad => \f1|x\(10),
	combout => \f1|s1|Selector26~1_combout\);

-- Location: LCCOMB_X16_Y25_N12
\f1|s1|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~2_combout\ = (\f1|x\(6) & (\f1|x\(10) $ (((\f1|x\(11) & !\f1|x\(9)))))) # (!\f1|x\(6) & ((\f1|x\(9) & (!\f1|x\(11) & !\f1|x\(10))) # (!\f1|x\(9) & ((\f1|x\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(6),
	datab => \f1|x\(11),
	datac => \f1|x\(9),
	datad => \f1|x\(10),
	combout => \f1|s1|Selector26~2_combout\);

-- Location: LCCOMB_X16_Y25_N30
\f1|s1|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~3_combout\ = (\f1|x\(7) & (\f1|x\(8))) # (!\f1|x\(7) & ((\f1|x\(8) & (!\f1|s1|Selector26~1_combout\)) # (!\f1|x\(8) & ((\f1|s1|Selector26~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|x\(8),
	datac => \f1|s1|Selector26~1_combout\,
	datad => \f1|s1|Selector26~2_combout\,
	combout => \f1|s1|Selector26~3_combout\);

-- Location: LCCOMB_X16_Y25_N2
\f1|s1|Selector26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector26~5_combout\ = (\f1|x\(7) & ((\f1|s1|Selector26~3_combout\ & (!\f1|s1|Selector26~4_combout\)) # (!\f1|s1|Selector26~3_combout\ & ((!\f1|s1|Selector26~0_combout\))))) # (!\f1|x\(7) & (((\f1|s1|Selector26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(7),
	datab => \f1|s1|Selector26~4_combout\,
	datac => \f1|s1|Selector26~0_combout\,
	datad => \f1|s1|Selector26~3_combout\,
	combout => \f1|s1|Selector26~5_combout\);

-- Location: LCCOMB_X16_Y25_N28
\r_next~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~29_combout\ = \f1|s1|Selector26~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(42))) # (!\comb~17_combout\ & ((l_next(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(42),
	datab => \comb~17_combout\,
	datac => l_next(10),
	datad => \f1|s1|Selector26~5_combout\,
	combout => \r_next~29_combout\);

-- Location: LCFF_X16_Y25_N29
\r_next[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~29_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(10));

-- Location: LCFF_X16_Y25_N23
\dectext[42]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(10),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[42]~reg0_regout\);

-- Location: LCFF_X16_Y25_N21
\dectext[43]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(10),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[43]~reg0_regout\);

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(44),
	combout => \plaintext~combout\(44));

-- Location: LCCOMB_X22_Y23_N10
\inR[18]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[18]~25_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(45)))) # (!\state.R1~regout\ & (r_next(18))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_next(18),
	datab => \plaintext~combout\(45),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inR[18]~25_combout\);

-- Location: LCFF_X22_Y23_N11
\l_next[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[18]~25_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(18));

-- Location: LCCOMB_X16_Y23_N28
\f1|s1|Selector17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~4_combout\ = (\f1|x\(20) & (\f1|x\(22) $ (((\f1|x\(23)) # (!\f1|x\(21)))))) # (!\f1|x\(20) & ((\f1|x\(22) & ((\f1|x\(23)))) # (!\f1|x\(22) & (\f1|x\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(23),
	datad => \f1|x\(20),
	combout => \f1|s1|Selector17~4_combout\);

-- Location: LCCOMB_X16_Y23_N20
\f1|s1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~0_combout\ = (\f1|x\(23) & ((\f1|x\(22) & ((!\f1|x\(20)))) # (!\f1|x\(22) & ((\f1|x\(20)) # (!\f1|x\(21)))))) # (!\f1|x\(23) & (\f1|x\(21) $ (((!\f1|x\(22) & \f1|x\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(22),
	datac => \f1|x\(23),
	datad => \f1|x\(20),
	combout => \f1|s1|Selector17~0_combout\);

-- Location: LCCOMB_X16_Y23_N4
\f1|s1|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~2_combout\ = (\f1|x\(20) & (\f1|x\(21) $ (\f1|x\(22) $ (!\f1|x\(23))))) # (!\f1|x\(20) & ((\f1|x\(21) & ((\f1|x\(22)) # (!\f1|x\(23)))) # (!\f1|x\(21) & ((\f1|x\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(20),
	datac => \f1|x\(22),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector17~2_combout\);

-- Location: LCCOMB_X16_Y23_N6
\f1|s1|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~1_combout\ = (\f1|x\(20) & (\f1|x\(21) $ (\f1|x\(22) $ (!\f1|x\(23))))) # (!\f1|x\(20) & ((\f1|x\(22) & (\f1|x\(21))) # (!\f1|x\(22) & ((\f1|x\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(21),
	datab => \f1|x\(20),
	datac => \f1|x\(22),
	datad => \f1|x\(23),
	combout => \f1|s1|Selector17~1_combout\);

-- Location: LCCOMB_X16_Y23_N22
\f1|s1|Selector17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~3_combout\ = (\f1|x\(19) & (\f1|x\(18))) # (!\f1|x\(19) & ((\f1|x\(18) & ((!\f1|s1|Selector17~1_combout\))) # (!\f1|x\(18) & (\f1|s1|Selector17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(19),
	datab => \f1|x\(18),
	datac => \f1|s1|Selector17~2_combout\,
	datad => \f1|s1|Selector17~1_combout\,
	combout => \f1|s1|Selector17~3_combout\);

-- Location: LCCOMB_X16_Y23_N18
\f1|s1|Selector17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector17~5_combout\ = (\f1|x\(19) & ((\f1|s1|Selector17~3_combout\ & (\f1|s1|Selector17~4_combout\)) # (!\f1|s1|Selector17~3_combout\ & ((!\f1|s1|Selector17~0_combout\))))) # (!\f1|x\(19) & (((\f1|s1|Selector17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(19),
	datab => \f1|s1|Selector17~4_combout\,
	datac => \f1|s1|Selector17~0_combout\,
	datad => \f1|s1|Selector17~3_combout\,
	combout => \f1|s1|Selector17~5_combout\);

-- Location: LCCOMB_X15_Y23_N16
\r_next~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~30_combout\ = \f1|s1|Selector17~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(44))) # (!\comb~17_combout\ & ((l_next(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~17_combout\,
	datab => \plaintext~combout\(44),
	datac => l_next(18),
	datad => \f1|s1|Selector17~5_combout\,
	combout => \r_next~30_combout\);

-- Location: LCFF_X15_Y23_N17
\r_next[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(18));

-- Location: LCCOMB_X14_Y24_N30
\dectext[44]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[44]~reg0feeder_combout\ = r_next(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(18),
	combout => \dectext[44]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N31
\dectext[44]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[44]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[44]~reg0_regout\);

-- Location: LCCOMB_X22_Y23_N2
\dectext[45]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[45]~reg0feeder_combout\ = l_next(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(18),
	combout => \dectext[45]~reg0feeder_combout\);

-- Location: LCFF_X22_Y23_N3
\dectext[45]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[45]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[45]~reg0_regout\);

-- Location: LCCOMB_X20_Y23_N8
\f1|s1|WideOr41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr41~0_combout\ = \f1|x\(32) $ (((\f1|x\(33) & (\f1|x\(31) $ (!\f1|x\(34)))) # (!\f1|x\(33) & (\f1|x\(31) & !\f1|x\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(32),
	datac => \f1|x\(31),
	datad => \f1|x\(34),
	combout => \f1|s1|WideOr41~0_combout\);

-- Location: LCCOMB_X20_Y23_N18
\f1|s1|WideOr45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr45~0_combout\ = (\f1|x\(33) & ((\f1|x\(34) & (\f1|x\(32))) # (!\f1|x\(34) & ((!\f1|x\(31)))))) # (!\f1|x\(33) & ((\f1|x\(31) $ (\f1|x\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(32),
	datac => \f1|x\(31),
	datad => \f1|x\(34),
	combout => \f1|s1|WideOr45~0_combout\);

-- Location: LCCOMB_X20_Y23_N4
\f1|s1|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector11~2_combout\ = (\f1|x\(35) & ((\f1|x\(30) & ((!\f1|s1|WideOr45~0_combout\))) # (!\f1|x\(30) & (!\f1|s1|WideOr41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(30),
	datab => \f1|x\(35),
	datac => \f1|s1|WideOr41~0_combout\,
	datad => \f1|s1|WideOr45~0_combout\,
	combout => \f1|s1|Selector11~2_combout\);

-- Location: LCCOMB_X20_Y23_N2
\f1|s1|WideOr34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|WideOr34~0_combout\ = \f1|x\(34) $ (((\f1|x\(31) & (\f1|x\(33))) # (!\f1|x\(31) & ((\f1|x\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(33),
	datab => \f1|x\(32),
	datac => \f1|x\(31),
	datad => \f1|x\(34),
	combout => \f1|s1|WideOr34~0_combout\);

-- Location: LCCOMB_X20_Y23_N30
\f1|s1|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector11~3_combout\ = (\subk_sel[35]~377_combout\ & (\inR[24]~8_combout\ & (\f1|x\(30) $ (\f1|s1|WideOr34~0_combout\)))) # (!\subk_sel[35]~377_combout\ & (!\inR[24]~8_combout\ & (\f1|x\(30) $ (\f1|s1|WideOr34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[35]~377_combout\,
	datab => \inR[24]~8_combout\,
	datac => \f1|x\(30),
	datad => \f1|s1|WideOr34~0_combout\,
	combout => \f1|s1|Selector11~3_combout\);

-- Location: LCCOMB_X20_Y23_N14
\r_next~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~31_combout\ = \inL[26]~6_combout\ $ (((\f1|s1|Selector11~2_combout\) # (\f1|s1|Selector11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inL[26]~6_combout\,
	datac => \f1|s1|Selector11~2_combout\,
	datad => \f1|s1|Selector11~3_combout\,
	combout => \r_next~31_combout\);

-- Location: LCFF_X20_Y23_N15
\r_next[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~31_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(26));

-- Location: LCCOMB_X23_Y20_N20
\dectext[46]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[46]~reg0feeder_combout\ = r_next(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(26),
	combout => \dectext[46]~reg0feeder_combout\);

-- Location: LCFF_X23_Y20_N21
\dectext[46]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[46]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[46]~reg0_regout\);

-- Location: LCCOMB_X23_Y22_N0
\inR[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[26]~26_combout\ = (\state.R1~regout\ & (\plaintext~combout\(47))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(26)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(47),
	datab => r_next(26),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inR[26]~26_combout\);

-- Location: LCFF_X23_Y22_N1
\l_next[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[26]~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(26));

-- Location: LCFF_X21_Y23_N27
\dectext[47]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(26),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[47]~reg0_regout\);

-- Location: LCCOMB_X24_Y24_N14
\inR[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[1]~27_combout\ = (\state.R1~regout\ & (\plaintext~combout\(49))) # (!\state.R1~regout\ & ((\state.IDLE~regout\ & ((r_next(1)))) # (!\state.IDLE~regout\ & (\plaintext~combout\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(49),
	datab => r_next(1),
	datac => \state.R1~regout\,
	datad => \state.IDLE~regout\,
	combout => \inR[1]~27_combout\);

-- Location: LCFF_X24_Y24_N15
\l_next[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[1]~27_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(1));

-- Location: LCCOMB_X23_Y21_N20
\f1|s1|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~1_combout\ = (\f1|x\(46) & ((\f1|x\(42) & ((!\f1|x\(47)))) # (!\f1|x\(42) & ((\f1|x\(47)) # (!\f1|x\(44)))))) # (!\f1|x\(46) & (\f1|x\(44) $ (((!\f1|x\(42) & \f1|x\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(42),
	datac => \f1|x\(44),
	datad => \f1|x\(47),
	combout => \f1|s1|Selector3~1_combout\);

-- Location: LCCOMB_X23_Y21_N30
\f1|s1|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~2_combout\ = (\f1|x\(44) & (\f1|x\(46) $ ((!\f1|x\(47))))) # (!\f1|x\(44) & ((\f1|x\(42) & ((\f1|x\(47)))) # (!\f1|x\(42) & (\f1|x\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(44),
	datac => \f1|x\(47),
	datad => \f1|x\(42),
	combout => \f1|s1|Selector3~2_combout\);

-- Location: LCCOMB_X23_Y21_N8
\f1|s1|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~3_combout\ = (\f1|x\(45) & ((\f1|x\(43)) # ((\f1|s1|Selector3~1_combout\)))) # (!\f1|x\(45) & (!\f1|x\(43) & ((\f1|s1|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(45),
	datab => \f1|x\(43),
	datac => \f1|s1|Selector3~1_combout\,
	datad => \f1|s1|Selector3~2_combout\,
	combout => \f1|s1|Selector3~3_combout\);

-- Location: LCCOMB_X23_Y21_N22
\f1|s1|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~4_combout\ = (\f1|x\(46) & (\f1|x\(47) $ (((\f1|x\(44) & \f1|x\(42)))))) # (!\f1|x\(46) & ((\f1|x\(44) & (!\f1|x\(42) & !\f1|x\(47))) # (!\f1|x\(44) & (\f1|x\(42) $ (\f1|x\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(46),
	datab => \f1|x\(44),
	datac => \f1|x\(42),
	datad => \f1|x\(47),
	combout => \f1|s1|Selector3~4_combout\);

-- Location: LCCOMB_X23_Y21_N12
\f1|s1|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|s1|Selector3~5_combout\ = (\f1|x\(43) & ((\f1|s1|Selector3~3_combout\ & ((!\f1|s1|Selector3~4_combout\))) # (!\f1|s1|Selector3~3_combout\ & (\f1|s1|Selector3~0_combout\)))) # (!\f1|x\(43) & (((\f1|s1|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s1|Selector3~0_combout\,
	datab => \f1|x\(43),
	datac => \f1|s1|Selector3~3_combout\,
	datad => \f1|s1|Selector3~4_combout\,
	combout => \f1|s1|Selector3~5_combout\);

-- Location: LCCOMB_X23_Y21_N24
\r_next~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~32_combout\ = \f1|s1|Selector3~5_combout\ $ (((\comb~17_combout\ & (\plaintext~combout\(48))) # (!\comb~17_combout\ & ((l_next(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(48),
	datab => l_next(1),
	datac => \comb~17_combout\,
	datad => \f1|s1|Selector3~5_combout\,
	combout => \r_next~32_combout\);

-- Location: LCFF_X23_Y21_N25
\r_next[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~32_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(1));

-- Location: LCCOMB_X24_Y24_N30
\dectext[48]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[48]~reg0feeder_combout\ = r_next(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(1),
	combout => \dectext[48]~reg0feeder_combout\);

-- Location: LCFF_X24_Y24_N31
\dectext[48]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[48]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[48]~reg0_regout\);

-- Location: LCCOMB_X23_Y22_N24
\dectext[49]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[49]~reg0feeder_combout\ = l_next(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(1),
	combout => \dectext[49]~reg0feeder_combout\);

-- Location: LCFF_X23_Y22_N25
\dectext[49]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[49]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[49]~reg0_regout\);

-- Location: LCCOMB_X23_Y22_N22
\dectext[50]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[50]~reg0feeder_combout\ = r_next(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(9),
	combout => \dectext[50]~reg0feeder_combout\);

-- Location: LCFF_X23_Y22_N23
\dectext[50]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[50]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[50]~reg0_regout\);

-- Location: LCCOMB_X23_Y22_N12
\dectext[51]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[51]~reg0feeder_combout\ = l_next(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(9),
	combout => \dectext[51]~reg0feeder_combout\);

-- Location: LCFF_X23_Y22_N13
\dectext[51]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[51]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[51]~reg0_regout\);

-- Location: LCFF_X22_Y24_N9
\dectext[52]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(17),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[52]~reg0_regout\);

-- Location: LCCOMB_X22_Y24_N22
\dectext[53]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[53]~reg0feeder_combout\ = l_next(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(17),
	combout => \dectext[53]~reg0feeder_combout\);

-- Location: LCFF_X22_Y24_N23
\dectext[53]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[53]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[53]~reg0_regout\);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\plaintext[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_plaintext(54),
	combout => \plaintext~combout\(54));

-- Location: LCCOMB_X20_Y25_N28
\inL[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inL[25]~7_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & ((\plaintext~combout\(54)))) # (!\state.R1~regout\ & (l_next(25))))) # (!\state.IDLE~regout\ & (((\plaintext~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_next(25),
	datab => \plaintext~combout\(54),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inL[25]~7_combout\);

-- Location: LCCOMB_X15_Y25_N22
\subk_sel[6]~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~348_combout\ = (\subk_sel[6]~7_combout\ & ((\key~combout\(18)) # ((!\subk_sel[6]~2_combout\)))) # (!\subk_sel[6]~7_combout\ & (((\key~combout\(26) & \subk_sel[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(18),
	datab => \key~combout\(26),
	datac => \subk_sel[6]~7_combout\,
	datad => \subk_sel[6]~2_combout\,
	combout => \subk_sel[6]~348_combout\);

-- Location: LCCOMB_X15_Y25_N0
\subk_sel[6]~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~349_combout\ = (\subk_sel[6]~2_combout\ & (((\subk_sel[6]~348_combout\)))) # (!\subk_sel[6]~2_combout\ & ((\subk_sel[6]~348_combout\ & ((\key~combout\(49)))) # (!\subk_sel[6]~348_combout\ & (\key~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(2),
	datab => \key~combout\(49),
	datac => \subk_sel[6]~2_combout\,
	datad => \subk_sel[6]~348_combout\,
	combout => \subk_sel[6]~349_combout\);

-- Location: LCCOMB_X15_Y25_N2
\subk_sel[6]~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~350_combout\ = (\subk_sel[6]~6_combout\ & (((\key~combout\(33))) # (!\subk_sel[6]~1_combout\))) # (!\subk_sel[6]~6_combout\ & (\subk_sel[6]~1_combout\ & ((\subk_sel[6]~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~6_combout\,
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(33),
	datad => \subk_sel[6]~349_combout\,
	combout => \subk_sel[6]~350_combout\);

-- Location: LCCOMB_X15_Y25_N16
\subk_sel[6]~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~351_combout\ = (\subk_sel[6]~1_combout\ & (((\subk_sel[6]~350_combout\)))) # (!\subk_sel[6]~1_combout\ & ((\subk_sel[6]~350_combout\ & ((\key~combout\(1)))) # (!\subk_sel[6]~350_combout\ & (\key~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(17),
	datab => \subk_sel[6]~1_combout\,
	datac => \key~combout\(1),
	datad => \subk_sel[6]~350_combout\,
	combout => \subk_sel[6]~351_combout\);

-- Location: LCCOMB_X16_Y25_N24
\subk_sel[6]~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~352_combout\ = (\subk_sel[6]~4_combout\ & (((\subk_sel[6]~5_combout\)))) # (!\subk_sel[6]~4_combout\ & ((\subk_sel[6]~5_combout\ & (\key~combout\(52))) # (!\subk_sel[6]~5_combout\ & ((\subk_sel[6]~351_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(52),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~5_combout\,
	datad => \subk_sel[6]~351_combout\,
	combout => \subk_sel[6]~352_combout\);

-- Location: LCCOMB_X17_Y21_N28
\subk_sel[6]~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~353_combout\ = (\subk_sel[6]~17_combout\ & ((\key~combout\(27)) # ((!\subk_sel[6]~16_combout\)))) # (!\subk_sel[6]~17_combout\ & (((\subk_sel[6]~16_combout\ & \key~combout\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(27),
	datab => \subk_sel[6]~17_combout\,
	datac => \subk_sel[6]~16_combout\,
	datad => \key~combout\(43),
	combout => \subk_sel[6]~353_combout\);

-- Location: LCCOMB_X17_Y21_N18
\subk_sel[6]~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~354_combout\ = (\subk_sel[6]~15_combout\ & ((\subk_sel[6]~353_combout\ & ((\key~combout\(59)))) # (!\subk_sel[6]~353_combout\ & (\key~combout\(36))))) # (!\subk_sel[6]~15_combout\ & (((\subk_sel[6]~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(36),
	datab => \subk_sel[6]~15_combout\,
	datac => \key~combout\(59),
	datad => \subk_sel[6]~353_combout\,
	combout => \subk_sel[6]~354_combout\);

-- Location: LCCOMB_X16_Y21_N20
\subk_sel[6]~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~355_combout\ = (\subk_sel[6]~13_combout\ & (((\subk_sel[6]~14_combout\)))) # (!\subk_sel[6]~13_combout\ & ((\subk_sel[6]~14_combout\ & (\key~combout\(11))) # (!\subk_sel[6]~14_combout\ & ((\subk_sel[6]~354_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subk_sel[6]~13_combout\,
	datab => \key~combout\(11),
	datac => \subk_sel[6]~14_combout\,
	datad => \subk_sel[6]~354_combout\,
	combout => \subk_sel[6]~355_combout\);

-- Location: LCCOMB_X16_Y21_N14
\subk_sel[6]~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~356_combout\ = (\subk_sel[6]~355_combout\ & (((\key~combout\(42)) # (!\subk_sel[6]~13_combout\)))) # (!\subk_sel[6]~355_combout\ & (\key~combout\(58) & ((\subk_sel[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(58),
	datab => \key~combout\(42),
	datac => \subk_sel[6]~355_combout\,
	datad => \subk_sel[6]~13_combout\,
	combout => \subk_sel[6]~356_combout\);

-- Location: LCCOMB_X16_Y25_N6
\subk_sel[6]~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \subk_sel[6]~357_combout\ = (\subk_sel[6]~4_combout\ & ((\subk_sel[6]~352_combout\ & ((\subk_sel[6]~356_combout\))) # (!\subk_sel[6]~352_combout\ & (\key~combout\(44))))) # (!\subk_sel[6]~4_combout\ & (((\subk_sel[6]~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(44),
	datab => \subk_sel[6]~4_combout\,
	datac => \subk_sel[6]~352_combout\,
	datad => \subk_sel[6]~356_combout\,
	combout => \subk_sel[6]~357_combout\);

-- Location: LCCOMB_X16_Y25_N20
\f1|x[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1|x\(6) = \inR[3]~12_combout\ $ (\subk_sel[6]~357_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inR[3]~12_combout\,
	datad => \subk_sel[6]~357_combout\,
	combout => \f1|x\(6));

-- Location: LCCOMB_X17_Y25_N24
\r_next~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~36_combout\ = (\f1|x\(6) & ((\f1|x\(9) & ((\f1|x\(8)) # (!\f1|x\(7)))) # (!\f1|x\(9) & (\f1|x\(8) $ (\f1|x\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(9),
	datab => \f1|x\(8),
	datac => \f1|x\(6),
	datad => \f1|x\(7),
	combout => \r_next~36_combout\);

-- Location: LCCOMB_X17_Y25_N2
\r_next~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~35_combout\ = (\f1|x\(8) & ((\f1|x\(9) & ((!\f1|x\(7)))) # (!\f1|x\(9) & (\f1|x\(6) & \f1|x\(7))))) # (!\f1|x\(8) & ((\f1|x\(6) & (!\f1|x\(9))) # (!\f1|x\(6) & ((\f1|x\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(9),
	datab => \f1|x\(8),
	datac => \f1|x\(6),
	datad => \f1|x\(7),
	combout => \r_next~35_combout\);

-- Location: LCCOMB_X17_Y25_N16
\r_next~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~38_combout\ = (\r_next~36_combout\ & ((\f1|x\(11) & (!\f1|x\(9) & \r_next~35_combout\)) # (!\f1|x\(11) & ((!\r_next~35_combout\))))) # (!\r_next~36_combout\ & (\f1|x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(9),
	datab => \f1|x\(11),
	datac => \r_next~36_combout\,
	datad => \r_next~35_combout\,
	combout => \r_next~38_combout\);

-- Location: LCCOMB_X17_Y25_N18
\r_next~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~37_combout\ = (\f1|x\(11) & (((!\r_next~35_combout\)))) # (!\f1|x\(11) & ((\r_next~36_combout\ & (\f1|x\(9))) # (!\r_next~36_combout\ & ((\r_next~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(9),
	datab => \f1|x\(11),
	datac => \r_next~36_combout\,
	datad => \r_next~35_combout\,
	combout => \r_next~37_combout\);

-- Location: LCCOMB_X16_Y25_N18
\r_next~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_next~39_combout\ = \inL[25]~7_combout\ $ (\r_next~37_combout\ $ (((\f1|x\(10)) # (\r_next~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|x\(10),
	datab => \inL[25]~7_combout\,
	datac => \r_next~38_combout\,
	datad => \r_next~37_combout\,
	combout => \r_next~39_combout\);

-- Location: LCFF_X16_Y25_N19
\r_next[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \r_next~39_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_next(25));

-- Location: LCCOMB_X16_Y25_N26
\dectext[54]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[54]~reg0feeder_combout\ = r_next(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(25),
	combout => \dectext[54]~reg0feeder_combout\);

-- Location: LCFF_X16_Y25_N27
\dectext[54]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[54]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[54]~reg0_regout\);

-- Location: LCCOMB_X20_Y25_N12
\inR[25]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inR[25]~30_combout\ = (\state.IDLE~regout\ & ((\state.R1~regout\ & (\plaintext~combout\(55))) # (!\state.R1~regout\ & ((r_next(25)))))) # (!\state.IDLE~regout\ & (\plaintext~combout\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plaintext~combout\(55),
	datab => r_next(25),
	datac => \state.IDLE~regout\,
	datad => \state.R1~regout\,
	combout => \inR[25]~30_combout\);

-- Location: LCFF_X20_Y25_N13
\l_next[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inR[25]~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(25));

-- Location: LCCOMB_X20_Y25_N2
\dectext[55]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[55]~reg0feeder_combout\ = l_next(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(25),
	combout => \dectext[55]~reg0feeder_combout\);

-- Location: LCFF_X20_Y25_N3
\dectext[55]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[55]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[55]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N4
\dectext[56]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[56]~reg0feeder_combout\ = r_next(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(0),
	combout => \dectext[56]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N5
\dectext[56]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[56]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[56]~reg0_regout\);

-- Location: LCCOMB_X14_Y24_N26
\dectext[57]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[57]~reg0feeder_combout\ = l_next(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(0),
	combout => \dectext[57]~reg0feeder_combout\);

-- Location: LCFF_X14_Y24_N27
\dectext[57]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[57]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[57]~reg0_regout\);

-- Location: LCFF_X15_Y24_N13
\dectext[58]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(8),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[58]~reg0_regout\);

-- Location: LCCOMB_X15_Y24_N6
\l_next[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l_next[8]~feeder_combout\ = \inR[8]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inR[8]~15_combout\,
	combout => \l_next[8]~feeder_combout\);

-- Location: LCFF_X15_Y24_N7
\l_next[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \l_next[8]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => l_next(8));

-- Location: LCCOMB_X15_Y24_N10
\dectext[59]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[59]~reg0feeder_combout\ = l_next(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(8),
	combout => \dectext[59]~reg0feeder_combout\);

-- Location: LCFF_X15_Y24_N11
\dectext[59]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[59]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[59]~reg0_regout\);

-- Location: LCFF_X18_Y22_N27
\dectext[60]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => r_next(16),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[60]~reg0_regout\);

-- Location: LCFF_X17_Y20_N23
\dectext[61]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => l_next(16),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[61]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N16
\dectext[62]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[62]~reg0feeder_combout\ = r_next(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_next(24),
	combout => \dectext[62]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N17
\dectext[62]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[62]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[62]~reg0_regout\);

-- Location: LCCOMB_X25_Y21_N22
\dectext[63]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dectext[63]~reg0feeder_combout\ = l_next(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_next(24),
	combout => \dectext[63]~reg0feeder_combout\);

-- Location: LCFF_X25_Y21_N23
\dectext[63]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \dectext[63]~reg0feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \state.DONE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dectext[63]~reg0_regout\);

-- Location: LCFF_X18_Y22_N1
\done~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \state.DONE~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(8));

-- Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(16));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(24));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(32));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(40));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(48));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key(56));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(1));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(2));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(3));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(4));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(5));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(6));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(7));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(8));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(9));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(10));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(11));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[12]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(12));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[13]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(13));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[14]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(14));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[15]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(15));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[16]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(16));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[17]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(17));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[18]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(18));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[19]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(19));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[20]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(20));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[21]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(21));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[22]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(22));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[23]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(23));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[24]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(24));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[25]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(25));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[26]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(26));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[27]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(27));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[28]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(28));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[29]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(29));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[30]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(30));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[31]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(31));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[32]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(32));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[33]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(33));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[34]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(34));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[35]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(35));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[36]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(36));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[37]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(37));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[38]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(38));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[39]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(39));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[40]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(40));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[41]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(41));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[42]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(42));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[43]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(43));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[44]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(44));

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[45]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(45));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[46]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(46));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[47]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(47));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[48]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(48));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[49]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(49));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[50]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(50));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[51]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(51));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[52]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(52));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[53]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(53));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[54]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(54));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[55]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(55));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[56]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(56));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[57]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(57));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[58]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(58));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[59]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(59));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[60]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(60));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[61]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(61));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[62]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(62));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dectext[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dectext[63]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dectext(63));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\done~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \done~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_done);
END structure;


