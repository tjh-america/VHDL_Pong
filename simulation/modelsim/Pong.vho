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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/10/2013 13:28:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pong IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	soundPin : BUFFER std_logic;
	PS2_KBCLK : IN std_logic;
	PS2_KBDAT : IN std_logic
	);
END Pong;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- soundPin	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Pong IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_soundPin : std_logic;
SIGNAL ww_PS2_KBCLK : std_logic;
SIGNAL ww_PS2_KBDAT : std_logic;
SIGNAL \halfClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add31~2_combout\ : std_logic;
SIGNAL \Add31~11\ : std_logic;
SIGNAL \Add31~12_combout\ : std_logic;
SIGNAL \Add33~0_combout\ : std_logic;
SIGNAL \Add33~2_combout\ : std_logic;
SIGNAL \Add33~4_combout\ : std_logic;
SIGNAL \Add33~6_combout\ : std_logic;
SIGNAL \Add33~12_combout\ : std_logic;
SIGNAL \Add33~14_combout\ : std_logic;
SIGNAL \Add34~2_combout\ : std_logic;
SIGNAL \Add34~4_combout\ : std_logic;
SIGNAL \Add34~8_combout\ : std_logic;
SIGNAL \Add34~12_combout\ : std_logic;
SIGNAL \Add34~14_combout\ : std_logic;
SIGNAL \Add35~0_combout\ : std_logic;
SIGNAL \Add35~1\ : std_logic;
SIGNAL \Add35~2_combout\ : std_logic;
SIGNAL \Add35~3\ : std_logic;
SIGNAL \Add35~4_combout\ : std_logic;
SIGNAL \Add35~5\ : std_logic;
SIGNAL \Add35~6_combout\ : std_logic;
SIGNAL \Add35~7\ : std_logic;
SIGNAL \Add35~8_combout\ : std_logic;
SIGNAL \Add35~9\ : std_logic;
SIGNAL \Add35~10_combout\ : std_logic;
SIGNAL \Add35~11\ : std_logic;
SIGNAL \Add35~12_combout\ : std_logic;
SIGNAL \Add35~13\ : std_logic;
SIGNAL \Add35~14_combout\ : std_logic;
SIGNAL \Add35~15\ : std_logic;
SIGNAL \Add35~16_combout\ : std_logic;
SIGNAL \Add35~17\ : std_logic;
SIGNAL \Add35~18_combout\ : std_logic;
SIGNAL \Add35~19\ : std_logic;
SIGNAL \Add35~20_combout\ : std_logic;
SIGNAL \Add37~0_combout\ : std_logic;
SIGNAL \Add37~1\ : std_logic;
SIGNAL \Add37~2_combout\ : std_logic;
SIGNAL \Add37~3\ : std_logic;
SIGNAL \Add37~4_combout\ : std_logic;
SIGNAL \Add37~5\ : std_logic;
SIGNAL \Add37~6_combout\ : std_logic;
SIGNAL \Add37~7\ : std_logic;
SIGNAL \Add37~8_combout\ : std_logic;
SIGNAL \Add37~9\ : std_logic;
SIGNAL \Add37~10_combout\ : std_logic;
SIGNAL \Add37~11\ : std_logic;
SIGNAL \Add37~12_combout\ : std_logic;
SIGNAL \Add37~13\ : std_logic;
SIGNAL \Add37~14_combout\ : std_logic;
SIGNAL \Add37~15\ : std_logic;
SIGNAL \Add37~16_combout\ : std_logic;
SIGNAL \Add37~17\ : std_logic;
SIGNAL \Add37~18_combout\ : std_logic;
SIGNAL \Add38~2_combout\ : std_logic;
SIGNAL \Add38~4_combout\ : std_logic;
SIGNAL \Add38~8_combout\ : std_logic;
SIGNAL \Add38~14_combout\ : std_logic;
SIGNAL \Add38~17\ : std_logic;
SIGNAL \Add38~18_combout\ : std_logic;
SIGNAL \Add39~2_combout\ : std_logic;
SIGNAL \Add39~4_combout\ : std_logic;
SIGNAL \Add39~6_combout\ : std_logic;
SIGNAL \Add39~16_combout\ : std_logic;
SIGNAL \Add39~19\ : std_logic;
SIGNAL \Add39~20_combout\ : std_logic;
SIGNAL \Add40~2_combout\ : std_logic;
SIGNAL \Add40~6_combout\ : std_logic;
SIGNAL \Add40~12_combout\ : std_logic;
SIGNAL \Add40~14_combout\ : std_logic;
SIGNAL \Add40~17\ : std_logic;
SIGNAL \Add40~18_combout\ : std_logic;
SIGNAL \Add40~19\ : std_logic;
SIGNAL \Add40~20_combout\ : std_logic;
SIGNAL \Add44~0_combout\ : std_logic;
SIGNAL \Add44~1\ : std_logic;
SIGNAL \Add44~2_combout\ : std_logic;
SIGNAL \Add44~3\ : std_logic;
SIGNAL \Add44~4_combout\ : std_logic;
SIGNAL \Add44~5\ : std_logic;
SIGNAL \Add44~6_combout\ : std_logic;
SIGNAL \Add44~7\ : std_logic;
SIGNAL \Add44~8_combout\ : std_logic;
SIGNAL \Add44~9\ : std_logic;
SIGNAL \Add44~10_combout\ : std_logic;
SIGNAL \Add44~11\ : std_logic;
SIGNAL \Add44~12_combout\ : std_logic;
SIGNAL \Add44~13\ : std_logic;
SIGNAL \Add44~14_combout\ : std_logic;
SIGNAL \Add44~15\ : std_logic;
SIGNAL \Add44~16_combout\ : std_logic;
SIGNAL \Add44~17\ : std_logic;
SIGNAL \Add44~18_combout\ : std_logic;
SIGNAL \Add44~19\ : std_logic;
SIGNAL \Add44~20_combout\ : std_logic;
SIGNAL \Add45~0_combout\ : std_logic;
SIGNAL \Add45~1\ : std_logic;
SIGNAL \Add45~2_combout\ : std_logic;
SIGNAL \Add45~3\ : std_logic;
SIGNAL \Add45~4_combout\ : std_logic;
SIGNAL \Add45~5\ : std_logic;
SIGNAL \Add45~6_combout\ : std_logic;
SIGNAL \Add45~7\ : std_logic;
SIGNAL \Add45~8_combout\ : std_logic;
SIGNAL \Add45~9\ : std_logic;
SIGNAL \Add45~10_combout\ : std_logic;
SIGNAL \Add45~11\ : std_logic;
SIGNAL \Add45~12_combout\ : std_logic;
SIGNAL \Add45~13\ : std_logic;
SIGNAL \Add45~14_combout\ : std_logic;
SIGNAL \Add45~15\ : std_logic;
SIGNAL \Add45~16_combout\ : std_logic;
SIGNAL \Add36~1_cout\ : std_logic;
SIGNAL \Add36~2_combout\ : std_logic;
SIGNAL \Add36~3\ : std_logic;
SIGNAL \Add36~4_combout\ : std_logic;
SIGNAL \Add36~5\ : std_logic;
SIGNAL \Add36~6_combout\ : std_logic;
SIGNAL \Add36~7\ : std_logic;
SIGNAL \Add36~8_combout\ : std_logic;
SIGNAL \Add36~9\ : std_logic;
SIGNAL \Add43~0_combout\ : std_logic;
SIGNAL \Add43~1\ : std_logic;
SIGNAL \Add43~2_combout\ : std_logic;
SIGNAL \Add43~3\ : std_logic;
SIGNAL \Add43~4_combout\ : std_logic;
SIGNAL \Add43~5\ : std_logic;
SIGNAL \Add43~6_combout\ : std_logic;
SIGNAL \Add43~7\ : std_logic;
SIGNAL \Add43~8_combout\ : std_logic;
SIGNAL \Add43~9\ : std_logic;
SIGNAL \Add43~10_combout\ : std_logic;
SIGNAL \Add43~11\ : std_logic;
SIGNAL \Add43~12_combout\ : std_logic;
SIGNAL \Add43~13\ : std_logic;
SIGNAL \Add43~14_combout\ : std_logic;
SIGNAL \Add36~10_combout\ : std_logic;
SIGNAL \Add36~11\ : std_logic;
SIGNAL \Add36~12_combout\ : std_logic;
SIGNAL \Add36~13\ : std_logic;
SIGNAL \Add36~14_combout\ : std_logic;
SIGNAL \Add36~15\ : std_logic;
SIGNAL \Add36~16_combout\ : std_logic;
SIGNAL \Add41~2_combout\ : std_logic;
SIGNAL \Add41~4_combout\ : std_logic;
SIGNAL \Add41~6_combout\ : std_logic;
SIGNAL \Add41~10_combout\ : std_logic;
SIGNAL \Add42~2_combout\ : std_logic;
SIGNAL \Add42~4_combout\ : std_logic;
SIGNAL \Add42~11\ : std_logic;
SIGNAL \Add42~12_combout\ : std_logic;
SIGNAL \Add42~13\ : std_logic;
SIGNAL \Add42~14_combout\ : std_logic;
SIGNAL \Add42~15\ : std_logic;
SIGNAL \Add42~16_combout\ : std_logic;
SIGNAL \Add42~17\ : std_logic;
SIGNAL \Add42~18_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add10~1_cout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add18~0_combout\ : std_logic;
SIGNAL \Add18~6_combout\ : std_logic;
SIGNAL \Add18~10_combout\ : std_logic;
SIGNAL \Add18~13\ : std_logic;
SIGNAL \Add18~14_combout\ : std_logic;
SIGNAL \Add16~1_cout\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \Add16~15\ : std_logic;
SIGNAL \Add16~16_combout\ : std_logic;
SIGNAL \Add16~17\ : std_logic;
SIGNAL \Add16~18_combout\ : std_logic;
SIGNAL \Add17~2_combout\ : std_logic;
SIGNAL \Add17~6_combout\ : std_logic;
SIGNAL \Add17~8_combout\ : std_logic;
SIGNAL \Add17~16_combout\ : std_logic;
SIGNAL \Add19~1_cout\ : std_logic;
SIGNAL \Add19~2_combout\ : std_logic;
SIGNAL \Add19~3\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add19~5\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \Add19~7\ : std_logic;
SIGNAL \Add19~8_combout\ : std_logic;
SIGNAL \Add19~9\ : std_logic;
SIGNAL \Add19~10_combout\ : std_logic;
SIGNAL \Add19~11\ : std_logic;
SIGNAL \Add19~12_combout\ : std_logic;
SIGNAL \Add19~13\ : std_logic;
SIGNAL \Add19~14_combout\ : std_logic;
SIGNAL \Add19~15\ : std_logic;
SIGNAL \Add19~16_combout\ : std_logic;
SIGNAL \Add19~17\ : std_logic;
SIGNAL \Add19~18_combout\ : std_logic;
SIGNAL \Add19~19\ : std_logic;
SIGNAL \Add19~20_combout\ : std_logic;
SIGNAL \Add21~1_cout\ : std_logic;
SIGNAL \Add21~2_combout\ : std_logic;
SIGNAL \Add21~3\ : std_logic;
SIGNAL \Add21~4_combout\ : std_logic;
SIGNAL \Add21~5\ : std_logic;
SIGNAL \Add21~6_combout\ : std_logic;
SIGNAL \Add21~7\ : std_logic;
SIGNAL \Add21~8_combout\ : std_logic;
SIGNAL \Add21~9\ : std_logic;
SIGNAL \Add21~10_combout\ : std_logic;
SIGNAL \Add21~11\ : std_logic;
SIGNAL \Add21~12_combout\ : std_logic;
SIGNAL \Add21~13\ : std_logic;
SIGNAL \Add21~14_combout\ : std_logic;
SIGNAL \Add21~15\ : std_logic;
SIGNAL \Add21~16_combout\ : std_logic;
SIGNAL \Add21~17\ : std_logic;
SIGNAL \Add21~18_combout\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \Add22~1\ : std_logic;
SIGNAL \Add22~2_combout\ : std_logic;
SIGNAL \Add22~3\ : std_logic;
SIGNAL \Add22~4_combout\ : std_logic;
SIGNAL \Add22~5\ : std_logic;
SIGNAL \Add22~6_combout\ : std_logic;
SIGNAL \Add22~7\ : std_logic;
SIGNAL \Add22~8_combout\ : std_logic;
SIGNAL \Add22~9\ : std_logic;
SIGNAL \Add22~10_combout\ : std_logic;
SIGNAL \Add22~11\ : std_logic;
SIGNAL \Add22~12_combout\ : std_logic;
SIGNAL \Add22~13\ : std_logic;
SIGNAL \Add22~14_combout\ : std_logic;
SIGNAL \Add22~15\ : std_logic;
SIGNAL \Add22~16_combout\ : std_logic;
SIGNAL \Add22~17\ : std_logic;
SIGNAL \Add22~18_combout\ : std_logic;
SIGNAL \Add23~1_cout\ : std_logic;
SIGNAL \Add23~2_combout\ : std_logic;
SIGNAL \Add23~3\ : std_logic;
SIGNAL \Add23~4_combout\ : std_logic;
SIGNAL \Add23~5\ : std_logic;
SIGNAL \Add23~6_combout\ : std_logic;
SIGNAL \Add23~7\ : std_logic;
SIGNAL \Add23~8_combout\ : std_logic;
SIGNAL \Add23~9\ : std_logic;
SIGNAL \Add23~10_combout\ : std_logic;
SIGNAL \Add23~11\ : std_logic;
SIGNAL \Add23~12_combout\ : std_logic;
SIGNAL \Add23~13\ : std_logic;
SIGNAL \Add23~14_combout\ : std_logic;
SIGNAL \Add23~15\ : std_logic;
SIGNAL \Add23~16_combout\ : std_logic;
SIGNAL \Add24~4_combout\ : std_logic;
SIGNAL \Add24~6_combout\ : std_logic;
SIGNAL \Add24~8_combout\ : std_logic;
SIGNAL \Add24~12_combout\ : std_logic;
SIGNAL \Add24~19\ : std_logic;
SIGNAL \Add24~20_combout\ : std_logic;
SIGNAL \Add25~0_combout\ : std_logic;
SIGNAL \Add25~1\ : std_logic;
SIGNAL \Add25~2_combout\ : std_logic;
SIGNAL \Add25~3\ : std_logic;
SIGNAL \Add25~4_combout\ : std_logic;
SIGNAL \Add25~5\ : std_logic;
SIGNAL \Add25~6_combout\ : std_logic;
SIGNAL \Add25~7\ : std_logic;
SIGNAL \Add25~8_combout\ : std_logic;
SIGNAL \Add25~9\ : std_logic;
SIGNAL \Add25~10_combout\ : std_logic;
SIGNAL \Add25~11\ : std_logic;
SIGNAL \Add25~12_combout\ : std_logic;
SIGNAL \Add25~13\ : std_logic;
SIGNAL \Add25~14_combout\ : std_logic;
SIGNAL \Add25~15\ : std_logic;
SIGNAL \Add25~16_combout\ : std_logic;
SIGNAL \Add26~0_combout\ : std_logic;
SIGNAL \Add26~2_combout\ : std_logic;
SIGNAL \Add26~6_combout\ : std_logic;
SIGNAL \Add26~17\ : std_logic;
SIGNAL \Add26~18_combout\ : std_logic;
SIGNAL \Add27~2_combout\ : std_logic;
SIGNAL \Add27~6_combout\ : std_logic;
SIGNAL \Add27~12_combout\ : std_logic;
SIGNAL \Add28~2_combout\ : std_logic;
SIGNAL \Add28~4_combout\ : std_logic;
SIGNAL \Add29~2_combout\ : std_logic;
SIGNAL \Add29~4_combout\ : std_logic;
SIGNAL \Add29~13\ : std_logic;
SIGNAL \Add29~14_combout\ : std_logic;
SIGNAL \Add29~15\ : std_logic;
SIGNAL \Add29~16_combout\ : std_logic;
SIGNAL \Add29~17\ : std_logic;
SIGNAL \Add29~18_combout\ : std_logic;
SIGNAL \Add30~0_combout\ : std_logic;
SIGNAL \Add30~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \colorSetter~3_combout\ : std_logic;
SIGNAL \LessThan35~0_combout\ : std_logic;
SIGNAL \color_red~2_combout\ : std_logic;
SIGNAL \Equal29~1_combout\ : std_logic;
SIGNAL \Equal30~1_combout\ : std_logic;
SIGNAL \Equal31~5_combout\ : std_logic;
SIGNAL \Equal32~0_combout\ : std_logic;
SIGNAL \Equal32~1_combout\ : std_logic;
SIGNAL \Equal32~2_combout\ : std_logic;
SIGNAL \Equal32~3_combout\ : std_logic;
SIGNAL \Equal32~4_combout\ : std_logic;
SIGNAL \Equal32~5_combout\ : std_logic;
SIGNAL \Equal32~6_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \Equal34~1_combout\ : std_logic;
SIGNAL \Equal34~2_combout\ : std_logic;
SIGNAL \Equal34~3_combout\ : std_logic;
SIGNAL \Equal34~4_combout\ : std_logic;
SIGNAL \Equal34~5_combout\ : std_logic;
SIGNAL \Equal34~6_combout\ : std_logic;
SIGNAL \Equal35~1_combout\ : std_logic;
SIGNAL \Equal35~2_combout\ : std_logic;
SIGNAL \Equal36~1_combout\ : std_logic;
SIGNAL \Equal37~3_combout\ : std_logic;
SIGNAL \Equal41~0_combout\ : std_logic;
SIGNAL \Equal41~1_combout\ : std_logic;
SIGNAL \Equal41~2_combout\ : std_logic;
SIGNAL \Equal41~3_combout\ : std_logic;
SIGNAL \Equal41~4_combout\ : std_logic;
SIGNAL \Equal41~5_combout\ : std_logic;
SIGNAL \Equal41~6_combout\ : std_logic;
SIGNAL \Equal42~0_combout\ : std_logic;
SIGNAL \Equal42~1_combout\ : std_logic;
SIGNAL \Equal42~2_combout\ : std_logic;
SIGNAL \Equal42~3_combout\ : std_logic;
SIGNAL \Equal42~4_combout\ : std_logic;
SIGNAL \Equal42~5_combout\ : std_logic;
SIGNAL \colorSetter~12_combout\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \colorSetter~13_combout\ : std_logic;
SIGNAL \colorSetter~14_combout\ : std_logic;
SIGNAL \Equal40~0_combout\ : std_logic;
SIGNAL \colorSetter~15_combout\ : std_logic;
SIGNAL \colorSetter~16_combout\ : std_logic;
SIGNAL \colorSetter~17_combout\ : std_logic;
SIGNAL \colorSetter~18_combout\ : std_logic;
SIGNAL \colorSetter~19_combout\ : std_logic;
SIGNAL \colorSetter~20_combout\ : std_logic;
SIGNAL \colorSetter~21_combout\ : std_logic;
SIGNAL \colorSetter~22_combout\ : std_logic;
SIGNAL \LessThan42~8_combout\ : std_logic;
SIGNAL \colorSetter~24_combout\ : std_logic;
SIGNAL \LessThan41~0_combout\ : std_logic;
SIGNAL \color_blue[0]~0_combout\ : std_logic;
SIGNAL \LessThan52~0_combout\ : std_logic;
SIGNAL \colorSetter~30_combout\ : std_logic;
SIGNAL \colorSetter~32_combout\ : std_logic;
SIGNAL \colorSetter~33_combout\ : std_logic;
SIGNAL \colorSetter~34_combout\ : std_logic;
SIGNAL \color_blue[0]~1_combout\ : std_logic;
SIGNAL \colorSetter~36_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \colorSetter~40_combout\ : std_logic;
SIGNAL \Equal38~0_combout\ : std_logic;
SIGNAL \Equal39~1_combout\ : std_logic;
SIGNAL \Equal39~5_combout\ : std_logic;
SIGNAL \Equal39~6_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Equal16~2_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \Equal18~2_combout\ : std_logic;
SIGNAL \Equal18~3_combout\ : std_logic;
SIGNAL \Equal18~4_combout\ : std_logic;
SIGNAL \Equal18~5_combout\ : std_logic;
SIGNAL \Equal18~6_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \Equal19~2_combout\ : std_logic;
SIGNAL \Equal19~3_combout\ : std_logic;
SIGNAL \Equal19~4_combout\ : std_logic;
SIGNAL \Equal19~5_combout\ : std_logic;
SIGNAL \Equal19~6_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal20~2_combout\ : std_logic;
SIGNAL \Equal20~3_combout\ : std_logic;
SIGNAL \Equal20~4_combout\ : std_logic;
SIGNAL \Equal20~5_combout\ : std_logic;
SIGNAL \Equal20~6_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \Equal21~3_combout\ : std_logic;
SIGNAL \Equal21~4_combout\ : std_logic;
SIGNAL \Equal21~5_combout\ : std_logic;
SIGNAL \Equal21~6_combout\ : std_logic;
SIGNAL \colorSetter~52_combout\ : std_logic;
SIGNAL \Equal22~1_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Equal23~2_combout\ : std_logic;
SIGNAL \Equal23~3_combout\ : std_logic;
SIGNAL \Equal23~4_combout\ : std_logic;
SIGNAL \Equal23~5_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Equal27~4_combout\ : std_logic;
SIGNAL \Equal27~5_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \colorSetter~56_combout\ : std_logic;
SIGNAL \colorSetter~57_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \color_blue[0]~4_combout\ : std_logic;
SIGNAL \colorSetter~61_combout\ : std_logic;
SIGNAL \colorSetter~62_combout\ : std_logic;
SIGNAL \colorSetter~63_combout\ : std_logic;
SIGNAL \colorSetter~64_combout\ : std_logic;
SIGNAL \colorSetter~65_combout\ : std_logic;
SIGNAL \LessThan36~0_combout\ : std_logic;
SIGNAL \colorSetter~66_combout\ : std_logic;
SIGNAL \colorSetter~67_combout\ : std_logic;
SIGNAL \colorSetter~68_combout\ : std_logic;
SIGNAL \colorSetter~69_combout\ : std_logic;
SIGNAL \colorSetter~70_combout\ : std_logic;
SIGNAL \colorSetter~71_combout\ : std_logic;
SIGNAL \color_blue[0]~5_combout\ : std_logic;
SIGNAL \colorSetter~72_combout\ : std_logic;
SIGNAL \colorSetter~73_combout\ : std_logic;
SIGNAL \colorSetter~74_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \colorSetter~75_combout\ : std_logic;
SIGNAL \colorSetter~78_combout\ : std_logic;
SIGNAL \LessThan39~4_combout\ : std_logic;
SIGNAL \colorSetter~79_combout\ : std_logic;
SIGNAL \colorSetter~80_combout\ : std_logic;
SIGNAL \colorSetter~81_combout\ : std_logic;
SIGNAL \colorSetter~82_combout\ : std_logic;
SIGNAL \colorSetter~83_combout\ : std_logic;
SIGNAL \color_blue[0]~8_combout\ : std_logic;
SIGNAL \LessThan30~0_combout\ : std_logic;
SIGNAL \colorSetter~85_combout\ : std_logic;
SIGNAL \colorSetter~86_combout\ : std_logic;
SIGNAL \colorSetter~87_combout\ : std_logic;
SIGNAL \colorSetter~88_combout\ : std_logic;
SIGNAL \colorSetter~89_combout\ : std_logic;
SIGNAL \color_blue[0]~9_combout\ : std_logic;
SIGNAL \vgaSync~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \colorSetter~95_combout\ : std_logic;
SIGNAL \color_blue[0]~14_combout\ : std_logic;
SIGNAL \LessThan42~9_combout\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \soundPin~output_o\ : std_logic;
SIGNAL \halfClock~0_combout\ : std_logic;
SIGNAL \halfClock~q\ : std_logic;
SIGNAL \halfClock~clkctrl_outclk\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \horizontalPosition~1_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \horizontalPosition~3_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \vgaSync~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \horizontalPosition~0_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \horizontalPosition~2_combout\ : std_logic;
SIGNAL \vgaSync~2_combout\ : std_logic;
SIGNAL \hsyncEnable~q\ : std_logic;
SIGNAL \VGA_HS~reg0_q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \verticalPosition~0_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \verticalPosition~2_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \verticalPosition~1_combout\ : std_logic;
SIGNAL \vgaSync~3_combout\ : std_logic;
SIGNAL \vgaSync~4_combout\ : std_logic;
SIGNAL \vsyncEnable~q\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \colorSetter~2_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \LessThan39~2_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \LessThan39~0_combout\ : std_logic;
SIGNAL \LessThan39~1_combout\ : std_logic;
SIGNAL \LessThan39~3_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \LessThan57~0_combout\ : std_logic;
SIGNAL \LessThan57~1_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \LessThan57~2_combout\ : std_logic;
SIGNAL \LessThan44~8_combout\ : std_logic;
SIGNAL \colorSetter~4_combout\ : std_logic;
SIGNAL \LessThan48~0_combout\ : std_logic;
SIGNAL \colorSetter~7_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \LessThan34~0_combout\ : std_logic;
SIGNAL \colorSetter~8_combout\ : std_logic;
SIGNAL \colorSetter~9_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \horizontalPosition[1]~feeder_combout\ : std_logic;
SIGNAL \Add30~1\ : std_logic;
SIGNAL \Add30~3\ : std_logic;
SIGNAL \Add30~5\ : std_logic;
SIGNAL \Add30~7\ : std_logic;
SIGNAL \Add30~9\ : std_logic;
SIGNAL \Add30~11\ : std_logic;
SIGNAL \Add30~13\ : std_logic;
SIGNAL \Add30~15\ : std_logic;
SIGNAL \Add30~17\ : std_logic;
SIGNAL \Add30~18_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add20~1\ : std_logic;
SIGNAL \Add20~3\ : std_logic;
SIGNAL \Add20~5\ : std_logic;
SIGNAL \Add20~7\ : std_logic;
SIGNAL \Add20~8_combout\ : std_logic;
SIGNAL \Add30~6_combout\ : std_logic;
SIGNAL \Add20~6_combout\ : std_logic;
SIGNAL \Equal28~2_combout\ : std_logic;
SIGNAL \Add30~12_combout\ : std_logic;
SIGNAL \Add30~10_combout\ : std_logic;
SIGNAL \Add20~9\ : std_logic;
SIGNAL \Add20~11\ : std_logic;
SIGNAL \Add20~12_combout\ : std_logic;
SIGNAL \Equal28~3_combout\ : std_logic;
SIGNAL \Add30~2_combout\ : std_logic;
SIGNAL \Add20~4_combout\ : std_logic;
SIGNAL \Add30~4_combout\ : std_logic;
SIGNAL \Equal28~1_combout\ : std_logic;
SIGNAL \Equal28~4_combout\ : std_logic;
SIGNAL \Add30~14_combout\ : std_logic;
SIGNAL \Add30~16_combout\ : std_logic;
SIGNAL \Add20~13\ : std_logic;
SIGNAL \Add20~14_combout\ : std_logic;
SIGNAL \Equal28~5_combout\ : std_logic;
SIGNAL \Equal28~6_combout\ : std_logic;
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Add20~10_combout\ : std_logic;
SIGNAL \Add29~1_cout\ : std_logic;
SIGNAL \Add29~3\ : std_logic;
SIGNAL \Add29~5\ : std_logic;
SIGNAL \Add29~7\ : std_logic;
SIGNAL \Add29~9\ : std_logic;
SIGNAL \Add29~10_combout\ : std_logic;
SIGNAL \Add29~11\ : std_logic;
SIGNAL \Add29~12_combout\ : std_logic;
SIGNAL \Equal27~2_combout\ : std_logic;
SIGNAL \Add29~8_combout\ : std_logic;
SIGNAL \Add29~6_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \Equal27~3_combout\ : std_logic;
SIGNAL \Add28~1_cout\ : std_logic;
SIGNAL \Add28~3\ : std_logic;
SIGNAL \Add28~5\ : std_logic;
SIGNAL \Add28~7\ : std_logic;
SIGNAL \Add28~9\ : std_logic;
SIGNAL \Add28~10_combout\ : std_logic;
SIGNAL \Add28~8_combout\ : std_logic;
SIGNAL \Equal26~2_combout\ : std_logic;
SIGNAL \Add28~6_combout\ : std_logic;
SIGNAL \Add20~2_combout\ : std_logic;
SIGNAL \Equal26~1_combout\ : std_logic;
SIGNAL \Add28~11\ : std_logic;
SIGNAL \Add28~13\ : std_logic;
SIGNAL \Add28~14_combout\ : std_logic;
SIGNAL \Add28~12_combout\ : std_logic;
SIGNAL \Equal26~3_combout\ : std_logic;
SIGNAL \Equal26~4_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add28~15\ : std_logic;
SIGNAL \Add28~17\ : std_logic;
SIGNAL \Add28~19\ : std_logic;
SIGNAL \Add28~20_combout\ : std_logic;
SIGNAL \Add28~18_combout\ : std_logic;
SIGNAL \Add28~16_combout\ : std_logic;
SIGNAL \Equal26~5_combout\ : std_logic;
SIGNAL \Equal26~6_combout\ : std_logic;
SIGNAL \colorSetter~54_combout\ : std_logic;
SIGNAL \Add27~1_cout\ : std_logic;
SIGNAL \Add27~3\ : std_logic;
SIGNAL \Add27~5\ : std_logic;
SIGNAL \Add27~7\ : std_logic;
SIGNAL \Add27~9\ : std_logic;
SIGNAL \Add27~11\ : std_logic;
SIGNAL \Add27~13\ : std_logic;
SIGNAL \Add27~14_combout\ : std_logic;
SIGNAL \Add20~15\ : std_logic;
SIGNAL \Add20~16_combout\ : std_logic;
SIGNAL \Add27~10_combout\ : std_logic;
SIGNAL \Equal25~4_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Add27~4_combout\ : std_logic;
SIGNAL \Equal25~1_combout\ : std_logic;
SIGNAL \Add27~8_combout\ : std_logic;
SIGNAL \Equal25~2_combout\ : std_logic;
SIGNAL \Equal25~3_combout\ : std_logic;
SIGNAL \Equal25~5_combout\ : std_logic;
SIGNAL \Add24~1_cout\ : std_logic;
SIGNAL \Add24~3\ : std_logic;
SIGNAL \Add24~5\ : std_logic;
SIGNAL \Add24~7\ : std_logic;
SIGNAL \Add24~9\ : std_logic;
SIGNAL \Add24~11\ : std_logic;
SIGNAL \Add24~13\ : std_logic;
SIGNAL \Add24~15\ : std_logic;
SIGNAL \Add24~16_combout\ : std_logic;
SIGNAL \Add24~17\ : std_logic;
SIGNAL \Add24~18_combout\ : std_logic;
SIGNAL \Equal22~5_combout\ : std_logic;
SIGNAL \Add24~2_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Add24~10_combout\ : std_logic;
SIGNAL \Equal22~2_combout\ : std_logic;
SIGNAL \Add24~14_combout\ : std_logic;
SIGNAL \Equal22~3_combout\ : std_logic;
SIGNAL \Equal22~4_combout\ : std_logic;
SIGNAL \Equal22~6_combout\ : std_logic;
SIGNAL \Add26~1\ : std_logic;
SIGNAL \Add26~3\ : std_logic;
SIGNAL \Add26~5\ : std_logic;
SIGNAL \Add26~7\ : std_logic;
SIGNAL \Add26~9\ : std_logic;
SIGNAL \Add26~11\ : std_logic;
SIGNAL \Add26~13\ : std_logic;
SIGNAL \Add26~14_combout\ : std_logic;
SIGNAL \Add26~15\ : std_logic;
SIGNAL \Add26~16_combout\ : std_logic;
SIGNAL \Equal24~5_combout\ : std_logic;
SIGNAL \Add26~4_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \Add26~8_combout\ : std_logic;
SIGNAL \Equal24~2_combout\ : std_logic;
SIGNAL \Add26~10_combout\ : std_logic;
SIGNAL \Add26~12_combout\ : std_logic;
SIGNAL \Equal24~3_combout\ : std_logic;
SIGNAL \Equal24~4_combout\ : std_logic;
SIGNAL \Equal24~6_combout\ : std_logic;
SIGNAL \colorSetter~53_combout\ : std_logic;
SIGNAL \colorSetter~55_combout\ : std_logic;
SIGNAL \color_red~5_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Add18~1\ : std_logic;
SIGNAL \Add18~2_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Add18~3\ : std_logic;
SIGNAL \Add18~4_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \Equal17~2_combout\ : std_logic;
SIGNAL \Add18~5\ : std_logic;
SIGNAL \Add18~7\ : std_logic;
SIGNAL \Add18~8_combout\ : std_logic;
SIGNAL \Equal17~3_combout\ : std_logic;
SIGNAL \Add18~9\ : std_logic;
SIGNAL \Add18~11\ : std_logic;
SIGNAL \Add18~12_combout\ : std_logic;
SIGNAL \Equal17~4_combout\ : std_logic;
SIGNAL \Add17~1\ : std_logic;
SIGNAL \Add17~3\ : std_logic;
SIGNAL \Add17~5\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~9\ : std_logic;
SIGNAL \Add17~11\ : std_logic;
SIGNAL \Add17~13\ : std_logic;
SIGNAL \Add17~15\ : std_logic;
SIGNAL \Add17~17\ : std_logic;
SIGNAL \Add17~18_combout\ : std_logic;
SIGNAL \Add17~14_combout\ : std_logic;
SIGNAL \Equal16~5_combout\ : std_logic;
SIGNAL \Add17~4_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add17~12_combout\ : std_logic;
SIGNAL \Equal16~3_combout\ : std_logic;
SIGNAL \Equal16~4_combout\ : std_logic;
SIGNAL \Equal16~6_combout\ : std_logic;
SIGNAL \colorSetter~50_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~17\ : std_logic;
SIGNAL \Add15~19\ : std_logic;
SIGNAL \Add15~20_combout\ : std_logic;
SIGNAL \Add15~16_combout\ : std_logic;
SIGNAL \Add15~18_combout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \Equal14~6_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \Add14~1_cout\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \colorSetter~49_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \colorSetter~48_combout\ : std_logic;
SIGNAL \colorSetter~51_combout\ : std_logic;
SIGNAL \Add32~1_cout\ : std_logic;
SIGNAL \Add32~3\ : std_logic;
SIGNAL \Add32~5\ : std_logic;
SIGNAL \Add32~6_combout\ : std_logic;
SIGNAL \Add42~1\ : std_logic;
SIGNAL \Add42~3\ : std_logic;
SIGNAL \Add42~5\ : std_logic;
SIGNAL \Add42~6_combout\ : std_logic;
SIGNAL \Add42~7\ : std_logic;
SIGNAL \Add42~8_combout\ : std_logic;
SIGNAL \Equal39~2_combout\ : std_logic;
SIGNAL \Add42~9\ : std_logic;
SIGNAL \Add42~10_combout\ : std_logic;
SIGNAL \Add32~7\ : std_logic;
SIGNAL \Add32~9\ : std_logic;
SIGNAL \Add32~11\ : std_logic;
SIGNAL \Add32~12_combout\ : std_logic;
SIGNAL \Add32~10_combout\ : std_logic;
SIGNAL \Equal39~3_combout\ : std_logic;
SIGNAL \Add42~0_combout\ : std_logic;
SIGNAL \Equal39~0_combout\ : std_logic;
SIGNAL \Equal39~4_combout\ : std_logic;
SIGNAL \Add41~1_cout\ : std_logic;
SIGNAL \Add41~3\ : std_logic;
SIGNAL \Add41~5\ : std_logic;
SIGNAL \Add41~7\ : std_logic;
SIGNAL \Add41~9\ : std_logic;
SIGNAL \Add41~11\ : std_logic;
SIGNAL \Add41~13\ : std_logic;
SIGNAL \Add41~15\ : std_logic;
SIGNAL \Add41~16_combout\ : std_logic;
SIGNAL \Add41~14_combout\ : std_logic;
SIGNAL \Add32~13\ : std_logic;
SIGNAL \Add32~14_combout\ : std_logic;
SIGNAL \Equal38~4_combout\ : std_logic;
SIGNAL \Add41~17\ : std_logic;
SIGNAL \Add41~18_combout\ : std_logic;
SIGNAL \Equal38~5_combout\ : std_logic;
SIGNAL \Equal31~0_combout\ : std_logic;
SIGNAL \Add41~8_combout\ : std_logic;
SIGNAL \Add32~8_combout\ : std_logic;
SIGNAL \Equal38~1_combout\ : std_logic;
SIGNAL \Add41~12_combout\ : std_logic;
SIGNAL \Equal38~2_combout\ : std_logic;
SIGNAL \Equal38~3_combout\ : std_logic;
SIGNAL \colorSetter~47_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan55~0_combout\ : std_logic;
SIGNAL \colorSetter~31_combout\ : std_logic;
SIGNAL \colorSetter~23_combout\ : std_logic;
SIGNAL \LessThan56~0_combout\ : std_logic;
SIGNAL \LessThan56~1_combout\ : std_logic;
SIGNAL \LessThan56~2_combout\ : std_logic;
SIGNAL \colorSetter~45_combout\ : std_logic;
SIGNAL \colorSetter~46_combout\ : std_logic;
SIGNAL \LessThan46~0_combout\ : std_logic;
SIGNAL \LessThan46~1_combout\ : std_logic;
SIGNAL \colorSetter~35_combout\ : std_logic;
SIGNAL \colorSetter~37_combout\ : std_logic;
SIGNAL \colorSetter~38_combout\ : std_logic;
SIGNAL \LessThan37~0_combout\ : std_logic;
SIGNAL \colorSetter~39_combout\ : std_logic;
SIGNAL \color_blue[0]~2_combout\ : std_logic;
SIGNAL \LessThan44~9_combout\ : std_logic;
SIGNAL \colorSetter~41_combout\ : std_logic;
SIGNAL \colorSetter~42_combout\ : std_logic;
SIGNAL \LessThan47~0_combout\ : std_logic;
SIGNAL \LessThan47~1_combout\ : std_logic;
SIGNAL \LessThan50~0_combout\ : std_logic;
SIGNAL \LessThan51~2_combout\ : std_logic;
SIGNAL \LessThan51~1_combout\ : std_logic;
SIGNAL \LessThan51~3_combout\ : std_logic;
SIGNAL \colorSetter~43_combout\ : std_logic;
SIGNAL \colorSetter~44_combout\ : std_logic;
SIGNAL \color_blue[0]~3_combout\ : std_logic;
SIGNAL \color_red~3_combout\ : std_logic;
SIGNAL \Add31~1\ : std_logic;
SIGNAL \Add31~3\ : std_logic;
SIGNAL \Add31~5\ : std_logic;
SIGNAL \Add31~7\ : std_logic;
SIGNAL \Add31~8_combout\ : std_logic;
SIGNAL \Add31~9\ : std_logic;
SIGNAL \Add31~10_combout\ : std_logic;
SIGNAL \Equal29~5_combout\ : std_logic;
SIGNAL \Add32~15\ : std_logic;
SIGNAL \Add32~16_combout\ : std_logic;
SIGNAL \Equal29~0_combout\ : std_logic;
SIGNAL \Add31~0_combout\ : std_logic;
SIGNAL \Equal29~2_combout\ : std_logic;
SIGNAL \Add31~4_combout\ : std_logic;
SIGNAL \Add31~6_combout\ : std_logic;
SIGNAL \Equal29~3_combout\ : std_logic;
SIGNAL \Equal29~4_combout\ : std_logic;
SIGNAL \Equal29~6_combout\ : std_logic;
SIGNAL \Add34~1\ : std_logic;
SIGNAL \Add34~3\ : std_logic;
SIGNAL \Add34~5\ : std_logic;
SIGNAL \Add34~7\ : std_logic;
SIGNAL \Add34~9\ : std_logic;
SIGNAL \Add34~11\ : std_logic;
SIGNAL \Add34~13\ : std_logic;
SIGNAL \Add34~15\ : std_logic;
SIGNAL \Add34~16_combout\ : std_logic;
SIGNAL \Add34~0_combout\ : std_logic;
SIGNAL \Add32~4_combout\ : std_logic;
SIGNAL \Add32~2_combout\ : std_logic;
SIGNAL \Equal31~1_combout\ : std_logic;
SIGNAL \Add34~6_combout\ : std_logic;
SIGNAL \Equal31~2_combout\ : std_logic;
SIGNAL \Add34~10_combout\ : std_logic;
SIGNAL \Equal31~3_combout\ : std_logic;
SIGNAL \Equal31~4_combout\ : std_logic;
SIGNAL \Equal31~6_combout\ : std_logic;
SIGNAL \Add33~1\ : std_logic;
SIGNAL \Add33~3\ : std_logic;
SIGNAL \Add33~5\ : std_logic;
SIGNAL \Add33~7\ : std_logic;
SIGNAL \Add33~9\ : std_logic;
SIGNAL \Add33~11\ : std_logic;
SIGNAL \Add33~13\ : std_logic;
SIGNAL \Add33~15\ : std_logic;
SIGNAL \Add33~17\ : std_logic;
SIGNAL \Add33~18_combout\ : std_logic;
SIGNAL \Add33~16_combout\ : std_logic;
SIGNAL \Equal30~5_combout\ : std_logic;
SIGNAL \Equal30~0_combout\ : std_logic;
SIGNAL \Add33~8_combout\ : std_logic;
SIGNAL \Equal30~2_combout\ : std_logic;
SIGNAL \Add33~10_combout\ : std_logic;
SIGNAL \Equal30~3_combout\ : std_logic;
SIGNAL \Equal30~4_combout\ : std_logic;
SIGNAL \Equal30~6_combout\ : std_logic;
SIGNAL \colorSetter~10_combout\ : std_logic;
SIGNAL \Add38~1_cout\ : std_logic;
SIGNAL \Add38~3\ : std_logic;
SIGNAL \Add38~5\ : std_logic;
SIGNAL \Add38~7\ : std_logic;
SIGNAL \Add38~9\ : std_logic;
SIGNAL \Add38~10_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \Add38~11\ : std_logic;
SIGNAL \Add38~13\ : std_logic;
SIGNAL \Add38~15\ : std_logic;
SIGNAL \Add38~16_combout\ : std_logic;
SIGNAL \Add38~6_combout\ : std_logic;
SIGNAL \Equal35~4_combout\ : std_logic;
SIGNAL \Equal35~5_combout\ : std_logic;
SIGNAL \Add38~12_combout\ : std_logic;
SIGNAL \Equal35~3_combout\ : std_logic;
SIGNAL \Equal35~6_combout\ : std_logic;
SIGNAL \Add39~1\ : std_logic;
SIGNAL \Add39~3\ : std_logic;
SIGNAL \Add39~5\ : std_logic;
SIGNAL \Add39~7\ : std_logic;
SIGNAL \Add39~9\ : std_logic;
SIGNAL \Add39~11\ : std_logic;
SIGNAL \Add39~13\ : std_logic;
SIGNAL \Add39~15\ : std_logic;
SIGNAL \Add39~17\ : std_logic;
SIGNAL \Add39~18_combout\ : std_logic;
SIGNAL \Equal36~5_combout\ : std_logic;
SIGNAL \Add39~0_combout\ : std_logic;
SIGNAL \Equal36~0_combout\ : std_logic;
SIGNAL \Add39~8_combout\ : std_logic;
SIGNAL \Add39~10_combout\ : std_logic;
SIGNAL \Equal36~2_combout\ : std_logic;
SIGNAL \Add39~12_combout\ : std_logic;
SIGNAL \Add39~14_combout\ : std_logic;
SIGNAL \Equal36~3_combout\ : std_logic;
SIGNAL \Equal36~4_combout\ : std_logic;
SIGNAL \Equal36~6_combout\ : std_logic;
SIGNAL \Add40~0_combout\ : std_logic;
SIGNAL \Equal37~0_combout\ : std_logic;
SIGNAL \Add40~1\ : std_logic;
SIGNAL \Add40~3\ : std_logic;
SIGNAL \Add40~5\ : std_logic;
SIGNAL \Add40~7\ : std_logic;
SIGNAL \Add40~8_combout\ : std_logic;
SIGNAL \Add40~9\ : std_logic;
SIGNAL \Add40~10_combout\ : std_logic;
SIGNAL \Equal37~2_combout\ : std_logic;
SIGNAL \Add40~4_combout\ : std_logic;
SIGNAL \Equal37~1_combout\ : std_logic;
SIGNAL \Equal37~4_combout\ : std_logic;
SIGNAL \Add40~11\ : std_logic;
SIGNAL \Add40~13\ : std_logic;
SIGNAL \Add40~15\ : std_logic;
SIGNAL \Add40~16_combout\ : std_logic;
SIGNAL \Equal37~5_combout\ : std_logic;
SIGNAL \Equal37~6_combout\ : std_logic;
SIGNAL \colorSetter~11_combout\ : std_logic;
SIGNAL \color_red~4_combout\ : std_logic;
SIGNAL \color_red~6_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \LessThan35~1_combout\ : std_logic;
SIGNAL \colorSetter~5_combout\ : std_logic;
SIGNAL \colorSetter~6_combout\ : std_logic;
SIGNAL \color_blue[0]~15_combout\ : std_logic;
SIGNAL \colorSetter~76_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \colorSetter~77_combout\ : std_logic;
SIGNAL \LessThan25~0_combout\ : std_logic;
SIGNAL \colorSetter~96_combout\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \color_blue[0]~7_combout\ : std_logic;
SIGNAL \colorSetter~25_combout\ : std_logic;
SIGNAL \colorSetter~26_combout\ : std_logic;
SIGNAL \LessThan51~0_combout\ : std_logic;
SIGNAL \LessThan40~0_combout\ : std_logic;
SIGNAL \colorSetter~27_combout\ : std_logic;
SIGNAL \LessThan43~0_combout\ : std_logic;
SIGNAL \colorSetter~28_combout\ : std_logic;
SIGNAL \colorSetter~29_combout\ : std_logic;
SIGNAL \color_blue[0]~6_combout\ : std_logic;
SIGNAL \LessThan48~1_combout\ : std_logic;
SIGNAL \colorSetter~93_combout\ : std_logic;
SIGNAL \colorSetter~94_combout\ : std_logic;
SIGNAL \colorSetter~59_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \colorSetter~58_combout\ : std_logic;
SIGNAL \Add6~7_combout\ : std_logic;
SIGNAL \colorSetter~60_combout\ : std_logic;
SIGNAL \colorSetter~91_combout\ : std_logic;
SIGNAL \colorSetter~84_combout\ : std_logic;
SIGNAL \LessThan31~0_combout\ : std_logic;
SIGNAL \colorSetter~90_combout\ : std_logic;
SIGNAL \color_blue[0]~10_combout\ : std_logic;
SIGNAL \colorSetter~92_combout\ : std_logic;
SIGNAL \color_blue[0]~11_combout\ : std_logic;
SIGNAL \color_blue[0]~12_combout\ : std_logic;
SIGNAL \color_blue[0]~16_combout\ : std_logic;
SIGNAL \color_blue[0]~13_combout\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL verticalPosition : std_logic_vector(9 DOWNTO 0);
SIGNAL horizontalPosition : std_logic_vector(9 DOWNTO 0);
SIGNAL color_green : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
soundPin <= ww_soundPin;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\halfClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \halfClock~q\);

-- Location: LCCOMB_X30_Y64_N10
\Add31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~2_combout\ = (\Add31~1\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add31~1\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add31~3\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add31~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add31~1\,
	combout => \Add31~2_combout\,
	cout => \Add31~3\);

-- Location: LCCOMB_X30_Y64_N18
\Add31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~10_combout\ = (\Add31~9\ & (\Add6~6_combout\ $ ((horizontalPosition(9))))) # (!\Add31~9\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add31~11\ = CARRY((\Add6~6_combout\ $ (horizontalPosition(9))) # (!\Add31~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add31~9\,
	combout => \Add31~10_combout\,
	cout => \Add31~11\);

-- Location: LCCOMB_X30_Y64_N20
\Add31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~12_combout\ = !\Add31~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add31~11\,
	combout => \Add31~12_combout\);

-- Location: LCCOMB_X30_Y66_N6
\Add33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~0_combout\ = (horizontalPosition(1) & (horizontalPosition(0) $ (VCC))) # (!horizontalPosition(1) & (horizontalPosition(0) & VCC))
-- \Add33~1\ = CARRY((horizontalPosition(1) & horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add33~0_combout\,
	cout => \Add33~1\);

-- Location: LCCOMB_X30_Y66_N8
\Add33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~2_combout\ = (horizontalPosition(2) & (!\Add33~1\)) # (!horizontalPosition(2) & ((\Add33~1\) # (GND)))
-- \Add33~3\ = CARRY((!\Add33~1\) # (!horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add33~1\,
	combout => \Add33~2_combout\,
	cout => \Add33~3\);

-- Location: LCCOMB_X30_Y66_N10
\Add33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add33~3\))) # (!horizontalPosition(3) & (\Add33~3\ $ (GND)))
-- \Add33~5\ = CARRY((horizontalPosition(3)) # (!\Add33~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add33~3\,
	combout => \Add33~4_combout\,
	cout => \Add33~5\);

-- Location: LCCOMB_X30_Y66_N12
\Add33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~6_combout\ = (horizontalPosition(4) & ((\Add33~5\) # (GND))) # (!horizontalPosition(4) & (!\Add33~5\))
-- \Add33~7\ = CARRY((horizontalPosition(4)) # (!\Add33~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add33~5\,
	combout => \Add33~6_combout\,
	cout => \Add33~7\);

-- Location: LCCOMB_X30_Y66_N18
\Add33~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~12_combout\ = (\Add33~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC)))) # (!\Add33~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add33~13\ = CARRY((\Add6~2_combout\ $ (horizontalPosition(7))) # (!\Add33~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add33~11\,
	combout => \Add33~12_combout\,
	cout => \Add33~13\);

-- Location: LCCOMB_X30_Y66_N20
\Add33~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~14_combout\ = (\Add33~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)))) # (!\Add33~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\))))
-- \Add33~15\ = CARRY((!\Add33~13\ & (horizontalPosition(8) $ (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add33~13\,
	combout => \Add33~14_combout\,
	cout => \Add33~15\);

-- Location: LCCOMB_X28_Y66_N10
\Add34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~2_combout\ = (horizontalPosition(3) & (\Add34~1\ & VCC)) # (!horizontalPosition(3) & (!\Add34~1\))
-- \Add34~3\ = CARRY((!horizontalPosition(3) & !\Add34~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add34~1\,
	combout => \Add34~2_combout\,
	cout => \Add34~3\);

-- Location: LCCOMB_X28_Y66_N12
\Add34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~4_combout\ = (horizontalPosition(4) & (!\Add34~3\ & VCC)) # (!horizontalPosition(4) & (\Add34~3\ $ (GND)))
-- \Add34~5\ = CARRY((!horizontalPosition(4) & !\Add34~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add34~3\,
	combout => \Add34~4_combout\,
	cout => \Add34~5\);

-- Location: LCCOMB_X28_Y66_N16
\Add34~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~8_combout\ = (\Add34~7\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add34~7\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add34~9\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add34~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add34~7\,
	combout => \Add34~8_combout\,
	cout => \Add34~9\);

-- Location: LCCOMB_X28_Y66_N20
\Add34~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~12_combout\ = (\Add34~11\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (GND)))) # (!\Add34~11\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add34~13\ = CARRY((horizontalPosition(8) $ (!\Add6~0_combout\)) # (!\Add34~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add34~11\,
	combout => \Add34~12_combout\,
	cout => \Add34~13\);

-- Location: LCCOMB_X28_Y66_N22
\Add34~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~14_combout\ = (\Add34~13\ & (horizontalPosition(9) $ ((\Add6~6_combout\)))) # (!\Add34~13\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add34~15\ = CARRY((horizontalPosition(9) $ (\Add6~6_combout\)) # (!\Add34~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add34~13\,
	combout => \Add34~14_combout\,
	cout => \Add34~15\);

-- Location: LCCOMB_X29_Y67_N10
\Add35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add35~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add35~0_combout\,
	cout => \Add35~1\);

-- Location: LCCOMB_X29_Y67_N12
\Add35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~2_combout\ = (horizontalPosition(1) & (\Add35~1\ & VCC)) # (!horizontalPosition(1) & (!\Add35~1\))
-- \Add35~3\ = CARRY((!horizontalPosition(1) & !\Add35~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cin => \Add35~1\,
	combout => \Add35~2_combout\,
	cout => \Add35~3\);

-- Location: LCCOMB_X29_Y67_N14
\Add35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~4_combout\ = (horizontalPosition(2) & (\Add35~3\ $ (GND))) # (!horizontalPosition(2) & (!\Add35~3\ & VCC))
-- \Add35~5\ = CARRY((horizontalPosition(2) & !\Add35~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add35~3\,
	combout => \Add35~4_combout\,
	cout => \Add35~5\);

-- Location: LCCOMB_X29_Y67_N16
\Add35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~6_combout\ = (horizontalPosition(3) & (\Add35~5\ & VCC)) # (!horizontalPosition(3) & (!\Add35~5\))
-- \Add35~7\ = CARRY((!horizontalPosition(3) & !\Add35~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add35~5\,
	combout => \Add35~6_combout\,
	cout => \Add35~7\);

-- Location: LCCOMB_X29_Y67_N18
\Add35~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~8_combout\ = (horizontalPosition(4) & (!\Add35~7\ & VCC)) # (!horizontalPosition(4) & (\Add35~7\ $ (GND)))
-- \Add35~9\ = CARRY((!horizontalPosition(4) & !\Add35~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add35~7\,
	combout => \Add35~8_combout\,
	cout => \Add35~9\);

-- Location: LCCOMB_X29_Y67_N20
\Add35~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~10_combout\ = (\Add35~9\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add35~9\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add35~11\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add35~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add35~9\,
	combout => \Add35~10_combout\,
	cout => \Add35~11\);

-- Location: LCCOMB_X29_Y67_N22
\Add35~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~12_combout\ = (\Add35~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add35~11\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add35~13\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add35~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add35~11\,
	combout => \Add35~12_combout\,
	cout => \Add35~13\);

-- Location: LCCOMB_X29_Y67_N24
\Add35~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~14_combout\ = (\Add35~13\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add35~13\ & (horizontalPosition(7) $ ((!\Add6~2_combout\))))
-- \Add35~15\ = CARRY((!\Add35~13\ & (horizontalPosition(7) $ (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add35~13\,
	combout => \Add35~14_combout\,
	cout => \Add35~15\);

-- Location: LCCOMB_X29_Y67_N26
\Add35~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~16_combout\ = (\Add35~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND)))) # (!\Add35~15\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add35~17\ = CARRY((\Add6~0_combout\ $ (!horizontalPosition(8))) # (!\Add35~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add35~15\,
	combout => \Add35~16_combout\,
	cout => \Add35~17\);

-- Location: LCCOMB_X29_Y67_N28
\Add35~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~18_combout\ = (\Add35~17\ & (horizontalPosition(9) $ ((\Add6~6_combout\)))) # (!\Add35~17\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add35~19\ = CARRY((horizontalPosition(9) $ (\Add6~6_combout\)) # (!\Add35~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add35~17\,
	combout => \Add35~18_combout\,
	cout => \Add35~19\);

-- Location: LCCOMB_X29_Y67_N30
\Add35~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add35~20_combout\ = !\Add35~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add35~19\,
	combout => \Add35~20_combout\);

-- Location: LCCOMB_X28_Y67_N2
\Add37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~0_combout\ = (horizontalPosition(1) & (horizontalPosition(0) $ (VCC))) # (!horizontalPosition(1) & (horizontalPosition(0) & VCC))
-- \Add37~1\ = CARRY((horizontalPosition(1) & horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add37~0_combout\,
	cout => \Add37~1\);

-- Location: LCCOMB_X28_Y67_N4
\Add37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~2_combout\ = (horizontalPosition(2) & (\Add37~1\ & VCC)) # (!horizontalPosition(2) & (!\Add37~1\))
-- \Add37~3\ = CARRY((!horizontalPosition(2) & !\Add37~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add37~1\,
	combout => \Add37~2_combout\,
	cout => \Add37~3\);

-- Location: LCCOMB_X28_Y67_N6
\Add37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add37~3\))) # (!horizontalPosition(3) & (\Add37~3\ $ (GND)))
-- \Add37~5\ = CARRY((horizontalPosition(3)) # (!\Add37~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add37~3\,
	combout => \Add37~4_combout\,
	cout => \Add37~5\);

-- Location: LCCOMB_X28_Y67_N8
\Add37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~6_combout\ = (horizontalPosition(4) & ((\Add37~5\) # (GND))) # (!horizontalPosition(4) & (!\Add37~5\))
-- \Add37~7\ = CARRY((horizontalPosition(4)) # (!\Add37~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add37~5\,
	combout => \Add37~6_combout\,
	cout => \Add37~7\);

-- Location: LCCOMB_X28_Y67_N10
\Add37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~8_combout\ = (\Add37~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add37~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add37~9\ = CARRY((!\Add37~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add37~7\,
	combout => \Add37~8_combout\,
	cout => \Add37~9\);

-- Location: LCCOMB_X28_Y67_N12
\Add37~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~10_combout\ = (\Add37~9\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))))) # (!\Add37~9\ & (\Add6~5_combout\ $ ((horizontalPosition(6)))))
-- \Add37~11\ = CARRY((!\Add37~9\ & (\Add6~5_combout\ $ (horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add37~9\,
	combout => \Add37~10_combout\,
	cout => \Add37~11\);

-- Location: LCCOMB_X28_Y67_N14
\Add37~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~12_combout\ = (\Add37~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC)))) # (!\Add37~11\ & ((horizontalPosition(7) $ (\Add6~2_combout\)) # (GND)))
-- \Add37~13\ = CARRY((horizontalPosition(7) $ (\Add6~2_combout\)) # (!\Add37~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add37~11\,
	combout => \Add37~12_combout\,
	cout => \Add37~13\);

-- Location: LCCOMB_X28_Y67_N16
\Add37~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~14_combout\ = (\Add37~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)))) # (!\Add37~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\))))
-- \Add37~15\ = CARRY((!\Add37~13\ & (horizontalPosition(8) $ (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add37~13\,
	combout => \Add37~14_combout\,
	cout => \Add37~15\);

-- Location: LCCOMB_X28_Y67_N18
\Add37~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~16_combout\ = (\Add37~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add37~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND))))
-- \Add37~17\ = CARRY((!\Add37~15\ & (\Add6~6_combout\ $ (!horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add37~15\,
	combout => \Add37~16_combout\,
	cout => \Add37~17\);

-- Location: LCCOMB_X28_Y67_N20
\Add37~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add37~18_combout\ = \Add37~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add37~17\,
	combout => \Add37~18_combout\);

-- Location: LCCOMB_X28_Y65_N10
\Add38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~2_combout\ = (horizontalPosition(2) & (\Add38~1_cout\ & VCC)) # (!horizontalPosition(2) & (!\Add38~1_cout\))
-- \Add38~3\ = CARRY((!horizontalPosition(2) & !\Add38~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add38~1_cout\,
	combout => \Add38~2_combout\,
	cout => \Add38~3\);

-- Location: LCCOMB_X28_Y65_N12
\Add38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add38~3\))) # (!horizontalPosition(3) & (\Add38~3\ $ (GND)))
-- \Add38~5\ = CARRY((horizontalPosition(3)) # (!\Add38~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add38~3\,
	combout => \Add38~4_combout\,
	cout => \Add38~5\);

-- Location: LCCOMB_X28_Y65_N16
\Add38~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~8_combout\ = (\Add38~7\ & ((horizontalPosition(5) $ (!horizontalPosition(4))))) # (!\Add38~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (GND))))
-- \Add38~9\ = CARRY((!\Add38~7\ & (horizontalPosition(5) $ (!horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add38~7\,
	combout => \Add38~8_combout\,
	cout => \Add38~9\);

-- Location: LCCOMB_X28_Y65_N22
\Add38~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~14_combout\ = (\Add38~13\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))))) # (!\Add38~13\ & (\Add6~0_combout\ $ ((horizontalPosition(8)))))
-- \Add38~15\ = CARRY((!\Add38~13\ & (\Add6~0_combout\ $ (horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add38~13\,
	combout => \Add38~14_combout\,
	cout => \Add38~15\);

-- Location: LCCOMB_X28_Y65_N24
\Add38~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~16_combout\ = (\Add38~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add38~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND))))
-- \Add38~17\ = CARRY((!\Add38~15\ & (\Add6~6_combout\ $ (!horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add38~15\,
	combout => \Add38~16_combout\,
	cout => \Add38~17\);

-- Location: LCCOMB_X28_Y65_N26
\Add38~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~18_combout\ = \Add38~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add38~17\,
	combout => \Add38~18_combout\);

-- Location: LCCOMB_X29_Y65_N6
\Add39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~2_combout\ = (horizontalPosition(1) & (\Add39~1\ & VCC)) # (!horizontalPosition(1) & (!\Add39~1\))
-- \Add39~3\ = CARRY((!horizontalPosition(1) & !\Add39~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cin => \Add39~1\,
	combout => \Add39~2_combout\,
	cout => \Add39~3\);

-- Location: LCCOMB_X29_Y65_N8
\Add39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~4_combout\ = (horizontalPosition(2) & ((GND) # (!\Add39~3\))) # (!horizontalPosition(2) & (\Add39~3\ $ (GND)))
-- \Add39~5\ = CARRY((horizontalPosition(2)) # (!\Add39~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add39~3\,
	combout => \Add39~4_combout\,
	cout => \Add39~5\);

-- Location: LCCOMB_X29_Y65_N10
\Add39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~6_combout\ = (horizontalPosition(3) & (\Add39~5\ & VCC)) # (!horizontalPosition(3) & (!\Add39~5\))
-- \Add39~7\ = CARRY((!horizontalPosition(3) & !\Add39~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add39~5\,
	combout => \Add39~6_combout\,
	cout => \Add39~7\);

-- Location: LCCOMB_X29_Y65_N20
\Add39~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~16_combout\ = (\Add39~15\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (GND)))) # (!\Add39~15\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add39~17\ = CARRY((horizontalPosition(8) $ (!\Add6~0_combout\)) # (!\Add39~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add39~15\,
	combout => \Add39~16_combout\,
	cout => \Add39~17\);

-- Location: LCCOMB_X29_Y65_N22
\Add39~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~18_combout\ = (\Add39~17\ & (\Add6~6_combout\ $ ((horizontalPosition(9))))) # (!\Add39~17\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add39~19\ = CARRY((\Add6~6_combout\ $ (horizontalPosition(9))) # (!\Add39~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add39~17\,
	combout => \Add39~18_combout\,
	cout => \Add39~19\);

-- Location: LCCOMB_X29_Y65_N24
\Add39~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~20_combout\ = !\Add39~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add39~19\,
	combout => \Add39~20_combout\);

-- Location: LCCOMB_X27_Y67_N6
\Add40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~2_combout\ = (horizontalPosition(1) & (\Add40~1\ & VCC)) # (!horizontalPosition(1) & (!\Add40~1\))
-- \Add40~3\ = CARRY((!horizontalPosition(1) & !\Add40~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cin => \Add40~1\,
	combout => \Add40~2_combout\,
	cout => \Add40~3\);

-- Location: LCCOMB_X27_Y67_N10
\Add40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~6_combout\ = (horizontalPosition(3) & (!\Add40~5\)) # (!horizontalPosition(3) & ((\Add40~5\) # (GND)))
-- \Add40~7\ = CARRY((!\Add40~5\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add40~5\,
	combout => \Add40~6_combout\,
	cout => \Add40~7\);

-- Location: LCCOMB_X27_Y67_N16
\Add40~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~12_combout\ = (\Add40~11\ & (horizontalPosition(6) $ (\Add6~5_combout\ $ (GND)))) # (!\Add40~11\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)) # (GND)))
-- \Add40~13\ = CARRY((horizontalPosition(6) $ (!\Add6~5_combout\)) # (!\Add40~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add40~11\,
	combout => \Add40~12_combout\,
	cout => \Add40~13\);

-- Location: LCCOMB_X27_Y67_N18
\Add40~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~14_combout\ = (\Add40~13\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add40~13\ & (horizontalPosition(7) $ ((!\Add6~2_combout\))))
-- \Add40~15\ = CARRY((!\Add40~13\ & (horizontalPosition(7) $ (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add40~13\,
	combout => \Add40~14_combout\,
	cout => \Add40~15\);

-- Location: LCCOMB_X27_Y67_N20
\Add40~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~16_combout\ = (\Add40~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND)))) # (!\Add40~15\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add40~17\ = CARRY((\Add6~0_combout\ $ (!horizontalPosition(8))) # (!\Add40~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add40~15\,
	combout => \Add40~16_combout\,
	cout => \Add40~17\);

-- Location: LCCOMB_X27_Y67_N22
\Add40~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~18_combout\ = (\Add40~17\ & (horizontalPosition(9) $ ((\Add6~6_combout\)))) # (!\Add40~17\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add40~19\ = CARRY((horizontalPosition(9) $ (\Add6~6_combout\)) # (!\Add40~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add40~17\,
	combout => \Add40~18_combout\,
	cout => \Add40~19\);

-- Location: LCCOMB_X27_Y67_N24
\Add40~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~20_combout\ = !\Add40~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add40~19\,
	combout => \Add40~20_combout\);

-- Location: LCCOMB_X31_Y68_N8
\Add44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add44~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add44~0_combout\,
	cout => \Add44~1\);

-- Location: LCCOMB_X31_Y68_N10
\Add44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~2_combout\ = (horizontalPosition(1) & (\Add44~1\ & VCC)) # (!horizontalPosition(1) & (!\Add44~1\))
-- \Add44~3\ = CARRY((!horizontalPosition(1) & !\Add44~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add44~1\,
	combout => \Add44~2_combout\,
	cout => \Add44~3\);

-- Location: LCCOMB_X31_Y68_N12
\Add44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~4_combout\ = (horizontalPosition(2) & (\Add44~3\ $ (GND))) # (!horizontalPosition(2) & (!\Add44~3\ & VCC))
-- \Add44~5\ = CARRY((horizontalPosition(2) & !\Add44~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add44~3\,
	combout => \Add44~4_combout\,
	cout => \Add44~5\);

-- Location: LCCOMB_X31_Y68_N14
\Add44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~6_combout\ = (horizontalPosition(3) & (!\Add44~5\)) # (!horizontalPosition(3) & ((\Add44~5\) # (GND)))
-- \Add44~7\ = CARRY((!\Add44~5\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add44~5\,
	combout => \Add44~6_combout\,
	cout => \Add44~7\);

-- Location: LCCOMB_X31_Y68_N16
\Add44~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~8_combout\ = (horizontalPosition(4) & (!\Add44~7\ & VCC)) # (!horizontalPosition(4) & (\Add44~7\ $ (GND)))
-- \Add44~9\ = CARRY((!horizontalPosition(4) & !\Add44~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add44~7\,
	combout => \Add44~8_combout\,
	cout => \Add44~9\);

-- Location: LCCOMB_X31_Y68_N18
\Add44~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~10_combout\ = (\Add44~9\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add44~9\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add44~11\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add44~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add44~9\,
	combout => \Add44~10_combout\,
	cout => \Add44~11\);

-- Location: LCCOMB_X31_Y68_N20
\Add44~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~12_combout\ = (\Add44~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add44~11\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add44~13\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add44~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add44~11\,
	combout => \Add44~12_combout\,
	cout => \Add44~13\);

-- Location: LCCOMB_X31_Y68_N22
\Add44~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~14_combout\ = (\Add44~13\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add44~13\ & (horizontalPosition(7) $ ((!\Add6~2_combout\))))
-- \Add44~15\ = CARRY((!\Add44~13\ & (horizontalPosition(7) $ (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add44~13\,
	combout => \Add44~14_combout\,
	cout => \Add44~15\);

-- Location: LCCOMB_X31_Y68_N24
\Add44~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~16_combout\ = (\Add44~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND)))) # (!\Add44~15\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add44~17\ = CARRY((\Add6~0_combout\ $ (!horizontalPosition(8))) # (!\Add44~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add44~15\,
	combout => \Add44~16_combout\,
	cout => \Add44~17\);

-- Location: LCCOMB_X31_Y68_N26
\Add44~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~18_combout\ = (\Add44~17\ & (horizontalPosition(9) $ ((\Add6~6_combout\)))) # (!\Add44~17\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add44~19\ = CARRY((horizontalPosition(9) $ (\Add6~6_combout\)) # (!\Add44~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add44~17\,
	combout => \Add44~18_combout\,
	cout => \Add44~19\);

-- Location: LCCOMB_X31_Y68_N28
\Add44~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add44~20_combout\ = !\Add44~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add44~19\,
	combout => \Add44~20_combout\);

-- Location: LCCOMB_X30_Y70_N14
\Add45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~0_combout\ = (horizontalPosition(1) & (horizontalPosition(2) $ (VCC))) # (!horizontalPosition(1) & (horizontalPosition(2) & VCC))
-- \Add45~1\ = CARRY((horizontalPosition(1) & horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(2),
	datad => VCC,
	combout => \Add45~0_combout\,
	cout => \Add45~1\);

-- Location: LCCOMB_X30_Y70_N16
\Add45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~2_combout\ = (horizontalPosition(3) & (!\Add45~1\)) # (!horizontalPosition(3) & ((\Add45~1\) # (GND)))
-- \Add45~3\ = CARRY((!\Add45~1\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add45~1\,
	combout => \Add45~2_combout\,
	cout => \Add45~3\);

-- Location: LCCOMB_X30_Y70_N18
\Add45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~4_combout\ = (horizontalPosition(4) & (!\Add45~3\ & VCC)) # (!horizontalPosition(4) & (\Add45~3\ $ (GND)))
-- \Add45~5\ = CARRY((!horizontalPosition(4) & !\Add45~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add45~3\,
	combout => \Add45~4_combout\,
	cout => \Add45~5\);

-- Location: LCCOMB_X30_Y70_N20
\Add45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~6_combout\ = (\Add45~5\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add45~5\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add45~7\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add45~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add45~5\,
	combout => \Add45~6_combout\,
	cout => \Add45~7\);

-- Location: LCCOMB_X30_Y70_N22
\Add45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~8_combout\ = (\Add45~7\ & (horizontalPosition(6) $ (\Add6~5_combout\ $ (GND)))) # (!\Add45~7\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)) # (GND)))
-- \Add45~9\ = CARRY((horizontalPosition(6) $ (!\Add6~5_combout\)) # (!\Add45~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add45~7\,
	combout => \Add45~8_combout\,
	cout => \Add45~9\);

-- Location: LCCOMB_X30_Y70_N24
\Add45~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~10_combout\ = (\Add45~9\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add45~9\ & (\Add6~2_combout\ $ ((!horizontalPosition(7)))))
-- \Add45~11\ = CARRY((!\Add45~9\ & (\Add6~2_combout\ $ (!horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add45~9\,
	combout => \Add45~10_combout\,
	cout => \Add45~11\);

-- Location: LCCOMB_X30_Y70_N26
\Add45~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~12_combout\ = (\Add45~11\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (GND)))) # (!\Add45~11\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add45~13\ = CARRY((horizontalPosition(8) $ (!\Add6~0_combout\)) # (!\Add45~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add45~11\,
	combout => \Add45~12_combout\,
	cout => \Add45~13\);

-- Location: LCCOMB_X30_Y70_N28
\Add45~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~14_combout\ = (\Add45~13\ & (\Add6~6_combout\ $ ((horizontalPosition(9))))) # (!\Add45~13\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add45~15\ = CARRY((\Add6~6_combout\ $ (horizontalPosition(9))) # (!\Add45~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add45~13\,
	combout => \Add45~14_combout\,
	cout => \Add45~15\);

-- Location: LCCOMB_X30_Y70_N30
\Add45~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add45~16_combout\ = !\Add45~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add45~15\,
	combout => \Add45~16_combout\);

-- Location: LCCOMB_X32_Y64_N0
\Add36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~1_cout\ = CARRY(horizontalPosition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cout => \Add36~1_cout\);

-- Location: LCCOMB_X32_Y64_N2
\Add36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~2_combout\ = (horizontalPosition(3) & (\Add36~1_cout\ & VCC)) # (!horizontalPosition(3) & (!\Add36~1_cout\))
-- \Add36~3\ = CARRY((!horizontalPosition(3) & !\Add36~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add36~1_cout\,
	combout => \Add36~2_combout\,
	cout => \Add36~3\);

-- Location: LCCOMB_X32_Y64_N4
\Add36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~4_combout\ = (horizontalPosition(4) & (!\Add36~3\ & VCC)) # (!horizontalPosition(4) & (\Add36~3\ $ (GND)))
-- \Add36~5\ = CARRY((!horizontalPosition(4) & !\Add36~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add36~3\,
	combout => \Add36~4_combout\,
	cout => \Add36~5\);

-- Location: LCCOMB_X32_Y64_N6
\Add36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~6_combout\ = (\Add36~5\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add36~5\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add36~7\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add36~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add36~5\,
	combout => \Add36~6_combout\,
	cout => \Add36~7\);

-- Location: LCCOMB_X32_Y64_N8
\Add36~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~8_combout\ = (\Add36~7\ & (horizontalPosition(6) $ (\Add6~5_combout\ $ (GND)))) # (!\Add36~7\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)) # (GND)))
-- \Add36~9\ = CARRY((horizontalPosition(6) $ (!\Add6~5_combout\)) # (!\Add36~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add36~7\,
	combout => \Add36~8_combout\,
	cout => \Add36~9\);

-- Location: LCCOMB_X32_Y65_N16
\Add43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~0_combout\ = (horizontalPosition(3) & (horizontalPosition(2) $ (VCC))) # (!horizontalPosition(3) & (horizontalPosition(2) & VCC))
-- \Add43~1\ = CARRY((horizontalPosition(3) & horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => horizontalPosition(2),
	datad => VCC,
	combout => \Add43~0_combout\,
	cout => \Add43~1\);

-- Location: LCCOMB_X32_Y65_N18
\Add43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~2_combout\ = (horizontalPosition(4) & ((\Add43~1\) # (GND))) # (!horizontalPosition(4) & (!\Add43~1\))
-- \Add43~3\ = CARRY((horizontalPosition(4)) # (!\Add43~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add43~1\,
	combout => \Add43~2_combout\,
	cout => \Add43~3\);

-- Location: LCCOMB_X32_Y65_N20
\Add43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~4_combout\ = (\Add43~3\ & ((horizontalPosition(5) $ (!horizontalPosition(4))))) # (!\Add43~3\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (GND))))
-- \Add43~5\ = CARRY((!\Add43~3\ & (horizontalPosition(5) $ (!horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add43~3\,
	combout => \Add43~4_combout\,
	cout => \Add43~5\);

-- Location: LCCOMB_X32_Y65_N22
\Add43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~6_combout\ = (\Add43~5\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add43~5\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add43~7\ = CARRY((!\Add43~5\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add43~5\,
	combout => \Add43~6_combout\,
	cout => \Add43~7\);

-- Location: LCCOMB_X32_Y65_N24
\Add43~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~8_combout\ = (\Add43~7\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC)))) # (!\Add43~7\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add43~9\ = CARRY((\Add6~2_combout\ $ (horizontalPosition(7))) # (!\Add43~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add43~7\,
	combout => \Add43~8_combout\,
	cout => \Add43~9\);

-- Location: LCCOMB_X32_Y65_N26
\Add43~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~10_combout\ = (\Add43~9\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))))) # (!\Add43~9\ & (\Add6~0_combout\ $ ((horizontalPosition(8)))))
-- \Add43~11\ = CARRY((!\Add43~9\ & (\Add6~0_combout\ $ (horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add43~9\,
	combout => \Add43~10_combout\,
	cout => \Add43~11\);

-- Location: LCCOMB_X32_Y65_N28
\Add43~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~12_combout\ = (\Add43~11\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)))) # (!\Add43~11\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (GND))))
-- \Add43~13\ = CARRY((!\Add43~11\ & (horizontalPosition(9) $ (!\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add43~11\,
	combout => \Add43~12_combout\,
	cout => \Add43~13\);

-- Location: LCCOMB_X32_Y65_N30
\Add43~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add43~14_combout\ = \Add43~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add43~13\,
	combout => \Add43~14_combout\);

-- Location: LCCOMB_X32_Y64_N10
\Add36~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~10_combout\ = (\Add36~9\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add36~9\ & (\Add6~2_combout\ $ ((!horizontalPosition(7)))))
-- \Add36~11\ = CARRY((!\Add36~9\ & (\Add6~2_combout\ $ (!horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add36~9\,
	combout => \Add36~10_combout\,
	cout => \Add36~11\);

-- Location: LCCOMB_X32_Y64_N12
\Add36~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~12_combout\ = (\Add36~11\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND)))) # (!\Add36~11\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add36~13\ = CARRY((\Add6~0_combout\ $ (!horizontalPosition(8))) # (!\Add36~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add36~11\,
	combout => \Add36~12_combout\,
	cout => \Add36~13\);

-- Location: LCCOMB_X32_Y64_N14
\Add36~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~14_combout\ = (\Add36~13\ & (\Add6~6_combout\ $ ((horizontalPosition(9))))) # (!\Add36~13\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add36~15\ = CARRY((\Add6~6_combout\ $ (horizontalPosition(9))) # (!\Add36~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add36~13\,
	combout => \Add36~14_combout\,
	cout => \Add36~15\);

-- Location: LCCOMB_X32_Y64_N16
\Add36~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add36~16_combout\ = !\Add36~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add36~15\,
	combout => \Add36~16_combout\);

-- Location: LCCOMB_X28_Y68_N2
\Add41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~2_combout\ = (horizontalPosition(2) & (\Add41~1_cout\ & VCC)) # (!horizontalPosition(2) & (!\Add41~1_cout\))
-- \Add41~3\ = CARRY((!horizontalPosition(2) & !\Add41~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add41~1_cout\,
	combout => \Add41~2_combout\,
	cout => \Add41~3\);

-- Location: LCCOMB_X28_Y68_N4
\Add41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~4_combout\ = (horizontalPosition(3) & (\Add41~3\ $ (GND))) # (!horizontalPosition(3) & (!\Add41~3\ & VCC))
-- \Add41~5\ = CARRY((horizontalPosition(3) & !\Add41~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add41~3\,
	combout => \Add41~4_combout\,
	cout => \Add41~5\);

-- Location: LCCOMB_X28_Y68_N6
\Add41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~6_combout\ = (horizontalPosition(4) & ((\Add41~5\) # (GND))) # (!horizontalPosition(4) & (!\Add41~5\))
-- \Add41~7\ = CARRY((horizontalPosition(4)) # (!\Add41~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add41~5\,
	combout => \Add41~6_combout\,
	cout => \Add41~7\);

-- Location: LCCOMB_X28_Y68_N10
\Add41~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~10_combout\ = (\Add41~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add41~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add41~11\ = CARRY((!\Add41~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add41~9\,
	combout => \Add41~10_combout\,
	cout => \Add41~11\);

-- Location: LCCOMB_X30_Y68_N12
\Add42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~2_combout\ = (horizontalPosition(2) & (\Add42~1\ & VCC)) # (!horizontalPosition(2) & (!\Add42~1\))
-- \Add42~3\ = CARRY((!horizontalPosition(2) & !\Add42~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add42~1\,
	combout => \Add42~2_combout\,
	cout => \Add42~3\);

-- Location: LCCOMB_X30_Y68_N14
\Add42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~4_combout\ = (horizontalPosition(3) & (\Add42~3\ $ (GND))) # (!horizontalPosition(3) & (!\Add42~3\ & VCC))
-- \Add42~5\ = CARRY((horizontalPosition(3) & !\Add42~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add42~3\,
	combout => \Add42~4_combout\,
	cout => \Add42~5\);

-- Location: LCCOMB_X30_Y68_N20
\Add42~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~10_combout\ = (\Add42~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add42~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add42~11\ = CARRY((!\Add42~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add42~9\,
	combout => \Add42~10_combout\,
	cout => \Add42~11\);

-- Location: LCCOMB_X30_Y68_N22
\Add42~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~12_combout\ = (\Add42~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC)))) # (!\Add42~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add42~13\ = CARRY((\Add6~2_combout\ $ (horizontalPosition(7))) # (!\Add42~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add42~11\,
	combout => \Add42~12_combout\,
	cout => \Add42~13\);

-- Location: LCCOMB_X30_Y68_N24
\Add42~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~14_combout\ = (\Add42~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)))) # (!\Add42~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\))))
-- \Add42~15\ = CARRY((!\Add42~13\ & (horizontalPosition(8) $ (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add42~13\,
	combout => \Add42~14_combout\,
	cout => \Add42~15\);

-- Location: LCCOMB_X30_Y68_N26
\Add42~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~16_combout\ = (\Add42~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add42~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND))))
-- \Add42~17\ = CARRY((!\Add42~15\ & (\Add6~6_combout\ $ (!horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add42~15\,
	combout => \Add42~16_combout\,
	cout => \Add42~17\);

-- Location: LCCOMB_X30_Y68_N28
\Add42~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~18_combout\ = \Add42~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add42~17\,
	combout => \Add42~18_combout\);

-- Location: LCCOMB_X29_Y70_N14
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (horizontalPosition(2) & (\Add8~1_cout\ & VCC)) # (!horizontalPosition(2) & (!\Add8~1_cout\))
-- \Add8~3\ = CARRY((!horizontalPosition(2) & !\Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X29_Y70_N26
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Add8~13\ & (\Add6~0_combout\ $ ((horizontalPosition(8))))) # (!\Add8~13\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add8~15\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X29_Y70_N28
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Add8~15\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (GND)))) # (!\Add8~15\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add8~17\ = CARRY((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X31_Y69_N2
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (horizontalPosition(0) & (horizontalPosition(1) $ (VCC))) # (!horizontalPosition(0) & (horizontalPosition(1) & VCC))
-- \Add9~1\ = CARRY((horizontalPosition(0) & horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X31_Y69_N4
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (horizontalPosition(2) & (\Add9~1\ & VCC)) # (!horizontalPosition(2) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!horizontalPosition(2) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X31_Y69_N6
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add9~3\))) # (!horizontalPosition(3) & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((horizontalPosition(3)) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X31_Y69_N8
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (horizontalPosition(4) & (!\Add9~5\)) # (!horizontalPosition(4) & (\Add9~5\ & VCC))
-- \Add9~7\ = CARRY((horizontalPosition(4) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X31_Y69_N10
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add9~7\ & ((horizontalPosition(5) $ (!horizontalPosition(4))))) # (!\Add9~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (GND))))
-- \Add9~9\ = CARRY((!\Add9~7\ & (horizontalPosition(5) $ (!horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X31_Y69_N12
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add9~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add9~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add9~11\ = CARRY((!\Add9~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X31_Y69_N14
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\Add9~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add9~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC))))
-- \Add9~13\ = CARRY((!\Add9~11\ & (\Add6~2_combout\ $ (horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X31_Y69_N18
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\Add9~15\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (GND)))) # (!\Add9~15\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (GND)))
-- \Add9~17\ = CARRY((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X35_Y68_N8
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(horizontalPosition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X35_Y68_N10
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (horizontalPosition(3) & (\Add10~1_cout\ & VCC)) # (!horizontalPosition(3) & (!\Add10~1_cout\))
-- \Add10~3\ = CARRY((!horizontalPosition(3) & !\Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add10~1_cout\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X35_Y68_N12
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (horizontalPosition(4) & (\Add10~3\ $ (GND))) # (!horizontalPosition(4) & ((GND) # (!\Add10~3\)))
-- \Add10~5\ = CARRY((!\Add10~3\) # (!horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X35_Y68_N14
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add10~5\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add10~5\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add10~7\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X35_Y68_N16
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add10~7\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add10~7\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add10~9\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X35_Y68_N18
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add10~9\ & (horizontalPosition(7) $ ((!\Add6~2_combout\)))) # (!\Add10~9\ & ((horizontalPosition(7) $ (\Add6~2_combout\)) # (GND)))
-- \Add10~11\ = CARRY((horizontalPosition(7) $ (!\Add6~2_combout\)) # (!\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X35_Y68_N20
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add10~11\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))))) # (!\Add10~11\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND))))
-- \Add10~13\ = CARRY((!\Add10~11\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X35_Y68_N22
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add10~13\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add10~13\ & (\Add6~6_combout\ $ ((horizontalPosition(9)))))
-- \Add10~15\ = CARRY((!\Add10~13\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X35_Y68_N24
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = !\Add10~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add10~15\,
	combout => \Add10~16_combout\);

-- Location: LCCOMB_X33_Y65_N12
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (horizontalPosition(2) & (\Add11~3\ $ (GND))) # (!horizontalPosition(2) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((horizontalPosition(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X33_Y65_N14
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (horizontalPosition(3) & (\Add11~5\ & VCC)) # (!horizontalPosition(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!horizontalPosition(3) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X33_Y65_N24
\Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (\Add11~15\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))))) # (!\Add11~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND))))
-- \Add11~17\ = CARRY((!\Add11~15\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X33_Y65_N26
\Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (\Add11~17\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add11~17\ & (\Add6~6_combout\ $ ((horizontalPosition(9)))))
-- \Add11~19\ = CARRY((!\Add11~17\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X31_Y66_N14
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (horizontalPosition(2) & (horizontalPosition(1) $ (VCC))) # (!horizontalPosition(2) & (horizontalPosition(1) & VCC))
-- \Add12~1\ = CARRY((horizontalPosition(2) & horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X31_Y66_N16
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (horizontalPosition(3) & (\Add12~1\ & VCC)) # (!horizontalPosition(3) & (!\Add12~1\))
-- \Add12~3\ = CARRY((!horizontalPosition(3) & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X31_Y66_N18
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (horizontalPosition(4) & (\Add12~3\ $ (GND))) # (!horizontalPosition(4) & ((GND) # (!\Add12~3\)))
-- \Add12~5\ = CARRY((!\Add12~3\) # (!horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X31_Y66_N20
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\Add12~5\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add12~5\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add12~7\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X31_Y66_N22
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (\Add12~7\ & (horizontalPosition(6) $ (\Add6~5_combout\ $ (GND)))) # (!\Add12~7\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)) # (GND)))
-- \Add12~9\ = CARRY((horizontalPosition(6) $ (!\Add6~5_combout\)) # (!\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X31_Y66_N24
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\Add12~9\ & (\Add6~2_combout\ $ ((!horizontalPosition(7))))) # (!\Add12~9\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add12~11\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X31_Y66_N26
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (\Add12~11\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)))) # (!\Add12~11\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (GND))))
-- \Add12~13\ = CARRY((!\Add12~11\ & (horizontalPosition(8) $ (!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X31_Y66_N28
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (\Add12~13\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)))) # (!\Add12~13\ & (horizontalPosition(9) $ ((\Add6~6_combout\))))
-- \Add12~15\ = CARRY((!\Add12~13\ & (horizontalPosition(9) $ (\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X31_Y66_N30
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = !\Add12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add12~15\,
	combout => \Add12~16_combout\);

-- Location: LCCOMB_X31_Y67_N10
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (horizontalPosition(2) & (!\Add13~1\)) # (!horizontalPosition(2) & ((\Add13~1\) # (GND)))
-- \Add13~3\ = CARRY((!\Add13~1\) # (!horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X31_Y67_N12
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add13~3\))) # (!horizontalPosition(3) & (\Add13~3\ $ (GND)))
-- \Add13~5\ = CARRY((horizontalPosition(3)) # (!\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X31_Y67_N18
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add13~9\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))))) # (!\Add13~9\ & (\Add6~5_combout\ $ ((horizontalPosition(6)))))
-- \Add13~11\ = CARRY((!\Add13~9\ & (\Add6~5_combout\ $ (horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X31_Y67_N22
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (\Add13~13\ & (\Add6~0_combout\ $ ((horizontalPosition(8))))) # (!\Add13~13\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add13~15\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X31_Y67_N24
\Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (\Add13~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND)))) # (!\Add13~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add13~17\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X31_Y67_N26
\Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = \Add13~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add13~17\,
	combout => \Add13~18_combout\);

-- Location: LCCOMB_X36_Y66_N6
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (horizontalPosition(4) & (!\Add14~1_cout\)) # (!horizontalPosition(4) & (\Add14~1_cout\ & VCC))
-- \Add14~3\ = CARRY((horizontalPosition(4) & !\Add14~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add14~1_cout\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X33_Y66_N6
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add15~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X33_Y66_N10
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (horizontalPosition(2) & ((GND) # (!\Add15~3\))) # (!horizontalPosition(2) & (\Add15~3\ $ (GND)))
-- \Add15~5\ = CARRY((horizontalPosition(2)) # (!\Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X33_Y66_N12
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (horizontalPosition(3) & (!\Add15~5\)) # (!horizontalPosition(3) & ((\Add15~5\) # (GND)))
-- \Add15~7\ = CARRY((!\Add15~5\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X34_Y64_N16
\Add18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~0_combout\ = (horizontalPosition(3) & (horizontalPosition(2) $ (VCC))) # (!horizontalPosition(3) & (horizontalPosition(2) & VCC))
-- \Add18~1\ = CARRY((horizontalPosition(3) & horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => horizontalPosition(2),
	datad => VCC,
	combout => \Add18~0_combout\,
	cout => \Add18~1\);

-- Location: LCCOMB_X34_Y64_N22
\Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~6_combout\ = (\Add18~5\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add18~5\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add18~7\ = CARRY((!\Add18~5\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add18~5\,
	combout => \Add18~6_combout\,
	cout => \Add18~7\);

-- Location: LCCOMB_X34_Y64_N26
\Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~10_combout\ = (\Add18~9\ & (horizontalPosition(8) $ ((\Add6~0_combout\)))) # (!\Add18~9\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add18~11\ = CARRY((horizontalPosition(8) $ (\Add6~0_combout\)) # (!\Add18~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add18~9\,
	combout => \Add18~10_combout\,
	cout => \Add18~11\);

-- Location: LCCOMB_X34_Y64_N28
\Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~12_combout\ = (\Add18~11\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND)))) # (!\Add18~11\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add18~13\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add18~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add18~11\,
	combout => \Add18~12_combout\,
	cout => \Add18~13\);

-- Location: LCCOMB_X34_Y64_N30
\Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~14_combout\ = \Add18~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add18~13\,
	combout => \Add18~14_combout\);

-- Location: LCCOMB_X33_Y64_N8
\Add16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~1_cout\ = CARRY(horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cout => \Add16~1_cout\);

-- Location: LCCOMB_X33_Y64_N10
\Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (horizontalPosition(2) & (\Add16~1_cout\ & VCC)) # (!horizontalPosition(2) & (!\Add16~1_cout\))
-- \Add16~3\ = CARRY((!horizontalPosition(2) & !\Add16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add16~1_cout\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X33_Y64_N12
\Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = (horizontalPosition(3) & (\Add16~3\ $ (GND))) # (!horizontalPosition(3) & (!\Add16~3\ & VCC))
-- \Add16~5\ = CARRY((horizontalPosition(3) & !\Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X33_Y64_N14
\Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (horizontalPosition(4) & (!\Add16~5\)) # (!horizontalPosition(4) & (\Add16~5\ & VCC))
-- \Add16~7\ = CARRY((horizontalPosition(4) & !\Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X33_Y64_N16
\Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = (\Add16~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add16~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add16~9\ = CARRY((!\Add16~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X33_Y64_N18
\Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (\Add16~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add16~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add16~11\ = CARRY((!\Add16~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X33_Y64_N20
\Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = (\Add16~11\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add16~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC))))
-- \Add16~13\ = CARRY((!\Add16~11\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X33_Y64_N22
\Add16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = (\Add16~13\ & (\Add6~0_combout\ $ ((horizontalPosition(8))))) # (!\Add16~13\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add16~15\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add16~13\,
	combout => \Add16~14_combout\,
	cout => \Add16~15\);

-- Location: LCCOMB_X33_Y64_N24
\Add16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~16_combout\ = (\Add16~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND)))) # (!\Add16~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add16~17\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add16~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add16~15\,
	combout => \Add16~16_combout\,
	cout => \Add16~17\);

-- Location: LCCOMB_X33_Y64_N26
\Add16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~18_combout\ = \Add16~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add16~17\,
	combout => \Add16~18_combout\);

-- Location: LCCOMB_X33_Y70_N6
\Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~2_combout\ = (horizontalPosition(2) & (\Add17~1\ & VCC)) # (!horizontalPosition(2) & (!\Add17~1\))
-- \Add17~3\ = CARRY((!horizontalPosition(2) & !\Add17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add17~1\,
	combout => \Add17~2_combout\,
	cout => \Add17~3\);

-- Location: LCCOMB_X33_Y70_N10
\Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~6_combout\ = (horizontalPosition(4) & (!\Add17~5\)) # (!horizontalPosition(4) & (\Add17~5\ & VCC))
-- \Add17~7\ = CARRY((horizontalPosition(4) & !\Add17~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add17~5\,
	combout => \Add17~6_combout\,
	cout => \Add17~7\);

-- Location: LCCOMB_X33_Y70_N12
\Add17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~8_combout\ = (\Add17~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add17~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add17~9\ = CARRY((!\Add17~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add17~7\,
	combout => \Add17~8_combout\,
	cout => \Add17~9\);

-- Location: LCCOMB_X33_Y70_N20
\Add17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~16_combout\ = (\Add17~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND)))) # (!\Add17~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add17~17\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add17~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add17~15\,
	combout => \Add17~16_combout\,
	cout => \Add17~17\);

-- Location: LCCOMB_X30_Y65_N6
\Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~1_cout\ = CARRY(!horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	cout => \Add19~1_cout\);

-- Location: LCCOMB_X30_Y65_N8
\Add19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~2_combout\ = (horizontalPosition(1) & (!\Add19~1_cout\)) # (!horizontalPosition(1) & (\Add19~1_cout\ & VCC))
-- \Add19~3\ = CARRY((horizontalPosition(1) & !\Add19~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add19~1_cout\,
	combout => \Add19~2_combout\,
	cout => \Add19~3\);

-- Location: LCCOMB_X30_Y65_N10
\Add19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~4_combout\ = (horizontalPosition(2) & (\Add19~3\ $ (GND))) # (!horizontalPosition(2) & ((GND) # (!\Add19~3\)))
-- \Add19~5\ = CARRY((!\Add19~3\) # (!horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add19~3\,
	combout => \Add19~4_combout\,
	cout => \Add19~5\);

-- Location: LCCOMB_X30_Y65_N12
\Add19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~6_combout\ = (horizontalPosition(3) & (!\Add19~5\)) # (!horizontalPosition(3) & (\Add19~5\ & VCC))
-- \Add19~7\ = CARRY((horizontalPosition(3) & !\Add19~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add19~5\,
	combout => \Add19~6_combout\,
	cout => \Add19~7\);

-- Location: LCCOMB_X30_Y65_N14
\Add19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~8_combout\ = (horizontalPosition(4) & ((GND) # (!\Add19~7\))) # (!horizontalPosition(4) & (\Add19~7\ $ (GND)))
-- \Add19~9\ = CARRY((horizontalPosition(4)) # (!\Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add19~7\,
	combout => \Add19~8_combout\,
	cout => \Add19~9\);

-- Location: LCCOMB_X30_Y65_N16
\Add19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~10_combout\ = (\Add19~9\ & (horizontalPosition(4) $ ((!horizontalPosition(5))))) # (!\Add19~9\ & ((horizontalPosition(4) $ (horizontalPosition(5))) # (GND)))
-- \Add19~11\ = CARRY((horizontalPosition(4) $ (!horizontalPosition(5))) # (!\Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add19~9\,
	combout => \Add19~10_combout\,
	cout => \Add19~11\);

-- Location: LCCOMB_X30_Y65_N18
\Add19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~12_combout\ = (\Add19~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (VCC)))) # (!\Add19~11\ & ((\Add6~5_combout\ $ (horizontalPosition(6))) # (GND)))
-- \Add19~13\ = CARRY((\Add6~5_combout\ $ (horizontalPosition(6))) # (!\Add19~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add19~11\,
	combout => \Add19~12_combout\,
	cout => \Add19~13\);

-- Location: LCCOMB_X30_Y65_N20
\Add19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~14_combout\ = (\Add19~13\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)))) # (!\Add19~13\ & (horizontalPosition(7) $ ((\Add6~2_combout\))))
-- \Add19~15\ = CARRY((!\Add19~13\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add19~13\,
	combout => \Add19~14_combout\,
	cout => \Add19~15\);

-- Location: LCCOMB_X30_Y65_N22
\Add19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~16_combout\ = (\Add19~15\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (VCC)))) # (!\Add19~15\ & ((horizontalPosition(8) $ (\Add6~0_combout\)) # (GND)))
-- \Add19~17\ = CARRY((horizontalPosition(8) $ (\Add6~0_combout\)) # (!\Add19~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add19~15\,
	combout => \Add19~16_combout\,
	cout => \Add19~17\);

-- Location: LCCOMB_X30_Y65_N24
\Add19~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~18_combout\ = (\Add19~17\ & (\Add6~6_combout\ $ ((!horizontalPosition(9))))) # (!\Add19~17\ & ((\Add6~6_combout\ $ (horizontalPosition(9))) # (GND)))
-- \Add19~19\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add19~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add19~17\,
	combout => \Add19~18_combout\,
	cout => \Add19~19\);

-- Location: LCCOMB_X30_Y65_N26
\Add19~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add19~20_combout\ = !\Add19~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add19~19\,
	combout => \Add19~20_combout\);

-- Location: LCCOMB_X31_Y64_N10
\Add21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~1_cout\ = CARRY(!horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cout => \Add21~1_cout\);

-- Location: LCCOMB_X31_Y64_N12
\Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~2_combout\ = (horizontalPosition(2) & (!\Add21~1_cout\)) # (!horizontalPosition(2) & (\Add21~1_cout\ & VCC))
-- \Add21~3\ = CARRY((horizontalPosition(2) & !\Add21~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add21~1_cout\,
	combout => \Add21~2_combout\,
	cout => \Add21~3\);

-- Location: LCCOMB_X31_Y64_N14
\Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~4_combout\ = (horizontalPosition(3) & (\Add21~3\ $ (GND))) # (!horizontalPosition(3) & ((GND) # (!\Add21~3\)))
-- \Add21~5\ = CARRY((!\Add21~3\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add21~3\,
	combout => \Add21~4_combout\,
	cout => \Add21~5\);

-- Location: LCCOMB_X31_Y64_N16
\Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~6_combout\ = (horizontalPosition(4) & (\Add21~5\ & VCC)) # (!horizontalPosition(4) & (!\Add21~5\))
-- \Add21~7\ = CARRY((!horizontalPosition(4) & !\Add21~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add21~5\,
	combout => \Add21~6_combout\,
	cout => \Add21~7\);

-- Location: LCCOMB_X31_Y64_N18
\Add21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~8_combout\ = (\Add21~7\ & ((horizontalPosition(5) $ (horizontalPosition(4))))) # (!\Add21~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (VCC))))
-- \Add21~9\ = CARRY((!\Add21~7\ & (horizontalPosition(5) $ (horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add21~7\,
	combout => \Add21~8_combout\,
	cout => \Add21~9\);

-- Location: LCCOMB_X31_Y64_N20
\Add21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~10_combout\ = (\Add21~9\ & ((\Add6~5_combout\ $ (horizontalPosition(6))))) # (!\Add21~9\ & (\Add6~5_combout\ $ ((!horizontalPosition(6)))))
-- \Add21~11\ = CARRY((!\Add21~9\ & (\Add6~5_combout\ $ (!horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add21~9\,
	combout => \Add21~10_combout\,
	cout => \Add21~11\);

-- Location: LCCOMB_X31_Y64_N22
\Add21~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~12_combout\ = (\Add21~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (GND)))) # (!\Add21~11\ & ((\Add6~2_combout\ $ (!horizontalPosition(7))) # (GND)))
-- \Add21~13\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add21~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add21~11\,
	combout => \Add21~12_combout\,
	cout => \Add21~13\);

-- Location: LCCOMB_X31_Y64_N24
\Add21~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~14_combout\ = (\Add21~13\ & ((horizontalPosition(8) $ (\Add6~0_combout\)))) # (!\Add21~13\ & (horizontalPosition(8) $ ((!\Add6~0_combout\))))
-- \Add21~15\ = CARRY((!\Add21~13\ & (horizontalPosition(8) $ (!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add21~13\,
	combout => \Add21~14_combout\,
	cout => \Add21~15\);

-- Location: LCCOMB_X31_Y64_N26
\Add21~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~16_combout\ = (\Add21~15\ & ((\Add6~6_combout\ $ (horizontalPosition(9))))) # (!\Add21~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (VCC))))
-- \Add21~17\ = CARRY((!\Add21~15\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add21~15\,
	combout => \Add21~16_combout\,
	cout => \Add21~17\);

-- Location: LCCOMB_X31_Y64_N28
\Add21~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add21~18_combout\ = \Add21~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add21~17\,
	combout => \Add21~18_combout\);

-- Location: LCCOMB_X29_Y69_N2
\Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~0_combout\ = (horizontalPosition(1) & (!horizontalPosition(0) & VCC)) # (!horizontalPosition(1) & (horizontalPosition(0) $ (GND)))
-- \Add22~1\ = CARRY((!horizontalPosition(1) & !horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add22~0_combout\,
	cout => \Add22~1\);

-- Location: LCCOMB_X29_Y69_N4
\Add22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~2_combout\ = (horizontalPosition(2) & (!\Add22~1\)) # (!horizontalPosition(2) & (\Add22~1\ & VCC))
-- \Add22~3\ = CARRY((horizontalPosition(2) & !\Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add22~1\,
	combout => \Add22~2_combout\,
	cout => \Add22~3\);

-- Location: LCCOMB_X29_Y69_N6
\Add22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~4_combout\ = (horizontalPosition(3) & (\Add22~3\ $ (GND))) # (!horizontalPosition(3) & ((GND) # (!\Add22~3\)))
-- \Add22~5\ = CARRY((!\Add22~3\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add22~3\,
	combout => \Add22~4_combout\,
	cout => \Add22~5\);

-- Location: LCCOMB_X29_Y69_N8
\Add22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~6_combout\ = (horizontalPosition(4) & (\Add22~5\ & VCC)) # (!horizontalPosition(4) & (!\Add22~5\))
-- \Add22~7\ = CARRY((!horizontalPosition(4) & !\Add22~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add22~5\,
	combout => \Add22~6_combout\,
	cout => \Add22~7\);

-- Location: LCCOMB_X29_Y69_N10
\Add22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~8_combout\ = (\Add22~7\ & ((horizontalPosition(5) $ (horizontalPosition(4))))) # (!\Add22~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (VCC))))
-- \Add22~9\ = CARRY((!\Add22~7\ & (horizontalPosition(5) $ (horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add22~7\,
	combout => \Add22~8_combout\,
	cout => \Add22~9\);

-- Location: LCCOMB_X29_Y69_N12
\Add22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~10_combout\ = (\Add22~9\ & ((horizontalPosition(6) $ (\Add6~5_combout\)))) # (!\Add22~9\ & (horizontalPosition(6) $ ((!\Add6~5_combout\))))
-- \Add22~11\ = CARRY((!\Add22~9\ & (horizontalPosition(6) $ (!\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add22~9\,
	combout => \Add22~10_combout\,
	cout => \Add22~11\);

-- Location: LCCOMB_X29_Y69_N14
\Add22~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~12_combout\ = (\Add22~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (GND)))) # (!\Add22~11\ & ((\Add6~2_combout\ $ (!horizontalPosition(7))) # (GND)))
-- \Add22~13\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add22~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add22~11\,
	combout => \Add22~12_combout\,
	cout => \Add22~13\);

-- Location: LCCOMB_X29_Y69_N16
\Add22~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~14_combout\ = (\Add22~13\ & ((\Add6~0_combout\ $ (horizontalPosition(8))))) # (!\Add22~13\ & (\Add6~0_combout\ $ ((!horizontalPosition(8)))))
-- \Add22~15\ = CARRY((!\Add22~13\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add22~13\,
	combout => \Add22~14_combout\,
	cout => \Add22~15\);

-- Location: LCCOMB_X29_Y69_N18
\Add22~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~16_combout\ = (\Add22~15\ & ((horizontalPosition(9) $ (\Add6~6_combout\)))) # (!\Add22~15\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (VCC))))
-- \Add22~17\ = CARRY((!\Add22~15\ & (horizontalPosition(9) $ (\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add22~15\,
	combout => \Add22~16_combout\,
	cout => \Add22~17\);

-- Location: LCCOMB_X29_Y69_N20
\Add22~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add22~18_combout\ = \Add22~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add22~17\,
	combout => \Add22~18_combout\);

-- Location: LCCOMB_X32_Y70_N8
\Add23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~1_cout\ = CARRY(!horizontalPosition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cout => \Add23~1_cout\);

-- Location: LCCOMB_X32_Y70_N10
\Add23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~2_combout\ = (horizontalPosition(3) & (!\Add23~1_cout\)) # (!horizontalPosition(3) & (\Add23~1_cout\ & VCC))
-- \Add23~3\ = CARRY((horizontalPosition(3) & !\Add23~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add23~1_cout\,
	combout => \Add23~2_combout\,
	cout => \Add23~3\);

-- Location: LCCOMB_X32_Y70_N12
\Add23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~4_combout\ = (horizontalPosition(4) & ((GND) # (!\Add23~3\))) # (!horizontalPosition(4) & (\Add23~3\ $ (GND)))
-- \Add23~5\ = CARRY((horizontalPosition(4)) # (!\Add23~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add23~3\,
	combout => \Add23~4_combout\,
	cout => \Add23~5\);

-- Location: LCCOMB_X32_Y70_N14
\Add23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~6_combout\ = (\Add23~5\ & (horizontalPosition(4) $ ((!horizontalPosition(5))))) # (!\Add23~5\ & ((horizontalPosition(4) $ (horizontalPosition(5))) # (GND)))
-- \Add23~7\ = CARRY((horizontalPosition(4) $ (!horizontalPosition(5))) # (!\Add23~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add23~5\,
	combout => \Add23~6_combout\,
	cout => \Add23~7\);

-- Location: LCCOMB_X32_Y70_N16
\Add23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~8_combout\ = (\Add23~7\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (VCC)))) # (!\Add23~7\ & ((\Add6~5_combout\ $ (horizontalPosition(6))) # (GND)))
-- \Add23~9\ = CARRY((\Add6~5_combout\ $ (horizontalPosition(6))) # (!\Add23~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add23~7\,
	combout => \Add23~8_combout\,
	cout => \Add23~9\);

-- Location: LCCOMB_X32_Y70_N18
\Add23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~10_combout\ = (\Add23~9\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)))) # (!\Add23~9\ & (horizontalPosition(7) $ ((\Add6~2_combout\))))
-- \Add23~11\ = CARRY((!\Add23~9\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add23~9\,
	combout => \Add23~10_combout\,
	cout => \Add23~11\);

-- Location: LCCOMB_X32_Y70_N20
\Add23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~12_combout\ = (\Add23~11\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (VCC)))) # (!\Add23~11\ & ((horizontalPosition(8) $ (\Add6~0_combout\)) # (GND)))
-- \Add23~13\ = CARRY((horizontalPosition(8) $ (\Add6~0_combout\)) # (!\Add23~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add23~11\,
	combout => \Add23~12_combout\,
	cout => \Add23~13\);

-- Location: LCCOMB_X32_Y70_N22
\Add23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~14_combout\ = (\Add23~13\ & (horizontalPosition(9) $ ((!\Add6~6_combout\)))) # (!\Add23~13\ & ((horizontalPosition(9) $ (\Add6~6_combout\)) # (GND)))
-- \Add23~15\ = CARRY((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\Add23~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add23~13\,
	combout => \Add23~14_combout\,
	cout => \Add23~15\);

-- Location: LCCOMB_X32_Y70_N24
\Add23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add23~16_combout\ = !\Add23~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add23~15\,
	combout => \Add23~16_combout\);

-- Location: LCCOMB_X30_Y67_N14
\Add24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~4_combout\ = (horizontalPosition(2) & (!\Add24~3\ & VCC)) # (!horizontalPosition(2) & (\Add24~3\ $ (GND)))
-- \Add24~5\ = CARRY((!horizontalPosition(2) & !\Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add24~3\,
	combout => \Add24~4_combout\,
	cout => \Add24~5\);

-- Location: LCCOMB_X30_Y67_N16
\Add24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~6_combout\ = (horizontalPosition(3) & (!\Add24~5\)) # (!horizontalPosition(3) & (\Add24~5\ & VCC))
-- \Add24~7\ = CARRY((horizontalPosition(3) & !\Add24~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add24~5\,
	combout => \Add24~6_combout\,
	cout => \Add24~7\);

-- Location: LCCOMB_X30_Y67_N18
\Add24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~8_combout\ = (horizontalPosition(4) & ((GND) # (!\Add24~7\))) # (!horizontalPosition(4) & (\Add24~7\ $ (GND)))
-- \Add24~9\ = CARRY((horizontalPosition(4)) # (!\Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add24~7\,
	combout => \Add24~8_combout\,
	cout => \Add24~9\);

-- Location: LCCOMB_X30_Y67_N22
\Add24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~12_combout\ = (\Add24~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (VCC)))) # (!\Add24~11\ & ((\Add6~5_combout\ $ (horizontalPosition(6))) # (GND)))
-- \Add24~13\ = CARRY((\Add6~5_combout\ $ (horizontalPosition(6))) # (!\Add24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add24~11\,
	combout => \Add24~12_combout\,
	cout => \Add24~13\);

-- Location: LCCOMB_X30_Y67_N28
\Add24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~18_combout\ = (\Add24~17\ & (\Add6~6_combout\ $ ((!horizontalPosition(9))))) # (!\Add24~17\ & ((\Add6~6_combout\ $ (horizontalPosition(9))) # (GND)))
-- \Add24~19\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add24~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add24~17\,
	combout => \Add24~18_combout\,
	cout => \Add24~19\);

-- Location: LCCOMB_X30_Y67_N30
\Add24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~20_combout\ = !\Add24~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add24~19\,
	combout => \Add24~20_combout\);

-- Location: LCCOMB_X34_Y67_N10
\Add25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~0_combout\ = (horizontalPosition(1) & (!horizontalPosition(2) & VCC)) # (!horizontalPosition(1) & (horizontalPosition(2) $ (GND)))
-- \Add25~1\ = CARRY((!horizontalPosition(1) & !horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(2),
	datad => VCC,
	combout => \Add25~0_combout\,
	cout => \Add25~1\);

-- Location: LCCOMB_X34_Y67_N12
\Add25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~2_combout\ = (horizontalPosition(3) & (!\Add25~1\)) # (!horizontalPosition(3) & (\Add25~1\ & VCC))
-- \Add25~3\ = CARRY((horizontalPosition(3) & !\Add25~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add25~1\,
	combout => \Add25~2_combout\,
	cout => \Add25~3\);

-- Location: LCCOMB_X34_Y67_N14
\Add25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~4_combout\ = (horizontalPosition(4) & ((GND) # (!\Add25~3\))) # (!horizontalPosition(4) & (\Add25~3\ $ (GND)))
-- \Add25~5\ = CARRY((horizontalPosition(4)) # (!\Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add25~3\,
	combout => \Add25~4_combout\,
	cout => \Add25~5\);

-- Location: LCCOMB_X34_Y67_N16
\Add25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~6_combout\ = (\Add25~5\ & (horizontalPosition(5) $ ((!horizontalPosition(4))))) # (!\Add25~5\ & ((horizontalPosition(5) $ (horizontalPosition(4))) # (GND)))
-- \Add25~7\ = CARRY((horizontalPosition(5) $ (!horizontalPosition(4))) # (!\Add25~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add25~5\,
	combout => \Add25~6_combout\,
	cout => \Add25~7\);

-- Location: LCCOMB_X34_Y67_N18
\Add25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~8_combout\ = (\Add25~7\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (VCC)))) # (!\Add25~7\ & ((\Add6~5_combout\ $ (horizontalPosition(6))) # (GND)))
-- \Add25~9\ = CARRY((\Add6~5_combout\ $ (horizontalPosition(6))) # (!\Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add25~7\,
	combout => \Add25~8_combout\,
	cout => \Add25~9\);

-- Location: LCCOMB_X34_Y67_N20
\Add25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~10_combout\ = (\Add25~9\ & ((\Add6~2_combout\ $ (!horizontalPosition(7))))) # (!\Add25~9\ & (\Add6~2_combout\ $ ((horizontalPosition(7)))))
-- \Add25~11\ = CARRY((!\Add25~9\ & (\Add6~2_combout\ $ (horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add25~9\,
	combout => \Add25~10_combout\,
	cout => \Add25~11\);

-- Location: LCCOMB_X34_Y67_N22
\Add25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~12_combout\ = (\Add25~11\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (VCC)))) # (!\Add25~11\ & ((\Add6~0_combout\ $ (horizontalPosition(8))) # (GND)))
-- \Add25~13\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add25~11\,
	combout => \Add25~12_combout\,
	cout => \Add25~13\);

-- Location: LCCOMB_X34_Y67_N24
\Add25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~14_combout\ = (\Add25~13\ & (horizontalPosition(9) $ ((!\Add6~6_combout\)))) # (!\Add25~13\ & ((horizontalPosition(9) $ (\Add6~6_combout\)) # (GND)))
-- \Add25~15\ = CARRY((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\Add25~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add25~13\,
	combout => \Add25~14_combout\,
	cout => \Add25~15\);

-- Location: LCCOMB_X34_Y67_N26
\Add25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add25~16_combout\ = !\Add25~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add25~15\,
	combout => \Add25~16_combout\);

-- Location: LCCOMB_X31_Y65_N4
\Add26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~0_combout\ = (horizontalPosition(1) & (!horizontalPosition(0) & VCC)) # (!horizontalPosition(1) & (horizontalPosition(0) $ (GND)))
-- \Add26~1\ = CARRY((!horizontalPosition(1) & !horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add26~0_combout\,
	cout => \Add26~1\);

-- Location: LCCOMB_X31_Y65_N6
\Add26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~2_combout\ = (horizontalPosition(2) & ((\Add26~1\) # (GND))) # (!horizontalPosition(2) & (!\Add26~1\))
-- \Add26~3\ = CARRY((horizontalPosition(2)) # (!\Add26~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add26~1\,
	combout => \Add26~2_combout\,
	cout => \Add26~3\);

-- Location: LCCOMB_X31_Y65_N10
\Add26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~6_combout\ = (horizontalPosition(4) & (\Add26~5\ & VCC)) # (!horizontalPosition(4) & (!\Add26~5\))
-- \Add26~7\ = CARRY((!horizontalPosition(4) & !\Add26~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add26~5\,
	combout => \Add26~6_combout\,
	cout => \Add26~7\);

-- Location: LCCOMB_X31_Y65_N20
\Add26~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~16_combout\ = (\Add26~15\ & ((horizontalPosition(9) $ (\Add6~6_combout\)))) # (!\Add26~15\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (VCC))))
-- \Add26~17\ = CARRY((!\Add26~15\ & (horizontalPosition(9) $ (\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add26~15\,
	combout => \Add26~16_combout\,
	cout => \Add26~17\);

-- Location: LCCOMB_X31_Y65_N22
\Add26~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~18_combout\ = \Add26~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add26~17\,
	combout => \Add26~18_combout\);

-- Location: LCCOMB_X31_Y70_N2
\Add27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~2_combout\ = (horizontalPosition(4) & (\Add27~1_cout\ & VCC)) # (!horizontalPosition(4) & (!\Add27~1_cout\))
-- \Add27~3\ = CARRY((!horizontalPosition(4) & !\Add27~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add27~1_cout\,
	combout => \Add27~2_combout\,
	cout => \Add27~3\);

-- Location: LCCOMB_X31_Y70_N6
\Add27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~6_combout\ = (\Add27~5\ & ((\Add6~5_combout\ $ (horizontalPosition(6))))) # (!\Add27~5\ & (\Add6~5_combout\ $ ((!horizontalPosition(6)))))
-- \Add27~7\ = CARRY((!\Add27~5\ & (\Add6~5_combout\ $ (!horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add27~5\,
	combout => \Add27~6_combout\,
	cout => \Add27~7\);

-- Location: LCCOMB_X31_Y70_N12
\Add27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~12_combout\ = (\Add27~11\ & ((horizontalPosition(9) $ (\Add6~6_combout\)))) # (!\Add27~11\ & (horizontalPosition(9) $ (\Add6~6_combout\ $ (VCC))))
-- \Add27~13\ = CARRY((!\Add27~11\ & (horizontalPosition(9) $ (\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add27~11\,
	combout => \Add27~12_combout\,
	cout => \Add27~13\);

-- Location: LCCOMB_X35_Y70_N12
\Add28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~2_combout\ = (horizontalPosition(1) & (!\Add28~1_cout\)) # (!horizontalPosition(1) & (\Add28~1_cout\ & VCC))
-- \Add28~3\ = CARRY((horizontalPosition(1) & !\Add28~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add28~1_cout\,
	combout => \Add28~2_combout\,
	cout => \Add28~3\);

-- Location: LCCOMB_X35_Y70_N14
\Add28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~4_combout\ = (horizontalPosition(2) & (\Add28~3\ $ (GND))) # (!horizontalPosition(2) & ((GND) # (!\Add28~3\)))
-- \Add28~5\ = CARRY((!\Add28~3\) # (!horizontalPosition(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add28~3\,
	combout => \Add28~4_combout\,
	cout => \Add28~5\);

-- Location: LCCOMB_X36_Y67_N2
\Add29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~2_combout\ = (horizontalPosition(2) & (!\Add29~1_cout\)) # (!horizontalPosition(2) & (\Add29~1_cout\ & VCC))
-- \Add29~3\ = CARRY((horizontalPosition(2) & !\Add29~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add29~1_cout\,
	combout => \Add29~2_combout\,
	cout => \Add29~3\);

-- Location: LCCOMB_X36_Y67_N4
\Add29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~4_combout\ = (horizontalPosition(3) & (!\Add29~3\ & VCC)) # (!horizontalPosition(3) & (\Add29~3\ $ (GND)))
-- \Add29~5\ = CARRY((!horizontalPosition(3) & !\Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add29~3\,
	combout => \Add29~4_combout\,
	cout => \Add29~5\);

-- Location: LCCOMB_X36_Y67_N12
\Add29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~12_combout\ = (\Add29~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (GND)))) # (!\Add29~11\ & ((\Add6~2_combout\ $ (!horizontalPosition(7))) # (GND)))
-- \Add29~13\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add29~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add29~11\,
	combout => \Add29~12_combout\,
	cout => \Add29~13\);

-- Location: LCCOMB_X36_Y67_N14
\Add29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~14_combout\ = (\Add29~13\ & ((\Add6~0_combout\ $ (horizontalPosition(8))))) # (!\Add29~13\ & (\Add6~0_combout\ $ ((!horizontalPosition(8)))))
-- \Add29~15\ = CARRY((!\Add29~13\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add29~13\,
	combout => \Add29~14_combout\,
	cout => \Add29~15\);

-- Location: LCCOMB_X36_Y67_N16
\Add29~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~16_combout\ = (\Add29~15\ & ((\Add6~6_combout\ $ (horizontalPosition(9))))) # (!\Add29~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (VCC))))
-- \Add29~17\ = CARRY((!\Add29~15\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add29~15\,
	combout => \Add29~16_combout\,
	cout => \Add29~17\);

-- Location: LCCOMB_X36_Y67_N18
\Add29~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~18_combout\ = \Add29~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add29~17\,
	combout => \Add29~18_combout\);

-- Location: LCCOMB_X33_Y67_N2
\Add30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~0_combout\ = (horizontalPosition(0) & (!horizontalPosition(1) & VCC)) # (!horizontalPosition(0) & (horizontalPosition(1) $ (GND)))
-- \Add30~1\ = CARRY((!horizontalPosition(0) & !horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add30~0_combout\,
	cout => \Add30~1\);

-- Location: LCCOMB_X33_Y67_N10
\Add30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~8_combout\ = (\Add30~7\ & ((horizontalPosition(4) $ (horizontalPosition(5))))) # (!\Add30~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (VCC))))
-- \Add30~9\ = CARRY((!\Add30~7\ & (horizontalPosition(4) $ (horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add30~7\,
	combout => \Add30~8_combout\,
	cout => \Add30~9\);

-- Location: LCCOMB_X36_Y68_N8
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (verticalPosition(3) & (!\Add4~5\)) # (!verticalPosition(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!verticalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X35_Y69_N10
\colorSetter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~3_combout\ = (\Add6~3_combout\) # ((\LessThan44~8_combout\ & (!\LessThan48~0_combout\ & \Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \LessThan44~8_combout\,
	datac => \LessThan48~0_combout\,
	datad => \Add6~4_combout\,
	combout => \colorSetter~3_combout\);

-- Location: LCCOMB_X34_Y70_N12
\LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan35~0_combout\ = (horizontalPosition(2)) # ((horizontalPosition(1)) # (horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datac => horizontalPosition(1),
	datad => horizontalPosition(3),
	combout => \LessThan35~0_combout\);

-- Location: LCCOMB_X33_Y69_N4
\color_red~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_red~2_combout\ = (!\colorSetter~6_combout\ & !\colorSetter~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \colorSetter~6_combout\,
	datad => \colorSetter~9_combout\,
	combout => \color_red~2_combout\);

-- Location: LCCOMB_X29_Y66_N30
\Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~1_combout\ = (\Add32~4_combout\ & (!horizontalPosition(3) & (\Add32~2_combout\ $ (!horizontalPosition(2))))) # (!\Add32~4_combout\ & (horizontalPosition(3) & (\Add32~2_combout\ $ (!horizontalPosition(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~4_combout\,
	datab => \Add32~2_combout\,
	datac => horizontalPosition(3),
	datad => horizontalPosition(2),
	combout => \Equal29~1_combout\);

-- Location: LCCOMB_X30_Y66_N26
\Equal30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~1_combout\ = (\Add33~4_combout\ & (\Add32~4_combout\ & (\Add32~2_combout\ $ (!\Add33~2_combout\)))) # (!\Add33~4_combout\ & (!\Add32~4_combout\ & (\Add32~2_combout\ $ (!\Add33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~4_combout\,
	datab => \Add32~2_combout\,
	datac => \Add33~2_combout\,
	datad => \Add32~4_combout\,
	combout => \Equal30~1_combout\);

-- Location: LCCOMB_X28_Y66_N26
\Equal31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~5_combout\ = (\Add34~14_combout\ & (!\Add32~16_combout\ & (\Add34~12_combout\ $ (!\Add32~14_combout\)))) # (!\Add34~14_combout\ & (\Add32~16_combout\ & (\Add34~12_combout\ $ (!\Add32~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~14_combout\,
	datab => \Add34~12_combout\,
	datac => \Add32~14_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal31~5_combout\);

-- Location: LCCOMB_X29_Y67_N6
\Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~0_combout\ = (\Add35~0_combout\ & (verticalPosition(0) & (\Add35~2_combout\ $ (verticalPosition(1))))) # (!\Add35~0_combout\ & (!verticalPosition(0) & (\Add35~2_combout\ $ (verticalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add35~0_combout\,
	datab => \Add35~2_combout\,
	datac => verticalPosition(0),
	datad => verticalPosition(1),
	combout => \Equal32~0_combout\);

-- Location: LCCOMB_X29_Y67_N8
\Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~1_combout\ = (\Add32~4_combout\ & (\Add35~6_combout\ & (\Add35~4_combout\ $ (!\Add32~2_combout\)))) # (!\Add32~4_combout\ & (!\Add35~6_combout\ & (\Add35~4_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~4_combout\,
	datab => \Add35~6_combout\,
	datac => \Add35~4_combout\,
	datad => \Add32~2_combout\,
	combout => \Equal32~1_combout\);

-- Location: LCCOMB_X29_Y66_N14
\Equal32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~2_combout\ = (\Add35~8_combout\ & (\Add32~6_combout\ & (\Add35~10_combout\ $ (!\Add32~8_combout\)))) # (!\Add35~8_combout\ & (!\Add32~6_combout\ & (\Add35~10_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add35~8_combout\,
	datab => \Add35~10_combout\,
	datac => \Add32~6_combout\,
	datad => \Add32~8_combout\,
	combout => \Equal32~2_combout\);

-- Location: LCCOMB_X29_Y66_N20
\Equal32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~3_combout\ = (\Add32~10_combout\ & (\Add35~12_combout\ & (\Add32~12_combout\ $ (!\Add35~14_combout\)))) # (!\Add32~10_combout\ & (!\Add35~12_combout\ & (\Add32~12_combout\ $ (!\Add35~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add35~12_combout\,
	datac => \Add32~12_combout\,
	datad => \Add35~14_combout\,
	combout => \Equal32~3_combout\);

-- Location: LCCOMB_X29_Y66_N6
\Equal32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~4_combout\ = (\Equal32~0_combout\ & (\Equal32~3_combout\ & (\Equal32~2_combout\ & \Equal32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~0_combout\,
	datab => \Equal32~3_combout\,
	datac => \Equal32~2_combout\,
	datad => \Equal32~1_combout\,
	combout => \Equal32~4_combout\);

-- Location: LCCOMB_X29_Y66_N22
\Equal32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~5_combout\ = (\Add35~18_combout\ & (!\Add32~16_combout\ & (\Add35~16_combout\ $ (!\Add32~14_combout\)))) # (!\Add35~18_combout\ & (\Add32~16_combout\ & (\Add35~16_combout\ $ (!\Add32~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add35~18_combout\,
	datab => \Add35~16_combout\,
	datac => \Add32~16_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal32~5_combout\);

-- Location: LCCOMB_X29_Y66_N12
\Equal32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal32~6_combout\ = (\Equal32~5_combout\ & (\Equal32~4_combout\ & (\Add35~20_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~5_combout\,
	datab => \Add35~20_combout\,
	datac => \Add32~16_combout\,
	datad => \Equal32~4_combout\,
	combout => \Equal32~6_combout\);

-- Location: LCCOMB_X28_Y67_N24
\Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = (\Add37~4_combout\ & (\Add32~4_combout\ & (\Add37~2_combout\ $ (!\Add32~2_combout\)))) # (!\Add37~4_combout\ & (!\Add32~4_combout\ & (\Add37~2_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add37~4_combout\,
	datab => \Add37~2_combout\,
	datac => \Add32~2_combout\,
	datad => \Add32~4_combout\,
	combout => \Equal34~0_combout\);

-- Location: LCCOMB_X28_Y67_N22
\Equal34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~1_combout\ = (\Add37~16_combout\ & (!\Add37~18_combout\ & !\Add32~16_combout\)) # (!\Add37~16_combout\ & (\Add37~18_combout\ & \Add32~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add37~16_combout\,
	datac => \Add37~18_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal34~1_combout\);

-- Location: LCCOMB_X29_Y68_N0
\Equal34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~2_combout\ = (\Add32~12_combout\ & ((\Add32~14_combout\ $ (\Add37~14_combout\)) # (!\Add37~12_combout\))) # (!\Add32~12_combout\ & ((\Add37~12_combout\) # (\Add32~14_combout\ $ (\Add37~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~12_combout\,
	datab => \Add32~14_combout\,
	datac => \Add37~12_combout\,
	datad => \Add37~14_combout\,
	combout => \Equal34~2_combout\);

-- Location: LCCOMB_X28_Y67_N0
\Equal34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~3_combout\ = (verticalPosition(0) & (!horizontalPosition(0) & (\Add37~0_combout\ $ (verticalPosition(1))))) # (!verticalPosition(0) & (horizontalPosition(0) & (\Add37~0_combout\ $ (verticalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datab => \Add37~0_combout\,
	datac => horizontalPosition(0),
	datad => verticalPosition(1),
	combout => \Equal34~3_combout\);

-- Location: LCCOMB_X28_Y69_N18
\Equal34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~4_combout\ = (\Add32~10_combout\ & (\Add37~10_combout\ & (\Add37~8_combout\ $ (!\Add32~8_combout\)))) # (!\Add32~10_combout\ & (!\Add37~10_combout\ & (\Add37~8_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add37~8_combout\,
	datac => \Add32~8_combout\,
	datad => \Add37~10_combout\,
	combout => \Equal34~4_combout\);

-- Location: LCCOMB_X28_Y69_N12
\Equal34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~5_combout\ = (\Equal34~3_combout\ & (\Equal34~4_combout\ & (\Add37~6_combout\ $ (!\Add32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~3_combout\,
	datab => \Add37~6_combout\,
	datac => \Add32~6_combout\,
	datad => \Equal34~4_combout\,
	combout => \Equal34~5_combout\);

-- Location: LCCOMB_X28_Y69_N22
\Equal34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~6_combout\ = (\Equal34~5_combout\ & (\Equal34~0_combout\ & (\Equal34~1_combout\ & !\Equal34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~5_combout\,
	datab => \Equal34~0_combout\,
	datac => \Equal34~1_combout\,
	datad => \Equal34~2_combout\,
	combout => \Equal34~6_combout\);

-- Location: LCCOMB_X29_Y68_N4
\Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~1_combout\ = (\Add32~2_combout\ & (\Add38~2_combout\ & (\Add38~4_combout\ $ (!\Add32~4_combout\)))) # (!\Add32~2_combout\ & (!\Add38~2_combout\ & (\Add38~4_combout\ $ (!\Add32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~2_combout\,
	datab => \Add38~4_combout\,
	datac => \Add32~4_combout\,
	datad => \Add38~2_combout\,
	combout => \Equal35~1_combout\);

-- Location: LCCOMB_X29_Y68_N8
\Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~2_combout\ = (\Equal35~1_combout\ & (\Add38~14_combout\ $ (!\Add32~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add38~14_combout\,
	datac => \Equal35~1_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal35~2_combout\);

-- Location: LCCOMB_X29_Y65_N2
\Equal36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~1_combout\ = (\Add39~6_combout\ & (\Add32~4_combout\ & (\Add39~4_combout\ $ (!\Add32~2_combout\)))) # (!\Add39~6_combout\ & (!\Add32~4_combout\ & (\Add39~4_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add39~6_combout\,
	datab => \Add39~4_combout\,
	datac => \Add32~2_combout\,
	datad => \Add32~4_combout\,
	combout => \Equal36~1_combout\);

-- Location: LCCOMB_X28_Y69_N10
\Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~3_combout\ = (\Add32~10_combout\ & (\Add40~12_combout\ & (\Add32~12_combout\ $ (!\Add40~14_combout\)))) # (!\Add32~10_combout\ & (!\Add40~12_combout\ & (\Add32~12_combout\ $ (!\Add40~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add40~12_combout\,
	datac => \Add32~12_combout\,
	datad => \Add40~14_combout\,
	combout => \Equal37~3_combout\);

-- Location: LCCOMB_X31_Y68_N30
\Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~0_combout\ = (\Add44~12_combout\ & (\Add32~10_combout\ & (\Add44~10_combout\ $ (!\Add32~8_combout\)))) # (!\Add44~12_combout\ & (!\Add32~10_combout\ & (\Add44~10_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add44~12_combout\,
	datab => \Add44~10_combout\,
	datac => \Add32~8_combout\,
	datad => \Add32~10_combout\,
	combout => \Equal41~0_combout\);

-- Location: LCCOMB_X31_Y68_N4
\Equal41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~1_combout\ = (verticalPosition(0) & (\Add44~0_combout\ & (verticalPosition(1) $ (\Add44~2_combout\)))) # (!verticalPosition(0) & (!\Add44~0_combout\ & (verticalPosition(1) $ (\Add44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datab => verticalPosition(1),
	datac => \Add44~0_combout\,
	datad => \Add44~2_combout\,
	combout => \Equal41~1_combout\);

-- Location: LCCOMB_X31_Y68_N2
\Equal41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~2_combout\ = (\Add32~4_combout\ & (\Add44~6_combout\ & (\Add44~8_combout\ $ (!\Add32~6_combout\)))) # (!\Add32~4_combout\ & (!\Add44~6_combout\ & (\Add44~8_combout\ $ (!\Add32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~4_combout\,
	datab => \Add44~8_combout\,
	datac => \Add44~6_combout\,
	datad => \Add32~6_combout\,
	combout => \Equal41~2_combout\);

-- Location: LCCOMB_X31_Y68_N6
\Equal41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~3_combout\ = (\Equal41~1_combout\ & (\Equal41~2_combout\ & (\Add44~4_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add44~4_combout\,
	datab => \Equal41~1_combout\,
	datac => \Add32~2_combout\,
	datad => \Equal41~2_combout\,
	combout => \Equal41~3_combout\);

-- Location: LCCOMB_X31_Y68_N0
\Equal41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~4_combout\ = (\Equal41~0_combout\ & (\Equal41~3_combout\ & (\Add44~14_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add44~14_combout\,
	datab => \Add32~12_combout\,
	datac => \Equal41~0_combout\,
	datad => \Equal41~3_combout\,
	combout => \Equal41~4_combout\);

-- Location: LCCOMB_X33_Y69_N8
\Equal41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~5_combout\ = (\Add32~16_combout\ & (!\Add44~18_combout\ & (\Add32~14_combout\ $ (!\Add44~16_combout\)))) # (!\Add32~16_combout\ & (\Add44~18_combout\ & (\Add32~14_combout\ $ (!\Add44~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~16_combout\,
	datab => \Add32~14_combout\,
	datac => \Add44~16_combout\,
	datad => \Add44~18_combout\,
	combout => \Equal41~5_combout\);

-- Location: LCCOMB_X33_Y69_N30
\Equal41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal41~6_combout\ = (\Equal41~5_combout\ & (\Equal41~4_combout\ & (\Add32~16_combout\ $ (!\Add44~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~16_combout\,
	datab => \Add44~20_combout\,
	datac => \Equal41~5_combout\,
	datad => \Equal41~4_combout\,
	combout => \Equal41~6_combout\);

-- Location: LCCOMB_X30_Y70_N0
\Equal42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~0_combout\ = (\Add45~0_combout\ & (\Add32~2_combout\ & (\Add45~2_combout\ $ (!\Add32~4_combout\)))) # (!\Add45~0_combout\ & (!\Add32~2_combout\ & (\Add45~2_combout\ $ (!\Add32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add45~0_combout\,
	datab => \Add45~2_combout\,
	datac => \Add32~4_combout\,
	datad => \Add32~2_combout\,
	combout => \Equal42~0_combout\);

-- Location: LCCOMB_X30_Y70_N2
\Equal42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~1_combout\ = (\Add32~8_combout\ & (\Add45~6_combout\ & (\Add45~4_combout\ $ (!\Add32~6_combout\)))) # (!\Add32~8_combout\ & (!\Add45~6_combout\ & (\Add45~4_combout\ $ (!\Add32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~8_combout\,
	datab => \Add45~4_combout\,
	datac => \Add45~6_combout\,
	datad => \Add32~6_combout\,
	combout => \Equal42~1_combout\);

-- Location: LCCOMB_X30_Y70_N8
\Equal42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~2_combout\ = (\Add32~10_combout\ & (\Add45~8_combout\ & (\Add45~10_combout\ $ (!\Add32~12_combout\)))) # (!\Add32~10_combout\ & (!\Add45~8_combout\ & (\Add45~10_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add45~10_combout\,
	datac => \Add45~8_combout\,
	datad => \Add32~12_combout\,
	combout => \Equal42~2_combout\);

-- Location: LCCOMB_X30_Y70_N6
\Equal42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~3_combout\ = (\Equal31~0_combout\ & (\Equal42~1_combout\ & (\Equal42~2_combout\ & \Equal42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~0_combout\,
	datab => \Equal42~1_combout\,
	datac => \Equal42~2_combout\,
	datad => \Equal42~0_combout\,
	combout => \Equal42~3_combout\);

-- Location: LCCOMB_X30_Y70_N4
\Equal42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~4_combout\ = (\Add45~12_combout\ & (\Add32~14_combout\ & (\Add32~16_combout\ $ (\Add45~14_combout\)))) # (!\Add45~12_combout\ & (!\Add32~14_combout\ & (\Add32~16_combout\ $ (\Add45~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add45~12_combout\,
	datab => \Add32~14_combout\,
	datac => \Add32~16_combout\,
	datad => \Add45~14_combout\,
	combout => \Equal42~4_combout\);

-- Location: LCCOMB_X30_Y70_N12
\Equal42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal42~5_combout\ = (\Equal42~4_combout\ & (\Equal42~3_combout\ & (\Add45~16_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add45~16_combout\,
	datab => \Add32~16_combout\,
	datac => \Equal42~4_combout\,
	datad => \Equal42~3_combout\,
	combout => \Equal42~5_combout\);

-- Location: LCCOMB_X29_Y68_N28
\colorSetter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~12_combout\ = (\Add36~4_combout\ & (\Add32~6_combout\ & (\Add32~4_combout\ $ (!\Add36~2_combout\)))) # (!\Add36~4_combout\ & (!\Add32~6_combout\ & (\Add32~4_combout\ $ (!\Add36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add36~4_combout\,
	datab => \Add32~4_combout\,
	datac => \Add36~2_combout\,
	datad => \Add32~6_combout\,
	combout => \colorSetter~12_combout\);

-- Location: LCCOMB_X32_Y65_N6
\Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = \Add32~8_combout\ $ (\Add36~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add32~8_combout\,
	datad => \Add36~6_combout\,
	combout => \Equal33~0_combout\);

-- Location: LCCOMB_X32_Y65_N8
\colorSetter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~13_combout\ = (\colorSetter~12_combout\ & (!\Equal33~0_combout\ & (\Add36~8_combout\ $ (!\Add32~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add36~8_combout\,
	datab => \Add32~10_combout\,
	datac => \colorSetter~12_combout\,
	datad => \Equal33~0_combout\,
	combout => \colorSetter~13_combout\);

-- Location: LCCOMB_X32_Y65_N4
\colorSetter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~14_combout\ = (\Add43~0_combout\ & (\Add32~4_combout\ & (\Add43~2_combout\ $ (!\Add32~6_combout\)))) # (!\Add43~0_combout\ & (!\Add32~4_combout\ & (\Add43~2_combout\ $ (!\Add32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add43~0_combout\,
	datab => \Add43~2_combout\,
	datac => \Add32~4_combout\,
	datad => \Add32~6_combout\,
	combout => \colorSetter~14_combout\);

-- Location: LCCOMB_X32_Y65_N12
\Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal40~0_combout\ = \Add32~8_combout\ $ (\Add43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add32~8_combout\,
	datad => \Add43~4_combout\,
	combout => \Equal40~0_combout\);

-- Location: LCCOMB_X32_Y65_N10
\colorSetter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~15_combout\ = (\colorSetter~14_combout\ & (!\Equal40~0_combout\ & (\Add43~6_combout\ $ (!\Add32~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add43~6_combout\,
	datab => \Add32~10_combout\,
	datac => \colorSetter~14_combout\,
	datad => \Equal40~0_combout\,
	combout => \colorSetter~15_combout\);

-- Location: LCCOMB_X32_Y65_N0
\colorSetter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~16_combout\ = (\Add43~10_combout\ & (\Add32~14_combout\ & (\Add43~8_combout\ $ (!\Add32~12_combout\)))) # (!\Add43~10_combout\ & (!\Add32~14_combout\ & (\Add43~8_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add43~10_combout\,
	datab => \Add43~8_combout\,
	datac => \Add32~14_combout\,
	datad => \Add32~12_combout\,
	combout => \colorSetter~16_combout\);

-- Location: LCCOMB_X32_Y65_N14
\colorSetter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~17_combout\ = (\colorSetter~16_combout\ & ((\Add43~14_combout\ & (!\Add43~12_combout\ & \Add32~16_combout\)) # (!\Add43~14_combout\ & (\Add43~12_combout\ & !\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add43~14_combout\,
	datab => \Add43~12_combout\,
	datac => \Add32~16_combout\,
	datad => \colorSetter~16_combout\,
	combout => \colorSetter~17_combout\);

-- Location: LCCOMB_X32_Y64_N26
\colorSetter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~18_combout\ = (\Add36~12_combout\ & (\Add32~14_combout\ & (\Add36~10_combout\ $ (!\Add32~12_combout\)))) # (!\Add36~12_combout\ & (!\Add32~14_combout\ & (\Add36~10_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add36~12_combout\,
	datab => \Add36~10_combout\,
	datac => \Add32~14_combout\,
	datad => \Add32~12_combout\,
	combout => \colorSetter~18_combout\);

-- Location: LCCOMB_X32_Y64_N28
\colorSetter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~19_combout\ = (\colorSetter~18_combout\ & ((\Add36~14_combout\ & (!\Add36~16_combout\ & !\Add32~16_combout\)) # (!\Add36~14_combout\ & (\Add36~16_combout\ & \Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add36~14_combout\,
	datab => \Add36~16_combout\,
	datac => \colorSetter~18_combout\,
	datad => \Add32~16_combout\,
	combout => \colorSetter~19_combout\);

-- Location: LCCOMB_X32_Y65_N2
\colorSetter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~20_combout\ = (\colorSetter~15_combout\ & ((\colorSetter~17_combout\) # ((\colorSetter~13_combout\ & \colorSetter~19_combout\)))) # (!\colorSetter~15_combout\ & (\colorSetter~13_combout\ & ((\colorSetter~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~15_combout\,
	datab => \colorSetter~13_combout\,
	datac => \colorSetter~17_combout\,
	datad => \colorSetter~19_combout\,
	combout => \colorSetter~20_combout\);

-- Location: LCCOMB_X29_Y67_N0
\colorSetter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~21_combout\ = (\Equal29~0_combout\ & (horizontalPosition(2) $ (\Add32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal29~0_combout\,
	datac => horizontalPosition(2),
	datad => \Add32~2_combout\,
	combout => \colorSetter~21_combout\);

-- Location: LCCOMB_X33_Y69_N22
\colorSetter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~22_combout\ = (\Equal41~6_combout\) # ((\Equal42~5_combout\) # ((\colorSetter~21_combout\ & \colorSetter~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal41~6_combout\,
	datab => \colorSetter~21_combout\,
	datac => \Equal42~5_combout\,
	datad => \colorSetter~20_combout\,
	combout => \colorSetter~22_combout\);

-- Location: LCCOMB_X34_Y70_N28
\LessThan42~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan42~8_combout\ = (horizontalPosition(2) & ((horizontalPosition(1)) # (horizontalPosition(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datac => horizontalPosition(0),
	datad => horizontalPosition(2),
	combout => \LessThan42~8_combout\);

-- Location: LCCOMB_X34_Y70_N22
\colorSetter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~24_combout\ = (\Add6~1_combout\ & (((\LessThan44~9_combout\)))) # (!\Add6~1_combout\ & (((!\LessThan42~9_combout\)) # (!\colorSetter~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~23_combout\,
	datab => \LessThan44~9_combout\,
	datac => \Add6~1_combout\,
	datad => \LessThan42~9_combout\,
	combout => \colorSetter~24_combout\);

-- Location: LCCOMB_X34_Y68_N30
\LessThan41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan41~0_combout\ = (\Add7~6_combout\) # ((\Add7~2_combout\ & \Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~2_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~6_combout\,
	combout => \LessThan41~0_combout\);

-- Location: LCCOMB_X35_Y66_N12
\color_blue[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~0_combout\ = (\colorSetter~24_combout\) # ((!\colorSetter~29_combout\ & (!\colorSetter~27_combout\ & !\colorSetter~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~24_combout\,
	datab => \colorSetter~29_combout\,
	datac => \colorSetter~27_combout\,
	datad => \colorSetter~26_combout\,
	combout => \color_blue[0]~0_combout\);

-- Location: LCCOMB_X31_Y66_N10
\LessThan52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan52~0_combout\ = (horizontalPosition(4) & (((!horizontalPosition(3)) # (!horizontalPosition(2))) # (!horizontalPosition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(1),
	datac => horizontalPosition(2),
	datad => horizontalPosition(3),
	combout => \LessThan52~0_combout\);

-- Location: LCCOMB_X35_Y66_N26
\colorSetter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~30_combout\ = (!\Add6~1_combout\ & (((!\LessThan52~0_combout\ & !\Add6~4_combout\)) # (!\Add6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \Add6~1_combout\,
	datac => \LessThan52~0_combout\,
	datad => \Add6~4_combout\,
	combout => \colorSetter~30_combout\);

-- Location: LCCOMB_X35_Y66_N22
\colorSetter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~32_combout\ = (!\colorSetter~31_combout\) # (!\colorSetter~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \colorSetter~30_combout\,
	datad => \colorSetter~31_combout\,
	combout => \colorSetter~32_combout\);

-- Location: LCCOMB_X34_Y66_N14
\colorSetter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~33_combout\ = (\colorSetter~23_combout\ & ((\Add6~4_combout\) # ((!\LessThan39~2_combout\) # (!\LessThan48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~23_combout\,
	datab => \Add6~4_combout\,
	datac => \LessThan48~0_combout\,
	datad => \LessThan39~2_combout\,
	combout => \colorSetter~33_combout\);

-- Location: LCCOMB_X35_Y66_N30
\colorSetter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~34_combout\ = (\colorSetter~33_combout\ & (!\LessThan57~2_combout\ & (\colorSetter~30_combout\ & !\LessThan50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~33_combout\,
	datab => \LessThan57~2_combout\,
	datac => \colorSetter~30_combout\,
	datad => \LessThan50~0_combout\,
	combout => \colorSetter~34_combout\);

-- Location: LCCOMB_X35_Y66_N6
\color_blue[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~1_combout\ = (!\colorSetter~34_combout\ & (\color_blue[0]~0_combout\ & ((\colorSetter~32_combout\) # (!\colorSetter~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~32_combout\,
	datab => \colorSetter~26_combout\,
	datac => \colorSetter~34_combout\,
	datad => \color_blue[0]~0_combout\,
	combout => \color_blue[0]~1_combout\);

-- Location: LCCOMB_X34_Y69_N26
\colorSetter~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~36_combout\ = (horizontalPosition(2) & (((!horizontalPosition(1) & !horizontalPosition(0))) # (!horizontalPosition(3)))) # (!horizontalPosition(2) & ((horizontalPosition(3)) # ((horizontalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datab => horizontalPosition(3),
	datac => horizontalPosition(1),
	datad => horizontalPosition(0),
	combout => \colorSetter~36_combout\);

-- Location: LCCOMB_X34_Y70_N30
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!horizontalPosition(3) & !horizontalPosition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(3),
	datad => horizontalPosition(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X34_Y69_N30
\colorSetter~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~40_combout\ = (horizontalPosition(4)) # ((\Equal3~0_combout\ & ((!horizontalPosition(0)) # (!horizontalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => horizontalPosition(4),
	datac => horizontalPosition(1),
	datad => horizontalPosition(0),
	combout => \colorSetter~40_combout\);

-- Location: LCCOMB_X28_Y68_N22
\Equal38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~0_combout\ = (\Add32~2_combout\ & (\Add41~2_combout\ & (\Add41~4_combout\ $ (!\Add32~4_combout\)))) # (!\Add32~2_combout\ & (!\Add41~2_combout\ & (\Add41~4_combout\ $ (!\Add32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~2_combout\,
	datab => \Add41~4_combout\,
	datac => \Add32~4_combout\,
	datad => \Add41~2_combout\,
	combout => \Equal38~0_combout\);

-- Location: LCCOMB_X30_Y68_N6
\Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~1_combout\ = (\Add42~2_combout\ & (\Add32~2_combout\ & (\Add42~4_combout\ $ (!\Add32~4_combout\)))) # (!\Add42~2_combout\ & (!\Add32~2_combout\ & (\Add42~4_combout\ $ (!\Add32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add42~2_combout\,
	datab => \Add42~4_combout\,
	datac => \Add32~4_combout\,
	datad => \Add32~2_combout\,
	combout => \Equal39~1_combout\);

-- Location: LCCOMB_X30_Y68_N8
\Equal39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~5_combout\ = \Add42~14_combout\ $ (\Add32~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add42~14_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal39~5_combout\);

-- Location: LCCOMB_X30_Y68_N30
\Equal39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~6_combout\ = (!\Equal39~5_combout\ & ((\Add42~16_combout\ & (!\Add42~18_combout\ & !\Add32~16_combout\)) # (!\Add42~16_combout\ & (\Add42~18_combout\ & \Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add42~16_combout\,
	datab => \Add42~18_combout\,
	datac => \Equal39~5_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal39~6_combout\);

-- Location: LCCOMB_X32_Y64_N24
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Add20~0_combout\ & (!horizontalPosition(1) & (\Add7~0_combout\ $ (!horizontalPosition(0))))) # (!\Add20~0_combout\ & (horizontalPosition(1) & (\Add7~0_combout\ $ (!horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => \Add7~0_combout\,
	datac => horizontalPosition(1),
	datad => horizontalPosition(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X32_Y69_N6
\Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (\Add8~16_combout\ & (!\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add8~14_combout\)))) # (!\Add8~16_combout\ & (\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~16_combout\,
	datab => \Add20~16_combout\,
	datac => \Add20~14_combout\,
	datad => \Add8~14_combout\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X31_Y69_N22
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (horizontalPosition(0) & (!\Add7~0_combout\ & (\Add9~0_combout\ $ (!\Add20~0_combout\)))) # (!horizontalPosition(0) & (\Add7~0_combout\ & (\Add9~0_combout\ $ (!\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => \Add9~0_combout\,
	datac => \Add7~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X31_Y69_N0
\Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Add9~4_combout\ & (\Add20~4_combout\ & (\Add9~2_combout\ $ (!\Add20~2_combout\)))) # (!\Add9~4_combout\ & (!\Add20~4_combout\ & (\Add9~2_combout\ $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add9~2_combout\,
	datac => \Add20~2_combout\,
	datad => \Add20~4_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X31_Y69_N28
\Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\Add20~8_combout\ & (\Add9~8_combout\ & (\Add9~6_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add9~8_combout\ & (\Add9~6_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add9~6_combout\,
	datac => \Add9~8_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X32_Y69_N22
\Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = (\Add9~10_combout\ & (\Add20~10_combout\ & (\Add20~12_combout\ $ (!\Add9~12_combout\)))) # (!\Add9~10_combout\ & (!\Add20~10_combout\ & (\Add20~12_combout\ $ (!\Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \Add20~12_combout\,
	datac => \Add20~10_combout\,
	datad => \Add9~12_combout\,
	combout => \Equal8~3_combout\);

-- Location: LCCOMB_X32_Y69_N30
\Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (\Equal8~3_combout\ & (\Equal8~0_combout\ & (\Equal8~1_combout\ & \Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~3_combout\,
	datab => \Equal8~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal8~2_combout\,
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X33_Y66_N2
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\Add20~0_combout\ & (horizontalPosition(1) & (\Add7~0_combout\ $ (!horizontalPosition(0))))) # (!\Add20~0_combout\ & (!horizontalPosition(1) & (\Add7~0_combout\ $ (!horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => horizontalPosition(1),
	datac => \Add7~0_combout\,
	datad => horizontalPosition(0),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X35_Y68_N2
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (\Add10~4_combout\ & (\Add20~6_combout\ & (\Add20~4_combout\ $ (!\Add10~2_combout\)))) # (!\Add10~4_combout\ & (!\Add20~6_combout\ & (\Add20~4_combout\ $ (!\Add10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Add20~4_combout\,
	datac => \Add10~2_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X35_Y68_N4
\Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Add20~8_combout\ & (\Add10~6_combout\ & (\Add20~10_combout\ $ (!\Add10~8_combout\)))) # (!\Add20~8_combout\ & (!\Add10~6_combout\ & (\Add20~10_combout\ $ (!\Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add10~6_combout\,
	datac => \Add20~10_combout\,
	datad => \Add10~8_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X35_Y68_N26
\Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Equal13~0_combout\ & (\Equal9~0_combout\ & (\Equal9~2_combout\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal9~2_combout\,
	datad => \Equal9~1_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X35_Y68_N30
\Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (\Add20~12_combout\ & (\Add10~10_combout\ & (\Add20~14_combout\ $ (!\Add10~12_combout\)))) # (!\Add20~12_combout\ & (!\Add10~10_combout\ & (\Add20~14_combout\ $ (!\Add10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add10~10_combout\,
	datac => \Add20~14_combout\,
	datad => \Add10~12_combout\,
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X35_Y68_N6
\Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = (\Add10~16_combout\ & (!\Add10~14_combout\ & \Add20~16_combout\)) # (!\Add10~16_combout\ & (\Add10~14_combout\ & !\Add20~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~16_combout\,
	datac => \Add10~14_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal9~5_combout\);

-- Location: LCCOMB_X35_Y68_N0
\Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (\Equal9~3_combout\ & (\Equal9~4_combout\ & \Equal9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~3_combout\,
	datac => \Equal9~4_combout\,
	datad => \Equal9~5_combout\,
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X33_Y65_N0
\Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (\Add11~4_combout\ & (\Add20~2_combout\ & (\Add11~6_combout\ $ (!\Add20~4_combout\)))) # (!\Add11~4_combout\ & (!\Add20~2_combout\ & (\Add11~6_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \Add11~6_combout\,
	datac => \Add20~2_combout\,
	datad => \Add20~4_combout\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X32_Y69_N10
\Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (\Add20~14_combout\ & (\Add11~16_combout\ & (\Add20~16_combout\ $ (\Add11~18_combout\)))) # (!\Add20~14_combout\ & (!\Add11~16_combout\ & (\Add20~16_combout\ $ (\Add11~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~14_combout\,
	datab => \Add11~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Add11~18_combout\,
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X31_Y66_N8
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\Add20~4_combout\ & (\Add12~2_combout\ & (\Add12~0_combout\ $ (!\Add20~2_combout\)))) # (!\Add20~4_combout\ & (!\Add12~2_combout\ & (\Add12~0_combout\ $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~4_combout\,
	datab => \Add12~2_combout\,
	datac => \Add12~0_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X31_Y66_N2
\Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~1_combout\ = (\Add20~8_combout\ & (\Add12~6_combout\ & (\Add12~4_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add12~6_combout\ & (\Add12~4_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add12~4_combout\,
	datac => \Add12~6_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal11~1_combout\);

-- Location: LCCOMB_X32_Y66_N14
\Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~2_combout\ = (\Add20~10_combout\ & (\Add12~8_combout\ & (\Add20~12_combout\ $ (!\Add12~10_combout\)))) # (!\Add20~10_combout\ & (!\Add12~8_combout\ & (\Add20~12_combout\ $ (!\Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add20~12_combout\,
	datac => \Add12~10_combout\,
	datad => \Add12~8_combout\,
	combout => \Equal11~2_combout\);

-- Location: LCCOMB_X32_Y66_N16
\Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~3_combout\ = (\Equal11~0_combout\ & (\Equal7~0_combout\ & (\Equal11~2_combout\ & \Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal11~2_combout\,
	datad => \Equal11~1_combout\,
	combout => \Equal11~3_combout\);

-- Location: LCCOMB_X31_Y66_N6
\Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~4_combout\ = (\Add12~12_combout\ & (\Add20~14_combout\ & (\Add12~14_combout\ $ (\Add20~16_combout\)))) # (!\Add12~12_combout\ & (!\Add20~14_combout\ & (\Add12~14_combout\ $ (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add20~14_combout\,
	datac => \Add12~14_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal11~4_combout\);

-- Location: LCCOMB_X32_Y66_N30
\Equal11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~5_combout\ = (\Equal11~4_combout\ & (\Equal11~3_combout\ & (\Add20~16_combout\ $ (!\Add12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add12~16_combout\,
	datac => \Equal11~4_combout\,
	datad => \Equal11~3_combout\,
	combout => \Equal11~5_combout\);

-- Location: LCCOMB_X32_Y68_N24
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (\Add20~4_combout\ & (\Add13~4_combout\ & (\Add20~2_combout\ $ (!\Add13~2_combout\)))) # (!\Add20~4_combout\ & (!\Add13~4_combout\ & (\Add20~2_combout\ $ (!\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~4_combout\,
	datab => \Add20~2_combout\,
	datac => \Add13~4_combout\,
	datad => \Add13~2_combout\,
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X33_Y66_N30
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (\Add15~6_combout\ & (\Add20~4_combout\ & (\Add15~4_combout\ $ (!\Add20~2_combout\)))) # (!\Add15~6_combout\ & (!\Add20~4_combout\ & (\Add15~4_combout\ $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~6_combout\,
	datab => \Add15~4_combout\,
	datac => \Add20~2_combout\,
	datad => \Add20~4_combout\,
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X33_Y64_N6
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (\Add16~2_combout\ & (\Add20~2_combout\ & (\Add20~4_combout\ $ (!\Add16~4_combout\)))) # (!\Add16~2_combout\ & (!\Add20~2_combout\ & (\Add20~4_combout\ $ (!\Add16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datab => \Add20~4_combout\,
	datac => \Add20~2_combout\,
	datad => \Add16~4_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X33_Y64_N30
\Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (\Add20~8_combout\ & (\Add16~8_combout\ & (\Add16~6_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add16~8_combout\ & (\Add16~6_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add16~8_combout\,
	datac => \Add16~6_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X33_Y64_N0
\Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (\Add16~12_combout\ & (\Add20~12_combout\ & (\Add16~10_combout\ $ (!\Add20~10_combout\)))) # (!\Add16~12_combout\ & (!\Add20~12_combout\ & (\Add16~10_combout\ $ (!\Add20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~12_combout\,
	datab => \Add20~12_combout\,
	datac => \Add16~10_combout\,
	datad => \Add20~10_combout\,
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X33_Y64_N28
\Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (\Equal15~0_combout\ & (\Equal7~0_combout\ & (\Equal15~1_combout\ & \Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal15~1_combout\,
	datad => \Equal15~2_combout\,
	combout => \Equal15~3_combout\);

-- Location: LCCOMB_X33_Y64_N4
\Equal15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\Add16~14_combout\ & (\Add20~14_combout\ & (\Add16~16_combout\ $ (\Add20~16_combout\)))) # (!\Add16~14_combout\ & (!\Add20~14_combout\ & (\Add16~16_combout\ $ (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~14_combout\,
	datab => \Add20~14_combout\,
	datac => \Add16~16_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCCOMB_X33_Y64_N2
\Equal15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = (\Equal15~3_combout\ & (\Equal15~4_combout\ & (\Add16~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~18_combout\,
	datab => \Equal15~3_combout\,
	datac => \Equal15~4_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal15~5_combout\);

-- Location: LCCOMB_X33_Y70_N2
\Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~2_combout\ = (\Add17~6_combout\ & (\Add20~6_combout\ & (\Add20~8_combout\ $ (!\Add17~8_combout\)))) # (!\Add17~6_combout\ & (!\Add20~6_combout\ & (\Add20~8_combout\ $ (!\Add17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~6_combout\,
	datab => \Add20~6_combout\,
	datac => \Add20~8_combout\,
	datad => \Add17~8_combout\,
	combout => \Equal16~2_combout\);

-- Location: LCCOMB_X29_Y65_N26
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (horizontalPosition(0) & (\Add7~0_combout\ & (\Add20~0_combout\ $ (!\Add19~2_combout\)))) # (!horizontalPosition(0) & (!\Add7~0_combout\ & (\Add20~0_combout\ $ (!\Add19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => \Add20~0_combout\,
	datac => \Add7~0_combout\,
	datad => \Add19~2_combout\,
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X29_Y65_N30
\Equal18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~1_combout\ = (\Add19~4_combout\ & (\Add20~2_combout\ & (\Add19~6_combout\ $ (!\Add20~4_combout\)))) # (!\Add19~4_combout\ & (!\Add20~2_combout\ & (\Add19~6_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~4_combout\,
	datab => \Add19~6_combout\,
	datac => \Add20~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal18~1_combout\);

-- Location: LCCOMB_X30_Y65_N28
\Equal18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~2_combout\ = (\Add20~6_combout\ & (\Add19~8_combout\ & (\Add19~10_combout\ $ (!\Add20~8_combout\)))) # (!\Add20~6_combout\ & (!\Add19~8_combout\ & (\Add19~10_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add19~10_combout\,
	datac => \Add19~8_combout\,
	datad => \Add20~8_combout\,
	combout => \Equal18~2_combout\);

-- Location: LCCOMB_X30_Y65_N4
\Equal18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~3_combout\ = (\Add20~12_combout\ & (\Add19~14_combout\ & (\Add19~12_combout\ $ (!\Add20~10_combout\)))) # (!\Add20~12_combout\ & (!\Add19~14_combout\ & (\Add19~12_combout\ $ (!\Add20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add19~14_combout\,
	datac => \Add19~12_combout\,
	datad => \Add20~10_combout\,
	combout => \Equal18~3_combout\);

-- Location: LCCOMB_X30_Y65_N2
\Equal18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~4_combout\ = (\Equal18~0_combout\ & (\Equal18~2_combout\ & (\Equal18~3_combout\ & \Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \Equal18~2_combout\,
	datac => \Equal18~3_combout\,
	datad => \Equal18~1_combout\,
	combout => \Equal18~4_combout\);

-- Location: LCCOMB_X30_Y65_N30
\Equal18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~5_combout\ = (\Add19~16_combout\ & (\Add20~14_combout\ & (\Add19~18_combout\ $ (\Add20~16_combout\)))) # (!\Add19~16_combout\ & (!\Add20~14_combout\ & (\Add19~18_combout\ $ (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~16_combout\,
	datab => \Add19~18_combout\,
	datac => \Add20~14_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal18~5_combout\);

-- Location: LCCOMB_X30_Y65_N0
\Equal18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~6_combout\ = (\Equal18~5_combout\ & (\Equal18~4_combout\ & (\Add19~20_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~20_combout\,
	datab => \Add20~16_combout\,
	datac => \Equal18~5_combout\,
	datad => \Equal18~4_combout\,
	combout => \Equal18~6_combout\);

-- Location: LCCOMB_X32_Y68_N28
\Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (\Add20~4_combout\ & (\Add21~4_combout\ & (\Add20~2_combout\ $ (!\Add21~2_combout\)))) # (!\Add20~4_combout\ & (!\Add21~4_combout\ & (\Add20~2_combout\ $ (!\Add21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~4_combout\,
	datab => \Add20~2_combout\,
	datac => \Add21~2_combout\,
	datad => \Add21~4_combout\,
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X32_Y68_N4
\Equal19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~2_combout\ = (\Add20~6_combout\ & (\Add21~6_combout\ & (\Add20~8_combout\ $ (!\Add21~8_combout\)))) # (!\Add20~6_combout\ & (!\Add21~6_combout\ & (\Add20~8_combout\ $ (!\Add21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add20~8_combout\,
	datac => \Add21~8_combout\,
	datad => \Add21~6_combout\,
	combout => \Equal19~2_combout\);

-- Location: LCCOMB_X32_Y68_N26
\Equal19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~3_combout\ = (\Add20~12_combout\ & (\Add21~12_combout\ & (\Add20~10_combout\ $ (!\Add21~10_combout\)))) # (!\Add20~12_combout\ & (!\Add21~12_combout\ & (\Add20~10_combout\ $ (!\Add21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add20~10_combout\,
	datac => \Add21~12_combout\,
	datad => \Add21~10_combout\,
	combout => \Equal19~3_combout\);

-- Location: LCCOMB_X32_Y68_N2
\Equal19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~4_combout\ = (\Equal19~3_combout\ & (\Equal19~2_combout\ & (\Equal19~0_combout\ & \Equal19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~3_combout\,
	datab => \Equal19~2_combout\,
	datac => \Equal19~0_combout\,
	datad => \Equal19~1_combout\,
	combout => \Equal19~4_combout\);

-- Location: LCCOMB_X32_Y68_N30
\Equal19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~5_combout\ = (\Add20~16_combout\ & (!\Add21~16_combout\ & (\Add20~14_combout\ $ (!\Add21~14_combout\)))) # (!\Add20~16_combout\ & (\Add21~16_combout\ & (\Add20~14_combout\ $ (!\Add21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add20~14_combout\,
	datac => \Add21~16_combout\,
	datad => \Add21~14_combout\,
	combout => \Equal19~5_combout\);

-- Location: LCCOMB_X32_Y68_N0
\Equal19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~6_combout\ = (\Equal19~4_combout\ & (\Equal19~5_combout\ & (\Add20~16_combout\ $ (!\Add21~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Equal19~4_combout\,
	datac => \Equal19~5_combout\,
	datad => \Add21~18_combout\,
	combout => \Equal19~6_combout\);

-- Location: LCCOMB_X31_Y69_N26
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (\Add22~0_combout\ & (\Add20~0_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\)))) # (!\Add22~0_combout\ & (!\Add20~0_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~0_combout\,
	datab => horizontalPosition(0),
	datac => \Add7~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X29_Y69_N30
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (\Add22~4_combout\ & (\Add20~4_combout\ & (\Add22~2_combout\ $ (!\Add20~2_combout\)))) # (!\Add22~4_combout\ & (!\Add20~4_combout\ & (\Add22~2_combout\ $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~4_combout\,
	datab => \Add22~2_combout\,
	datac => \Add20~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X29_Y69_N28
\Equal20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~2_combout\ = (\Add22~8_combout\ & (\Add20~8_combout\ & (\Add22~6_combout\ $ (!\Add20~6_combout\)))) # (!\Add22~8_combout\ & (!\Add20~8_combout\ & (\Add22~6_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~8_combout\,
	datab => \Add22~6_combout\,
	datac => \Add20~6_combout\,
	datad => \Add20~8_combout\,
	combout => \Equal20~2_combout\);

-- Location: LCCOMB_X29_Y69_N22
\Equal20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~3_combout\ = (\Add22~10_combout\ & (\Add20~10_combout\ & (\Add22~12_combout\ $ (!\Add20~12_combout\)))) # (!\Add22~10_combout\ & (!\Add20~10_combout\ & (\Add22~12_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add22~10_combout\,
	datab => \Add22~12_combout\,
	datac => \Add20~12_combout\,
	datad => \Add20~10_combout\,
	combout => \Equal20~3_combout\);

-- Location: LCCOMB_X29_Y69_N0
\Equal20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~4_combout\ = (\Equal20~1_combout\ & (\Equal20~0_combout\ & (\Equal20~3_combout\ & \Equal20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~1_combout\,
	datab => \Equal20~0_combout\,
	datac => \Equal20~3_combout\,
	datad => \Equal20~2_combout\,
	combout => \Equal20~4_combout\);

-- Location: LCCOMB_X29_Y69_N26
\Equal20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~5_combout\ = (\Add20~14_combout\ & (\Add22~14_combout\ & (\Add22~16_combout\ $ (\Add20~16_combout\)))) # (!\Add20~14_combout\ & (!\Add22~14_combout\ & (\Add22~16_combout\ $ (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~14_combout\,
	datab => \Add22~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Add22~14_combout\,
	combout => \Equal20~5_combout\);

-- Location: LCCOMB_X29_Y69_N24
\Equal20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~6_combout\ = (\Equal20~5_combout\ & (\Equal20~4_combout\ & (\Add22~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~5_combout\,
	datab => \Add22~18_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal20~4_combout\,
	combout => \Equal20~6_combout\);

-- Location: LCCOMB_X32_Y70_N0
\Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (\Add23~2_combout\ & (\Add20~4_combout\ & (\Add20~2_combout\ $ (!horizontalPosition(2))))) # (!\Add23~2_combout\ & (!\Add20~4_combout\ & (\Add20~2_combout\ $ (!horizontalPosition(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~2_combout\,
	datab => \Add20~2_combout\,
	datac => horizontalPosition(2),
	datad => \Add20~4_combout\,
	combout => \Equal21~1_combout\);

-- Location: LCCOMB_X32_Y70_N4
\Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (\Add20~8_combout\ & (\Add23~6_combout\ & (\Add23~4_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add23~6_combout\ & (\Add23~4_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add23~6_combout\,
	datac => \Add23~4_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X32_Y70_N28
\Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~3_combout\ = (\Add23~8_combout\ & (\Add20~10_combout\ & (\Add20~12_combout\ $ (!\Add23~10_combout\)))) # (!\Add23~8_combout\ & (!\Add20~10_combout\ & (\Add20~12_combout\ $ (!\Add23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~8_combout\,
	datab => \Add20~12_combout\,
	datac => \Add20~10_combout\,
	datad => \Add23~10_combout\,
	combout => \Equal21~3_combout\);

-- Location: LCCOMB_X32_Y70_N6
\Equal21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~4_combout\ = (\Equal21~0_combout\ & (\Equal21~1_combout\ & (\Equal21~2_combout\ & \Equal21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \Equal21~1_combout\,
	datac => \Equal21~2_combout\,
	datad => \Equal21~3_combout\,
	combout => \Equal21~4_combout\);

-- Location: LCCOMB_X32_Y70_N26
\Equal21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~5_combout\ = (\Add23~14_combout\ & (!\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add23~12_combout\)))) # (!\Add23~14_combout\ & (\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add23~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add23~14_combout\,
	datab => \Add20~14_combout\,
	datac => \Add20~16_combout\,
	datad => \Add23~12_combout\,
	combout => \Equal21~5_combout\);

-- Location: LCCOMB_X32_Y70_N2
\Equal21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~6_combout\ = (\Equal21~5_combout\ & (\Equal21~4_combout\ & (\Add23~16_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~5_combout\,
	datab => \Add23~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal21~4_combout\,
	combout => \Equal21~6_combout\);

-- Location: LCCOMB_X33_Y69_N26
\colorSetter~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~52_combout\ = (!\Equal19~6_combout\ & (!\Equal20~6_combout\ & (!\Equal18~6_combout\ & !\Equal21~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~6_combout\,
	datab => \Equal20~6_combout\,
	datac => \Equal18~6_combout\,
	datad => \Equal21~6_combout\,
	combout => \colorSetter~52_combout\);

-- Location: LCCOMB_X30_Y69_N30
\Equal22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~1_combout\ = (\Add20~4_combout\ & (\Add24~6_combout\ & (\Add20~2_combout\ $ (!\Add24~4_combout\)))) # (!\Add20~4_combout\ & (!\Add24~6_combout\ & (\Add20~2_combout\ $ (!\Add24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~4_combout\,
	datab => \Add24~6_combout\,
	datac => \Add20~2_combout\,
	datad => \Add24~4_combout\,
	combout => \Equal22~1_combout\);

-- Location: LCCOMB_X30_Y69_N4
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (\Add25~2_combout\ & (\Add20~4_combout\ & (\Add20~2_combout\ $ (!\Add25~0_combout\)))) # (!\Add25~2_combout\ & (!\Add20~4_combout\ & (\Add20~2_combout\ $ (!\Add25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add25~2_combout\,
	datab => \Add20~2_combout\,
	datac => \Add20~4_combout\,
	datad => \Add25~0_combout\,
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X30_Y69_N16
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (\Add20~8_combout\ & (\Add25~6_combout\ & (\Add20~6_combout\ $ (!\Add25~4_combout\)))) # (!\Add20~8_combout\ & (!\Add25~6_combout\ & (\Add20~6_combout\ $ (!\Add25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add25~6_combout\,
	datac => \Add20~6_combout\,
	datad => \Add25~4_combout\,
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X34_Y68_N16
\Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~2_combout\ = (\Add25~10_combout\ & (\Add20~12_combout\ & (\Add25~8_combout\ $ (!\Add20~10_combout\)))) # (!\Add25~10_combout\ & (!\Add20~12_combout\ & (\Add25~8_combout\ $ (!\Add20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add25~10_combout\,
	datab => \Add25~8_combout\,
	datac => \Add20~12_combout\,
	datad => \Add20~10_combout\,
	combout => \Equal23~2_combout\);

-- Location: LCCOMB_X30_Y69_N0
\Equal23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~3_combout\ = (\Equal19~0_combout\ & (\Equal23~1_combout\ & (\Equal23~0_combout\ & \Equal23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal23~1_combout\,
	datac => \Equal23~0_combout\,
	datad => \Equal23~2_combout\,
	combout => \Equal23~3_combout\);

-- Location: LCCOMB_X31_Y69_N30
\Equal23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~4_combout\ = (\Add25~14_combout\ & (!\Add20~16_combout\ & (\Add25~12_combout\ $ (!\Add20~14_combout\)))) # (!\Add25~14_combout\ & (\Add20~16_combout\ & (\Add25~12_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add25~14_combout\,
	datab => \Add20~16_combout\,
	datac => \Add25~12_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal23~4_combout\);

-- Location: LCCOMB_X30_Y69_N26
\Equal23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~5_combout\ = (\Equal23~4_combout\ & (\Equal23~3_combout\ & (\Add25~16_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~4_combout\,
	datab => \Add25~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal23~3_combout\,
	combout => \Equal23~5_combout\);

-- Location: LCCOMB_X31_Y65_N26
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (\Add7~0_combout\ & (horizontalPosition(0) & (\Add26~0_combout\ $ (!\Add20~0_combout\)))) # (!\Add7~0_combout\ & (!horizontalPosition(0) & (\Add26~0_combout\ $ (!\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => horizontalPosition(0),
	datac => \Add26~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X31_Y70_N26
\Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (horizontalPosition(3) & (\Add20~4_combout\ & (horizontalPosition(2) $ (\Add20~2_combout\)))) # (!horizontalPosition(3) & (!\Add20~4_combout\ & (horizontalPosition(2) $ (\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => horizontalPosition(2),
	datac => \Add20~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal25~0_combout\);

-- Location: LCCOMB_X36_Y69_N22
\Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~0_combout\ = (\Add28~2_combout\ & (\Add20~0_combout\ & (\Add7~0_combout\ $ (!horizontalPosition(0))))) # (!\Add28~2_combout\ & (!\Add20~0_combout\ & (\Add7~0_combout\ $ (!horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add28~2_combout\,
	datab => \Add7~0_combout\,
	datac => \Add20~0_combout\,
	datad => horizontalPosition(0),
	combout => \Equal26~0_combout\);

-- Location: LCCOMB_X36_Y69_N10
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (\Add20~4_combout\ & (\Add29~4_combout\ & (\Add29~2_combout\ $ (!\Add20~2_combout\)))) # (!\Add20~4_combout\ & (!\Add29~4_combout\ & (\Add29~2_combout\ $ (!\Add20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~4_combout\,
	datab => \Add29~2_combout\,
	datac => \Add29~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X36_Y69_N24
\Equal27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~4_combout\ = \Add29~14_combout\ $ (\Add20~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add29~14_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal27~4_combout\);

-- Location: LCCOMB_X36_Y69_N6
\Equal27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~5_combout\ = (!\Equal27~4_combout\ & ((\Add20~16_combout\ & (!\Add29~16_combout\ & \Add29~18_combout\)) # (!\Add20~16_combout\ & (\Add29~16_combout\ & !\Add29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add29~16_combout\,
	datac => \Add29~18_combout\,
	datad => \Equal27~4_combout\,
	combout => \Equal27~5_combout\);

-- Location: LCCOMB_X29_Y67_N2
\Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (\Add20~0_combout\ & (\Add30~0_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\)))) # (!\Add20~0_combout\ & (!\Add30~0_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => horizontalPosition(0),
	datac => \Add7~0_combout\,
	datad => \Add30~0_combout\,
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X34_Y70_N16
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!horizontalPosition(6) & ((horizontalPosition(4) & ((!horizontalPosition(5)))) # (!horizontalPosition(4) & (\Equal3~0_combout\ & horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => horizontalPosition(6),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X35_Y67_N20
\colorSetter~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~56_combout\ = (\LessThan10~0_combout\) # ((\LessThan7~0_combout\) # ((!\Add6~3_combout\ & \LessThan26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \LessThan10~0_combout\,
	datac => \LessThan7~0_combout\,
	datad => \LessThan26~0_combout\,
	combout => \colorSetter~56_combout\);

-- Location: LCCOMB_X35_Y67_N10
\colorSetter~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~57_combout\ = (\colorSetter~56_combout\) # ((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\colorSetter~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \colorSetter~56_combout\,
	datac => \colorSetter~2_combout\,
	datad => \Add6~6_combout\,
	combout => \colorSetter~57_combout\);

-- Location: LCCOMB_X30_Y67_N6
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (horizontalPosition(6)) # ((horizontalPosition(4) & ((horizontalPosition(5)))) # (!horizontalPosition(4) & ((horizontalPosition(3)) # (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => horizontalPosition(6),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X30_Y67_N0
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = (\LessThan14~0_combout\) # ((!horizontalPosition(4) & \LessThan39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => horizontalPosition(4),
	datad => \LessThan39~1_combout\,
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X35_Y67_N16
\color_blue[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~4_combout\ = (\colorSetter~57_combout\ & (((\colorSetter~60_combout\) # (!\colorSetter~26_combout\)))) # (!\colorSetter~57_combout\ & (!\colorSetter~29_combout\ & ((!\colorSetter~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~57_combout\,
	datab => \colorSetter~29_combout\,
	datac => \colorSetter~60_combout\,
	datad => \colorSetter~26_combout\,
	combout => \color_blue[0]~4_combout\);

-- Location: LCCOMB_X34_Y68_N26
\colorSetter~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~61_combout\ = ((!\Add7~6_combout\ & (!\Add7~8_combout\ & !\Add7~10_combout\))) # (!\Add7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~8_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~10_combout\,
	combout => \colorSetter~61_combout\);

-- Location: LCCOMB_X34_Y68_N10
\colorSetter~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~62_combout\ = (!\Add7~8_combout\ & (!\Add7~2_combout\ & (!\Add7~4_combout\ & !\Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~2_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~10_combout\,
	combout => \colorSetter~62_combout\);

-- Location: LCCOMB_X34_Y68_N0
\colorSetter~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~63_combout\ = (!\Add7~16_combout\ & ((\colorSetter~61_combout\) # ((\colorSetter~62_combout\ & !\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~62_combout\,
	datab => \Add7~0_combout\,
	datac => \colorSetter~61_combout\,
	datad => \Add7~16_combout\,
	combout => \colorSetter~63_combout\);

-- Location: LCCOMB_X35_Y70_N4
\colorSetter~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~64_combout\ = ((horizontalPosition(3) & ((horizontalPosition(2)) # (horizontalPosition(1))))) # (!horizontalPosition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datab => horizontalPosition(1),
	datac => horizontalPosition(4),
	datad => horizontalPosition(3),
	combout => \colorSetter~64_combout\);

-- Location: LCCOMB_X35_Y70_N0
\colorSetter~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~65_combout\ = (!\Add6~4_combout\ & (\colorSetter~64_combout\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \colorSetter~64_combout\,
	datac => horizontalPosition(6),
	datad => \Add6~5_combout\,
	combout => \colorSetter~65_combout\);

-- Location: LCCOMB_X34_Y70_N8
\LessThan36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan36~0_combout\ = (horizontalPosition(3) & (horizontalPosition(2) & ((horizontalPosition(1)) # (horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datac => horizontalPosition(3),
	datad => horizontalPosition(2),
	combout => \LessThan36~0_combout\);

-- Location: LCCOMB_X34_Y70_N6
\colorSetter~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~66_combout\ = (horizontalPosition(6) & ((horizontalPosition(4) & (!horizontalPosition(5))) # (!horizontalPosition(4) & (horizontalPosition(5) & !\LessThan36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => \LessThan36~0_combout\,
	combout => \colorSetter~66_combout\);

-- Location: LCCOMB_X34_Y69_N2
\colorSetter~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~67_combout\ = (!\LessThan50~0_combout\ & (\colorSetter~63_combout\ & ((\colorSetter~65_combout\) # (\colorSetter~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan50~0_combout\,
	datab => \colorSetter~63_combout\,
	datac => \colorSetter~65_combout\,
	datad => \colorSetter~66_combout\,
	combout => \colorSetter~67_combout\);

-- Location: LCCOMB_X34_Y69_N18
\colorSetter~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~68_combout\ = (\colorSetter~67_combout\) # ((!\LessThan55~0_combout\ & (\colorSetter~41_combout\ & \colorSetter~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan55~0_combout\,
	datab => \colorSetter~67_combout\,
	datac => \colorSetter~41_combout\,
	datad => \colorSetter~35_combout\,
	combout => \colorSetter~68_combout\);

-- Location: LCCOMB_X34_Y70_N10
\colorSetter~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~69_combout\ = (horizontalPosition(4) & (((\Equal3~0_combout\)))) # (!horizontalPosition(4) & (\LessThan35~0_combout\ & ((!\LessThan36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan35~0_combout\,
	datab => horizontalPosition(4),
	datac => \Equal3~0_combout\,
	datad => \LessThan36~0_combout\,
	combout => \colorSetter~69_combout\);

-- Location: LCCOMB_X34_Y66_N12
\colorSetter~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~70_combout\ = (\Add6~3_combout\ & (!\Add6~4_combout\ & (\LessThan48~1_combout\))) # (!\Add6~3_combout\ & (\Add6~4_combout\ & ((\colorSetter~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \Add6~4_combout\,
	datac => \LessThan48~1_combout\,
	datad => \colorSetter~69_combout\,
	combout => \colorSetter~70_combout\);

-- Location: LCCOMB_X34_Y69_N22
\colorSetter~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~71_combout\ = (\colorSetter~68_combout\) # ((!\LessThan50~0_combout\ & (!\LessThan57~2_combout\ & \colorSetter~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan50~0_combout\,
	datab => \colorSetter~68_combout\,
	datac => \LessThan57~2_combout\,
	datad => \colorSetter~70_combout\,
	combout => \colorSetter~71_combout\);

-- Location: LCCOMB_X34_Y69_N10
\color_blue[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~5_combout\ = (\color_blue[0]~4_combout\ & (((!\Add6~7_combout\) # (!\colorSetter~59_combout\)) # (!\colorSetter~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~71_combout\,
	datab => \colorSetter~59_combout\,
	datac => \Add6~7_combout\,
	datad => \color_blue[0]~4_combout\,
	combout => \color_blue[0]~5_combout\);

-- Location: LCCOMB_X35_Y67_N26
\colorSetter~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~72_combout\ = (((horizontalPosition(4) & \LessThan25~0_combout\)) # (!\Add6~7_combout\)) # (!\LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => \LessThan10~0_combout\,
	datac => \LessThan25~0_combout\,
	datad => \Add6~7_combout\,
	combout => \colorSetter~72_combout\);

-- Location: LCCOMB_X34_Y70_N4
\colorSetter~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~73_combout\ = (((horizontalPosition(0) & horizontalPosition(1))) # (!\Equal3~0_combout\)) # (!horizontalPosition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(4),
	datac => \Equal3~0_combout\,
	datad => horizontalPosition(1),
	combout => \colorSetter~73_combout\);

-- Location: LCCOMB_X34_Y66_N4
\colorSetter~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~74_combout\ = ((\Add6~7_combout\) # ((!\Add6~4_combout\ & \colorSetter~73_combout\))) # (!\Add6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \Add6~4_combout\,
	datac => \colorSetter~73_combout\,
	datad => \Add6~7_combout\,
	combout => \colorSetter~74_combout\);

-- Location: LCCOMB_X35_Y65_N0
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = horizontalPosition(8) $ (\Add6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(8),
	datad => \Add6~0_combout\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X34_Y66_N16
\colorSetter~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~75_combout\ = ((\Add6~8_combout\ & (\colorSetter~72_combout\)) # (!\Add6~8_combout\ & ((\colorSetter~74_combout\)))) # (!\Add6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \colorSetter~72_combout\,
	datac => \colorSetter~74_combout\,
	datad => \Add6~1_combout\,
	combout => \colorSetter~75_combout\);

-- Location: LCCOMB_X34_Y65_N6
\colorSetter~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~78_combout\ = (!\LessThan57~2_combout\ & (!\LessThan50~0_combout\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan57~2_combout\,
	datab => \Add6~6_combout\,
	datac => horizontalPosition(9),
	datad => \LessThan50~0_combout\,
	combout => \colorSetter~78_combout\);

-- Location: LCCOMB_X31_Y66_N0
\LessThan39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan39~4_combout\ = (horizontalPosition(4) & (((horizontalPosition(5))))) # (!horizontalPosition(4) & (((horizontalPosition(3) & \LessThan39~1_combout\)) # (!horizontalPosition(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(3),
	datac => horizontalPosition(5),
	datad => \LessThan39~1_combout\,
	combout => \LessThan39~4_combout\);

-- Location: LCCOMB_X34_Y66_N10
\colorSetter~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~79_combout\ = (!\LessThan39~4_combout\ & (!\LessThan7~0_combout\ & (\colorSetter~23_combout\ & \colorSetter~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan39~4_combout\,
	datab => \LessThan7~0_combout\,
	datac => \colorSetter~23_combout\,
	datad => \colorSetter~78_combout\,
	combout => \colorSetter~79_combout\);

-- Location: LCCOMB_X34_Y70_N18
\colorSetter~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~80_combout\ = (horizontalPosition(4) & (((horizontalPosition(6))))) # (!horizontalPosition(4) & ((horizontalPosition(5) & ((horizontalPosition(6)))) # (!horizontalPosition(5) & ((\LessThan35~0_combout\) # (!horizontalPosition(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan35~0_combout\,
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => horizontalPosition(6),
	combout => \colorSetter~80_combout\);

-- Location: LCCOMB_X34_Y67_N6
\colorSetter~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~81_combout\ = (horizontalPosition(5)) # ((horizontalPosition(6)) # (!horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datac => horizontalPosition(6),
	datad => horizontalPosition(4),
	combout => \colorSetter~81_combout\);

-- Location: LCCOMB_X34_Y67_N2
\colorSetter~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~82_combout\ = (\Add6~7_combout\ & ((\colorSetter~81_combout\) # ((horizontalPosition(2) & horizontalPosition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~81_combout\,
	datab => horizontalPosition(2),
	datac => horizontalPosition(3),
	datad => \Add6~7_combout\,
	combout => \colorSetter~82_combout\);

-- Location: LCCOMB_X35_Y65_N2
\colorSetter~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~83_combout\ = (!\LessThan14~1_combout\ & (\colorSetter~82_combout\ & (\colorSetter~78_combout\ & \Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => \colorSetter~82_combout\,
	datac => \colorSetter~78_combout\,
	datad => \Add6~8_combout\,
	combout => \colorSetter~83_combout\);

-- Location: LCCOMB_X34_Y65_N2
\color_blue[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~8_combout\ = (!\colorSetter~83_combout\ & (((\LessThan51~3_combout\) # (!\colorSetter~77_combout\)) # (!\colorSetter~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~80_combout\,
	datab => \LessThan51~3_combout\,
	datac => \colorSetter~77_combout\,
	datad => \colorSetter~83_combout\,
	combout => \color_blue[0]~8_combout\);

-- Location: LCCOMB_X34_Y66_N30
\LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan30~0_combout\ = (\Add6~3_combout\) # ((\Add6~4_combout\ & ((!horizontalPosition(2)) # (!\LessThan39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan39~2_combout\,
	datab => \Add6~4_combout\,
	datac => horizontalPosition(2),
	datad => \Add6~3_combout\,
	combout => \LessThan30~0_combout\);

-- Location: LCCOMB_X34_Y65_N4
\colorSetter~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~85_combout\ = (\Add7~10_combout\ & ((\Add7~6_combout\) # ((\LessThan51~2_combout\) # (\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \LessThan51~2_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~10_combout\,
	combout => \colorSetter~85_combout\);

-- Location: LCCOMB_X34_Y65_N22
\colorSetter~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~86_combout\ = ((!\Add7~12_combout\ & (!\Add7~14_combout\ & !\colorSetter~85_combout\))) # (!\Add7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \Add7~14_combout\,
	datac => \colorSetter~85_combout\,
	datad => \Add7~16_combout\,
	combout => \colorSetter~86_combout\);

-- Location: LCCOMB_X34_Y67_N0
\colorSetter~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~87_combout\ = (!\Add6~7_combout\ & (((\LessThan44~8_combout\ & !\LessThan39~1_combout\)) # (!\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan44~8_combout\,
	datab => \Add6~7_combout\,
	datac => \LessThan39~1_combout\,
	datad => \LessThan10~0_combout\,
	combout => \colorSetter~87_combout\);

-- Location: LCCOMB_X34_Y65_N20
\colorSetter~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~88_combout\ = (\colorSetter~86_combout\ & (\colorSetter~87_combout\ & (!\LessThan50~0_combout\ & \colorSetter~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~86_combout\,
	datab => \colorSetter~87_combout\,
	datac => \LessThan50~0_combout\,
	datad => \colorSetter~84_combout\,
	combout => \colorSetter~88_combout\);

-- Location: LCCOMB_X35_Y65_N10
\colorSetter~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~89_combout\ = (\colorSetter~58_combout\ & (\colorSetter~78_combout\ & (\LessThan42~9_combout\ & \colorSetter~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~58_combout\,
	datab => \colorSetter~78_combout\,
	datac => \LessThan42~9_combout\,
	datad => \colorSetter~2_combout\,
	combout => \colorSetter~89_combout\);

-- Location: LCCOMB_X34_Y65_N12
\color_blue[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~9_combout\ = (!\colorSetter~89_combout\ & (\color_blue[0]~8_combout\ & ((\LessThan30~0_combout\) # (!\colorSetter~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan30~0_combout\,
	datab => \colorSetter~88_combout\,
	datac => \colorSetter~89_combout\,
	datad => \color_blue[0]~8_combout\,
	combout => \color_blue[0]~9_combout\);

-- Location: LCCOMB_X35_Y70_N6
\vgaSync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgaSync~1_combout\ = (horizontalPosition(6) & (horizontalPosition(5) & ((horizontalPosition(4)) # (!\vgaSync~0_combout\)))) # (!horizontalPosition(6) & (!horizontalPosition(4) & (!horizontalPosition(5) & \vgaSync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => \vgaSync~0_combout\,
	combout => \vgaSync~1_combout\);

-- Location: LCCOMB_X34_Y68_N12
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!verticalPosition(6) & (!verticalPosition(2) & (!verticalPosition(4) & !verticalPosition(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(6),
	datab => verticalPosition(2),
	datac => verticalPosition(4),
	datad => verticalPosition(5),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X33_Y69_N20
\colorSetter~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~95_combout\ = (\colorSetter~10_combout\) # ((\colorSetter~47_combout\) # ((\colorSetter~22_combout\) # (\colorSetter~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~10_combout\,
	datab => \colorSetter~47_combout\,
	datac => \colorSetter~22_combout\,
	datad => \colorSetter~11_combout\,
	combout => \colorSetter~95_combout\);

-- Location: LCCOMB_X33_Y69_N18
\color_blue[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~14_combout\ = (\color_blue[0]~3_combout\ & (\color_red~2_combout\ & ((!\colorSetter~95_combout\) # (!\colorSetter~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~3_combout\,
	datab => \colorSetter~46_combout\,
	datac => \color_red~2_combout\,
	datad => \colorSetter~95_combout\,
	combout => \color_blue[0]~14_combout\);

-- Location: LCCOMB_X34_Y70_N24
\LessThan42~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan42~9_combout\ = (horizontalPosition(5) & (((!horizontalPosition(3) & !\LessThan42~8_combout\)) # (!horizontalPosition(4)))) # (!horizontalPosition(5) & (horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datac => horizontalPosition(3),
	datad => \LessThan42~8_combout\,
	combout => \LessThan42~9_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_HS~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\soundPin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \soundPin~output_o\);

-- Location: LCCOMB_X36_Y67_N26
\halfClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \halfClock~0_combout\ = !\halfClock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \halfClock~q\,
	combout => \halfClock~0_combout\);

-- Location: FF_X32_Y67_N31
halfClock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \halfClock~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \halfClock~q\);

-- Location: CLKCTRL_G11
\halfClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \halfClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \halfClock~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y67_N2
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add5~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X32_Y67_N4
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (horizontalPosition(1) & (!\Add5~1\)) # (!horizontalPosition(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X32_Y67_N6
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (horizontalPosition(2) & (\Add5~3\ $ (GND))) # (!horizontalPosition(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((horizontalPosition(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X32_Y67_N8
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (horizontalPosition(3) & (!\Add5~5\)) # (!horizontalPosition(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X32_Y67_N10
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (horizontalPosition(4) & (\Add5~7\ $ (GND))) # (!horizontalPosition(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((horizontalPosition(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X32_Y67_N12
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (horizontalPosition(5) & (!\Add5~9\)) # (!horizontalPosition(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!horizontalPosition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X34_Y67_N30
\horizontalPosition~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \horizontalPosition~1_combout\ = (!\Equal3~2_combout\ & \Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~2_combout\,
	datac => \Add5~10_combout\,
	combout => \horizontalPosition~1_combout\);

-- Location: FF_X34_Y67_N31
\horizontalPosition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \horizontalPosition~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(5));

-- Location: LCCOMB_X32_Y67_N14
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (horizontalPosition(6) & (\Add5~11\ $ (GND))) # (!horizontalPosition(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((horizontalPosition(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: FF_X32_Y67_N15
\horizontalPosition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(6));

-- Location: LCCOMB_X32_Y67_N16
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (horizontalPosition(7) & (!\Add5~13\)) # (!horizontalPosition(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!horizontalPosition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: FF_X32_Y67_N17
\horizontalPosition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \Add5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(7));

-- Location: FF_X32_Y67_N11
\horizontalPosition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \Add5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(4));

-- Location: LCCOMB_X36_Y68_N0
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!horizontalPosition(6) & (horizontalPosition(5) & (!horizontalPosition(7) & !horizontalPosition(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => horizontalPosition(5),
	datac => horizontalPosition(7),
	datad => horizontalPosition(4),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X36_Y67_N28
\horizontalPosition~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \horizontalPosition~3_combout\ = (\Add5~0_combout\ & !\Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~0_combout\,
	datad => \Equal3~2_combout\,
	combout => \horizontalPosition~3_combout\);

-- Location: FF_X30_Y67_N1
\horizontalPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	asdata => \horizontalPosition~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(0));

-- Location: FF_X32_Y67_N7
\horizontalPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \Add5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(2));

-- Location: FF_X32_Y67_N9
\horizontalPosition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(3));

-- Location: LCCOMB_X36_Y70_N28
\vgaSync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgaSync~0_combout\ = (!horizontalPosition(1) & (!horizontalPosition(0) & (!horizontalPosition(2) & !horizontalPosition(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datac => horizontalPosition(2),
	datad => horizontalPosition(3),
	combout => \vgaSync~0_combout\);

-- Location: LCCOMB_X36_Y68_N30
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (horizontalPosition(8) & (\Equal3~1_combout\ & (horizontalPosition(9) & \vgaSync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Equal3~1_combout\,
	datac => horizontalPosition(9),
	datad => \vgaSync~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X32_Y67_N18
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (horizontalPosition(8) & (\Add5~15\ $ (GND))) # (!horizontalPosition(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((horizontalPosition(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X32_Y67_N0
\horizontalPosition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \horizontalPosition~0_combout\ = (!\Equal3~2_combout\ & \Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datad => \Add5~16_combout\,
	combout => \horizontalPosition~0_combout\);

-- Location: FF_X32_Y67_N1
\horizontalPosition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \horizontalPosition~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(8));

-- Location: LCCOMB_X32_Y67_N20
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = \Add5~17\ $ (horizontalPosition(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => horizontalPosition(9),
	cin => \Add5~17\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X31_Y67_N30
\horizontalPosition~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \horizontalPosition~2_combout\ = (!\Equal3~2_combout\ & \Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~2_combout\,
	datad => \Add5~18_combout\,
	combout => \horizontalPosition~2_combout\);

-- Location: FF_X31_Y67_N31
\horizontalPosition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \horizontalPosition~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(9));

-- Location: LCCOMB_X35_Y70_N2
\vgaSync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgaSync~2_combout\ = (\vgaSync~1_combout\) # ((horizontalPosition(9)) # ((horizontalPosition(7)) # (horizontalPosition(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vgaSync~1_combout\,
	datab => horizontalPosition(9),
	datac => horizontalPosition(7),
	datad => horizontalPosition(8),
	combout => \vgaSync~2_combout\);

-- Location: FF_X35_Y70_N9
hsyncEnable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	asdata => \vgaSync~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsyncEnable~q\);

-- Location: DDIOOUTCELL_X38_Y73_N18
\VGA_HS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \hsyncEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_HS~reg0_q\);

-- Location: LCCOMB_X36_Y68_N2
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = verticalPosition(0) $ (VCC)
-- \Add4~1\ = CARRY(verticalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: FF_X33_Y68_N31
\verticalPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~0_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(0));

-- Location: LCCOMB_X36_Y68_N4
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (verticalPosition(1) & (!\Add4~1\)) # (!verticalPosition(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!verticalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X36_Y68_N6
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (verticalPosition(2) & (\Add4~3\ $ (GND))) # (!verticalPosition(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((verticalPosition(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: FF_X33_Y68_N1
\verticalPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~4_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(2));

-- Location: LCCOMB_X36_Y68_N10
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (verticalPosition(4) & (\Add4~7\ $ (GND))) # (!verticalPosition(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((verticalPosition(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X33_Y68_N9
\verticalPosition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~8_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(4));

-- Location: LCCOMB_X36_Y68_N12
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (verticalPosition(5) & (!\Add4~9\)) # (!verticalPosition(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!verticalPosition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X36_Y68_N14
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (verticalPosition(6) & (\Add4~11\ $ (GND))) # (!verticalPosition(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((verticalPosition(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: FF_X33_Y68_N7
\verticalPosition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~12_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(6));

-- Location: LCCOMB_X36_Y68_N16
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (verticalPosition(7) & (!\Add4~13\)) # (!verticalPosition(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!verticalPosition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X33_Y68_N19
\verticalPosition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~14_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(7));

-- Location: LCCOMB_X36_Y68_N18
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (verticalPosition(8) & (\Add4~15\ $ (GND))) # (!verticalPosition(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((verticalPosition(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X33_Y68_N15
\verticalPosition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~16_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(8));

-- Location: LCCOMB_X33_Y68_N26
\verticalPosition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \verticalPosition~0_combout\ = (\Add4~6_combout\ & !\Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datad => \Equal4~2_combout\,
	combout => \verticalPosition~0_combout\);

-- Location: FF_X33_Y68_N27
\verticalPosition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \verticalPosition~0_combout\,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(3));

-- Location: LCCOMB_X36_Y68_N20
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = verticalPosition(9) $ (\Add4~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(9),
	cin => \Add4~17\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X34_Y68_N28
\verticalPosition~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \verticalPosition~2_combout\ = (!\Equal4~2_combout\ & \Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datad => \Add4~18_combout\,
	combout => \verticalPosition~2_combout\);

-- Location: FF_X34_Y68_N29
\verticalPosition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \verticalPosition~2_combout\,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(9));

-- Location: LCCOMB_X34_Y68_N20
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (verticalPosition(0) & (!verticalPosition(1) & (verticalPosition(3) & verticalPosition(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datab => verticalPosition(1),
	datac => verticalPosition(3),
	datad => verticalPosition(9),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X34_Y68_N22
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~0_combout\ & (!verticalPosition(7) & (!verticalPosition(8) & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => verticalPosition(7),
	datac => verticalPosition(8),
	datad => \Equal4~1_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X33_Y68_N22
\verticalPosition~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \verticalPosition~1_combout\ = (\Add4~2_combout\ & !\Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~2_combout\,
	datad => \Equal4~2_combout\,
	combout => \verticalPosition~1_combout\);

-- Location: FF_X33_Y68_N23
\verticalPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \verticalPosition~1_combout\,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(1));

-- Location: LCCOMB_X34_Y68_N24
\vgaSync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgaSync~3_combout\ = (verticalPosition(3)) # ((verticalPosition(9)) # (verticalPosition(0) $ (!verticalPosition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datab => verticalPosition(1),
	datac => verticalPosition(3),
	datad => verticalPosition(9),
	combout => \vgaSync~3_combout\);

-- Location: LCCOMB_X34_Y68_N8
\vgaSync~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vgaSync~4_combout\ = ((\vgaSync~3_combout\) # ((verticalPosition(8)) # (verticalPosition(7)))) # (!\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \vgaSync~3_combout\,
	datac => verticalPosition(8),
	datad => verticalPosition(7),
	combout => \vgaSync~4_combout\);

-- Location: FF_X34_Y68_N9
vsyncEnable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \vgaSync~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsyncEnable~q\);

-- Location: DDIOOUTCELL_X54_Y73_N4
\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \vsyncEnable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

-- Location: LCCOMB_X32_Y67_N26
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (horizontalPosition(6)) # ((horizontalPosition(5)) # (horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(6),
	datac => horizontalPosition(5),
	datad => horizontalPosition(4),
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X32_Y67_N22
\colorSetter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~2_combout\ = (horizontalPosition(8) & (!\Add6~2_combout\ & !horizontalPosition(7))) # (!horizontalPosition(8) & (\Add6~2_combout\ & horizontalPosition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(8),
	datac => \Add6~2_combout\,
	datad => horizontalPosition(7),
	combout => \colorSetter~2_combout\);

-- Location: FF_X33_Y68_N17
\verticalPosition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	asdata => \Add4~10_combout\,
	sload => VCC,
	ena => \Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => verticalPosition(5));

-- Location: LCCOMB_X33_Y68_N4
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = verticalPosition(0) $ (VCC)
-- \Add7~1\ = CARRY(verticalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X33_Y68_N6
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (verticalPosition(1) & (!\Add7~1\)) # (!verticalPosition(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!verticalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X33_Y68_N8
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (verticalPosition(2) & (\Add7~3\ $ (GND))) # (!verticalPosition(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((verticalPosition(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X33_Y68_N10
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (verticalPosition(3) & (!\Add7~5\)) # (!verticalPosition(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!verticalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X33_Y68_N12
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (verticalPosition(4) & (\Add7~7\ $ (GND))) # (!verticalPosition(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((verticalPosition(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X33_Y68_N14
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (verticalPosition(5) & (\Add7~9\ & VCC)) # (!verticalPosition(5) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!verticalPosition(5) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X33_Y68_N16
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (verticalPosition(6) & ((GND) # (!\Add7~11\))) # (!verticalPosition(6) & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((verticalPosition(6)) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X33_Y68_N18
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (verticalPosition(7) & (\Add7~13\ & VCC)) # (!verticalPosition(7) & (!\Add7~13\))
-- \Add7~15\ = CARRY((!verticalPosition(7) & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => verticalPosition(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X33_Y68_N20
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = \Add7~15\ $ (verticalPosition(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => verticalPosition(8),
	cin => \Add7~15\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X31_Y67_N2
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (horizontalPosition(7) & ((horizontalPosition(4)) # ((horizontalPosition(6)) # (horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => horizontalPosition(4),
	datac => horizontalPosition(6),
	datad => horizontalPosition(5),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X31_Y67_N6
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = horizontalPosition(9) $ (((\Add6~0_combout\) # (horizontalPosition(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~0_combout\,
	datac => horizontalPosition(8),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X35_Y69_N28
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\LessThan51~0_combout\ & (!\Add7~16_combout\ & ((\colorSetter~2_combout\) # (\Add6~1_combout\)))) # (!\LessThan51~0_combout\ & ((\colorSetter~2_combout\) # ((\Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan51~0_combout\,
	datab => \colorSetter~2_combout\,
	datac => \Add7~16_combout\,
	datad => \Add6~1_combout\,
	combout => \VGA_G~0_combout\);

-- Location: LCCOMB_X34_Y66_N18
\LessThan39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan39~2_combout\ = (horizontalPosition(3) & !horizontalPosition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(3),
	datad => horizontalPosition(4),
	combout => \LessThan39~2_combout\);

-- Location: LCCOMB_X32_Y67_N28
\Add6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~5_combout\ = (horizontalPosition(5)) # (horizontalPosition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(5),
	datad => horizontalPosition(4),
	combout => \Add6~5_combout\);

-- Location: LCCOMB_X34_Y69_N14
\LessThan39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan39~0_combout\ = (!horizontalPosition(8) & ((horizontalPosition(7) & (!horizontalPosition(6) & !\Add6~5_combout\)) # (!horizontalPosition(7) & (horizontalPosition(6) & \Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => horizontalPosition(8),
	datac => horizontalPosition(6),
	datad => \Add6~5_combout\,
	combout => \LessThan39~0_combout\);

-- Location: LCCOMB_X30_Y67_N8
\LessThan39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan39~1_combout\ = (horizontalPosition(1) & (horizontalPosition(2) & horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datac => horizontalPosition(2),
	datad => horizontalPosition(0),
	combout => \LessThan39~1_combout\);

-- Location: LCCOMB_X34_Y69_N6
\LessThan39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan39~3_combout\ = (\LessThan39~0_combout\ & (((\LessThan39~2_combout\ & \LessThan39~1_combout\)) # (!\Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \LessThan39~2_combout\,
	datac => \LessThan39~0_combout\,
	datad => \LessThan39~1_combout\,
	combout => \LessThan39~3_combout\);

-- Location: LCCOMB_X33_Y68_N2
\LessThan57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan57~0_combout\ = (\Add7~6_combout\ & (\Add7~4_combout\ & ((\Add7~0_combout\) # (\Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \LessThan57~0_combout\);

-- Location: LCCOMB_X33_Y68_N30
\LessThan57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan57~1_combout\ = (\Add7~10_combout\ & ((\Add7~8_combout\) # (\LessThan57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~10_combout\,
	datad => \LessThan57~0_combout\,
	combout => \LessThan57~1_combout\);

-- Location: LCCOMB_X33_Y68_N24
\LessThan57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan57~2_combout\ = (\Add7~16_combout\ & ((\Add7~14_combout\) # ((\LessThan57~1_combout\) # (\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \LessThan57~1_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~16_combout\,
	combout => \LessThan57~2_combout\);

-- Location: LCCOMB_X35_Y69_N18
\LessThan44~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan44~8_combout\ = (horizontalPosition(4) & !horizontalPosition(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(4),
	datad => horizontalPosition(3),
	combout => \LessThan44~8_combout\);

-- Location: LCCOMB_X34_Y67_N8
\colorSetter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~4_combout\ = (horizontalPosition(9) & (!horizontalPosition(8) & (\Add6~2_combout\ $ (horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => horizontalPosition(8),
	datac => \Add6~2_combout\,
	datad => horizontalPosition(7),
	combout => \colorSetter~4_combout\);

-- Location: LCCOMB_X30_Y67_N4
\LessThan48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan48~0_combout\ = (horizontalPosition(1)) # ((horizontalPosition(2)) # (horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datac => horizontalPosition(2),
	datad => horizontalPosition(0),
	combout => \LessThan48~0_combout\);

-- Location: LCCOMB_X35_Y69_N22
\colorSetter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~7_combout\ = (\colorSetter~4_combout\ & (((\LessThan48~0_combout\) # (!\LessThan44~8_combout\)) # (!\Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \LessThan44~8_combout\,
	datac => \colorSetter~4_combout\,
	datad => \LessThan48~0_combout\,
	combout => \colorSetter~7_combout\);

-- Location: LCCOMB_X34_Y65_N14
\LessThan34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan34~0_combout\ = (!\Add7~10_combout\ & (!\Add7~8_combout\ & (!\Add7~12_combout\ & !\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add7~8_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~14_combout\,
	combout => \LessThan34~0_combout\);

-- Location: LCCOMB_X35_Y69_N24
\colorSetter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~8_combout\ = (\Add7~16_combout\ & (\colorSetter~7_combout\ & ((\LessThan47~0_combout\) # (!\LessThan34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~0_combout\,
	datab => \Add7~16_combout\,
	datac => \colorSetter~7_combout\,
	datad => \LessThan34~0_combout\,
	combout => \colorSetter~8_combout\);

-- Location: LCCOMB_X35_Y69_N14
\colorSetter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~9_combout\ = (!\Add6~3_combout\ & (!\LessThan39~3_combout\ & (!\LessThan57~2_combout\ & \colorSetter~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \LessThan39~3_combout\,
	datac => \LessThan57~2_combout\,
	datad => \colorSetter~8_combout\,
	combout => \colorSetter~9_combout\);

-- Location: LCCOMB_X30_Y66_N30
\horizontalPosition[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \horizontalPosition[1]~feeder_combout\ = \Add5~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add5~2_combout\,
	combout => \horizontalPosition[1]~feeder_combout\);

-- Location: FF_X30_Y66_N31
\horizontalPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~q\,
	d => \horizontalPosition[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => horizontalPosition(1));

-- Location: LCCOMB_X33_Y67_N4
\Add30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~2_combout\ = (horizontalPosition(2) & (!\Add30~1\)) # (!horizontalPosition(2) & (\Add30~1\ & VCC))
-- \Add30~3\ = CARRY((horizontalPosition(2) & !\Add30~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(2),
	datad => VCC,
	cin => \Add30~1\,
	combout => \Add30~2_combout\,
	cout => \Add30~3\);

-- Location: LCCOMB_X33_Y67_N6
\Add30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~4_combout\ = (horizontalPosition(3) & (!\Add30~3\ & VCC)) # (!horizontalPosition(3) & (\Add30~3\ $ (GND)))
-- \Add30~5\ = CARRY((!horizontalPosition(3) & !\Add30~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add30~3\,
	combout => \Add30~4_combout\,
	cout => \Add30~5\);

-- Location: LCCOMB_X33_Y67_N8
\Add30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~6_combout\ = (horizontalPosition(4) & (\Add30~5\ & VCC)) # (!horizontalPosition(4) & (!\Add30~5\))
-- \Add30~7\ = CARRY((!horizontalPosition(4) & !\Add30~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add30~5\,
	combout => \Add30~6_combout\,
	cout => \Add30~7\);

-- Location: LCCOMB_X33_Y67_N12
\Add30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~10_combout\ = (\Add30~9\ & ((\Add6~5_combout\ $ (horizontalPosition(6))))) # (!\Add30~9\ & (\Add6~5_combout\ $ ((!horizontalPosition(6)))))
-- \Add30~11\ = CARRY((!\Add30~9\ & (\Add6~5_combout\ $ (!horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add30~9\,
	combout => \Add30~10_combout\,
	cout => \Add30~11\);

-- Location: LCCOMB_X33_Y67_N14
\Add30~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~12_combout\ = (\Add30~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (GND)))) # (!\Add30~11\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)) # (GND)))
-- \Add30~13\ = CARRY((horizontalPosition(7) $ (!\Add6~2_combout\)) # (!\Add30~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add30~11\,
	combout => \Add30~12_combout\,
	cout => \Add30~13\);

-- Location: LCCOMB_X33_Y67_N16
\Add30~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~14_combout\ = (\Add30~13\ & ((\Add6~0_combout\ $ (horizontalPosition(8))))) # (!\Add30~13\ & (\Add6~0_combout\ $ ((!horizontalPosition(8)))))
-- \Add30~15\ = CARRY((!\Add30~13\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add30~13\,
	combout => \Add30~14_combout\,
	cout => \Add30~15\);

-- Location: LCCOMB_X33_Y67_N18
\Add30~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~16_combout\ = (\Add30~15\ & ((\Add6~6_combout\ $ (horizontalPosition(9))))) # (!\Add30~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (VCC))))
-- \Add30~17\ = CARRY((!\Add30~15\ & (\Add6~6_combout\ $ (horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add30~15\,
	combout => \Add30~16_combout\,
	cout => \Add30~17\);

-- Location: LCCOMB_X33_Y67_N20
\Add30~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add30~18_combout\ = \Add30~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add30~17\,
	combout => \Add30~18_combout\);

-- Location: LCCOMB_X32_Y68_N6
\Add20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~0_combout\ = \Add7~2_combout\ $ (VCC)
-- \Add20~1\ = CARRY(\Add7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datad => VCC,
	combout => \Add20~0_combout\,
	cout => \Add20~1\);

-- Location: LCCOMB_X32_Y68_N8
\Add20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~2_combout\ = (\Add7~4_combout\ & (!\Add20~1\)) # (!\Add7~4_combout\ & ((\Add20~1\) # (GND)))
-- \Add20~3\ = CARRY((!\Add20~1\) # (!\Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \Add20~1\,
	combout => \Add20~2_combout\,
	cout => \Add20~3\);

-- Location: LCCOMB_X32_Y68_N10
\Add20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~4_combout\ = (\Add7~6_combout\ & (\Add20~3\ $ (GND))) # (!\Add7~6_combout\ & (!\Add20~3\ & VCC))
-- \Add20~5\ = CARRY((\Add7~6_combout\ & !\Add20~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \Add20~3\,
	combout => \Add20~4_combout\,
	cout => \Add20~5\);

-- Location: LCCOMB_X32_Y68_N12
\Add20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~6_combout\ = (\Add7~8_combout\ & (\Add20~5\ & VCC)) # (!\Add7~8_combout\ & (!\Add20~5\))
-- \Add20~7\ = CARRY((!\Add7~8_combout\ & !\Add20~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \Add20~5\,
	combout => \Add20~6_combout\,
	cout => \Add20~7\);

-- Location: LCCOMB_X32_Y68_N14
\Add20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~8_combout\ = (\Add7~10_combout\ & ((GND) # (!\Add20~7\))) # (!\Add7~10_combout\ & (\Add20~7\ $ (GND)))
-- \Add20~9\ = CARRY((\Add7~10_combout\) # (!\Add20~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add20~7\,
	combout => \Add20~8_combout\,
	cout => \Add20~9\);

-- Location: LCCOMB_X33_Y67_N24
\Equal28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~2_combout\ = (\Add30~8_combout\ & (\Add20~8_combout\ & (\Add30~6_combout\ $ (!\Add20~6_combout\)))) # (!\Add30~8_combout\ & (!\Add20~8_combout\ & (\Add30~6_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add30~8_combout\,
	datab => \Add20~8_combout\,
	datac => \Add30~6_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal28~2_combout\);

-- Location: LCCOMB_X32_Y68_N16
\Add20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~10_combout\ = (\Add7~12_combout\ & (\Add20~9\ & VCC)) # (!\Add7~12_combout\ & (!\Add20~9\))
-- \Add20~11\ = CARRY((!\Add7~12_combout\ & !\Add20~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datad => VCC,
	cin => \Add20~9\,
	combout => \Add20~10_combout\,
	cout => \Add20~11\);

-- Location: LCCOMB_X32_Y68_N18
\Add20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~12_combout\ = (\Add7~14_combout\ & ((GND) # (!\Add20~11\))) # (!\Add7~14_combout\ & (\Add20~11\ $ (GND)))
-- \Add20~13\ = CARRY((\Add7~14_combout\) # (!\Add20~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datad => VCC,
	cin => \Add20~11\,
	combout => \Add20~12_combout\,
	cout => \Add20~13\);

-- Location: LCCOMB_X33_Y67_N22
\Equal28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~3_combout\ = (\Add20~10_combout\ & (\Add30~10_combout\ & (\Add30~12_combout\ $ (!\Add20~12_combout\)))) # (!\Add20~10_combout\ & (!\Add30~10_combout\ & (\Add30~12_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add30~12_combout\,
	datac => \Add30~10_combout\,
	datad => \Add20~12_combout\,
	combout => \Equal28~3_combout\);

-- Location: LCCOMB_X33_Y67_N28
\Equal28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~1_combout\ = (\Add20~2_combout\ & (\Add30~2_combout\ & (\Add20~4_combout\ $ (!\Add30~4_combout\)))) # (!\Add20~2_combout\ & (!\Add30~2_combout\ & (\Add20~4_combout\ $ (!\Add30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~2_combout\,
	datab => \Add30~2_combout\,
	datac => \Add20~4_combout\,
	datad => \Add30~4_combout\,
	combout => \Equal28~1_combout\);

-- Location: LCCOMB_X33_Y67_N26
\Equal28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~4_combout\ = (\Equal28~0_combout\ & (\Equal28~2_combout\ & (\Equal28~3_combout\ & \Equal28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~0_combout\,
	datab => \Equal28~2_combout\,
	datac => \Equal28~3_combout\,
	datad => \Equal28~1_combout\,
	combout => \Equal28~4_combout\);

-- Location: LCCOMB_X32_Y68_N20
\Add20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~14_combout\ = (\Add7~16_combout\ & (!\Add20~13\)) # (!\Add7~16_combout\ & ((\Add20~13\) # (GND)))
-- \Add20~15\ = CARRY((!\Add20~13\) # (!\Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add20~13\,
	combout => \Add20~14_combout\,
	cout => \Add20~15\);

-- Location: LCCOMB_X33_Y67_N30
\Equal28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~5_combout\ = (\Add20~16_combout\ & (!\Add30~16_combout\ & (\Add30~14_combout\ $ (!\Add20~14_combout\)))) # (!\Add20~16_combout\ & (\Add30~16_combout\ & (\Add30~14_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add30~14_combout\,
	datac => \Add30~16_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal28~5_combout\);

-- Location: LCCOMB_X33_Y67_N0
\Equal28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~6_combout\ = (\Equal28~4_combout\ & (\Equal28~5_combout\ & (\Add20~16_combout\ $ (!\Add30~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add30~18_combout\,
	datac => \Equal28~4_combout\,
	datad => \Equal28~5_combout\,
	combout => \Equal28~6_combout\);

-- Location: LCCOMB_X36_Y69_N16
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (horizontalPosition(1) & (\Add20~0_combout\ & (\Add7~0_combout\ $ (horizontalPosition(0))))) # (!horizontalPosition(1) & (!\Add20~0_combout\ & (\Add7~0_combout\ $ (horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => \Add7~0_combout\,
	datac => \Add20~0_combout\,
	datad => horizontalPosition(0),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X36_Y67_N0
\Add29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~1_cout\ = CARRY(!horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cout => \Add29~1_cout\);

-- Location: LCCOMB_X36_Y67_N6
\Add29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~6_combout\ = (horizontalPosition(4) & (\Add29~5\ & VCC)) # (!horizontalPosition(4) & (!\Add29~5\))
-- \Add29~7\ = CARRY((!horizontalPosition(4) & !\Add29~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add29~5\,
	combout => \Add29~6_combout\,
	cout => \Add29~7\);

-- Location: LCCOMB_X36_Y67_N8
\Add29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~8_combout\ = (\Add29~7\ & ((horizontalPosition(4) $ (horizontalPosition(5))))) # (!\Add29~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (VCC))))
-- \Add29~9\ = CARRY((!\Add29~7\ & (horizontalPosition(4) $ (horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add29~7\,
	combout => \Add29~8_combout\,
	cout => \Add29~9\);

-- Location: LCCOMB_X36_Y67_N10
\Add29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add29~10_combout\ = (\Add29~9\ & ((\Add6~5_combout\ $ (horizontalPosition(6))))) # (!\Add29~9\ & (\Add6~5_combout\ $ ((!horizontalPosition(6)))))
-- \Add29~11\ = CARRY((!\Add29~9\ & (\Add6~5_combout\ $ (!horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add29~9\,
	combout => \Add29~10_combout\,
	cout => \Add29~11\);

-- Location: LCCOMB_X36_Y69_N30
\Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~2_combout\ = (\Add20~12_combout\ & (\Add29~12_combout\ & (\Add20~10_combout\ $ (!\Add29~10_combout\)))) # (!\Add20~12_combout\ & (!\Add29~12_combout\ & (\Add20~10_combout\ $ (!\Add29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add20~10_combout\,
	datac => \Add29~10_combout\,
	datad => \Add29~12_combout\,
	combout => \Equal27~2_combout\);

-- Location: LCCOMB_X36_Y69_N28
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (\Add20~6_combout\ & (\Add29~6_combout\ & (\Add20~8_combout\ $ (!\Add29~8_combout\)))) # (!\Add20~6_combout\ & (!\Add29~6_combout\ & (\Add20~8_combout\ $ (!\Add29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add20~8_combout\,
	datac => \Add29~8_combout\,
	datad => \Add29~6_combout\,
	combout => \Equal27~1_combout\);

-- Location: LCCOMB_X36_Y69_N14
\Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~3_combout\ = (\Equal27~0_combout\ & (\Equal19~0_combout\ & (\Equal27~2_combout\ & \Equal27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~0_combout\,
	datab => \Equal19~0_combout\,
	datac => \Equal27~2_combout\,
	datad => \Equal27~1_combout\,
	combout => \Equal27~3_combout\);

-- Location: LCCOMB_X35_Y70_N10
\Add28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~1_cout\ = CARRY(!horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	cout => \Add28~1_cout\);

-- Location: LCCOMB_X35_Y70_N16
\Add28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~6_combout\ = (horizontalPosition(3) & ((\Add28~5\) # (GND))) # (!horizontalPosition(3) & (!\Add28~5\))
-- \Add28~7\ = CARRY((horizontalPosition(3)) # (!\Add28~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add28~5\,
	combout => \Add28~6_combout\,
	cout => \Add28~7\);

-- Location: LCCOMB_X35_Y70_N18
\Add28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~8_combout\ = (horizontalPosition(4) & ((GND) # (!\Add28~7\))) # (!horizontalPosition(4) & (\Add28~7\ $ (GND)))
-- \Add28~9\ = CARRY((horizontalPosition(4)) # (!\Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add28~7\,
	combout => \Add28~8_combout\,
	cout => \Add28~9\);

-- Location: LCCOMB_X35_Y70_N20
\Add28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~10_combout\ = (\Add28~9\ & (horizontalPosition(4) $ ((!horizontalPosition(5))))) # (!\Add28~9\ & ((horizontalPosition(4) $ (horizontalPosition(5))) # (GND)))
-- \Add28~11\ = CARRY((horizontalPosition(4) $ (!horizontalPosition(5))) # (!\Add28~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add28~9\,
	combout => \Add28~10_combout\,
	cout => \Add28~11\);

-- Location: LCCOMB_X36_Y69_N2
\Equal26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~2_combout\ = (\Add20~6_combout\ & (\Add28~8_combout\ & (\Add20~8_combout\ $ (!\Add28~10_combout\)))) # (!\Add20~6_combout\ & (!\Add28~8_combout\ & (\Add20~8_combout\ $ (!\Add28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add20~8_combout\,
	datac => \Add28~10_combout\,
	datad => \Add28~8_combout\,
	combout => \Equal26~2_combout\);

-- Location: LCCOMB_X36_Y69_N4
\Equal26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~1_combout\ = (\Add28~4_combout\ & (\Add20~2_combout\ & (\Add28~6_combout\ $ (!\Add20~4_combout\)))) # (!\Add28~4_combout\ & (!\Add20~2_combout\ & (\Add28~6_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add28~4_combout\,
	datab => \Add28~6_combout\,
	datac => \Add20~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal26~1_combout\);

-- Location: LCCOMB_X35_Y70_N22
\Add28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~12_combout\ = (\Add28~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (VCC)))) # (!\Add28~11\ & ((\Add6~5_combout\ $ (horizontalPosition(6))) # (GND)))
-- \Add28~13\ = CARRY((\Add6~5_combout\ $ (horizontalPosition(6))) # (!\Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add28~11\,
	combout => \Add28~12_combout\,
	cout => \Add28~13\);

-- Location: LCCOMB_X35_Y70_N24
\Add28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~14_combout\ = (\Add28~13\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)))) # (!\Add28~13\ & (horizontalPosition(7) $ ((\Add6~2_combout\))))
-- \Add28~15\ = CARRY((!\Add28~13\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add28~13\,
	combout => \Add28~14_combout\,
	cout => \Add28~15\);

-- Location: LCCOMB_X36_Y69_N0
\Equal26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~3_combout\ = (\Add20~12_combout\ & (\Add28~14_combout\ & (\Add20~10_combout\ $ (!\Add28~12_combout\)))) # (!\Add20~12_combout\ & (!\Add28~14_combout\ & (\Add20~10_combout\ $ (!\Add28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add20~10_combout\,
	datac => \Add28~14_combout\,
	datad => \Add28~12_combout\,
	combout => \Equal26~3_combout\);

-- Location: LCCOMB_X36_Y69_N26
\Equal26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~4_combout\ = (\Equal26~0_combout\ & (\Equal26~2_combout\ & (\Equal26~1_combout\ & \Equal26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal26~0_combout\,
	datab => \Equal26~2_combout\,
	datac => \Equal26~1_combout\,
	datad => \Equal26~3_combout\,
	combout => \Equal26~4_combout\);

-- Location: LCCOMB_X32_Y67_N24
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (horizontalPosition(8)) # ((\Add6~2_combout\ & horizontalPosition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(8),
	datad => horizontalPosition(7),
	combout => \Add6~6_combout\);

-- Location: LCCOMB_X35_Y70_N26
\Add28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~16_combout\ = (\Add28~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (VCC)))) # (!\Add28~15\ & ((\Add6~0_combout\ $ (horizontalPosition(8))) # (GND)))
-- \Add28~17\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add28~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add28~15\,
	combout => \Add28~16_combout\,
	cout => \Add28~17\);

-- Location: LCCOMB_X35_Y70_N28
\Add28~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~18_combout\ = (\Add28~17\ & (horizontalPosition(9) $ ((!\Add6~6_combout\)))) # (!\Add28~17\ & ((horizontalPosition(9) $ (\Add6~6_combout\)) # (GND)))
-- \Add28~19\ = CARRY((horizontalPosition(9) $ (!\Add6~6_combout\)) # (!\Add28~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add28~17\,
	combout => \Add28~18_combout\,
	cout => \Add28~19\);

-- Location: LCCOMB_X35_Y70_N30
\Add28~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add28~20_combout\ = !\Add28~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add28~19\,
	combout => \Add28~20_combout\);

-- Location: LCCOMB_X36_Y69_N20
\Equal26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~5_combout\ = \Add28~16_combout\ $ (\Add20~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add28~16_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal26~5_combout\);

-- Location: LCCOMB_X36_Y69_N18
\Equal26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~6_combout\ = (!\Equal26~5_combout\ & ((\Add20~16_combout\ & (\Add28~20_combout\ & !\Add28~18_combout\)) # (!\Add20~16_combout\ & (!\Add28~20_combout\ & \Add28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add28~20_combout\,
	datac => \Add28~18_combout\,
	datad => \Equal26~5_combout\,
	combout => \Equal26~6_combout\);

-- Location: LCCOMB_X36_Y69_N8
\colorSetter~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~54_combout\ = (\Equal27~5_combout\ & (!\Equal27~3_combout\ & ((!\Equal26~6_combout\) # (!\Equal26~4_combout\)))) # (!\Equal27~5_combout\ & (((!\Equal26~6_combout\) # (!\Equal26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~5_combout\,
	datab => \Equal27~3_combout\,
	datac => \Equal26~4_combout\,
	datad => \Equal26~6_combout\,
	combout => \colorSetter~54_combout\);

-- Location: LCCOMB_X31_Y70_N0
\Add27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~1_cout\ = CARRY(!horizontalPosition(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cout => \Add27~1_cout\);

-- Location: LCCOMB_X31_Y70_N4
\Add27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~4_combout\ = (\Add27~3\ & ((horizontalPosition(4) $ (horizontalPosition(5))))) # (!\Add27~3\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (VCC))))
-- \Add27~5\ = CARRY((!\Add27~3\ & (horizontalPosition(4) $ (horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add27~3\,
	combout => \Add27~4_combout\,
	cout => \Add27~5\);

-- Location: LCCOMB_X31_Y70_N8
\Add27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~8_combout\ = (\Add27~7\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (GND)))) # (!\Add27~7\ & ((\Add6~2_combout\ $ (!horizontalPosition(7))) # (GND)))
-- \Add27~9\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add27~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add27~7\,
	combout => \Add27~8_combout\,
	cout => \Add27~9\);

-- Location: LCCOMB_X31_Y70_N10
\Add27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~10_combout\ = (\Add27~9\ & ((\Add6~0_combout\ $ (horizontalPosition(8))))) # (!\Add27~9\ & (\Add6~0_combout\ $ ((!horizontalPosition(8)))))
-- \Add27~11\ = CARRY((!\Add27~9\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add27~9\,
	combout => \Add27~10_combout\,
	cout => \Add27~11\);

-- Location: LCCOMB_X31_Y70_N14
\Add27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add27~14_combout\ = \Add27~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add27~13\,
	combout => \Add27~14_combout\);

-- Location: LCCOMB_X32_Y68_N22
\Add20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add20~16_combout\ = !\Add20~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add20~15\,
	combout => \Add20~16_combout\);

-- Location: LCCOMB_X31_Y70_N22
\Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~4_combout\ = (\Add27~12_combout\ & (!\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add27~10_combout\)))) # (!\Add27~12_combout\ & (\Add20~16_combout\ & (\Add20~14_combout\ $ (!\Add27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add27~12_combout\,
	datab => \Add20~14_combout\,
	datac => \Add20~16_combout\,
	datad => \Add27~10_combout\,
	combout => \Equal25~4_combout\);

-- Location: LCCOMB_X32_Y70_N30
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (horizontalPosition(0) & (!\Add7~0_combout\ & (horizontalPosition(1) $ (\Add20~0_combout\)))) # (!horizontalPosition(0) & (\Add7~0_combout\ & (horizontalPosition(1) $ (\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(1),
	datac => \Add7~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X31_Y70_N20
\Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~1_combout\ = (\Add27~2_combout\ & (\Add20~6_combout\ & (\Add27~4_combout\ $ (!\Add20~8_combout\)))) # (!\Add27~2_combout\ & (!\Add20~6_combout\ & (\Add27~4_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add27~2_combout\,
	datab => \Add27~4_combout\,
	datac => \Add20~8_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal25~1_combout\);

-- Location: LCCOMB_X31_Y70_N24
\Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~2_combout\ = (\Add27~6_combout\ & (\Add20~10_combout\ & (\Add27~8_combout\ $ (!\Add20~12_combout\)))) # (!\Add27~6_combout\ & (!\Add20~10_combout\ & (\Add27~8_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add27~6_combout\,
	datab => \Add27~8_combout\,
	datac => \Add20~10_combout\,
	datad => \Add20~12_combout\,
	combout => \Equal25~2_combout\);

-- Location: LCCOMB_X31_Y70_N16
\Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~3_combout\ = (\Equal25~0_combout\ & (\Equal21~0_combout\ & (\Equal25~1_combout\ & \Equal25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~0_combout\,
	datab => \Equal21~0_combout\,
	datac => \Equal25~1_combout\,
	datad => \Equal25~2_combout\,
	combout => \Equal25~3_combout\);

-- Location: LCCOMB_X31_Y70_N30
\Equal25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~5_combout\ = (\Equal25~4_combout\ & (\Equal25~3_combout\ & (\Add20~16_combout\ $ (!\Add27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add27~14_combout\,
	datac => \Equal25~4_combout\,
	datad => \Equal25~3_combout\,
	combout => \Equal25~5_combout\);

-- Location: LCCOMB_X30_Y67_N10
\Add24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~1_cout\ = CARRY(!horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	cout => \Add24~1_cout\);

-- Location: LCCOMB_X30_Y67_N12
\Add24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~2_combout\ = (horizontalPosition(1) & (!\Add24~1_cout\)) # (!horizontalPosition(1) & (\Add24~1_cout\ & VCC))
-- \Add24~3\ = CARRY((horizontalPosition(1) & !\Add24~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add24~1_cout\,
	combout => \Add24~2_combout\,
	cout => \Add24~3\);

-- Location: LCCOMB_X30_Y67_N20
\Add24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~10_combout\ = (\Add24~9\ & (horizontalPosition(4) $ ((!horizontalPosition(5))))) # (!\Add24~9\ & ((horizontalPosition(4) $ (horizontalPosition(5))) # (GND)))
-- \Add24~11\ = CARRY((horizontalPosition(4) $ (!horizontalPosition(5))) # (!\Add24~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add24~9\,
	combout => \Add24~10_combout\,
	cout => \Add24~11\);

-- Location: LCCOMB_X30_Y67_N24
\Add24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~14_combout\ = (\Add24~13\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)))) # (!\Add24~13\ & (horizontalPosition(7) $ ((\Add6~2_combout\))))
-- \Add24~15\ = CARRY((!\Add24~13\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add24~13\,
	combout => \Add24~14_combout\,
	cout => \Add24~15\);

-- Location: LCCOMB_X30_Y67_N26
\Add24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add24~16_combout\ = (\Add24~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (VCC)))) # (!\Add24~15\ & ((\Add6~0_combout\ $ (horizontalPosition(8))) # (GND)))
-- \Add24~17\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add24~15\,
	combout => \Add24~16_combout\,
	cout => \Add24~17\);

-- Location: LCCOMB_X30_Y69_N22
\Equal22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~5_combout\ = (\Add20~14_combout\ & (\Add24~16_combout\ & (\Add20~16_combout\ $ (\Add24~18_combout\)))) # (!\Add20~14_combout\ & (!\Add24~16_combout\ & (\Add20~16_combout\ $ (\Add24~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~14_combout\,
	datab => \Add24~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Add24~18_combout\,
	combout => \Equal22~5_combout\);

-- Location: LCCOMB_X30_Y69_N8
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (\Add20~0_combout\ & (\Add24~2_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\)))) # (!\Add20~0_combout\ & (!\Add24~2_combout\ & (horizontalPosition(0) $ (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~0_combout\,
	datab => horizontalPosition(0),
	datac => \Add7~0_combout\,
	datad => \Add24~2_combout\,
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X30_Y67_N2
\Equal22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~2_combout\ = (\Add24~8_combout\ & (\Add20~6_combout\ & (\Add24~10_combout\ $ (!\Add20~8_combout\)))) # (!\Add24~8_combout\ & (!\Add20~6_combout\ & (\Add24~10_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~8_combout\,
	datab => \Add24~10_combout\,
	datac => \Add20~8_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal22~2_combout\);

-- Location: LCCOMB_X30_Y69_N18
\Equal22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~3_combout\ = (\Add24~12_combout\ & (\Add20~10_combout\ & (\Add24~14_combout\ $ (!\Add20~12_combout\)))) # (!\Add24~12_combout\ & (!\Add20~10_combout\ & (\Add24~14_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~12_combout\,
	datab => \Add24~14_combout\,
	datac => \Add20~12_combout\,
	datad => \Add20~10_combout\,
	combout => \Equal22~3_combout\);

-- Location: LCCOMB_X30_Y69_N24
\Equal22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~4_combout\ = (\Equal22~1_combout\ & (\Equal22~0_combout\ & (\Equal22~2_combout\ & \Equal22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal22~1_combout\,
	datab => \Equal22~0_combout\,
	datac => \Equal22~2_combout\,
	datad => \Equal22~3_combout\,
	combout => \Equal22~4_combout\);

-- Location: LCCOMB_X30_Y69_N14
\Equal22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~6_combout\ = (\Equal22~5_combout\ & (\Equal22~4_combout\ & (\Add24~20_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add24~20_combout\,
	datab => \Add20~16_combout\,
	datac => \Equal22~5_combout\,
	datad => \Equal22~4_combout\,
	combout => \Equal22~6_combout\);

-- Location: LCCOMB_X31_Y65_N8
\Add26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~4_combout\ = (horizontalPosition(3) & (\Add26~3\ $ (GND))) # (!horizontalPosition(3) & ((GND) # (!\Add26~3\)))
-- \Add26~5\ = CARRY((!\Add26~3\) # (!horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cin => \Add26~3\,
	combout => \Add26~4_combout\,
	cout => \Add26~5\);

-- Location: LCCOMB_X31_Y65_N12
\Add26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~8_combout\ = (\Add26~7\ & ((horizontalPosition(5) $ (horizontalPosition(4))))) # (!\Add26~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (VCC))))
-- \Add26~9\ = CARRY((!\Add26~7\ & (horizontalPosition(5) $ (horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add26~7\,
	combout => \Add26~8_combout\,
	cout => \Add26~9\);

-- Location: LCCOMB_X31_Y65_N14
\Add26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~10_combout\ = (\Add26~9\ & ((\Add6~5_combout\ $ (horizontalPosition(6))))) # (!\Add26~9\ & (\Add6~5_combout\ $ ((!horizontalPosition(6)))))
-- \Add26~11\ = CARRY((!\Add26~9\ & (\Add6~5_combout\ $ (!horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add26~9\,
	combout => \Add26~10_combout\,
	cout => \Add26~11\);

-- Location: LCCOMB_X31_Y65_N16
\Add26~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~12_combout\ = (\Add26~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (GND)))) # (!\Add26~11\ & ((horizontalPosition(7) $ (!\Add6~2_combout\)) # (GND)))
-- \Add26~13\ = CARRY((horizontalPosition(7) $ (!\Add6~2_combout\)) # (!\Add26~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add26~11\,
	combout => \Add26~12_combout\,
	cout => \Add26~13\);

-- Location: LCCOMB_X31_Y65_N18
\Add26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add26~14_combout\ = (\Add26~13\ & ((\Add6~0_combout\ $ (horizontalPosition(8))))) # (!\Add26~13\ & (\Add6~0_combout\ $ ((!horizontalPosition(8)))))
-- \Add26~15\ = CARRY((!\Add26~13\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add26~13\,
	combout => \Add26~14_combout\,
	cout => \Add26~15\);

-- Location: LCCOMB_X31_Y65_N28
\Equal24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~5_combout\ = (\Add20~14_combout\ & (\Add26~14_combout\ & (\Add20~16_combout\ $ (\Add26~16_combout\)))) # (!\Add20~14_combout\ & (!\Add26~14_combout\ & (\Add20~16_combout\ $ (\Add26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~14_combout\,
	datab => \Add26~14_combout\,
	datac => \Add20~16_combout\,
	datad => \Add26~16_combout\,
	combout => \Equal24~5_combout\);

-- Location: LCCOMB_X31_Y65_N0
\Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~1_combout\ = (\Add26~2_combout\ & (\Add20~2_combout\ & (\Add26~4_combout\ $ (!\Add20~4_combout\)))) # (!\Add26~2_combout\ & (!\Add20~2_combout\ & (\Add26~4_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add26~2_combout\,
	datab => \Add26~4_combout\,
	datac => \Add20~2_combout\,
	datad => \Add20~4_combout\,
	combout => \Equal24~1_combout\);

-- Location: LCCOMB_X31_Y65_N30
\Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~2_combout\ = (\Add26~6_combout\ & (\Add20~6_combout\ & (\Add20~8_combout\ $ (!\Add26~8_combout\)))) # (!\Add26~6_combout\ & (!\Add20~6_combout\ & (\Add20~8_combout\ $ (!\Add26~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add26~6_combout\,
	datab => \Add20~6_combout\,
	datac => \Add20~8_combout\,
	datad => \Add26~8_combout\,
	combout => \Equal24~2_combout\);

-- Location: LCCOMB_X31_Y65_N24
\Equal24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~3_combout\ = (\Add20~12_combout\ & (\Add26~12_combout\ & (\Add20~10_combout\ $ (!\Add26~10_combout\)))) # (!\Add20~12_combout\ & (!\Add26~12_combout\ & (\Add20~10_combout\ $ (!\Add26~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~12_combout\,
	datab => \Add20~10_combout\,
	datac => \Add26~10_combout\,
	datad => \Add26~12_combout\,
	combout => \Equal24~3_combout\);

-- Location: LCCOMB_X31_Y65_N2
\Equal24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~4_combout\ = (\Equal24~0_combout\ & (\Equal24~1_combout\ & (\Equal24~2_combout\ & \Equal24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~0_combout\,
	datab => \Equal24~1_combout\,
	datac => \Equal24~2_combout\,
	datad => \Equal24~3_combout\,
	combout => \Equal24~4_combout\);

-- Location: LCCOMB_X30_Y69_N6
\Equal24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~6_combout\ = (\Equal24~5_combout\ & (\Equal24~4_combout\ & (\Add26~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add26~18_combout\,
	datab => \Add20~16_combout\,
	datac => \Equal24~5_combout\,
	datad => \Equal24~4_combout\,
	combout => \Equal24~6_combout\);

-- Location: LCCOMB_X30_Y69_N10
\colorSetter~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~53_combout\ = (!\Equal23~5_combout\ & (!\Equal25~5_combout\ & (!\Equal22~6_combout\ & !\Equal24~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~5_combout\,
	datab => \Equal25~5_combout\,
	datac => \Equal22~6_combout\,
	datad => \Equal24~6_combout\,
	combout => \colorSetter~53_combout\);

-- Location: LCCOMB_X33_Y69_N10
\colorSetter~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~55_combout\ = (\colorSetter~52_combout\ & (!\Equal28~6_combout\ & (\colorSetter~54_combout\ & \colorSetter~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~52_combout\,
	datab => \Equal28~6_combout\,
	datac => \colorSetter~54_combout\,
	datad => \colorSetter~53_combout\,
	combout => \colorSetter~55_combout\);

-- Location: LCCOMB_X33_Y69_N14
\color_red~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_red~5_combout\ = (!\colorSetter~6_combout\ & (\colorSetter~9_combout\ & !\colorSetter~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~6_combout\,
	datac => \colorSetter~9_combout\,
	datad => \colorSetter~55_combout\,
	combout => \color_red~5_combout\);

-- Location: LCCOMB_X35_Y68_N28
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = \Add20~2_combout\ $ (horizontalPosition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add20~2_combout\,
	datad => horizontalPosition(2),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X34_Y64_N18
\Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~2_combout\ = (horizontalPosition(4) & (!\Add18~1\)) # (!horizontalPosition(4) & (\Add18~1\ & VCC))
-- \Add18~3\ = CARRY((horizontalPosition(4) & !\Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add18~1\,
	combout => \Add18~2_combout\,
	cout => \Add18~3\);

-- Location: LCCOMB_X34_Y64_N10
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (\Add18~0_combout\ & (\Add20~4_combout\ & (\Add18~2_combout\ $ (!\Add20~6_combout\)))) # (!\Add18~0_combout\ & (!\Add20~4_combout\ & (\Add18~2_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~0_combout\,
	datab => \Add18~2_combout\,
	datac => \Add20~4_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X34_Y64_N20
\Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~4_combout\ = (\Add18~3\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add18~3\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add18~5\ = CARRY((!\Add18~3\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add18~3\,
	combout => \Add18~4_combout\,
	cout => \Add18~5\);

-- Location: LCCOMB_X34_Y64_N4
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (\Add18~6_combout\ & (\Add20~10_combout\ & (\Add20~8_combout\ $ (!\Add18~4_combout\)))) # (!\Add18~6_combout\ & (!\Add20~10_combout\ & (\Add20~8_combout\ $ (!\Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~6_combout\,
	datab => \Add20~8_combout\,
	datac => \Add20~10_combout\,
	datad => \Add18~4_combout\,
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X34_Y68_N18
\Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~2_combout\ = (\Equal13~0_combout\ & (\Equal9~0_combout\ & (\Equal17~0_combout\ & \Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal17~0_combout\,
	datad => \Equal17~1_combout\,
	combout => \Equal17~2_combout\);

-- Location: LCCOMB_X34_Y64_N24
\Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add18~8_combout\ = (\Add18~7\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add18~7\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC))))
-- \Add18~9\ = CARRY((!\Add18~7\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add18~7\,
	combout => \Add18~8_combout\,
	cout => \Add18~9\);

-- Location: LCCOMB_X34_Y64_N14
\Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~3_combout\ = (\Add18~10_combout\ & (\Add20~14_combout\ & (\Add18~8_combout\ $ (!\Add20~12_combout\)))) # (!\Add18~10_combout\ & (!\Add20~14_combout\ & (\Add18~8_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~10_combout\,
	datab => \Add18~8_combout\,
	datac => \Add20~12_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal17~3_combout\);

-- Location: LCCOMB_X34_Y64_N0
\Equal17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~4_combout\ = (\Equal17~3_combout\ & ((\Add18~14_combout\ & (\Add20~16_combout\ & !\Add18~12_combout\)) # (!\Add18~14_combout\ & (!\Add20~16_combout\ & \Add18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add18~14_combout\,
	datab => \Equal17~3_combout\,
	datac => \Add20~16_combout\,
	datad => \Add18~12_combout\,
	combout => \Equal17~4_combout\);

-- Location: LCCOMB_X33_Y70_N4
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (horizontalPosition(0) & (horizontalPosition(1) $ (VCC))) # (!horizontalPosition(0) & (horizontalPosition(1) & VCC))
-- \Add17~1\ = CARRY((horizontalPosition(0) & horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add17~0_combout\,
	cout => \Add17~1\);

-- Location: LCCOMB_X33_Y70_N8
\Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~4_combout\ = (horizontalPosition(3) & (\Add17~3\ $ (GND))) # (!horizontalPosition(3) & (!\Add17~3\ & VCC))
-- \Add17~5\ = CARRY((horizontalPosition(3) & !\Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add17~3\,
	combout => \Add17~4_combout\,
	cout => \Add17~5\);

-- Location: LCCOMB_X33_Y70_N14
\Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~10_combout\ = (\Add17~9\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))))) # (!\Add17~9\ & (\Add6~5_combout\ $ ((horizontalPosition(6)))))
-- \Add17~11\ = CARRY((!\Add17~9\ & (\Add6~5_combout\ $ (horizontalPosition(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add17~9\,
	combout => \Add17~10_combout\,
	cout => \Add17~11\);

-- Location: LCCOMB_X33_Y70_N16
\Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~12_combout\ = (\Add17~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add17~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC))))
-- \Add17~13\ = CARRY((!\Add17~11\ & (\Add6~2_combout\ $ (horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add17~11\,
	combout => \Add17~12_combout\,
	cout => \Add17~13\);

-- Location: LCCOMB_X33_Y70_N18
\Add17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~14_combout\ = (\Add17~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\)))) # (!\Add17~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add17~15\ = CARRY((horizontalPosition(8) $ (\Add6~0_combout\)) # (!\Add17~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add17~13\,
	combout => \Add17~14_combout\,
	cout => \Add17~15\);

-- Location: LCCOMB_X33_Y70_N22
\Add17~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~18_combout\ = \Add17~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add17~17\,
	combout => \Add17~18_combout\);

-- Location: LCCOMB_X33_Y70_N26
\Equal16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~5_combout\ = (\Add17~16_combout\ & (!\Add20~16_combout\ & (\Add17~14_combout\ $ (!\Add20~14_combout\)))) # (!\Add17~16_combout\ & (\Add20~16_combout\ & (\Add17~14_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~16_combout\,
	datab => \Add17~14_combout\,
	datac => \Add20~14_combout\,
	datad => \Add20~16_combout\,
	combout => \Equal16~5_combout\);

-- Location: LCCOMB_X33_Y70_N28
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (\Add17~2_combout\ & (\Add20~2_combout\ & (\Add17~4_combout\ $ (!\Add20~4_combout\)))) # (!\Add17~2_combout\ & (!\Add20~2_combout\ & (\Add17~4_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~2_combout\,
	datab => \Add17~4_combout\,
	datac => \Add20~4_combout\,
	datad => \Add20~2_combout\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X33_Y70_N0
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (\Add7~0_combout\ & (!horizontalPosition(0) & (\Add17~0_combout\ $ (!\Add20~0_combout\)))) # (!\Add7~0_combout\ & (horizontalPosition(0) & (\Add17~0_combout\ $ (!\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add17~0_combout\,
	datac => \Add20~0_combout\,
	datad => horizontalPosition(0),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X33_Y70_N24
\Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~3_combout\ = (\Add20~10_combout\ & (\Add17~10_combout\ & (\Add20~12_combout\ $ (!\Add17~12_combout\)))) # (!\Add20~10_combout\ & (!\Add17~10_combout\ & (\Add20~12_combout\ $ (!\Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add20~12_combout\,
	datac => \Add17~10_combout\,
	datad => \Add17~12_combout\,
	combout => \Equal16~3_combout\);

-- Location: LCCOMB_X34_Y70_N0
\Equal16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~4_combout\ = (\Equal16~2_combout\ & (\Equal16~1_combout\ & (\Equal16~0_combout\ & \Equal16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~2_combout\,
	datab => \Equal16~1_combout\,
	datac => \Equal16~0_combout\,
	datad => \Equal16~3_combout\,
	combout => \Equal16~4_combout\);

-- Location: LCCOMB_X34_Y70_N20
\Equal16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~6_combout\ = (\Equal16~5_combout\ & (\Equal16~4_combout\ & (\Add20~16_combout\ $ (!\Add17~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add17~18_combout\,
	datac => \Equal16~5_combout\,
	datad => \Equal16~4_combout\,
	combout => \Equal16~6_combout\);

-- Location: LCCOMB_X33_Y69_N28
\colorSetter~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~50_combout\ = (!\Equal15~5_combout\ & (!\Equal16~6_combout\ & ((!\Equal17~4_combout\) # (!\Equal17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~5_combout\,
	datab => \Equal17~2_combout\,
	datac => \Equal17~4_combout\,
	datad => \Equal16~6_combout\,
	combout => \colorSetter~50_combout\);

-- Location: LCCOMB_X33_Y66_N8
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (horizontalPosition(1) & (\Add15~1\ & VCC)) # (!horizontalPosition(1) & (!\Add15~1\))
-- \Add15~3\ = CARRY((!horizontalPosition(1) & !\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X33_Y66_N14
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (horizontalPosition(4) & (\Add15~7\ $ (GND))) # (!horizontalPosition(4) & ((GND) # (!\Add15~7\)))
-- \Add15~9\ = CARRY((!\Add15~7\) # (!horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X33_Y66_N16
\Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (\Add15~9\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add15~9\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add15~11\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X33_Y66_N18
\Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = (\Add15~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add15~11\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add15~13\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X33_Y66_N20
\Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = (\Add15~13\ & (\Add6~2_combout\ $ ((!horizontalPosition(7))))) # (!\Add15~13\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add15~15\ = CARRY((\Add6~2_combout\ $ (!horizontalPosition(7))) # (!\Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add15~13\,
	combout => \Add15~14_combout\,
	cout => \Add15~15\);

-- Location: LCCOMB_X33_Y66_N22
\Add15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~16_combout\ = (\Add15~15\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))))) # (!\Add15~15\ & (\Add6~0_combout\ $ (horizontalPosition(8) $ (GND))))
-- \Add15~17\ = CARRY((!\Add15~15\ & (\Add6~0_combout\ $ (!horizontalPosition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add15~15\,
	combout => \Add15~16_combout\,
	cout => \Add15~17\);

-- Location: LCCOMB_X33_Y66_N24
\Add15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~18_combout\ = (\Add15~17\ & ((horizontalPosition(9) $ (!\Add6~6_combout\)))) # (!\Add15~17\ & (horizontalPosition(9) $ ((\Add6~6_combout\))))
-- \Add15~19\ = CARRY((!\Add15~17\ & (horizontalPosition(9) $ (\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add15~17\,
	combout => \Add15~18_combout\,
	cout => \Add15~19\);

-- Location: LCCOMB_X33_Y66_N26
\Add15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~20_combout\ = !\Add15~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add15~19\,
	combout => \Add15~20_combout\);

-- Location: LCCOMB_X32_Y66_N22
\Equal14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~5_combout\ = (\Add20~16_combout\ & (!\Add15~18_combout\ & (\Add15~16_combout\ $ (!\Add20~14_combout\)))) # (!\Add20~16_combout\ & (\Add15~18_combout\ & (\Add15~16_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add15~16_combout\,
	datac => \Add15~18_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal14~5_combout\);

-- Location: LCCOMB_X33_Y66_N0
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (\Add15~0_combout\ & (\Add7~0_combout\ & (\Add15~2_combout\ $ (!\Add20~0_combout\)))) # (!\Add15~0_combout\ & (!\Add7~0_combout\ & (\Add15~2_combout\ $ (!\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~0_combout\,
	datab => \Add15~2_combout\,
	datac => \Add7~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X33_Y66_N4
\Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (\Add20~6_combout\ & (\Add15~8_combout\ & (\Add15~10_combout\ $ (!\Add20~8_combout\)))) # (!\Add20~6_combout\ & (!\Add15~8_combout\ & (\Add15~10_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add15~10_combout\,
	datac => \Add15~8_combout\,
	datad => \Add20~8_combout\,
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X33_Y66_N28
\Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (\Add20~10_combout\ & (\Add15~12_combout\ & (\Add20~12_combout\ $ (!\Add15~14_combout\)))) # (!\Add20~10_combout\ & (!\Add15~12_combout\ & (\Add20~12_combout\ $ (!\Add15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add15~12_combout\,
	datac => \Add20~12_combout\,
	datad => \Add15~14_combout\,
	combout => \Equal14~3_combout\);

-- Location: LCCOMB_X32_Y66_N10
\Equal14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~4_combout\ = (\Equal14~1_combout\ & (\Equal14~0_combout\ & (\Equal14~2_combout\ & \Equal14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~1_combout\,
	datab => \Equal14~0_combout\,
	datac => \Equal14~2_combout\,
	datad => \Equal14~3_combout\,
	combout => \Equal14~4_combout\);

-- Location: LCCOMB_X32_Y66_N2
\Equal14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~6_combout\ = (\Equal14~5_combout\ & (\Equal14~4_combout\ & (\Add20~16_combout\ $ (!\Add15~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add15~20_combout\,
	datac => \Equal14~5_combout\,
	datad => \Equal14~4_combout\,
	combout => \Equal14~6_combout\);

-- Location: LCCOMB_X31_Y67_N8
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (horizontalPosition(0) & (horizontalPosition(1) $ (VCC))) # (!horizontalPosition(0) & (horizontalPosition(1) & VCC))
-- \Add13~1\ = CARRY((horizontalPosition(0) & horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X31_Y67_N14
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (horizontalPosition(4) & (!\Add13~5\)) # (!horizontalPosition(4) & (\Add13~5\ & VCC))
-- \Add13~7\ = CARRY((horizontalPosition(4) & !\Add13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X31_Y67_N16
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (\Add13~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add13~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add13~9\ = CARRY((!\Add13~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X31_Y67_N20
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (\Add13~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add13~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC))))
-- \Add13~13\ = CARRY((!\Add13~11\ & (\Add6~2_combout\ $ (horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X31_Y67_N28
\Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (\Add13~14_combout\ & (\Add20~14_combout\ & (\Add13~16_combout\ $ (\Add20~16_combout\)))) # (!\Add13~14_combout\ & (!\Add20~14_combout\ & (\Add13~16_combout\ $ (\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datab => \Add13~16_combout\,
	datac => \Add20~16_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X31_Y67_N4
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (horizontalPosition(0) & (!\Add7~0_combout\ & (\Add13~0_combout\ $ (!\Add20~0_combout\)))) # (!horizontalPosition(0) & (\Add7~0_combout\ & (\Add13~0_combout\ $ (!\Add20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => \Add13~0_combout\,
	datac => \Add7~0_combout\,
	datad => \Add20~0_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X32_Y66_N4
\Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (\Add13~10_combout\ & (\Add20~10_combout\ & (\Add13~12_combout\ $ (!\Add20~12_combout\)))) # (!\Add13~10_combout\ & (!\Add20~10_combout\ & (\Add13~12_combout\ $ (!\Add20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datab => \Add13~12_combout\,
	datac => \Add20~10_combout\,
	datad => \Add20~12_combout\,
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X31_Y67_N0
\Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\Add20~6_combout\ & (\Add13~6_combout\ & (\Add13~8_combout\ $ (!\Add20~8_combout\)))) # (!\Add20~6_combout\ & (!\Add13~6_combout\ & (\Add13~8_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~6_combout\,
	datab => \Add13~8_combout\,
	datac => \Add13~6_combout\,
	datad => \Add20~8_combout\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X32_Y66_N12
\Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\Equal12~1_combout\ & (\Equal12~0_combout\ & (\Equal12~3_combout\ & \Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal12~3_combout\,
	datad => \Equal12~2_combout\,
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X32_Y66_N8
\Equal12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (\Equal12~5_combout\ & (\Equal12~4_combout\ & (\Add13~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Equal12~5_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal12~4_combout\,
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X36_Y66_N4
\Add14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~1_cout\ = CARRY(horizontalPosition(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(3),
	datad => VCC,
	cout => \Add14~1_cout\);

-- Location: LCCOMB_X36_Y66_N8
\Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = (\Add14~3\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add14~3\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add14~5\ = CARRY((!\Add14~3\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X36_Y66_N10
\Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (\Add14~5\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add14~5\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add14~7\ = CARRY((!\Add14~5\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X36_Y66_N12
\Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (\Add14~7\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add14~7\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC))))
-- \Add14~9\ = CARRY((!\Add14~7\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X36_Y66_N14
\Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (\Add14~9\ & (\Add6~0_combout\ $ ((horizontalPosition(8))))) # (!\Add14~9\ & ((\Add6~0_combout\ $ (!horizontalPosition(8))) # (GND)))
-- \Add14~11\ = CARRY((\Add6~0_combout\ $ (horizontalPosition(8))) # (!\Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => horizontalPosition(8),
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X36_Y66_N16
\Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = (\Add14~11\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND)))) # (!\Add14~11\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))) # (GND)))
-- \Add14~13\ = CARRY((\Add6~6_combout\ $ (!horizontalPosition(9))) # (!\Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add14~11\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: LCCOMB_X36_Y66_N18
\Add14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = \Add14~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add14~13\,
	combout => \Add14~14_combout\);

-- Location: LCCOMB_X36_Y66_N28
\Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (\Add20~16_combout\ & (!\Add14~12_combout\ & (\Add14~10_combout\ $ (!\Add20~14_combout\)))) # (!\Add20~16_combout\ & (\Add14~12_combout\ & (\Add14~10_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add14~12_combout\,
	datac => \Add14~10_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X32_Y66_N18
\Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (\Add20~10_combout\ & (\Add14~6_combout\ & (\Add20~12_combout\ $ (!\Add14~8_combout\)))) # (!\Add20~10_combout\ & (!\Add14~6_combout\ & (\Add20~12_combout\ $ (!\Add14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add20~12_combout\,
	datac => \Add14~6_combout\,
	datad => \Add14~8_combout\,
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X36_Y66_N20
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\Add14~2_combout\ & (\Add20~6_combout\ & (\Add14~4_combout\ $ (!\Add20~8_combout\)))) # (!\Add14~2_combout\ & (!\Add20~6_combout\ & (\Add14~4_combout\ $ (!\Add20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~2_combout\,
	datab => \Add14~4_combout\,
	datac => \Add20~8_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X31_Y66_N12
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (horizontalPosition(3) & (!\Add20~4_combout\ & (\Add20~2_combout\ $ (!horizontalPosition(2))))) # (!horizontalPosition(3) & (\Add20~4_combout\ & (\Add20~2_combout\ $ (!horizontalPosition(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => \Add20~2_combout\,
	datac => horizontalPosition(2),
	datad => \Add20~4_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X32_Y66_N20
\Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~0_combout\ & (\Equal13~3_combout\ & (\Equal13~2_combout\ & \Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~3_combout\,
	datac => \Equal13~2_combout\,
	datad => \Equal13~1_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X32_Y66_N0
\Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (\Equal13~5_combout\ & (\Equal13~4_combout\ & (\Add20~16_combout\ $ (!\Add14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~16_combout\,
	datab => \Add14~14_combout\,
	datac => \Equal13~5_combout\,
	datad => \Equal13~4_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X32_Y66_N26
\colorSetter~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~49_combout\ = (!\Equal11~5_combout\ & (!\Equal14~6_combout\ & (!\Equal12~6_combout\ & !\Equal13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~5_combout\,
	datab => \Equal14~6_combout\,
	datac => \Equal12~6_combout\,
	datad => \Equal13~6_combout\,
	combout => \colorSetter~49_combout\);

-- Location: LCCOMB_X31_Y69_N16
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Add9~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\)))) # (!\Add9~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add9~15\ = CARRY((horizontalPosition(8) $ (\Add6~0_combout\)) # (!\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X31_Y69_N20
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = \Add9~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add9~17\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X31_Y69_N24
\Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = (\Add9~16_combout\ & (!\Add20~16_combout\ & (\Add9~14_combout\ $ (!\Add20~14_combout\)))) # (!\Add9~16_combout\ & (\Add20~16_combout\ & (\Add9~14_combout\ $ (!\Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \Add9~14_combout\,
	datac => \Add20~16_combout\,
	datad => \Add20~14_combout\,
	combout => \Equal8~5_combout\);

-- Location: LCCOMB_X32_Y69_N14
\Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = (\Equal8~4_combout\ & (\Equal8~5_combout\ & (\Add9~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~4_combout\,
	datab => \Add9~18_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal8~5_combout\,
	combout => \Equal8~6_combout\);

-- Location: LCCOMB_X29_Y70_N12
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X29_Y70_N16
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (horizontalPosition(3) & ((GND) # (!\Add8~3\))) # (!horizontalPosition(3) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((horizontalPosition(3)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X29_Y70_N18
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (horizontalPosition(4) & (!\Add8~5\)) # (!horizontalPosition(4) & (\Add8~5\ & VCC))
-- \Add8~7\ = CARRY((horizontalPosition(4) & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X29_Y70_N20
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add8~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add8~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add8~9\ = CARRY((!\Add8~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X29_Y70_N22
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add8~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add8~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add8~11\ = CARRY((!\Add8~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X29_Y70_N24
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add8~11\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add8~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC))))
-- \Add8~13\ = CARRY((!\Add8~11\ & (horizontalPosition(7) $ (\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X29_Y70_N30
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = \Add8~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~17\,
	combout => \Add8~18_combout\);

-- Location: LCCOMB_X32_Y69_N20
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Add20~8_combout\ & (\Add8~8_combout\ & (\Add8~6_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add8~8_combout\ & (\Add8~6_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add8~6_combout\,
	datac => \Add8~8_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X32_Y69_N8
\Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = (\Add20~10_combout\ & (\Add8~10_combout\ & (\Add20~12_combout\ $ (!\Add8~12_combout\)))) # (!\Add20~10_combout\ & (!\Add8~10_combout\ & (\Add20~12_combout\ $ (!\Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add8~10_combout\,
	datac => \Add20~12_combout\,
	datad => \Add8~12_combout\,
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X29_Y70_N6
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Add8~2_combout\ & (\Add20~2_combout\ & (\Add8~4_combout\ $ (!\Add20~4_combout\)))) # (!\Add8~2_combout\ & (!\Add20~2_combout\ & (\Add8~4_combout\ $ (!\Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add8~4_combout\,
	datac => \Add20~2_combout\,
	datad => \Add20~4_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X32_Y69_N12
\Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~0_combout\ & (\Equal7~2_combout\ & (\Equal7~3_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal7~2_combout\,
	datac => \Equal7~3_combout\,
	datad => \Equal7~1_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X32_Y69_N4
\Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = (\Equal7~5_combout\ & (\Equal7~4_combout\ & (\Add8~18_combout\ $ (!\Add20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~5_combout\,
	datab => \Add8~18_combout\,
	datac => \Add20~16_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~6_combout\);

-- Location: LCCOMB_X33_Y65_N8
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add11~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X33_Y65_N10
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (horizontalPosition(1) & (\Add11~1\ & VCC)) # (!horizontalPosition(1) & (!\Add11~1\))
-- \Add11~3\ = CARRY((!horizontalPosition(1) & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X33_Y65_N16
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (horizontalPosition(4) & (\Add11~7\ $ (GND))) # (!horizontalPosition(4) & ((GND) # (!\Add11~7\)))
-- \Add11~9\ = CARRY((!\Add11~7\) # (!horizontalPosition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X33_Y65_N18
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add11~9\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add11~9\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add11~11\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X33_Y65_N20
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add11~11\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add11~11\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add11~13\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X33_Y65_N22
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\Add11~13\ & (horizontalPosition(7) $ ((!\Add6~2_combout\)))) # (!\Add11~13\ & ((horizontalPosition(7) $ (\Add6~2_combout\)) # (GND)))
-- \Add11~15\ = CARRY((horizontalPosition(7) $ (!\Add6~2_combout\)) # (!\Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X33_Y65_N28
\Add11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = !\Add11~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add11~19\,
	combout => \Add11~20_combout\);

-- Location: LCCOMB_X32_Y69_N28
\Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (\Add20~8_combout\ & (\Add11~10_combout\ & (\Add11~8_combout\ $ (!\Add20~6_combout\)))) # (!\Add20~8_combout\ & (!\Add11~10_combout\ & (\Add11~8_combout\ $ (!\Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~8_combout\,
	datab => \Add11~8_combout\,
	datac => \Add11~10_combout\,
	datad => \Add20~6_combout\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X33_Y65_N30
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (\Add7~0_combout\ & (\Add11~0_combout\ & (\Add20~0_combout\ $ (!\Add11~2_combout\)))) # (!\Add7~0_combout\ & (!\Add11~0_combout\ & (\Add20~0_combout\ $ (!\Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add11~0_combout\,
	datac => \Add20~0_combout\,
	datad => \Add11~2_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X32_Y69_N2
\Equal10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Add20~10_combout\ & (\Add11~12_combout\ & (\Add20~12_combout\ $ (!\Add11~14_combout\)))) # (!\Add20~10_combout\ & (!\Add11~12_combout\ & (\Add20~12_combout\ $ (!\Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add20~10_combout\,
	datab => \Add11~12_combout\,
	datac => \Add20~12_combout\,
	datad => \Add11~14_combout\,
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X32_Y69_N24
\Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (\Equal10~1_combout\ & (\Equal10~2_combout\ & (\Equal10~0_combout\ & \Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal10~2_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal10~3_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X32_Y69_N0
\Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (\Equal10~5_combout\ & (\Equal10~4_combout\ & (\Add20~16_combout\ $ (!\Add11~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~5_combout\,
	datab => \Add20~16_combout\,
	datac => \Add11~20_combout\,
	datad => \Equal10~4_combout\,
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X32_Y69_N18
\colorSetter~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~48_combout\ = (!\Equal9~6_combout\ & (!\Equal8~6_combout\ & (!\Equal7~6_combout\ & !\Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \Equal8~6_combout\,
	datac => \Equal7~6_combout\,
	datad => \Equal10~6_combout\,
	combout => \colorSetter~48_combout\);

-- Location: LCCOMB_X33_Y69_N16
\colorSetter~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~51_combout\ = (\colorSetter~50_combout\ & (\colorSetter~49_combout\ & \colorSetter~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colorSetter~50_combout\,
	datac => \colorSetter~49_combout\,
	datad => \colorSetter~48_combout\,
	combout => \colorSetter~51_combout\);

-- Location: LCCOMB_X29_Y68_N10
\Add32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~1_cout\ = CARRY((\Add7~2_combout\ & \Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~0_combout\,
	datad => VCC,
	cout => \Add32~1_cout\);

-- Location: LCCOMB_X29_Y68_N12
\Add32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~2_combout\ = (\Add7~4_combout\ & (!\Add32~1_cout\)) # (!\Add7~4_combout\ & ((\Add32~1_cout\) # (GND)))
-- \Add32~3\ = CARRY((!\Add32~1_cout\) # (!\Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~4_combout\,
	datad => VCC,
	cin => \Add32~1_cout\,
	combout => \Add32~2_combout\,
	cout => \Add32~3\);

-- Location: LCCOMB_X29_Y68_N14
\Add32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~4_combout\ = (\Add7~6_combout\ & (\Add32~3\ $ (GND))) # (!\Add7~6_combout\ & (!\Add32~3\ & VCC))
-- \Add32~5\ = CARRY((\Add7~6_combout\ & !\Add32~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \Add32~3\,
	combout => \Add32~4_combout\,
	cout => \Add32~5\);

-- Location: LCCOMB_X29_Y68_N16
\Add32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~6_combout\ = (\Add7~8_combout\ & (!\Add32~5\)) # (!\Add7~8_combout\ & ((\Add32~5\) # (GND)))
-- \Add32~7\ = CARRY((!\Add32~5\) # (!\Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \Add32~5\,
	combout => \Add32~6_combout\,
	cout => \Add32~7\);

-- Location: LCCOMB_X30_Y68_N10
\Add42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~0_combout\ = (horizontalPosition(1) & (horizontalPosition(0) $ (VCC))) # (!horizontalPosition(1) & (horizontalPosition(0) & VCC))
-- \Add42~1\ = CARRY((horizontalPosition(1) & horizontalPosition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add42~0_combout\,
	cout => \Add42~1\);

-- Location: LCCOMB_X30_Y68_N16
\Add42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~6_combout\ = (horizontalPosition(4) & ((\Add42~5\) # (GND))) # (!horizontalPosition(4) & (!\Add42~5\))
-- \Add42~7\ = CARRY((horizontalPosition(4)) # (!\Add42~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add42~5\,
	combout => \Add42~6_combout\,
	cout => \Add42~7\);

-- Location: LCCOMB_X30_Y68_N18
\Add42~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add42~8_combout\ = (\Add42~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add42~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add42~9\ = CARRY((!\Add42~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add42~7\,
	combout => \Add42~8_combout\,
	cout => \Add42~9\);

-- Location: LCCOMB_X29_Y68_N6
\Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~2_combout\ = (\Add32~8_combout\ & (\Add42~8_combout\ & (\Add32~6_combout\ $ (!\Add42~6_combout\)))) # (!\Add32~8_combout\ & (!\Add42~8_combout\ & (\Add32~6_combout\ $ (!\Add42~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~8_combout\,
	datab => \Add32~6_combout\,
	datac => \Add42~6_combout\,
	datad => \Add42~8_combout\,
	combout => \Equal39~2_combout\);

-- Location: LCCOMB_X29_Y68_N18
\Add32~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~8_combout\ = (\Add7~10_combout\ & (\Add32~7\ $ (GND))) # (!\Add7~10_combout\ & (!\Add32~7\ & VCC))
-- \Add32~9\ = CARRY((\Add7~10_combout\ & !\Add32~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \Add32~7\,
	combout => \Add32~8_combout\,
	cout => \Add32~9\);

-- Location: LCCOMB_X29_Y68_N20
\Add32~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~10_combout\ = (\Add7~12_combout\ & (!\Add32~9\)) # (!\Add7~12_combout\ & ((\Add32~9\) # (GND)))
-- \Add32~11\ = CARRY((!\Add32~9\) # (!\Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add32~9\,
	combout => \Add32~10_combout\,
	cout => \Add32~11\);

-- Location: LCCOMB_X29_Y68_N22
\Add32~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~12_combout\ = (\Add7~14_combout\ & (\Add32~11\ $ (GND))) # (!\Add7~14_combout\ & (!\Add32~11\ & VCC))
-- \Add32~13\ = CARRY((\Add7~14_combout\ & !\Add32~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add32~11\,
	combout => \Add32~12_combout\,
	cout => \Add32~13\);

-- Location: LCCOMB_X30_Y68_N4
\Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~3_combout\ = (\Add42~12_combout\ & (\Add32~12_combout\ & (\Add42~10_combout\ $ (!\Add32~10_combout\)))) # (!\Add42~12_combout\ & (!\Add32~12_combout\ & (\Add42~10_combout\ $ (!\Add32~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add42~12_combout\,
	datab => \Add42~10_combout\,
	datac => \Add32~12_combout\,
	datad => \Add32~10_combout\,
	combout => \Equal39~3_combout\);

-- Location: LCCOMB_X29_Y68_N2
\Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~0_combout\ = (horizontalPosition(0) & (!verticalPosition(0) & (\Add42~0_combout\ $ (verticalPosition(1))))) # (!horizontalPosition(0) & (verticalPosition(0) & (\Add42~0_combout\ $ (verticalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => \Add42~0_combout\,
	datac => verticalPosition(0),
	datad => verticalPosition(1),
	combout => \Equal39~0_combout\);

-- Location: LCCOMB_X30_Y68_N2
\Equal39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~4_combout\ = (\Equal39~1_combout\ & (\Equal39~2_combout\ & (\Equal39~3_combout\ & \Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal39~1_combout\,
	datab => \Equal39~2_combout\,
	datac => \Equal39~3_combout\,
	datad => \Equal39~0_combout\,
	combout => \Equal39~4_combout\);

-- Location: LCCOMB_X28_Y68_N0
\Add41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~1_cout\ = CARRY(horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datad => VCC,
	cout => \Add41~1_cout\);

-- Location: LCCOMB_X28_Y68_N8
\Add41~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~8_combout\ = (\Add41~7\ & ((horizontalPosition(4) $ (!horizontalPosition(5))))) # (!\Add41~7\ & (horizontalPosition(4) $ (horizontalPosition(5) $ (GND))))
-- \Add41~9\ = CARRY((!\Add41~7\ & (horizontalPosition(4) $ (!horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add41~7\,
	combout => \Add41~8_combout\,
	cout => \Add41~9\);

-- Location: LCCOMB_X28_Y68_N12
\Add41~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~12_combout\ = (\Add41~11\ & (horizontalPosition(7) $ (\Add6~2_combout\ $ (VCC)))) # (!\Add41~11\ & ((horizontalPosition(7) $ (\Add6~2_combout\)) # (GND)))
-- \Add41~13\ = CARRY((horizontalPosition(7) $ (\Add6~2_combout\)) # (!\Add41~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add41~11\,
	combout => \Add41~12_combout\,
	cout => \Add41~13\);

-- Location: LCCOMB_X28_Y68_N14
\Add41~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~14_combout\ = (\Add41~13\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)))) # (!\Add41~13\ & (horizontalPosition(8) $ ((\Add6~0_combout\))))
-- \Add41~15\ = CARRY((!\Add41~13\ & (horizontalPosition(8) $ (\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add41~13\,
	combout => \Add41~14_combout\,
	cout => \Add41~15\);

-- Location: LCCOMB_X28_Y68_N16
\Add41~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~16_combout\ = (\Add41~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add41~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND))))
-- \Add41~17\ = CARRY((!\Add41~15\ & (\Add6~6_combout\ $ (!horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add41~15\,
	combout => \Add41~16_combout\,
	cout => \Add41~17\);

-- Location: LCCOMB_X29_Y68_N24
\Add32~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~14_combout\ = (\Add7~16_combout\ & (\Add32~13\ & VCC)) # (!\Add7~16_combout\ & (!\Add32~13\))
-- \Add32~15\ = CARRY((!\Add7~16_combout\ & !\Add32~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add32~13\,
	combout => \Add32~14_combout\,
	cout => \Add32~15\);

-- Location: LCCOMB_X28_Y68_N26
\Equal38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~4_combout\ = \Add41~14_combout\ $ (\Add32~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add41~14_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal38~4_combout\);

-- Location: LCCOMB_X28_Y68_N18
\Add41~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add41~18_combout\ = \Add41~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add41~17\,
	combout => \Add41~18_combout\);

-- Location: LCCOMB_X28_Y68_N20
\Equal38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~5_combout\ = (!\Equal38~4_combout\ & ((\Add32~16_combout\ & (!\Add41~16_combout\ & \Add41~18_combout\)) # (!\Add32~16_combout\ & (\Add41~16_combout\ & !\Add41~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~16_combout\,
	datab => \Add41~16_combout\,
	datac => \Equal38~4_combout\,
	datad => \Add41~18_combout\,
	combout => \Equal38~5_combout\);

-- Location: LCCOMB_X34_Y68_N14
\Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~0_combout\ = (horizontalPosition(1) & (verticalPosition(1) & (horizontalPosition(0) $ (!verticalPosition(0))))) # (!horizontalPosition(1) & (!verticalPosition(1) & (horizontalPosition(0) $ (!verticalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => verticalPosition(1),
	datac => horizontalPosition(0),
	datad => verticalPosition(0),
	combout => \Equal31~0_combout\);

-- Location: LCCOMB_X28_Y68_N30
\Equal38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~1_combout\ = (\Add41~6_combout\ & (\Add32~6_combout\ & (\Add41~8_combout\ $ (!\Add32~8_combout\)))) # (!\Add41~6_combout\ & (!\Add32~6_combout\ & (\Add41~8_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add41~6_combout\,
	datab => \Add32~6_combout\,
	datac => \Add41~8_combout\,
	datad => \Add32~8_combout\,
	combout => \Equal38~1_combout\);

-- Location: LCCOMB_X28_Y68_N28
\Equal38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~2_combout\ = (\Add41~10_combout\ & (\Add32~10_combout\ & (\Add41~12_combout\ $ (!\Add32~12_combout\)))) # (!\Add41~10_combout\ & (!\Add32~10_combout\ & (\Add41~12_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add41~10_combout\,
	datab => \Add41~12_combout\,
	datac => \Add32~10_combout\,
	datad => \Add32~12_combout\,
	combout => \Equal38~2_combout\);

-- Location: LCCOMB_X28_Y68_N24
\Equal38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal38~3_combout\ = (\Equal38~0_combout\ & (\Equal31~0_combout\ & (\Equal38~1_combout\ & \Equal38~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal38~0_combout\,
	datab => \Equal31~0_combout\,
	datac => \Equal38~1_combout\,
	datad => \Equal38~2_combout\,
	combout => \Equal38~3_combout\);

-- Location: LCCOMB_X30_Y68_N0
\colorSetter~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~47_combout\ = (\Equal39~6_combout\ & ((\Equal39~4_combout\) # ((\Equal38~5_combout\ & \Equal38~3_combout\)))) # (!\Equal39~6_combout\ & (((\Equal38~5_combout\ & \Equal38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal39~6_combout\,
	datab => \Equal39~4_combout\,
	datac => \Equal38~5_combout\,
	datad => \Equal38~3_combout\,
	combout => \colorSetter~47_combout\);

-- Location: LCCOMB_X35_Y67_N28
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (horizontalPosition(5) & (horizontalPosition(4) & horizontalPosition(6))) # (!horizontalPosition(5) & (!horizontalPosition(4) & !horizontalPosition(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(5),
	datac => horizontalPosition(4),
	datad => horizontalPosition(6),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X28_Y67_N28
\LessThan55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan55~0_combout\ = (horizontalPosition(3) & ((horizontalPosition(2)) # ((horizontalPosition(1) & horizontalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(3),
	datab => horizontalPosition(1),
	datac => horizontalPosition(0),
	datad => horizontalPosition(2),
	combout => \LessThan55~0_combout\);

-- Location: LCCOMB_X28_Y67_N30
\colorSetter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~31_combout\ = (\colorSetter~2_combout\ & (((horizontalPosition(4) & !\LessThan55~0_combout\)) # (!\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => \LessThan10~0_combout\,
	datac => \colorSetter~2_combout\,
	datad => \LessThan55~0_combout\,
	combout => \colorSetter~31_combout\);

-- Location: LCCOMB_X34_Y70_N26
\colorSetter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~23_combout\ = (!horizontalPosition(8) & (horizontalPosition(7) & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => horizontalPosition(8),
	datac => horizontalPosition(7),
	datad => \Add6~5_combout\,
	combout => \colorSetter~23_combout\);

-- Location: LCCOMB_X33_Y68_N28
\LessThan56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan56~0_combout\ = (!\Add7~6_combout\ & (((!\Add7~0_combout\ & !\Add7~2_combout\)) # (!\Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \LessThan56~0_combout\);

-- Location: LCCOMB_X33_Y68_N0
\LessThan56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan56~1_combout\ = ((\LessThan56~0_combout\) # (!\Add7~10_combout\)) # (!\Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~10_combout\,
	datad => \LessThan56~0_combout\,
	combout => \LessThan56~1_combout\);

-- Location: LCCOMB_X35_Y69_N12
\LessThan56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan56~2_combout\ = (!\Add7~16_combout\ & (((\LessThan56~1_combout\) # (!\Add7~12_combout\)) # (!\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \Add7~12_combout\,
	datac => \Add7~16_combout\,
	datad => \LessThan56~1_combout\,
	combout => \LessThan56~2_combout\);

-- Location: LCCOMB_X35_Y69_N2
\colorSetter~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~45_combout\ = (!\LessThan56~2_combout\ & (((!\Add6~4_combout\ & \LessThan39~2_combout\)) # (!\colorSetter~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \LessThan39~2_combout\,
	datac => \colorSetter~23_combout\,
	datad => \LessThan56~2_combout\,
	combout => \colorSetter~45_combout\);

-- Location: LCCOMB_X35_Y69_N6
\colorSetter~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~46_combout\ = (!\Add6~1_combout\ & (!\LessThan57~2_combout\ & (\colorSetter~31_combout\ & \colorSetter~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \LessThan57~2_combout\,
	datac => \colorSetter~31_combout\,
	datad => \colorSetter~45_combout\,
	combout => \colorSetter~46_combout\);

-- Location: LCCOMB_X35_Y66_N28
\LessThan46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan46~0_combout\ = (\Add7~8_combout\ & (\Add7~10_combout\ & ((\Add7~4_combout\) # (\Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add7~4_combout\,
	datac => \Add7~6_combout\,
	datad => \Add7~10_combout\,
	combout => \LessThan46~0_combout\);

-- Location: LCCOMB_X35_Y66_N16
\LessThan46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan46~1_combout\ = (!\Add7~16_combout\ & (((!\Add7~12_combout\ & !\LessThan46~0_combout\)) # (!\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \Add7~14_combout\,
	datac => \Add7~16_combout\,
	datad => \LessThan46~0_combout\,
	combout => \LessThan46~1_combout\);

-- Location: LCCOMB_X34_Y69_N24
\colorSetter~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~35_combout\ = (horizontalPosition(4) & (!horizontalPosition(6) & horizontalPosition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datac => horizontalPosition(6),
	datad => horizontalPosition(5),
	combout => \colorSetter~35_combout\);

-- Location: LCCOMB_X34_Y69_N4
\colorSetter~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~37_combout\ = (horizontalPosition(6) & (horizontalPosition(5) & ((horizontalPosition(4)) # (!\Equal3~0_combout\)))) # (!horizontalPosition(6) & (((!horizontalPosition(4) & !horizontalPosition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => horizontalPosition(4),
	datac => horizontalPosition(6),
	datad => horizontalPosition(5),
	combout => \colorSetter~37_combout\);

-- Location: LCCOMB_X34_Y69_N16
\colorSetter~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~38_combout\ = (\colorSetter~36_combout\ & ((\colorSetter~35_combout\) # ((\colorSetter~37_combout\ & !\LessThan39~3_combout\)))) # (!\colorSetter~36_combout\ & (((\colorSetter~37_combout\ & !\LessThan39~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~36_combout\,
	datab => \colorSetter~35_combout\,
	datac => \colorSetter~37_combout\,
	datad => \LessThan39~3_combout\,
	combout => \colorSetter~38_combout\);

-- Location: LCCOMB_X34_Y65_N16
\LessThan37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan37~0_combout\ = (\Add7~16_combout\ & (((\LessThan47~0_combout\ & \Add7~0_combout\)) # (!\LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan47~0_combout\,
	datab => \Add7~16_combout\,
	datac => \LessThan34~0_combout\,
	datad => \Add7~0_combout\,
	combout => \LessThan37~0_combout\);

-- Location: LCCOMB_X35_Y66_N24
\colorSetter~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~39_combout\ = (\colorSetter~4_combout\ & (!\LessThan46~1_combout\ & (\colorSetter~38_combout\ & !\LessThan37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~4_combout\,
	datab => \LessThan46~1_combout\,
	datac => \colorSetter~38_combout\,
	datad => \LessThan37~0_combout\,
	combout => \colorSetter~39_combout\);

-- Location: LCCOMB_X35_Y66_N8
\color_blue[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~2_combout\ = (!\colorSetter~39_combout\ & ((\colorSetter~32_combout\) # ((\Add7~16_combout\) # (\LessThan56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~32_combout\,
	datab => \Add7~16_combout\,
	datac => \LessThan56~2_combout\,
	datad => \colorSetter~39_combout\,
	combout => \color_blue[0]~2_combout\);

-- Location: LCCOMB_X34_Y69_N0
\LessThan44~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan44~9_combout\ = ((horizontalPosition(5) & ((!horizontalPosition(4)) # (!horizontalPosition(3)))) # (!horizontalPosition(5) & ((horizontalPosition(4))))) # (!\LessThan39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(3),
	datac => \LessThan39~0_combout\,
	datad => horizontalPosition(4),
	combout => \LessThan44~9_combout\);

-- Location: LCCOMB_X34_Y69_N8
\colorSetter~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~41_combout\ = (!\LessThan57~2_combout\ & !\LessThan46~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan57~2_combout\,
	datad => \LessThan46~1_combout\,
	combout => \colorSetter~41_combout\);

-- Location: LCCOMB_X34_Y69_N12
\colorSetter~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~42_combout\ = (\colorSetter~40_combout\ & (!\LessThan44~9_combout\ & (\colorSetter~41_combout\ & \Add6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~40_combout\,
	datab => \LessThan44~9_combout\,
	datac => \colorSetter~41_combout\,
	datad => \Add6~1_combout\,
	combout => \colorSetter~42_combout\);

-- Location: LCCOMB_X34_Y65_N26
\LessThan47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~0_combout\ = (\Add7~6_combout\ & (\Add7~2_combout\ & \Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \LessThan47~0_combout\);

-- Location: LCCOMB_X34_Y65_N8
\LessThan47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan47~1_combout\ = (\Add7~8_combout\ & (\LessThan47~0_combout\ & \Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datac => \LessThan47~0_combout\,
	datad => \Add7~10_combout\,
	combout => \LessThan47~1_combout\);

-- Location: LCCOMB_X34_Y65_N30
\LessThan50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan50~0_combout\ = (!\Add7~16_combout\ & (((!\Add7~12_combout\ & !\LessThan47~1_combout\)) # (!\Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \Add7~14_combout\,
	datac => \LessThan47~1_combout\,
	datad => \Add7~16_combout\,
	combout => \LessThan50~0_combout\);

-- Location: LCCOMB_X34_Y65_N24
\LessThan51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~2_combout\ = (\Add7~4_combout\) # ((\Add7~0_combout\ & \Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \LessThan51~2_combout\);

-- Location: LCCOMB_X35_Y67_N30
\LessThan51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~1_combout\ = (\Add7~10_combout\ & (\Add7~8_combout\ & (\Add7~12_combout\ & \Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \Add7~8_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~14_combout\,
	combout => \LessThan51~1_combout\);

-- Location: LCCOMB_X34_Y65_N18
\LessThan51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~3_combout\ = (\Add7~16_combout\) # ((\Add7~6_combout\ & (\LessThan51~2_combout\ & \LessThan51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \LessThan51~2_combout\,
	datac => \LessThan51~1_combout\,
	datad => \Add7~16_combout\,
	combout => \LessThan51~3_combout\);

-- Location: LCCOMB_X34_Y65_N28
\colorSetter~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~43_combout\ = (!\LessThan51~3_combout\ & ((\LessThan10~0_combout\) # (!\colorSetter~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colorSetter~2_combout\,
	datac => \LessThan10~0_combout\,
	datad => \LessThan51~3_combout\,
	combout => \colorSetter~43_combout\);

-- Location: LCCOMB_X34_Y65_N0
\colorSetter~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~44_combout\ = (!\Add6~1_combout\ & (\colorSetter~31_combout\ & (!\LessThan50~0_combout\ & \colorSetter~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => \colorSetter~31_combout\,
	datac => \LessThan50~0_combout\,
	datad => \colorSetter~43_combout\,
	combout => \colorSetter~44_combout\);

-- Location: LCCOMB_X34_Y66_N6
\color_blue[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~3_combout\ = (\color_blue[0]~1_combout\ & (\color_blue[0]~2_combout\ & (!\colorSetter~42_combout\ & !\colorSetter~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~1_combout\,
	datab => \color_blue[0]~2_combout\,
	datac => \colorSetter~42_combout\,
	datad => \colorSetter~44_combout\,
	combout => \color_blue[0]~3_combout\);

-- Location: LCCOMB_X33_Y69_N12
\color_red~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_red~3_combout\ = (\colorSetter~47_combout\) # ((!\color_blue[0]~3_combout\) # (!\colorSetter~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colorSetter~47_combout\,
	datac => \colorSetter~46_combout\,
	datad => \color_blue[0]~3_combout\,
	combout => \color_red~3_combout\);

-- Location: LCCOMB_X30_Y64_N8
\Add31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~0_combout\ = (horizontalPosition(4) & (horizontalPosition(3) & VCC)) # (!horizontalPosition(4) & (horizontalPosition(3) $ (VCC)))
-- \Add31~1\ = CARRY((!horizontalPosition(4) & horizontalPosition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(3),
	datad => VCC,
	combout => \Add31~0_combout\,
	cout => \Add31~1\);

-- Location: LCCOMB_X30_Y64_N12
\Add31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~4_combout\ = (\Add31~3\ & (\Add6~5_combout\ $ (horizontalPosition(6) $ (GND)))) # (!\Add31~3\ & ((\Add6~5_combout\ $ (!horizontalPosition(6))) # (GND)))
-- \Add31~5\ = CARRY((\Add6~5_combout\ $ (!horizontalPosition(6))) # (!\Add31~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~5_combout\,
	datab => horizontalPosition(6),
	datad => VCC,
	cin => \Add31~3\,
	combout => \Add31~4_combout\,
	cout => \Add31~5\);

-- Location: LCCOMB_X30_Y64_N14
\Add31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~6_combout\ = (\Add31~5\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add31~5\ & (horizontalPosition(7) $ ((!\Add6~2_combout\))))
-- \Add31~7\ = CARRY((!\Add31~5\ & (horizontalPosition(7) $ (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add31~5\,
	combout => \Add31~6_combout\,
	cout => \Add31~7\);

-- Location: LCCOMB_X30_Y64_N16
\Add31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add31~8_combout\ = (\Add31~7\ & (horizontalPosition(8) $ (\Add6~0_combout\ $ (GND)))) # (!\Add31~7\ & ((horizontalPosition(8) $ (!\Add6~0_combout\)) # (GND)))
-- \Add31~9\ = CARRY((horizontalPosition(8) $ (!\Add6~0_combout\)) # (!\Add31~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(8),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add31~7\,
	combout => \Add31~8_combout\,
	cout => \Add31~9\);

-- Location: LCCOMB_X29_Y66_N8
\Equal29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~5_combout\ = (\Add32~16_combout\ & (!\Add31~10_combout\ & (\Add31~8_combout\ $ (!\Add32~14_combout\)))) # (!\Add32~16_combout\ & (\Add31~10_combout\ & (\Add31~8_combout\ $ (!\Add32~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~16_combout\,
	datab => \Add31~8_combout\,
	datac => \Add31~10_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal29~5_combout\);

-- Location: LCCOMB_X29_Y68_N26
\Add32~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add32~16_combout\ = !\Add32~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add32~15\,
	combout => \Add32~16_combout\);

-- Location: LCCOMB_X29_Y67_N4
\Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~0_combout\ = (verticalPosition(0) & (horizontalPosition(0) & (horizontalPosition(1) $ (verticalPosition(1))))) # (!verticalPosition(0) & (!horizontalPosition(0) & (horizontalPosition(1) $ (verticalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => verticalPosition(0),
	datab => horizontalPosition(1),
	datac => horizontalPosition(0),
	datad => verticalPosition(1),
	combout => \Equal29~0_combout\);

-- Location: LCCOMB_X29_Y68_N30
\Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~2_combout\ = (\Add31~2_combout\ & (\Add32~8_combout\ & (\Add32~6_combout\ $ (!\Add31~0_combout\)))) # (!\Add31~2_combout\ & (!\Add32~8_combout\ & (\Add32~6_combout\ $ (!\Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add31~2_combout\,
	datab => \Add32~6_combout\,
	datac => \Add31~0_combout\,
	datad => \Add32~8_combout\,
	combout => \Equal29~2_combout\);

-- Location: LCCOMB_X29_Y66_N16
\Equal29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~3_combout\ = (\Add32~10_combout\ & (\Add31~4_combout\ & (\Add32~12_combout\ $ (!\Add31~6_combout\)))) # (!\Add32~10_combout\ & (!\Add31~4_combout\ & (\Add32~12_combout\ $ (!\Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add31~4_combout\,
	datac => \Add32~12_combout\,
	datad => \Add31~6_combout\,
	combout => \Equal29~3_combout\);

-- Location: LCCOMB_X29_Y66_N24
\Equal29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~4_combout\ = (\Equal29~1_combout\ & (\Equal29~0_combout\ & (\Equal29~2_combout\ & \Equal29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal29~1_combout\,
	datab => \Equal29~0_combout\,
	datac => \Equal29~2_combout\,
	datad => \Equal29~3_combout\,
	combout => \Equal29~4_combout\);

-- Location: LCCOMB_X29_Y66_N4
\Equal29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~6_combout\ = (\Equal29~5_combout\ & (\Equal29~4_combout\ & (\Add31~12_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add31~12_combout\,
	datab => \Equal29~5_combout\,
	datac => \Add32~16_combout\,
	datad => \Equal29~4_combout\,
	combout => \Equal29~6_combout\);

-- Location: LCCOMB_X28_Y66_N8
\Add34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~0_combout\ = (horizontalPosition(2) & (horizontalPosition(1) $ (VCC))) # (!horizontalPosition(2) & (horizontalPosition(1) & VCC))
-- \Add34~1\ = CARRY((horizontalPosition(2) & horizontalPosition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datab => horizontalPosition(1),
	datad => VCC,
	combout => \Add34~0_combout\,
	cout => \Add34~1\);

-- Location: LCCOMB_X28_Y66_N14
\Add34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~6_combout\ = (\Add34~5\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add34~5\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add34~7\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add34~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add34~5\,
	combout => \Add34~6_combout\,
	cout => \Add34~7\);

-- Location: LCCOMB_X28_Y66_N18
\Add34~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~10_combout\ = (\Add34~9\ & ((\Add6~2_combout\ $ (horizontalPosition(7))))) # (!\Add34~9\ & (\Add6~2_combout\ $ ((!horizontalPosition(7)))))
-- \Add34~11\ = CARRY((!\Add34~9\ & (\Add6~2_combout\ $ (!horizontalPosition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add34~9\,
	combout => \Add34~10_combout\,
	cout => \Add34~11\);

-- Location: LCCOMB_X28_Y66_N24
\Add34~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add34~16_combout\ = !\Add34~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add34~15\,
	combout => \Add34~16_combout\);

-- Location: LCCOMB_X28_Y66_N28
\Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~1_combout\ = (\Add34~2_combout\ & (\Add32~4_combout\ & (\Add34~0_combout\ $ (!\Add32~2_combout\)))) # (!\Add34~2_combout\ & (!\Add32~4_combout\ & (\Add34~0_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~2_combout\,
	datab => \Add34~0_combout\,
	datac => \Add32~4_combout\,
	datad => \Add32~2_combout\,
	combout => \Equal31~1_combout\);

-- Location: LCCOMB_X28_Y66_N4
\Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~2_combout\ = (\Add34~4_combout\ & (\Add32~6_combout\ & (\Add34~6_combout\ $ (!\Add32~8_combout\)))) # (!\Add34~4_combout\ & (!\Add32~6_combout\ & (\Add34~6_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~4_combout\,
	datab => \Add34~6_combout\,
	datac => \Add32~8_combout\,
	datad => \Add32~6_combout\,
	combout => \Equal31~2_combout\);

-- Location: LCCOMB_X28_Y66_N0
\Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~3_combout\ = (\Add34~8_combout\ & (\Add32~10_combout\ & (\Add34~10_combout\ $ (!\Add32~12_combout\)))) # (!\Add34~8_combout\ & (!\Add32~10_combout\ & (\Add34~10_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add34~8_combout\,
	datab => \Add34~10_combout\,
	datac => \Add32~10_combout\,
	datad => \Add32~12_combout\,
	combout => \Equal31~3_combout\);

-- Location: LCCOMB_X28_Y66_N30
\Equal31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~4_combout\ = (\Equal31~0_combout\ & (\Equal31~1_combout\ & (\Equal31~2_combout\ & \Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~0_combout\,
	datab => \Equal31~1_combout\,
	datac => \Equal31~2_combout\,
	datad => \Equal31~3_combout\,
	combout => \Equal31~4_combout\);

-- Location: LCCOMB_X28_Y66_N6
\Equal31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal31~6_combout\ = (\Equal31~5_combout\ & (\Equal31~4_combout\ & (\Add34~16_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal31~5_combout\,
	datab => \Add34~16_combout\,
	datac => \Equal31~4_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal31~6_combout\);

-- Location: LCCOMB_X30_Y66_N14
\Add33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~8_combout\ = (\Add33~7\ & ((horizontalPosition(5) $ (!horizontalPosition(4))))) # (!\Add33~7\ & (horizontalPosition(5) $ (horizontalPosition(4) $ (GND))))
-- \Add33~9\ = CARRY((!\Add33~7\ & (horizontalPosition(5) $ (!horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add33~7\,
	combout => \Add33~8_combout\,
	cout => \Add33~9\);

-- Location: LCCOMB_X30_Y66_N16
\Add33~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~10_combout\ = (\Add33~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add33~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add33~11\ = CARRY((!\Add33~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add33~9\,
	combout => \Add33~10_combout\,
	cout => \Add33~11\);

-- Location: LCCOMB_X30_Y66_N22
\Add33~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~16_combout\ = (\Add33~15\ & ((\Add6~6_combout\ $ (!horizontalPosition(9))))) # (!\Add33~15\ & (\Add6~6_combout\ $ (horizontalPosition(9) $ (GND))))
-- \Add33~17\ = CARRY((!\Add33~15\ & (\Add6~6_combout\ $ (!horizontalPosition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datab => horizontalPosition(9),
	datad => VCC,
	cin => \Add33~15\,
	combout => \Add33~16_combout\,
	cout => \Add33~17\);

-- Location: LCCOMB_X30_Y66_N24
\Add33~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add33~18_combout\ = \Add33~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add33~17\,
	combout => \Add33~18_combout\);

-- Location: LCCOMB_X29_Y66_N26
\Equal30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~5_combout\ = (\Add33~14_combout\ & (\Add32~14_combout\ & (\Add33~16_combout\ $ (\Add32~16_combout\)))) # (!\Add33~14_combout\ & (!\Add32~14_combout\ & (\Add33~16_combout\ $ (\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~14_combout\,
	datab => \Add33~16_combout\,
	datac => \Add32~16_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal30~5_combout\);

-- Location: LCCOMB_X30_Y66_N28
\Equal30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~0_combout\ = (\Add33~0_combout\ & (!verticalPosition(1) & (horizontalPosition(0) $ (verticalPosition(0))))) # (!\Add33~0_combout\ & (verticalPosition(1) & (horizontalPosition(0) $ (verticalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~0_combout\,
	datab => horizontalPosition(0),
	datac => verticalPosition(1),
	datad => verticalPosition(0),
	combout => \Equal30~0_combout\);

-- Location: LCCOMB_X30_Y66_N4
\Equal30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~2_combout\ = (\Add33~6_combout\ & (\Add32~6_combout\ & (\Add33~8_combout\ $ (!\Add32~8_combout\)))) # (!\Add33~6_combout\ & (!\Add32~6_combout\ & (\Add33~8_combout\ $ (!\Add32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~6_combout\,
	datab => \Add33~8_combout\,
	datac => \Add32~6_combout\,
	datad => \Add32~8_combout\,
	combout => \Equal30~2_combout\);

-- Location: LCCOMB_X30_Y66_N0
\Equal30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~3_combout\ = (\Add33~12_combout\ & (\Add32~12_combout\ & (\Add33~10_combout\ $ (!\Add32~10_combout\)))) # (!\Add33~12_combout\ & (!\Add32~12_combout\ & (\Add33~10_combout\ $ (!\Add32~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add33~12_combout\,
	datab => \Add33~10_combout\,
	datac => \Add32~12_combout\,
	datad => \Add32~10_combout\,
	combout => \Equal30~3_combout\);

-- Location: LCCOMB_X30_Y66_N2
\Equal30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~4_combout\ = (\Equal30~1_combout\ & (\Equal30~0_combout\ & (\Equal30~2_combout\ & \Equal30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal30~1_combout\,
	datab => \Equal30~0_combout\,
	datac => \Equal30~2_combout\,
	datad => \Equal30~3_combout\,
	combout => \Equal30~4_combout\);

-- Location: LCCOMB_X29_Y66_N10
\Equal30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal30~6_combout\ = (\Equal30~5_combout\ & (\Equal30~4_combout\ & (\Add32~16_combout\ $ (!\Add33~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~16_combout\,
	datab => \Add33~18_combout\,
	datac => \Equal30~5_combout\,
	datad => \Equal30~4_combout\,
	combout => \Equal30~6_combout\);

-- Location: LCCOMB_X29_Y66_N28
\colorSetter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~10_combout\ = (\Equal32~6_combout\) # ((\Equal29~6_combout\) # ((\Equal31~6_combout\) # (\Equal30~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal32~6_combout\,
	datab => \Equal29~6_combout\,
	datac => \Equal31~6_combout\,
	datad => \Equal30~6_combout\,
	combout => \colorSetter~10_combout\);

-- Location: LCCOMB_X28_Y65_N8
\Add38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~1_cout\ = CARRY(horizontalPosition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(1),
	datad => VCC,
	cout => \Add38~1_cout\);

-- Location: LCCOMB_X28_Y65_N14
\Add38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~6_combout\ = (horizontalPosition(4) & ((\Add38~5\) # (GND))) # (!horizontalPosition(4) & (!\Add38~5\))
-- \Add38~7\ = CARRY((horizontalPosition(4)) # (!\Add38~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add38~5\,
	combout => \Add38~6_combout\,
	cout => \Add38~7\);

-- Location: LCCOMB_X28_Y65_N18
\Add38~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~10_combout\ = (\Add38~9\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add38~9\ & (horizontalPosition(6) $ ((\Add6~5_combout\))))
-- \Add38~11\ = CARRY((!\Add38~9\ & (horizontalPosition(6) $ (\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add38~9\,
	combout => \Add38~10_combout\,
	cout => \Add38~11\);

-- Location: LCCOMB_X28_Y65_N30
\Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = (\Add38~8_combout\ & (\Add32~8_combout\ & (\Add38~10_combout\ $ (!\Add32~10_combout\)))) # (!\Add38~8_combout\ & (!\Add32~8_combout\ & (\Add38~10_combout\ $ (!\Add32~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add38~8_combout\,
	datab => \Add38~10_combout\,
	datac => \Add32~8_combout\,
	datad => \Add32~10_combout\,
	combout => \Equal35~0_combout\);

-- Location: LCCOMB_X28_Y65_N20
\Add38~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add38~12_combout\ = (\Add38~11\ & (\Add6~2_combout\ $ (horizontalPosition(7) $ (VCC)))) # (!\Add38~11\ & ((\Add6~2_combout\ $ (horizontalPosition(7))) # (GND)))
-- \Add38~13\ = CARRY((\Add6~2_combout\ $ (horizontalPosition(7))) # (!\Add38~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => horizontalPosition(7),
	datad => VCC,
	cin => \Add38~11\,
	combout => \Add38~12_combout\,
	cout => \Add38~13\);

-- Location: LCCOMB_X28_Y65_N4
\Equal35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~4_combout\ = (\Equal31~0_combout\ & (\Add38~6_combout\ $ (!\Add32~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add38~6_combout\,
	datac => \Equal31~0_combout\,
	datad => \Add32~6_combout\,
	combout => \Equal35~4_combout\);

-- Location: LCCOMB_X28_Y65_N6
\Equal35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~5_combout\ = (\Equal35~4_combout\ & (\Add38~16_combout\ $ (\Add32~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add38~16_combout\,
	datac => \Equal35~4_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal35~5_combout\);

-- Location: LCCOMB_X28_Y65_N2
\Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~3_combout\ = (\Add38~18_combout\ & (!\Add38~16_combout\ & (\Add38~12_combout\ $ (!\Add32~12_combout\)))) # (!\Add38~18_combout\ & (\Add38~16_combout\ & (\Add38~12_combout\ $ (!\Add32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add38~18_combout\,
	datab => \Add38~16_combout\,
	datac => \Add38~12_combout\,
	datad => \Add32~12_combout\,
	combout => \Equal35~3_combout\);

-- Location: LCCOMB_X28_Y69_N4
\Equal35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~6_combout\ = (\Equal35~2_combout\ & (\Equal35~0_combout\ & (\Equal35~5_combout\ & \Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal35~2_combout\,
	datab => \Equal35~0_combout\,
	datac => \Equal35~5_combout\,
	datad => \Equal35~3_combout\,
	combout => \Equal35~6_combout\);

-- Location: LCCOMB_X29_Y65_N4
\Add39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add39~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datad => VCC,
	combout => \Add39~0_combout\,
	cout => \Add39~1\);

-- Location: LCCOMB_X29_Y65_N12
\Add39~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~8_combout\ = (horizontalPosition(4) & (!\Add39~7\ & VCC)) # (!horizontalPosition(4) & (\Add39~7\ $ (GND)))
-- \Add39~9\ = CARRY((!horizontalPosition(4) & !\Add39~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add39~7\,
	combout => \Add39~8_combout\,
	cout => \Add39~9\);

-- Location: LCCOMB_X29_Y65_N14
\Add39~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~10_combout\ = (\Add39~9\ & (horizontalPosition(5) $ ((horizontalPosition(4))))) # (!\Add39~9\ & ((horizontalPosition(5) $ (!horizontalPosition(4))) # (GND)))
-- \Add39~11\ = CARRY((horizontalPosition(5) $ (horizontalPosition(4))) # (!\Add39~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datad => VCC,
	cin => \Add39~9\,
	combout => \Add39~10_combout\,
	cout => \Add39~11\);

-- Location: LCCOMB_X29_Y65_N16
\Add39~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~12_combout\ = (\Add39~11\ & (horizontalPosition(6) $ (\Add6~5_combout\ $ (GND)))) # (!\Add39~11\ & ((horizontalPosition(6) $ (!\Add6~5_combout\)) # (GND)))
-- \Add39~13\ = CARRY((horizontalPosition(6) $ (!\Add6~5_combout\)) # (!\Add39~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~5_combout\,
	datad => VCC,
	cin => \Add39~11\,
	combout => \Add39~12_combout\,
	cout => \Add39~13\);

-- Location: LCCOMB_X29_Y65_N18
\Add39~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add39~14_combout\ = (\Add39~13\ & ((horizontalPosition(7) $ (\Add6~2_combout\)))) # (!\Add39~13\ & (horizontalPosition(7) $ ((!\Add6~2_combout\))))
-- \Add39~15\ = CARRY((!\Add39~13\ & (horizontalPosition(7) $ (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(7),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add39~13\,
	combout => \Add39~14_combout\,
	cout => \Add39~15\);

-- Location: LCCOMB_X29_Y65_N0
\Equal36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~5_combout\ = (\Add39~16_combout\ & (\Add32~14_combout\ & (\Add39~18_combout\ $ (\Add32~16_combout\)))) # (!\Add39~16_combout\ & (!\Add32~14_combout\ & (\Add39~18_combout\ $ (\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add39~16_combout\,
	datab => \Add32~14_combout\,
	datac => \Add39~18_combout\,
	datad => \Add32~16_combout\,
	combout => \Equal36~5_combout\);

-- Location: LCCOMB_X29_Y65_N28
\Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~0_combout\ = (\Add39~2_combout\ & (!verticalPosition(1) & (\Add39~0_combout\ $ (!verticalPosition(0))))) # (!\Add39~2_combout\ & (verticalPosition(1) & (\Add39~0_combout\ $ (!verticalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add39~2_combout\,
	datab => \Add39~0_combout\,
	datac => verticalPosition(1),
	datad => verticalPosition(0),
	combout => \Equal36~0_combout\);

-- Location: LCCOMB_X28_Y69_N8
\Equal36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~2_combout\ = (\Add32~6_combout\ & (\Add39~8_combout\ & (\Add32~8_combout\ $ (!\Add39~10_combout\)))) # (!\Add32~6_combout\ & (!\Add39~8_combout\ & (\Add32~8_combout\ $ (!\Add39~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~6_combout\,
	datab => \Add39~8_combout\,
	datac => \Add32~8_combout\,
	datad => \Add39~10_combout\,
	combout => \Equal36~2_combout\);

-- Location: LCCOMB_X28_Y69_N24
\Equal36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~3_combout\ = (\Add32~10_combout\ & (\Add39~12_combout\ & (\Add32~12_combout\ $ (!\Add39~14_combout\)))) # (!\Add32~10_combout\ & (!\Add39~12_combout\ & (\Add32~12_combout\ $ (!\Add39~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~10_combout\,
	datab => \Add39~12_combout\,
	datac => \Add32~12_combout\,
	datad => \Add39~14_combout\,
	combout => \Equal36~3_combout\);

-- Location: LCCOMB_X28_Y69_N28
\Equal36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~4_combout\ = (\Equal36~1_combout\ & (\Equal36~0_combout\ & (\Equal36~2_combout\ & \Equal36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal36~1_combout\,
	datab => \Equal36~0_combout\,
	datac => \Equal36~2_combout\,
	datad => \Equal36~3_combout\,
	combout => \Equal36~4_combout\);

-- Location: LCCOMB_X28_Y69_N26
\Equal36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~6_combout\ = (\Equal36~5_combout\ & (\Equal36~4_combout\ & (\Add39~20_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add39~20_combout\,
	datab => \Add32~16_combout\,
	datac => \Equal36~5_combout\,
	datad => \Equal36~4_combout\,
	combout => \Equal36~6_combout\);

-- Location: LCCOMB_X27_Y67_N4
\Add40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~0_combout\ = horizontalPosition(0) $ (VCC)
-- \Add40~1\ = CARRY(horizontalPosition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(0),
	datad => VCC,
	combout => \Add40~0_combout\,
	cout => \Add40~1\);

-- Location: LCCOMB_X27_Y67_N26
\Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~0_combout\ = (\Add40~2_combout\ & (!verticalPosition(1) & (\Add40~0_combout\ $ (!verticalPosition(0))))) # (!\Add40~2_combout\ & (verticalPosition(1) & (\Add40~0_combout\ $ (!verticalPosition(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add40~2_combout\,
	datab => \Add40~0_combout\,
	datac => verticalPosition(0),
	datad => verticalPosition(1),
	combout => \Equal37~0_combout\);

-- Location: LCCOMB_X27_Y67_N8
\Add40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~4_combout\ = (horizontalPosition(2) & ((GND) # (!\Add40~3\))) # (!horizontalPosition(2) & (\Add40~3\ $ (GND)))
-- \Add40~5\ = CARRY((horizontalPosition(2)) # (!\Add40~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(2),
	datad => VCC,
	cin => \Add40~3\,
	combout => \Add40~4_combout\,
	cout => \Add40~5\);

-- Location: LCCOMB_X27_Y67_N12
\Add40~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~8_combout\ = (horizontalPosition(4) & (!\Add40~7\ & VCC)) # (!horizontalPosition(4) & (\Add40~7\ $ (GND)))
-- \Add40~9\ = CARRY((!horizontalPosition(4) & !\Add40~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datad => VCC,
	cin => \Add40~7\,
	combout => \Add40~8_combout\,
	cout => \Add40~9\);

-- Location: LCCOMB_X27_Y67_N14
\Add40~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add40~10_combout\ = (\Add40~9\ & (horizontalPosition(4) $ ((horizontalPosition(5))))) # (!\Add40~9\ & ((horizontalPosition(4) $ (!horizontalPosition(5))) # (GND)))
-- \Add40~11\ = CARRY((horizontalPosition(4) $ (horizontalPosition(5))) # (!\Add40~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datab => horizontalPosition(5),
	datad => VCC,
	cin => \Add40~9\,
	combout => \Add40~10_combout\,
	cout => \Add40~11\);

-- Location: LCCOMB_X28_Y69_N14
\Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~2_combout\ = (\Add32~8_combout\ & (\Add40~10_combout\ & (\Add40~8_combout\ $ (!\Add32~6_combout\)))) # (!\Add32~8_combout\ & (!\Add40~10_combout\ & (\Add40~8_combout\ $ (!\Add32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add32~8_combout\,
	datab => \Add40~8_combout\,
	datac => \Add32~6_combout\,
	datad => \Add40~10_combout\,
	combout => \Equal37~2_combout\);

-- Location: LCCOMB_X27_Y67_N28
\Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~1_combout\ = (\Add40~6_combout\ & (\Add32~4_combout\ & (\Add40~4_combout\ $ (!\Add32~2_combout\)))) # (!\Add40~6_combout\ & (!\Add32~4_combout\ & (\Add40~4_combout\ $ (!\Add32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add40~6_combout\,
	datab => \Add40~4_combout\,
	datac => \Add32~2_combout\,
	datad => \Add32~4_combout\,
	combout => \Equal37~1_combout\);

-- Location: LCCOMB_X28_Y69_N30
\Equal37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~4_combout\ = (\Equal37~3_combout\ & (\Equal37~0_combout\ & (\Equal37~2_combout\ & \Equal37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal37~3_combout\,
	datab => \Equal37~0_combout\,
	datac => \Equal37~2_combout\,
	datad => \Equal37~1_combout\,
	combout => \Equal37~4_combout\);

-- Location: LCCOMB_X27_Y67_N2
\Equal37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~5_combout\ = (\Add40~18_combout\ & (!\Add32~16_combout\ & (\Add40~16_combout\ $ (!\Add32~14_combout\)))) # (!\Add40~18_combout\ & (\Add32~16_combout\ & (\Add40~16_combout\ $ (!\Add32~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add40~18_combout\,
	datab => \Add40~16_combout\,
	datac => \Add32~16_combout\,
	datad => \Add32~14_combout\,
	combout => \Equal37~5_combout\);

-- Location: LCCOMB_X28_Y69_N2
\Equal37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal37~6_combout\ = (\Equal37~4_combout\ & (\Equal37~5_combout\ & (\Add40~20_combout\ $ (!\Add32~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add40~20_combout\,
	datab => \Add32~16_combout\,
	datac => \Equal37~4_combout\,
	datad => \Equal37~5_combout\,
	combout => \Equal37~6_combout\);

-- Location: LCCOMB_X28_Y69_N6
\colorSetter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~11_combout\ = (\Equal34~6_combout\) # ((\Equal35~6_combout\) # ((\Equal36~6_combout\) # (\Equal37~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~6_combout\,
	datab => \Equal35~6_combout\,
	datac => \Equal36~6_combout\,
	datad => \Equal37~6_combout\,
	combout => \colorSetter~11_combout\);

-- Location: LCCOMB_X33_Y69_N2
\color_red~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_red~4_combout\ = (\colorSetter~22_combout\) # ((\color_red~3_combout\) # ((\colorSetter~10_combout\) # (\colorSetter~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~22_combout\,
	datab => \color_red~3_combout\,
	datac => \colorSetter~10_combout\,
	datad => \colorSetter~11_combout\,
	combout => \color_red~4_combout\);

-- Location: LCCOMB_X33_Y69_N6
\color_red~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_red~6_combout\ = (\colorSetter~6_combout\ & (!\colorSetter~51_combout\)) # (!\colorSetter~6_combout\ & (((!\colorSetter~9_combout\ & \color_red~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~6_combout\,
	datab => \colorSetter~51_combout\,
	datac => \colorSetter~9_combout\,
	datad => \color_red~4_combout\,
	combout => \color_red~6_combout\);

-- Location: LCCOMB_X33_Y69_N24
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\VGA_G~0_combout\ & (((\color_red~5_combout\) # (\color_red~6_combout\)) # (!\color_blue[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~12_combout\,
	datab => \VGA_G~0_combout\,
	datac => \color_red~5_combout\,
	datad => \color_red~6_combout\,
	combout => \VGA_R~0_combout\);

-- Location: DDIOOUTCELL_X33_Y73_N4
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: DDIOOUTCELL_X31_Y73_N4
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: DDIOOUTCELL_X35_Y73_N25
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: DDIOOUTCELL_X33_Y73_N11
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: DDIOOUTCELL_X20_Y73_N11
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: DDIOOUTCELL_X40_Y73_N11
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: DDIOOUTCELL_X11_Y73_N25
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: DDIOOUTCELL_X20_Y73_N18
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LCCOMB_X34_Y70_N2
\LessThan35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan35~1_combout\ = (!horizontalPosition(6) & ((horizontalPosition(4) & ((!horizontalPosition(5)) # (!\LessThan35~0_combout\))) # (!horizontalPosition(4) & ((horizontalPosition(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan35~0_combout\,
	datab => horizontalPosition(4),
	datac => horizontalPosition(5),
	datad => horizontalPosition(6),
	combout => \LessThan35~1_combout\);

-- Location: LCCOMB_X35_Y69_N0
\colorSetter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~5_combout\ = (\Add7~16_combout\ & (\colorSetter~4_combout\ & ((\LessThan47~0_combout\) # (!\LessThan34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \colorSetter~4_combout\,
	datac => \LessThan47~0_combout\,
	datad => \LessThan34~0_combout\,
	combout => \colorSetter~5_combout\);

-- Location: LCCOMB_X35_Y69_N4
\colorSetter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~6_combout\ = (\colorSetter~3_combout\ & (!\LessThan35~1_combout\ & (!\LessThan57~2_combout\ & \colorSetter~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~3_combout\,
	datab => \LessThan35~1_combout\,
	datac => \LessThan57~2_combout\,
	datad => \colorSetter~5_combout\,
	combout => \colorSetter~6_combout\);

-- Location: LCCOMB_X35_Y69_N30
\color_blue[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~15_combout\ = (\colorSetter~6_combout\ & (((\colorSetter~51_combout\)))) # (!\colorSetter~6_combout\ & (\colorSetter~55_combout\ & (\colorSetter~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~55_combout\,
	datab => \colorSetter~6_combout\,
	datac => \colorSetter~9_combout\,
	datad => \colorSetter~51_combout\,
	combout => \color_blue[0]~15_combout\);

-- Location: LCCOMB_X35_Y67_N18
\colorSetter~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~76_combout\ = (\Add6~1_combout\ & (\colorSetter~2_combout\ & ((\LessThan51~1_combout\) # (\Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan51~1_combout\,
	datab => \Add6~1_combout\,
	datac => \Add7~16_combout\,
	datad => \colorSetter~2_combout\,
	combout => \colorSetter~76_combout\);

-- Location: LCCOMB_X34_Y66_N2
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = horizontalPosition(5) $ (horizontalPosition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => horizontalPosition(5),
	datad => horizontalPosition(4),
	combout => \Add6~4_combout\);

-- Location: LCCOMB_X35_Y67_N6
\LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = (!horizontalPosition(4) & ((\LessThan48~0_combout\) # (horizontalPosition(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(4),
	datac => \LessThan48~0_combout\,
	datad => horizontalPosition(3),
	combout => \LessThan26~0_combout\);

-- Location: LCCOMB_X35_Y67_N12
\colorSetter~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~77_combout\ = (\colorSetter~76_combout\ & ((\Add6~3_combout\) # ((\Add6~4_combout\ & !\LessThan26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \colorSetter~76_combout\,
	datac => \Add6~4_combout\,
	datad => \LessThan26~0_combout\,
	combout => \colorSetter~77_combout\);

-- Location: LCCOMB_X34_Y67_N4
\LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~0_combout\ = (!horizontalPosition(3) & ((!horizontalPosition(2)) # (!horizontalPosition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datac => horizontalPosition(2),
	datad => horizontalPosition(3),
	combout => \LessThan25~0_combout\);

-- Location: LCCOMB_X34_Y66_N0
\colorSetter~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~96_combout\ = (\colorSetter~77_combout\ & ((horizontalPosition(5)) # ((!\LessThan25~0_combout\) # (!horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(4),
	datac => \colorSetter~77_combout\,
	datad => \LessThan25~0_combout\,
	combout => \colorSetter~96_combout\);

-- Location: LCCOMB_X34_Y66_N26
\Add6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = horizontalPosition(6) $ (((horizontalPosition(5)) # (horizontalPosition(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datac => horizontalPosition(6),
	datad => horizontalPosition(4),
	combout => \Add6~3_combout\);

-- Location: LCCOMB_X34_Y66_N24
\color_blue[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~7_combout\ = (!\colorSetter~79_combout\ & (((\LessThan57~2_combout\) # (\Add6~3_combout\)) # (!\colorSetter~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~79_combout\,
	datab => \colorSetter~96_combout\,
	datac => \LessThan57~2_combout\,
	datad => \Add6~3_combout\,
	combout => \color_blue[0]~7_combout\);

-- Location: LCCOMB_X35_Y66_N10
\colorSetter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~25_combout\ = (!\Add7~12_combout\ & (\LessThan46~0_combout\ & (!\Add7~16_combout\ & \Add7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \LessThan46~0_combout\,
	datac => \Add7~16_combout\,
	datad => \Add7~14_combout\,
	combout => \colorSetter~25_combout\);

-- Location: LCCOMB_X35_Y66_N2
\colorSetter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~26_combout\ = (\colorSetter~25_combout\ & (((!\LessThan47~1_combout\) # (!\Add7~14_combout\)) # (!\Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Add7~14_combout\,
	datac => \LessThan47~1_combout\,
	datad => \colorSetter~25_combout\,
	combout => \colorSetter~26_combout\);

-- Location: LCCOMB_X35_Y66_N20
\LessThan51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan51~0_combout\ = (\Add7~14_combout\ & (\Add7~12_combout\ & \Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~10_combout\,
	combout => \LessThan51~0_combout\);

-- Location: LCCOMB_X35_Y66_N18
\LessThan40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan40~0_combout\ = ((!\Add7~8_combout\ & ((!\Add7~6_combout\) # (!\LessThan51~2_combout\)))) # (!\LessThan51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \LessThan51~2_combout\,
	datac => \Add7~6_combout\,
	datad => \LessThan51~0_combout\,
	combout => \LessThan40~0_combout\);

-- Location: LCCOMB_X35_Y66_N4
\colorSetter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~27_combout\ = (!\Add7~16_combout\ & (!\LessThan40~0_combout\ & ((!\LessThan51~1_combout\) # (!\LessThan41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan41~0_combout\,
	datab => \Add7~16_combout\,
	datac => \LessThan51~1_combout\,
	datad => \LessThan40~0_combout\,
	combout => \colorSetter~27_combout\);

-- Location: LCCOMB_X34_Y66_N8
\LessThan43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan43~0_combout\ = (!\Add7~2_combout\ & (!\Add7~6_combout\ & (!\Add7~4_combout\ & !\Add7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~8_combout\,
	combout => \LessThan43~0_combout\);

-- Location: LCCOMB_X34_Y66_N28
\colorSetter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~28_combout\ = (\Add7~14_combout\) # ((!\LessThan43~0_combout\ & \Add7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datac => \LessThan43~0_combout\,
	datad => \Add7~10_combout\,
	combout => \colorSetter~28_combout\);

-- Location: LCCOMB_X35_Y66_N0
\colorSetter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~29_combout\ = (!\LessThan57~2_combout\ & (\Add7~16_combout\ & ((\Add7~12_combout\) # (\colorSetter~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~12_combout\,
	datab => \colorSetter~28_combout\,
	datac => \LessThan57~2_combout\,
	datad => \Add7~16_combout\,
	combout => \colorSetter~29_combout\);

-- Location: LCCOMB_X35_Y66_N14
\color_blue[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~6_combout\ = (\colorSetter~75_combout\) # ((!\colorSetter~26_combout\ & (!\colorSetter~27_combout\ & !\colorSetter~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~75_combout\,
	datab => \colorSetter~26_combout\,
	datac => \colorSetter~27_combout\,
	datad => \colorSetter~29_combout\,
	combout => \color_blue[0]~6_combout\);

-- Location: LCCOMB_X34_Y66_N22
\LessThan48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan48~1_combout\ = (\LessThan39~2_combout\ & ((horizontalPosition(0)) # ((horizontalPosition(2)) # (horizontalPosition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(0),
	datab => \LessThan39~2_combout\,
	datac => horizontalPosition(2),
	datad => horizontalPosition(1),
	combout => \LessThan48~1_combout\);

-- Location: LCCOMB_X34_Y66_N20
\colorSetter~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~93_combout\ = (!\LessThan52~0_combout\ & (\Add6~4_combout\ & (!\LessThan48~1_combout\ & \Add6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan52~0_combout\,
	datab => \Add6~4_combout\,
	datac => \LessThan48~1_combout\,
	datad => \Add6~3_combout\,
	combout => \colorSetter~93_combout\);

-- Location: LCCOMB_X34_Y65_N10
\colorSetter~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~94_combout\ = (\colorSetter~86_combout\ & (!\LessThan50~0_combout\ & (\colorSetter~4_combout\ & \colorSetter~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~86_combout\,
	datab => \LessThan50~0_combout\,
	datac => \colorSetter~4_combout\,
	datad => \colorSetter~93_combout\,
	combout => \colorSetter~94_combout\);

-- Location: LCCOMB_X32_Y67_N30
\colorSetter~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~59_combout\ = (!horizontalPosition(9) & (horizontalPosition(8) $ (\Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(9),
	datab => horizontalPosition(8),
	datad => \Add6~0_combout\,
	combout => \colorSetter~59_combout\);

-- Location: LCCOMB_X35_Y65_N28
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (!horizontalPosition(4) & (horizontalPosition(3) & ((horizontalPosition(1)) # (horizontalPosition(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(1),
	datab => horizontalPosition(4),
	datac => horizontalPosition(2),
	datad => horizontalPosition(3),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X35_Y65_N14
\colorSetter~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~58_combout\ = (\Add6~4_combout\ & (\LessThan13~0_combout\ & (horizontalPosition(6) $ (!\Add6~5_combout\)))) # (!\Add6~4_combout\ & (horizontalPosition(6) $ ((!\Add6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(6),
	datab => \Add6~4_combout\,
	datac => \Add6~5_combout\,
	datad => \LessThan13~0_combout\,
	combout => \colorSetter~58_combout\);

-- Location: LCCOMB_X34_Y67_N28
\Add6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~7_combout\ = horizontalPosition(7) $ (((horizontalPosition(5)) # ((horizontalPosition(6)) # (horizontalPosition(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => horizontalPosition(5),
	datab => horizontalPosition(6),
	datac => horizontalPosition(4),
	datad => horizontalPosition(7),
	combout => \Add6~7_combout\);

-- Location: LCCOMB_X35_Y67_N14
\colorSetter~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~60_combout\ = ((\Add6~7_combout\ & (\LessThan14~1_combout\)) # (!\Add6~7_combout\ & ((!\colorSetter~58_combout\)))) # (!\colorSetter~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => \colorSetter~59_combout\,
	datac => \colorSetter~58_combout\,
	datad => \Add6~7_combout\,
	combout => \colorSetter~60_combout\);

-- Location: LCCOMB_X35_Y67_N0
\colorSetter~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~91_combout\ = (!\colorSetter~60_combout\ & (!\LessThan51~3_combout\ & ((\LessThan51~1_combout\) # (\Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan51~1_combout\,
	datab => \colorSetter~60_combout\,
	datac => \LessThan51~3_combout\,
	datad => \Add7~16_combout\,
	combout => \colorSetter~91_combout\);

-- Location: LCCOMB_X35_Y67_N24
\colorSetter~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~84_combout\ = (horizontalPosition(8) & (\Add6~0_combout\ & !horizontalPosition(9))) # (!horizontalPosition(8) & (!\Add6~0_combout\ & horizontalPosition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => horizontalPosition(8),
	datac => \Add6~0_combout\,
	datad => horizontalPosition(9),
	combout => \colorSetter~84_combout\);

-- Location: LCCOMB_X35_Y67_N8
\LessThan31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan31~0_combout\ = (((\LessThan48~0_combout\ & \LessThan39~2_combout\)) # (!\Add6~4_combout\)) # (!\Add6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datab => \LessThan48~0_combout\,
	datac => \Add6~4_combout\,
	datad => \LessThan39~2_combout\,
	combout => \LessThan31~0_combout\);

-- Location: LCCOMB_X35_Y67_N4
\colorSetter~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~90_combout\ = ((\Add6~7_combout\ & ((\LessThan31~0_combout\))) # (!\Add6~7_combout\ & (\LessThan30~0_combout\))) # (!\colorSetter~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan30~0_combout\,
	datab => \colorSetter~84_combout\,
	datac => \LessThan31~0_combout\,
	datad => \Add6~7_combout\,
	combout => \colorSetter~90_combout\);

-- Location: LCCOMB_X35_Y67_N22
\color_blue[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~10_combout\ = (!\colorSetter~91_combout\ & ((\colorSetter~90_combout\) # ((!\colorSetter~26_combout\ & !\colorSetter~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~26_combout\,
	datab => \colorSetter~91_combout\,
	datac => \colorSetter~90_combout\,
	datad => \colorSetter~29_combout\,
	combout => \color_blue[0]~10_combout\);

-- Location: LCCOMB_X35_Y67_N2
\colorSetter~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \colorSetter~92_combout\ = (!\colorSetter~72_combout\ & (\colorSetter~41_combout\ & (\colorSetter~59_combout\ & !\LessThan26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \colorSetter~72_combout\,
	datab => \colorSetter~41_combout\,
	datac => \colorSetter~59_combout\,
	datad => \LessThan26~0_combout\,
	combout => \colorSetter~92_combout\);

-- Location: LCCOMB_X34_Y69_N28
\color_blue[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~11_combout\ = (\color_blue[0]~9_combout\ & (!\colorSetter~94_combout\ & (\color_blue[0]~10_combout\ & !\colorSetter~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~9_combout\,
	datab => \colorSetter~94_combout\,
	datac => \color_blue[0]~10_combout\,
	datad => \colorSetter~92_combout\,
	combout => \color_blue[0]~11_combout\);

-- Location: LCCOMB_X34_Y69_N20
\color_blue[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~12_combout\ = (\color_blue[0]~5_combout\ & (\color_blue[0]~7_combout\ & (\color_blue[0]~6_combout\ & \color_blue[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~5_combout\,
	datab => \color_blue[0]~7_combout\,
	datac => \color_blue[0]~6_combout\,
	datad => \color_blue[0]~11_combout\,
	combout => \color_blue[0]~12_combout\);

-- Location: LCCOMB_X35_Y69_N26
\color_blue[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~16_combout\ = (\color_blue[0]~12_combout\ & ((\color_blue[0]~14_combout\) # (\color_blue[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color_blue[0]~14_combout\,
	datac => \color_blue[0]~15_combout\,
	datad => \color_blue[0]~12_combout\,
	combout => \color_blue[0]~16_combout\);

-- Location: LCCOMB_X35_Y69_N20
\color_blue[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \color_blue[0]~13_combout\ = (\colorSetter~9_combout\) # ((\colorSetter~6_combout\) # (\colorSetter~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \colorSetter~9_combout\,
	datac => \colorSetter~6_combout\,
	datad => \colorSetter~46_combout\,
	combout => \color_blue[0]~13_combout\);

-- Location: LCCOMB_X35_Y69_N16
\color_green[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- color_green(0) = (\color_blue[0]~16_combout\ & ((!\color_blue[0]~13_combout\))) # (!\color_blue[0]~16_combout\ & (color_green(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => color_green(0),
	datac => \color_blue[0]~16_combout\,
	datad => \color_blue[0]~13_combout\,
	combout => color_green(0));

-- Location: LCCOMB_X35_Y69_N8
\VGA_G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (\VGA_G~0_combout\ & color_green(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_G~0_combout\,
	datad => color_green(0),
	combout => \VGA_G~1_combout\);

-- Location: DDIOOUTCELL_X11_Y73_N18
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: DDIOOUTCELL_X25_Y73_N18
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: DDIOOUTCELL_X11_Y73_N11
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: DDIOOUTCELL_X25_Y73_N25
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: DDIOOUTCELL_X16_Y73_N11
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: DDIOOUTCELL_X16_Y73_N4
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: DDIOOUTCELL_X20_Y73_N4
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: DDIOOUTCELL_X23_Y73_N18
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: DDIOOUTCELL_X38_Y73_N11
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: DDIOOUTCELL_X38_Y73_N4
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: DDIOOUTCELL_X23_Y73_N4
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: DDIOOUTCELL_X42_Y73_N11
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: DDIOOUTCELL_X42_Y73_N4
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: DDIOOUTCELL_X52_Y73_N18
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: DDIOOUTCELL_X23_Y73_N11
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: DDIOOUTCELL_X52_Y73_N25
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \halfClock~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: IOIBUF_X0_Y67_N15
\PS2_KBCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\PS2_KBDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_soundPin <= \soundPin~output_o\;
END structure;


