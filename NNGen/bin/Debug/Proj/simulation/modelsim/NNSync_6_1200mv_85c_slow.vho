-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "08/09/2015 23:49:02"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NNSync IS
    PORT (
	nnIn_0_neg_4 : IN std_logic;
	nnIn_0_neg_3 : IN std_logic;
	nnIn_0_neg_2 : IN std_logic;
	nnIn_0_neg_1 : IN std_logic;
	nnIn_0 : IN std_logic_vector(4 DOWNTO 0);
	nnIn_1_neg_4 : IN std_logic;
	nnIn_1_neg_3 : IN std_logic;
	nnIn_1_neg_2 : IN std_logic;
	nnIn_1_neg_1 : IN std_logic;
	nnIn_1 : IN std_logic_vector(4 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	nnOut_0_neg_4 : OUT std_logic;
	nnOut_0_neg_3 : OUT std_logic;
	nnOut_0_neg_2 : OUT std_logic;
	nnOut_0_neg_1 : OUT std_logic;
	nnOut_0 : OUT std_logic_vector(4 DOWNTO 0);
	nnOut_1_neg_4 : OUT std_logic;
	nnOut_1_neg_3 : OUT std_logic;
	nnOut_1_neg_2 : OUT std_logic;
	nnOut_1_neg_1 : OUT std_logic;
	nnOut_1 : OUT std_logic_vector(4 DOWNTO 0);
	ready : OUT std_logic
	);
END NNSync;

-- Design Ports Information
-- nnOut_0[-4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[-3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[-2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[-1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_0[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[-4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[-3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[-2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[-1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnOut_1[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[-4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[-3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[-2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[-1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_0[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[-4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[-3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[-2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[-1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nnIn_1[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF NNSync IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nnIn_0_neg_4 : std_logic;
SIGNAL ww_nnIn_0_neg_3 : std_logic;
SIGNAL ww_nnIn_0_neg_2 : std_logic;
SIGNAL ww_nnIn_0_neg_1 : std_logic;
SIGNAL ww_nnIn_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_nnIn_1_neg_4 : std_logic;
SIGNAL ww_nnIn_1_neg_3 : std_logic;
SIGNAL ww_nnIn_1_neg_2 : std_logic;
SIGNAL ww_nnIn_1_neg_1 : std_logic;
SIGNAL ww_nnIn_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_nnOut_0_neg_4 : std_logic;
SIGNAL ww_nnOut_0_neg_3 : std_logic;
SIGNAL ww_nnOut_0_neg_2 : std_logic;
SIGNAL ww_nnOut_0_neg_1 : std_logic;
SIGNAL ww_nnOut_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_nnOut_1_neg_4 : std_logic;
SIGNAL ww_nnOut_1_neg_3 : std_logic;
SIGNAL ww_nnOut_1_neg_2 : std_logic;
SIGNAL ww_nnOut_1_neg_1 : std_logic;
SIGNAL ww_nnOut_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wmClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nnOut_0[-4]~output_o\ : std_logic;
SIGNAL \nnOut_0[-3]~output_o\ : std_logic;
SIGNAL \nnOut_0[-2]~output_o\ : std_logic;
SIGNAL \nnOut_0[-1]~output_o\ : std_logic;
SIGNAL \nnOut_0[0]~output_o\ : std_logic;
SIGNAL \nnOut_0[1]~output_o\ : std_logic;
SIGNAL \nnOut_0[2]~output_o\ : std_logic;
SIGNAL \nnOut_0[3]~output_o\ : std_logic;
SIGNAL \nnOut_0[4]~output_o\ : std_logic;
SIGNAL \nnOut_1[-4]~output_o\ : std_logic;
SIGNAL \nnOut_1[-3]~output_o\ : std_logic;
SIGNAL \nnOut_1[-2]~output_o\ : std_logic;
SIGNAL \nnOut_1[-1]~output_o\ : std_logic;
SIGNAL \nnOut_1[0]~output_o\ : std_logic;
SIGNAL \nnOut_1[1]~output_o\ : std_logic;
SIGNAL \nnOut_1[2]~output_o\ : std_logic;
SIGNAL \nnOut_1[3]~output_o\ : std_logic;
SIGNAL \nnOut_1[4]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \nnIn_0[2]~input_o\ : std_logic;
SIGNAL \nnIn_0[3]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[2]~6_combout\ : std_logic;
SIGNAL \nnIn_0_latched[3]~7_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \nnIn_0[-1]~input_o\ : std_logic;
SIGNAL \nnIn_0[-2]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[-1]~3_combout\ : std_logic;
SIGNAL \nnIn_0_latched[-1]~q\ : std_logic;
SIGNAL \nnIn_0_latched[-2]~2_combout\ : std_logic;
SIGNAL \nnIn_0_latched[-2]~q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \nnIn_0[1]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[1]~5_combout\ : std_logic;
SIGNAL \nnIn_0[0]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[0]~4_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \nnIn_0[-3]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[-3]~1_combout\ : std_logic;
SIGNAL \nnIn_0_latched[-3]~q\ : std_logic;
SIGNAL \nnIn_0[-4]~input_o\ : std_logic;
SIGNAL \nnIn_0_latched[-4]~0_combout\ : std_logic;
SIGNAL \nnIn_0_latched[-4]~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \nnIn_1[4]~input_o\ : std_logic;
SIGNAL \nnIn_1[3]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[3]~7_combout\ : std_logic;
SIGNAL \nnIn_1_latched[4]~8_combout\ : std_logic;
SIGNAL \process_1~10_combout\ : std_logic;
SIGNAL \nnIn_1[1]~input_o\ : std_logic;
SIGNAL \nnIn_1[2]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[1]~5_combout\ : std_logic;
SIGNAL \nnIn_1_latched[2]~6_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \nnIn_1[0]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[0]~4_combout\ : std_logic;
SIGNAL \nnIn_1[-1]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[-1]~3_combout\ : std_logic;
SIGNAL \nnIn_1_latched[-1]~q\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \nnIn_0[4]~input_o\ : std_logic;
SIGNAL \nnIn_1[-4]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[-4]~0_combout\ : std_logic;
SIGNAL \nnIn_1_latched[-4]~q\ : std_logic;
SIGNAL \nnIn_0_latched[4]~8_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \nnIn_1[-2]~input_o\ : std_logic;
SIGNAL \nnIn_1[-3]~input_o\ : std_logic;
SIGNAL \nnIn_1_latched[-2]~2_combout\ : std_logic;
SIGNAL \nnIn_1_latched[-2]~q\ : std_logic;
SIGNAL \nnIn_1_latched[-3]~1_combout\ : std_logic;
SIGNAL \nnIn_1_latched[-3]~q\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \process_1~11_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][-4]~0_combout\ : std_logic;
SIGNAL \clockCount~0_combout\ : std_logic;
SIGNAL \clockCount~1_combout\ : std_logic;
SIGNAL \activateSig[0]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|clockIter~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|clockIter~1_combout\ : std_logic;
SIGNAL \holdWM~feeder_combout\ : std_logic;
SIGNAL \holdWM~q\ : std_logic;
SIGNAL \wmClk~combout\ : std_logic;
SIGNAL \wmClk~clkctrl_outclk\ : std_logic;
SIGNAL \wmAddr~2_combout\ : std_logic;
SIGNAL \wmAddr~1_combout\ : std_logic;
SIGNAL \wmAddr~0_combout\ : std_logic;
SIGNAL \wm|ram~1_combout\ : std_logic;
SIGNAL \wm|data[4]~feeder_combout\ : std_logic;
SIGNAL \loadOff[0]~2_combout\ : std_logic;
SIGNAL \loadOff[0]~3\ : std_logic;
SIGNAL \loadOff[1]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux10~0_combout\ : std_logic;
SIGNAL \wm|data[3]~feeder_combout\ : std_logic;
SIGNAL \Neuron_1_0|w_1[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ : std_logic;
SIGNAL \wm|ram~0_combout\ : std_logic;
SIGNAL \wm|data[8]~feeder_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux0~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|w_0[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[6]~1_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux27~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|_~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|w_2[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux28~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux46~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[5]~9_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[4]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux76~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[3]~3_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[2]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[1]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[0]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-1]~7_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-2]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-2]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-3]~5_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-3]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux41~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-4]~q\ : std_logic;
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux42~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentProduct[-5]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux62~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentSum[-5]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~1\ : std_logic;
SIGNAL \Neuron_1_0|Add0~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux61~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentSum[-4]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~3\ : std_logic;
SIGNAL \Neuron_1_0|Add0~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux60~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentSum[-3]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~5\ : std_logic;
SIGNAL \Neuron_1_0|Add0~6_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux59~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentSum[-2]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~7\ : std_logic;
SIGNAL \Neuron_1_0|Add0~8_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux58~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|currentSum[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|Add0~9\ : std_logic;
SIGNAL \Neuron_1_0|Add0~10_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux57~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~11\ : std_logic;
SIGNAL \Neuron_1_0|Add0~12_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux56~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~13\ : std_logic;
SIGNAL \Neuron_1_0|Add0~14_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux55~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~15\ : std_logic;
SIGNAL \Neuron_1_0|Add0~16_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux54~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~17\ : std_logic;
SIGNAL \Neuron_1_0|Add0~18_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux53~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~19\ : std_logic;
SIGNAL \Neuron_1_0|Add0~20_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux52~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~21\ : std_logic;
SIGNAL \Neuron_1_0|Add0~22_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux51~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~23\ : std_logic;
SIGNAL \Neuron_1_0|Add0~24_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux50~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~25\ : std_logic;
SIGNAL \Neuron_1_0|Add0~26_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux49~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~27\ : std_logic;
SIGNAL \Neuron_1_0|Add0~28_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux48~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~29\ : std_logic;
SIGNAL \Neuron_1_0|Add0~30_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux47~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~31\ : std_logic;
SIGNAL \Neuron_1_0|Add0~33\ : std_logic;
SIGNAL \Neuron_1_0|Add0~34_combout\ : std_logic;
SIGNAL \Neuron_1_0|Mux46~3_combout\ : std_logic;
SIGNAL \Neuron_1_0|Add0~32_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[0]~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \currentNeuronOutput[-4]~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[-3]~2_combout\ : std_logic;
SIGNAL \Neuron_1_0|latchOut[-3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \currentNeuronOutput[-3]~q\ : std_logic;
SIGNAL \Neuron_1_0|sum[-2]~3_combout\ : std_logic;
SIGNAL \Neuron_1_0|latchOut[-2]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \currentNeuronOutput[-2]~q\ : std_logic;
SIGNAL \Neuron_1_0|sum[-1]~4_combout\ : std_logic;
SIGNAL \Neuron_1_0|latchOut[-1]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \currentNeuronOutput[-1]~q\ : std_logic;
SIGNAL \Neuron_1_0|sum[-4]~1_combout\ : std_logic;
SIGNAL \Neuron_1_0|latchOut[-4]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \currentNeuronOutput[-4]~q\ : std_logic;
SIGNAL \mem_0|LessThan1~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[3]~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[4]~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[2]~8_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Neuron_1_0|sum[1]~7_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \mem_0|data[-4]~0_combout\ : std_logic;
SIGNAL \mem_0|data[-4]~1_combout\ : std_logic;
SIGNAL \mem_0|Add0~0_combout\ : std_logic;
SIGNAL \mem_0|Add0~1_combout\ : std_logic;
SIGNAL \mem_0|Add0~2\ : std_logic;
SIGNAL \mem_0|Add0~3_combout\ : std_logic;
SIGNAL \mem_0|Add0~4\ : std_logic;
SIGNAL \mem_0|Add0~5_combout\ : std_logic;
SIGNAL \mem_0|Add0~6\ : std_logic;
SIGNAL \mem_0|Add0~7_combout\ : std_logic;
SIGNAL \mem_0|Add0~8\ : std_logic;
SIGNAL \mem_0|Add0~9_combout\ : std_logic;
SIGNAL \mem_0|Add0~10\ : std_logic;
SIGNAL \mem_0|Add0~11_combout\ : std_logic;
SIGNAL \mem_0|Add0~12\ : std_logic;
SIGNAL \mem_0|Add0~13_combout\ : std_logic;
SIGNAL \mem_0|Add0~14\ : std_logic;
SIGNAL \mem_0|Add0~15_combout\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mem_0|Add1~1_cout\ : std_logic;
SIGNAL \mem_0|Add1~3\ : std_logic;
SIGNAL \mem_0|Add1~5\ : std_logic;
SIGNAL \mem_0|Add1~7\ : std_logic;
SIGNAL \mem_0|Add1~9\ : std_logic;
SIGNAL \mem_0|Add1~11\ : std_logic;
SIGNAL \mem_0|Add1~13\ : std_logic;
SIGNAL \mem_0|Add1~15\ : std_logic;
SIGNAL \mem_0|Add1~16_combout\ : std_logic;
SIGNAL \mem_0|Add1~17\ : std_logic;
SIGNAL \mem_0|Add1~18_combout\ : std_logic;
SIGNAL \mem_0|data[-4]~2_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][-4]~q\ : std_logic;
SIGNAL \output_latch_0[-4]~0_combout\ : std_logic;
SIGNAL \output_latch_0[-4]~q\ : std_logic;
SIGNAL \mem_0|Add1~2_combout\ : std_logic;
SIGNAL \mem_0|data[-3]~3_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][-3]~q\ : std_logic;
SIGNAL \output_latch_0[-3]~feeder_combout\ : std_logic;
SIGNAL \output_latch_0[-3]~q\ : std_logic;
SIGNAL \mem_0|Add1~4_combout\ : std_logic;
SIGNAL \mem_0|data[-2]~4_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][-2]~q\ : std_logic;
SIGNAL \output_latch_0[-2]~q\ : std_logic;
SIGNAL \mem_0|Add1~6_combout\ : std_logic;
SIGNAL \mem_0|data[-1]~5_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][-1]~q\ : std_logic;
SIGNAL \output_latch_0[-1]~q\ : std_logic;
SIGNAL \mem_0|Add1~8_combout\ : std_logic;
SIGNAL \mem_0|data[0]~6_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][0]~q\ : std_logic;
SIGNAL \mem_0|LessThan1~1_combout\ : std_logic;
SIGNAL \mem_0|data[1]~8_combout\ : std_logic;
SIGNAL \mem_0|Add1~10_combout\ : std_logic;
SIGNAL \mem_0|data[1]~7_combout\ : std_logic;
SIGNAL \mem_0|data[1]~9_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][1]~q\ : std_logic;
SIGNAL \mem_0|Add1~12_combout\ : std_logic;
SIGNAL \mem_0|data[2]~10_combout\ : std_logic;
SIGNAL \mem_0|data[2]~11_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][2]~q\ : std_logic;
SIGNAL \mem_0|Add1~14_combout\ : std_logic;
SIGNAL \mem_0|data[3]~12_combout\ : std_logic;
SIGNAL \mem_0|data[3]~13_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][3]~q\ : std_logic;
SIGNAL \mem_0|data[4]~14_combout\ : std_logic;
SIGNAL \threshNeuronOutputs[2][4]~q\ : std_logic;
SIGNAL \output_latch_0[4]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[-4]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[-4]~q\ : std_logic;
SIGNAL \output_latch_1[-3]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[-3]~q\ : std_logic;
SIGNAL \output_latch_1[-2]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[-2]~q\ : std_logic;
SIGNAL \output_latch_1[-1]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[-1]~q\ : std_logic;
SIGNAL \output_latch_1[0]~feeder_combout\ : std_logic;
SIGNAL \output_latch_1[4]~feeder_combout\ : std_logic;
SIGNAL clockCount : std_logic_vector(2 DOWNTO 0);
SIGNAL \Neuron_1_0|currentProduct\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Neuron_1_0|latchOut\ : std_logic_vector(4 DOWNTO 0);
SIGNAL loadOff : std_logic_vector(8 DOWNTO 0);
SIGNAL output_latch_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL output_latch_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL nnIn_0_latched : std_logic_vector(4 DOWNTO 0);
SIGNAL nnIn_1_latched : std_logic_vector(4 DOWNTO 0);
SIGNAL currentNeuronOutput : std_logic_vector(4 DOWNTO 0);
SIGNAL \Neuron_1_0|currentSum\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Neuron_1_0|clockIter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Neuron_1_0|w_0\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Neuron_1_0|w_1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Neuron_1_0|w_2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL activateSig : std_logic_vector(1 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \wm|data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL wmAddr : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_nnIn_0_neg_4 <= nnIn_0_neg_4;
ww_nnIn_0_neg_3 <= nnIn_0_neg_3;
ww_nnIn_0_neg_2 <= nnIn_0_neg_2;
ww_nnIn_0_neg_1 <= nnIn_0_neg_1;
ww_nnIn_0 <= nnIn_0;
ww_nnIn_1_neg_4 <= nnIn_1_neg_4;
ww_nnIn_1_neg_3 <= nnIn_1_neg_3;
ww_nnIn_1_neg_2 <= nnIn_1_neg_2;
ww_nnIn_1_neg_1 <= nnIn_1_neg_1;
ww_nnIn_1 <= nnIn_1;
ww_clk <= clk;
ww_reset <= reset;
nnOut_0_neg_4 <= ww_nnOut_0_neg_4;
nnOut_0_neg_3 <= ww_nnOut_0_neg_3;
nnOut_0_neg_2 <= ww_nnOut_0_neg_2;
nnOut_0_neg_1 <= ww_nnOut_0_neg_1;
nnOut_0 <= ww_nnOut_0;
nnOut_1_neg_4 <= ww_nnOut_1_neg_4;
nnOut_1_neg_3 <= ww_nnOut_1_neg_3;
nnOut_1_neg_2 <= ww_nnOut_1_neg_2;
nnOut_1_neg_1 <= ww_nnOut_1_neg_1;
nnOut_1 <= ww_nnOut_1;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mem_0|Add0~15_combout\ & \mem_0|Add0~13_combout\ & \mem_0|Add0~11_combout\ & \mem_0|Add0~9_combout\ & \mem_0|Add0~7_combout\ & \mem_0|Add0~5_combout\ & \mem_0|Add0~3_combout\ & 
\mem_0|Add0~1_combout\);

\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\ <= \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\wmClk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wmClk~combout\);

-- Location: IOOBUF_X33_Y12_N2
\nnOut_0[-4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_0[-4]~q\,
	devoe => ww_devoe,
	o => \nnOut_0[-4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\nnOut_0[-3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_0[-3]~q\,
	devoe => ww_devoe,
	o => \nnOut_0[-3]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\nnOut_0[-2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_0[-2]~q\,
	devoe => ww_devoe,
	o => \nnOut_0[-2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\nnOut_0[-1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_0[-1]~q\,
	devoe => ww_devoe,
	o => \nnOut_0[-1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\nnOut_0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_0(0),
	devoe => ww_devoe,
	o => \nnOut_0[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\nnOut_0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_0(1),
	devoe => ww_devoe,
	o => \nnOut_0[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\nnOut_0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_0(2),
	devoe => ww_devoe,
	o => \nnOut_0[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\nnOut_0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_0(3),
	devoe => ww_devoe,
	o => \nnOut_0[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\nnOut_0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_0(4),
	devoe => ww_devoe,
	o => \nnOut_0[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\nnOut_1[-4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_1[-4]~q\,
	devoe => ww_devoe,
	o => \nnOut_1[-4]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\nnOut_1[-3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_1[-3]~q\,
	devoe => ww_devoe,
	o => \nnOut_1[-3]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\nnOut_1[-2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_1[-2]~q\,
	devoe => ww_devoe,
	o => \nnOut_1[-2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\nnOut_1[-1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_latch_1[-1]~q\,
	devoe => ww_devoe,
	o => \nnOut_1[-1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\nnOut_1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_1(0),
	devoe => ww_devoe,
	o => \nnOut_1[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\nnOut_1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_1(1),
	devoe => ww_devoe,
	o => \nnOut_1[1]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\nnOut_1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_1(2),
	devoe => ww_devoe,
	o => \nnOut_1[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\nnOut_1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_1(3),
	devoe => ww_devoe,
	o => \nnOut_1[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\nnOut_1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => output_latch_1(4),
	devoe => ww_devoe,
	o => \nnOut_1[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\ready~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y24_N8
\nnIn_0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0(2),
	o => \nnIn_0[2]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\nnIn_0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0(3),
	o => \nnIn_0[3]~input_o\);

-- Location: LCCOMB_X25_Y24_N26
\nnIn_0_latched[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[2]~6_combout\ = (\process_1~11_combout\ & (\nnIn_0[2]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_0_latched(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[2]~input_o\,
	datab => \process_1~11_combout\,
	datac => nnIn_0_latched(2),
	combout => \nnIn_0_latched[2]~6_combout\);

-- Location: FF_X25_Y24_N27
\nnIn_0_latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_0_latched(2));

-- Location: LCCOMB_X25_Y24_N24
\nnIn_0_latched[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[3]~7_combout\ = (\process_1~11_combout\ & (\nnIn_0[3]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_0_latched(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[3]~input_o\,
	datab => \process_1~11_combout\,
	datac => nnIn_0_latched(3),
	combout => \nnIn_0_latched[3]~7_combout\);

-- Location: FF_X25_Y24_N25
\nnIn_0_latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_0_latched(3));

-- Location: LCCOMB_X25_Y24_N10
\process_1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\nnIn_0[2]~input_o\ & ((\nnIn_0[3]~input_o\ $ (nnIn_0_latched(3))) # (!nnIn_0_latched(2)))) # (!\nnIn_0[2]~input_o\ & ((nnIn_0_latched(2)) # (\nnIn_0[3]~input_o\ $ (nnIn_0_latched(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[2]~input_o\,
	datab => \nnIn_0[3]~input_o\,
	datac => nnIn_0_latched(2),
	datad => nnIn_0_latched(3),
	combout => \process_1~3_combout\);

-- Location: IOIBUF_X24_Y31_N1
\nnIn_0[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0_neg_1,
	o => \nnIn_0[-1]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\nnIn_0[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0_neg_2,
	o => \nnIn_0[-2]~input_o\);

-- Location: LCCOMB_X25_Y24_N8
\nnIn_0_latched[-1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[-1]~3_combout\ = (\process_1~11_combout\ & (\nnIn_0[-1]~input_o\)) # (!\process_1~11_combout\ & ((\nnIn_0_latched[-1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-1]~input_o\,
	datac => \nnIn_0_latched[-1]~q\,
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[-1]~3_combout\);

-- Location: FF_X25_Y24_N9
\nnIn_0_latched[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[-1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_0_latched[-1]~q\);

-- Location: LCCOMB_X25_Y24_N18
\nnIn_0_latched[-2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[-2]~2_combout\ = (\process_1~11_combout\ & (\nnIn_0[-2]~input_o\)) # (!\process_1~11_combout\ & ((\nnIn_0_latched[-2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[-2]~input_o\,
	datac => \nnIn_0_latched[-2]~q\,
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[-2]~2_combout\);

-- Location: FF_X25_Y24_N19
\nnIn_0_latched[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[-2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_0_latched[-2]~q\);

-- Location: LCCOMB_X25_Y24_N14
\process_1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\nnIn_0[-1]~input_o\ & ((\nnIn_0[-2]~input_o\ $ (\nnIn_0_latched[-2]~q\)) # (!\nnIn_0_latched[-1]~q\))) # (!\nnIn_0[-1]~input_o\ & ((\nnIn_0_latched[-1]~q\) # (\nnIn_0[-2]~input_o\ $ (\nnIn_0_latched[-2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-1]~input_o\,
	datab => \nnIn_0[-2]~input_o\,
	datac => \nnIn_0_latched[-1]~q\,
	datad => \nnIn_0_latched[-2]~q\,
	combout => \process_1~1_combout\);

-- Location: IOIBUF_X24_Y31_N8
\nnIn_0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0(1),
	o => \nnIn_0[1]~input_o\);

-- Location: LCCOMB_X25_Y24_N2
\nnIn_0_latched[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[1]~5_combout\ = (\process_1~11_combout\ & (\nnIn_0[1]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_0_latched(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[1]~input_o\,
	datac => nnIn_0_latched(1),
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[1]~5_combout\);

-- Location: FF_X25_Y24_N3
\nnIn_0_latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_0_latched(1));

-- Location: IOIBUF_X22_Y31_N8
\nnIn_0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0(0),
	o => \nnIn_0[0]~input_o\);

-- Location: LCCOMB_X25_Y24_N28
\nnIn_0_latched[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[0]~4_combout\ = (\process_1~11_combout\ & (\nnIn_0[0]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_0_latched(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[0]~input_o\,
	datac => nnIn_0_latched(0),
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[0]~4_combout\);

-- Location: FF_X25_Y24_N29
\nnIn_0_latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_0_latched(0));

-- Location: LCCOMB_X25_Y24_N4
\process_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\nnIn_0[1]~input_o\ & ((\nnIn_0[0]~input_o\ $ (nnIn_0_latched(0))) # (!nnIn_0_latched(1)))) # (!\nnIn_0[1]~input_o\ & ((nnIn_0_latched(1)) # (\nnIn_0[0]~input_o\ $ (nnIn_0_latched(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[1]~input_o\,
	datab => nnIn_0_latched(1),
	datac => \nnIn_0[0]~input_o\,
	datad => nnIn_0_latched(0),
	combout => \process_1~2_combout\);

-- Location: IOIBUF_X22_Y31_N1
\nnIn_0[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0_neg_3,
	o => \nnIn_0[-3]~input_o\);

-- Location: LCCOMB_X25_Y24_N22
\nnIn_0_latched[-3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[-3]~1_combout\ = (\process_1~11_combout\ & (\nnIn_0[-3]~input_o\)) # (!\process_1~11_combout\ & ((\nnIn_0_latched[-3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[-3]~input_o\,
	datac => \nnIn_0_latched[-3]~q\,
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[-3]~1_combout\);

-- Location: FF_X25_Y24_N23
\nnIn_0_latched[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[-3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_0_latched[-3]~q\);

-- Location: IOIBUF_X33_Y24_N1
\nnIn_0[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0_neg_4,
	o => \nnIn_0[-4]~input_o\);

-- Location: LCCOMB_X25_Y24_N20
\nnIn_0_latched[-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[-4]~0_combout\ = (\process_1~11_combout\ & ((\nnIn_0[-4]~input_o\))) # (!\process_1~11_combout\ & (\nnIn_0_latched[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~11_combout\,
	datac => \nnIn_0_latched[-4]~q\,
	datad => \nnIn_0[-4]~input_o\,
	combout => \nnIn_0_latched[-4]~0_combout\);

-- Location: FF_X25_Y24_N21
\nnIn_0_latched[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_0_latched[-4]~q\);

-- Location: LCCOMB_X25_Y24_N16
\process_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\nnIn_0_latched[-3]~q\ & ((\nnIn_0[-4]~input_o\ $ (\nnIn_0_latched[-4]~q\)) # (!\nnIn_0[-3]~input_o\))) # (!\nnIn_0_latched[-3]~q\ & ((\nnIn_0[-3]~input_o\) # (\nnIn_0[-4]~input_o\ $ (\nnIn_0_latched[-4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0_latched[-3]~q\,
	datab => \nnIn_0[-4]~input_o\,
	datac => \nnIn_0[-3]~input_o\,
	datad => \nnIn_0_latched[-4]~q\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X25_Y24_N0
\process_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~3_combout\) # ((\process_1~1_combout\) # ((\process_1~2_combout\) # (\process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \process_1~1_combout\,
	datac => \process_1~2_combout\,
	datad => \process_1~0_combout\,
	combout => \process_1~4_combout\);

-- Location: IOIBUF_X29_Y31_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\nnIn_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1(4),
	o => \nnIn_1[4]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\nnIn_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1(3),
	o => \nnIn_1[3]~input_o\);

-- Location: LCCOMB_X25_Y24_N30
\nnIn_1_latched[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[3]~7_combout\ = (\process_1~11_combout\ & (\nnIn_1[3]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_1_latched(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_1[3]~input_o\,
	datac => nnIn_1_latched(3),
	datad => \process_1~11_combout\,
	combout => \nnIn_1_latched[3]~7_combout\);

-- Location: FF_X25_Y24_N31
\nnIn_1_latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_1_latched(3));

-- Location: LCCOMB_X25_Y24_N12
\nnIn_1_latched[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[4]~8_combout\ = (\process_1~11_combout\ & (\nnIn_1[4]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_1_latched(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[4]~input_o\,
	datab => \process_1~11_combout\,
	datac => nnIn_1_latched(4),
	combout => \nnIn_1_latched[4]~8_combout\);

-- Location: FF_X25_Y24_N13
\nnIn_1_latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_1_latched(4));

-- Location: LCCOMB_X25_Y24_N6
\process_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~10_combout\ = (\nnIn_1[4]~input_o\ & ((\nnIn_1[3]~input_o\ $ (nnIn_1_latched(3))) # (!nnIn_1_latched(4)))) # (!\nnIn_1[4]~input_o\ & ((nnIn_1_latched(4)) # (\nnIn_1[3]~input_o\ $ (nnIn_1_latched(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[4]~input_o\,
	datab => \nnIn_1[3]~input_o\,
	datac => nnIn_1_latched(3),
	datad => nnIn_1_latched(4),
	combout => \process_1~10_combout\);

-- Location: IOIBUF_X33_Y22_N8
\nnIn_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1(1),
	o => \nnIn_1[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\nnIn_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1(2),
	o => \nnIn_1[2]~input_o\);

-- Location: LCCOMB_X26_Y24_N26
\nnIn_1_latched[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[1]~5_combout\ = (\process_1~11_combout\ & (\nnIn_1[1]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_1_latched(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[1]~input_o\,
	datac => nnIn_1_latched(1),
	datad => \process_1~11_combout\,
	combout => \nnIn_1_latched[1]~5_combout\);

-- Location: FF_X26_Y24_N27
\nnIn_1_latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_1_latched(1));

-- Location: LCCOMB_X26_Y24_N0
\nnIn_1_latched[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[2]~6_combout\ = (\process_1~11_combout\ & (\nnIn_1[2]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_1_latched(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datab => \nnIn_1[2]~input_o\,
	datac => nnIn_1_latched(2),
	combout => \nnIn_1_latched[2]~6_combout\);

-- Location: FF_X26_Y24_N1
\nnIn_1_latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_1_latched(2));

-- Location: LCCOMB_X26_Y24_N22
\process_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\nnIn_1[1]~input_o\ & ((\nnIn_1[2]~input_o\ $ (nnIn_1_latched(2))) # (!nnIn_1_latched(1)))) # (!\nnIn_1[1]~input_o\ & ((nnIn_1_latched(1)) # (\nnIn_1[2]~input_o\ $ (nnIn_1_latched(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[1]~input_o\,
	datab => \nnIn_1[2]~input_o\,
	datac => nnIn_1_latched(1),
	datad => nnIn_1_latched(2),
	combout => \process_1~8_combout\);

-- Location: IOIBUF_X33_Y16_N1
\nnIn_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1(0),
	o => \nnIn_1[0]~input_o\);

-- Location: LCCOMB_X26_Y24_N6
\nnIn_1_latched[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[0]~4_combout\ = (\process_1~11_combout\ & ((\nnIn_1[0]~input_o\))) # (!\process_1~11_combout\ & (nnIn_1_latched(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datac => nnIn_1_latched(0),
	datad => \nnIn_1[0]~input_o\,
	combout => \nnIn_1_latched[0]~4_combout\);

-- Location: FF_X26_Y24_N7
\nnIn_1_latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_1_latched(0));

-- Location: IOIBUF_X33_Y16_N8
\nnIn_1[-1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1_neg_1,
	o => \nnIn_1[-1]~input_o\);

-- Location: LCCOMB_X26_Y24_N12
\nnIn_1_latched[-1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[-1]~3_combout\ = (\process_1~11_combout\ & (\nnIn_1[-1]~input_o\)) # (!\process_1~11_combout\ & ((\nnIn_1_latched[-1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datab => \nnIn_1[-1]~input_o\,
	datac => \nnIn_1_latched[-1]~q\,
	combout => \nnIn_1_latched[-1]~3_combout\);

-- Location: FF_X26_Y24_N13
\nnIn_1_latched[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[-1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_1_latched[-1]~q\);

-- Location: LCCOMB_X26_Y24_N16
\process_1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (nnIn_1_latched(0) & ((\nnIn_1[-1]~input_o\ $ (\nnIn_1_latched[-1]~q\)) # (!\nnIn_1[0]~input_o\))) # (!nnIn_1_latched(0) & ((\nnIn_1[0]~input_o\) # (\nnIn_1[-1]~input_o\ $ (\nnIn_1_latched[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nnIn_1_latched(0),
	datab => \nnIn_1[0]~input_o\,
	datac => \nnIn_1[-1]~input_o\,
	datad => \nnIn_1_latched[-1]~q\,
	combout => \process_1~7_combout\);

-- Location: IOIBUF_X26_Y31_N8
\nnIn_0[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_0(4),
	o => \nnIn_0[4]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\nnIn_1[-4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1_neg_4,
	o => \nnIn_1[-4]~input_o\);

-- Location: LCCOMB_X26_Y24_N14
\nnIn_1_latched[-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[-4]~0_combout\ = (\process_1~11_combout\ & ((\nnIn_1[-4]~input_o\))) # (!\process_1~11_combout\ & (\nnIn_1_latched[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datac => \nnIn_1_latched[-4]~q\,
	datad => \nnIn_1[-4]~input_o\,
	combout => \nnIn_1_latched[-4]~0_combout\);

-- Location: FF_X26_Y24_N15
\nnIn_1_latched[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_1_latched[-4]~q\);

-- Location: LCCOMB_X26_Y24_N28
\nnIn_0_latched[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_0_latched[4]~8_combout\ = (\process_1~11_combout\ & (\nnIn_0[4]~input_o\)) # (!\process_1~11_combout\ & ((nnIn_0_latched(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[4]~input_o\,
	datac => nnIn_0_latched(4),
	datad => \process_1~11_combout\,
	combout => \nnIn_0_latched[4]~8_combout\);

-- Location: FF_X26_Y24_N29
\nnIn_0_latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_0_latched[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nnIn_0_latched(4));

-- Location: LCCOMB_X26_Y24_N4
\process_1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\nnIn_0[4]~input_o\ & ((\nnIn_1[-4]~input_o\ $ (\nnIn_1_latched[-4]~q\)) # (!nnIn_0_latched(4)))) # (!\nnIn_0[4]~input_o\ & ((nnIn_0_latched(4)) # (\nnIn_1[-4]~input_o\ $ (\nnIn_1_latched[-4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[4]~input_o\,
	datab => \nnIn_1[-4]~input_o\,
	datac => \nnIn_1_latched[-4]~q\,
	datad => nnIn_0_latched(4),
	combout => \process_1~5_combout\);

-- Location: IOIBUF_X33_Y27_N8
\nnIn_1[-2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1_neg_2,
	o => \nnIn_1[-2]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\nnIn_1[-3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nnIn_1_neg_3,
	o => \nnIn_1[-3]~input_o\);

-- Location: LCCOMB_X26_Y24_N8
\nnIn_1_latched[-2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[-2]~2_combout\ = (\process_1~11_combout\ & ((\nnIn_1[-2]~input_o\))) # (!\process_1~11_combout\ & (\nnIn_1_latched[-2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datac => \nnIn_1_latched[-2]~q\,
	datad => \nnIn_1[-2]~input_o\,
	combout => \nnIn_1_latched[-2]~2_combout\);

-- Location: FF_X26_Y24_N9
\nnIn_1_latched[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[-2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_1_latched[-2]~q\);

-- Location: LCCOMB_X26_Y24_N18
\nnIn_1_latched[-3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \nnIn_1_latched[-3]~1_combout\ = (\process_1~11_combout\ & (\nnIn_1[-3]~input_o\)) # (!\process_1~11_combout\ & ((\nnIn_1_latched[-3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datab => \nnIn_1[-3]~input_o\,
	datac => \nnIn_1_latched[-3]~q\,
	combout => \nnIn_1_latched[-3]~1_combout\);

-- Location: FF_X26_Y24_N19
\nnIn_1_latched[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nnIn_1_latched[-3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nnIn_1_latched[-3]~q\);

-- Location: LCCOMB_X26_Y24_N10
\process_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (\nnIn_1[-2]~input_o\ & ((\nnIn_1[-3]~input_o\ $ (\nnIn_1_latched[-3]~q\)) # (!\nnIn_1_latched[-2]~q\))) # (!\nnIn_1[-2]~input_o\ & ((\nnIn_1_latched[-2]~q\) # (\nnIn_1[-3]~input_o\ $ (\nnIn_1_latched[-3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[-2]~input_o\,
	datab => \nnIn_1[-3]~input_o\,
	datac => \nnIn_1_latched[-2]~q\,
	datad => \nnIn_1_latched[-3]~q\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X26_Y24_N24
\process_1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\) # ((\process_1~7_combout\) # ((\process_1~5_combout\) # (\process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => \process_1~7_combout\,
	datac => \process_1~5_combout\,
	datad => \process_1~6_combout\,
	combout => \process_1~9_combout\);

-- Location: LCCOMB_X26_Y24_N30
\process_1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~11_combout\ = (\process_1~4_combout\) # ((\reset~input_o\) # ((\process_1~10_combout\) # (\process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \reset~input_o\,
	datac => \process_1~10_combout\,
	datad => \process_1~9_combout\,
	combout => \process_1~11_combout\);

-- Location: LCCOMB_X10_Y13_N24
\threshNeuronOutputs[2][-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \threshNeuronOutputs[2][-4]~0_combout\ = (!\process_1~11_combout\ & (clockCount(0) & clockCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~11_combout\,
	datac => clockCount(0),
	datad => clockCount(1),
	combout => \threshNeuronOutputs[2][-4]~0_combout\);

-- Location: FF_X10_Y13_N25
\clockCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount(2));

-- Location: LCCOMB_X10_Y13_N30
\clockCount~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clockCount~0_combout\ = (!clockCount(2) & (!clockCount(0) & !\process_1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(2),
	datac => clockCount(0),
	datad => \process_1~11_combout\,
	combout => \clockCount~0_combout\);

-- Location: FF_X10_Y13_N31
\clockCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount(0));

-- Location: LCCOMB_X10_Y13_N28
\clockCount~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clockCount~1_combout\ = (!\process_1~11_combout\ & (clockCount(0) $ (clockCount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount(0),
	datac => clockCount(1),
	datad => \process_1~11_combout\,
	combout => \clockCount~1_combout\);

-- Location: FF_X10_Y13_N29
\clockCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clockCount(1));

-- Location: LCCOMB_X11_Y15_N16
\activateSig[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \activateSig[0]~0_combout\ = (\process_1~11_combout\ & (((activateSig(0))))) # (!\process_1~11_combout\ & (!clockCount(1) & ((!clockCount(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datab => clockCount(1),
	datac => activateSig(0),
	datad => clockCount(2),
	combout => \activateSig[0]~0_combout\);

-- Location: FF_X11_Y15_N17
\activateSig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \activateSig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => activateSig(0));

-- Location: LCCOMB_X19_Y24_N28
\Neuron_1_0|clockIter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|clockIter~0_combout\ = ((\Neuron_1_0|clockIter\(1) & activateSig(0))) # (!\Neuron_1_0|clockIter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(1),
	datac => \Neuron_1_0|clockIter\(0),
	datad => activateSig(0),
	combout => \Neuron_1_0|clockIter~0_combout\);

-- Location: FF_X19_Y24_N29
\Neuron_1_0|clockIter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|clockIter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|clockIter\(0));

-- Location: LCCOMB_X19_Y24_N30
\Neuron_1_0|clockIter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|clockIter~1_combout\ = (\Neuron_1_0|clockIter\(1) & ((activateSig(0)) # (!\Neuron_1_0|clockIter\(0)))) # (!\Neuron_1_0|clockIter\(1) & ((\Neuron_1_0|clockIter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => activateSig(0),
	datac => \Neuron_1_0|clockIter\(1),
	datad => \Neuron_1_0|clockIter\(0),
	combout => \Neuron_1_0|clockIter~1_combout\);

-- Location: FF_X19_Y24_N31
\Neuron_1_0|clockIter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|clockIter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|clockIter\(1));

-- Location: LCCOMB_X16_Y1_N18
\holdWM~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \holdWM~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \holdWM~feeder_combout\);

-- Location: FF_X16_Y1_N19
holdWM : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \holdWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \holdWM~q\);

-- Location: LCCOMB_X16_Y1_N24
wmClk : cycloneiv_lcell_comb
-- Equation(s):
-- \wmClk~combout\ = LCELL((\clk~input_o\ & \holdWM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \holdWM~q\,
	combout => \wmClk~combout\);

-- Location: CLKCTRL_G16
\wmClk~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wmClk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wmClk~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y23_N18
\wmAddr~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wmAddr~2_combout\ = (!wmAddr(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => wmAddr(0),
	datad => \reset~input_o\,
	combout => \wmAddr~2_combout\);

-- Location: FF_X22_Y23_N19
\wmAddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wmAddr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wmAddr(0));

-- Location: LCCOMB_X22_Y23_N12
\wmAddr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wmAddr~1_combout\ = (!\reset~input_o\ & (wmAddr(0) $ (wmAddr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wmAddr(0),
	datac => wmAddr(1),
	datad => \reset~input_o\,
	combout => \wmAddr~1_combout\);

-- Location: FF_X22_Y23_N13
\wmAddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wmAddr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wmAddr(1));

-- Location: LCCOMB_X22_Y23_N26
\wmAddr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wmAddr~0_combout\ = (!\reset~input_o\ & (wmAddr(2) $ (((wmAddr(1) & wmAddr(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wmAddr(1),
	datab => wmAddr(0),
	datac => wmAddr(2),
	datad => \reset~input_o\,
	combout => \wmAddr~0_combout\);

-- Location: FF_X22_Y23_N27
\wmAddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wmAddr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wmAddr(2));

-- Location: LCCOMB_X22_Y23_N14
\wm|ram~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wm|ram~1_combout\ = (wmAddr(0)) # (!wmAddr(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wmAddr(2),
	datab => wmAddr(0),
	combout => \wm|ram~1_combout\);

-- Location: LCCOMB_X21_Y23_N22
\wm|data[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wm|data[4]~feeder_combout\ = \wm|ram~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm|ram~1_combout\,
	combout => \wm|data[4]~feeder_combout\);

-- Location: FF_X21_Y23_N23
\wm|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wmClk~clkctrl_outclk\,
	d => \wm|data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm|data\(4));

-- Location: LCCOMB_X22_Y23_N2
\loadOff[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \loadOff[0]~2_combout\ = loadOff(0) $ (VCC)
-- \loadOff[0]~3\ = CARRY(loadOff(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => loadOff(0),
	datad => VCC,
	combout => \loadOff[0]~2_combout\,
	cout => \loadOff[0]~3\);

-- Location: FF_X22_Y23_N3
\loadOff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \loadOff[0]~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loadOff(0));

-- Location: LCCOMB_X22_Y23_N4
\loadOff[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \loadOff[1]~4_combout\ = loadOff(1) $ (\loadOff[0]~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => loadOff(1),
	cin => \loadOff[0]~3\,
	combout => \loadOff[1]~4_combout\);

-- Location: FF_X22_Y23_N5
\loadOff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \loadOff[1]~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loadOff(1));

-- Location: LCCOMB_X22_Y23_N30
\Neuron_1_0|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux10~0_combout\ = (!loadOff(1) & loadOff(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => loadOff(1),
	datad => loadOff(0),
	combout => \Neuron_1_0|Mux10~0_combout\);

-- Location: FF_X22_Y22_N21
\Neuron_1_0|w_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(4),
	sload => VCC,
	ena => \Neuron_1_0|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_1\(0));

-- Location: LCCOMB_X21_Y23_N26
\wm|data[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wm|data[3]~feeder_combout\ = wmAddr(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wmAddr(2),
	combout => \wm|data[3]~feeder_combout\);

-- Location: FF_X21_Y23_N27
\wm|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wmClk~clkctrl_outclk\,
	d => \wm|data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm|data\(3));

-- Location: FF_X22_Y22_N13
\Neuron_1_0|w_1[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(3),
	sload => VCC,
	ena => \Neuron_1_0|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_1[-1]~q\);

-- Location: LCCOMB_X22_Y22_N14
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ = \Neuron_1_0|w_1\(0) $ (\Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|w_1\(0),
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\);

-- Location: LCCOMB_X22_Y23_N28
\wm|ram~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wm|ram~0_combout\ = wmAddr(0) $ (((!wmAddr(2) & !wmAddr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wmAddr(2),
	datab => wmAddr(0),
	datad => wmAddr(1),
	combout => \wm|ram~0_combout\);

-- Location: LCCOMB_X21_Y23_N28
\wm|data[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wm|data[8]~feeder_combout\ = \wm|ram~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm|ram~0_combout\,
	combout => \wm|data[8]~feeder_combout\);

-- Location: FF_X21_Y23_N29
\wm|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wmClk~clkctrl_outclk\,
	d => \wm|data[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm|data\(8));

-- Location: FF_X22_Y22_N31
\Neuron_1_0|w_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(8),
	sload => VCC,
	ena => \Neuron_1_0|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_1\(4));

-- Location: LCCOMB_X23_Y22_N10
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9) = (\nnIn_1[4]~input_o\ & (\Neuron_1_0|w_1[-1]~q\ & ((\Neuron_1_0|w_1\(0))))) # (!\nnIn_1[4]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1[-1]~q\ $ (!\Neuron_1_0|w_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1[-1]~q\,
	datab => \Neuron_1_0|w_1\(4),
	datac => \nnIn_1[4]~input_o\,
	datad => \Neuron_1_0|w_1\(0),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9));

-- Location: LCCOMB_X23_Y22_N22
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_1[4]~input_o\ $ (\Neuron_1_0|w_1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datab => \nnIn_1[4]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9),
	datad => \Neuron_1_0|w_1\(4),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9));

-- Location: LCCOMB_X23_Y22_N12
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) = (!\nnIn_1[4]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[4]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9));

-- Location: LCCOMB_X22_Y22_N12
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7) = (\nnIn_1[2]~input_o\ & (((\Neuron_1_0|w_1\(0) & \Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[2]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|w_1\(0),
	datac => \Neuron_1_0|w_1[-1]~q\,
	datad => \nnIn_1[2]~input_o\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7));

-- Location: LCCOMB_X21_Y22_N0
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7),
	datad => \nnIn_1[3]~input_o\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X23_Y22_N26
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = (!\nnIn_1[3]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_1[3]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X23_Y22_N0
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6) = (\nnIn_1[1]~input_o\ & (\Neuron_1_0|w_1[-1]~q\ & (\Neuron_1_0|w_1\(0)))) # (!\nnIn_1[1]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1[-1]~q\ $ (!\Neuron_1_0|w_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1[-1]~q\,
	datab => \Neuron_1_0|w_1\(0),
	datac => \nnIn_1[1]~input_o\,
	datad => \Neuron_1_0|w_1\(4),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6));

-- Location: LCCOMB_X22_Y22_N10
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6),
	datad => \nnIn_1[2]~input_o\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X22_Y22_N6
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5) = (\nnIn_1[0]~input_o\ & (((\Neuron_1_0|w_1\(0) & \Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[0]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|w_1\(0),
	datac => \nnIn_1[0]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5));

-- Location: LCCOMB_X22_Y22_N30
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_1[1]~input_o\ $ (\Neuron_1_0|w_1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[1]~input_o\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \Neuron_1_0|w_1\(4),
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X21_Y22_N2
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = (!\nnIn_1[2]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[2]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X23_Y22_N28
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = (!\nnIn_1[1]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[1]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X22_Y22_N28
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4) = (\nnIn_1[-1]~input_o\ & (((\Neuron_1_0|w_1\(0) & \Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[-1]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|w_1\(0),
	datac => \nnIn_1[-1]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4));

-- Location: LCCOMB_X22_Y22_N0
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \nnIn_1[0]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X22_Y22_N20
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = (!\nnIn_1[0]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_1[0]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X22_Y22_N2
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3) = (\nnIn_1[-2]~input_o\ & (((\Neuron_1_0|w_1\(0) & \Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[-2]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|w_1\(0),
	datac => \nnIn_1[-2]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3));

-- Location: LCCOMB_X22_Y22_N22
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[-1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \nnIn_1[-1]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X23_Y22_N2
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = (!\nnIn_1[-1]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[-1]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X22_Y22_N16
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2) = (\nnIn_1[-3]~input_o\ & (\Neuron_1_0|w_1\(0) & ((\Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[-3]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_1[-3]~input_o\,
	datab => \Neuron_1_0|w_1\(0),
	datac => \Neuron_1_0|w_1\(4),
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2));

-- Location: LCCOMB_X21_Y22_N4
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[-2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \nnIn_1[-2]~input_o\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X21_Y22_N30
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = (!\nnIn_1[-2]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[-2]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X22_Y22_N18
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1) = (\nnIn_1[-4]~input_o\ & (((\Neuron_1_0|w_1\(0) & \Neuron_1_0|w_1[-1]~q\)))) # (!\nnIn_1[-4]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \Neuron_1_0|w_1\(0),
	datac => \nnIn_1[-4]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1));

-- Location: LCCOMB_X22_Y22_N8
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[-3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \nnIn_1[-3]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X22_Y22_N24
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0) = (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1\(0) $ (!\Neuron_1_0|w_1[-1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|w_1\(0),
	datac => \Neuron_1_0|w_1\(4),
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0));

-- Location: LCCOMB_X22_Y22_N4
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_1\(4) $ (\nnIn_1[-4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1\(4),
	datab => \nnIn_1[-4]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X22_Y22_N26
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = (!\nnIn_1[-3]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[-3]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X19_Y22_N0
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X21_Y22_N6
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\ = (\Neuron_1_0|w_1[-1]~q\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ $ (VCC))) # (!\Neuron_1_0|w_1[-1]~q\ & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & VCC))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\ = CARRY((\Neuron_1_0|w_1[-1]~q\ & \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1[-1]~q\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\);

-- Location: LCCOMB_X21_Y22_N8
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\) # (GND)))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\ = CARRY((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\);

-- Location: LCCOMB_X21_Y22_N10
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\);

-- Location: LCCOMB_X21_Y22_N12
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ & VCC)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\) # 
-- (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\);

-- Location: LCCOMB_X21_Y22_N14
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\);

-- Location: LCCOMB_X21_Y22_N16
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ & VCC)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\) # 
-- (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\);

-- Location: LCCOMB_X21_Y22_N18
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\);

-- Location: LCCOMB_X21_Y22_N20
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ & VCC)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\) # 
-- (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\);

-- Location: LCCOMB_X21_Y22_N22
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) $ 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\);

-- Location: LCCOMB_X21_Y22_N24
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\) # 
-- (GND))))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ & 
-- VCC)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\) 
-- # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7)))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\);

-- Location: LCCOMB_X21_Y22_N26
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ = \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ $ (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\ = CARRY(!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\);

-- Location: LCCOMB_X21_Y22_N28
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ = \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\);

-- Location: LCCOMB_X23_Y22_N18
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8) = (\nnIn_1[3]~input_o\ & (\Neuron_1_0|w_1[-1]~q\ & (\Neuron_1_0|w_1\(0)))) # (!\nnIn_1[3]~input_o\ & (\Neuron_1_0|w_1\(4) & (\Neuron_1_0|w_1[-1]~q\ $ (!\Neuron_1_0|w_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_1[-1]~q\,
	datab => \Neuron_1_0|w_1\(0),
	datac => \Neuron_1_0|w_1\(4),
	datad => \nnIn_1[3]~input_o\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8));

-- Location: LCCOMB_X23_Y22_N8
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8)) # ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_1[4]~input_o\ $ (\Neuron_1_0|w_1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datab => \nnIn_1[4]~input_o\,
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8),
	datad => \Neuron_1_0|w_1\(4),
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X19_Y22_N8
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_1\(4) $ (VCC))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_1\(4) & VCC))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & \Neuron_1_0|w_1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datab => \Neuron_1_0|w_1\(4),
	datad => VCC,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\);

-- Location: LCCOMB_X19_Y22_N10
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\) # (GND)))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ = CARRY((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\);

-- Location: LCCOMB_X19_Y22_N12
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ $ (GND))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ & VCC))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\);

-- Location: LCCOMB_X19_Y22_N14
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\) # (GND)))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ = CARRY((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\);

-- Location: LCCOMB_X19_Y22_N16
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ $ (GND))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ & VCC))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\);

-- Location: LCCOMB_X19_Y22_N18
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ & VCC))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\);

-- Location: LCCOMB_X19_Y22_N20
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ = \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ $ (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\ = CARRY(!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\);

-- Location: LCCOMB_X19_Y22_N22
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ = \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\);

-- Location: LCCOMB_X23_Y22_N20
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = (!\nnIn_1[-4]~input_o\ & \Neuron_1_0|w_1[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nnIn_1[-4]~input_o\,
	datad => \Neuron_1_0|w_1[-1]~q\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X20_Y22_N2
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\ & \Neuron_1_0|w_1[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\,
	datab => \Neuron_1_0|w_1[-1]~q\,
	datad => VCC,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\);

-- Location: LCCOMB_X20_Y22_N4
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ & VCC)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\) # (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\);

-- Location: LCCOMB_X20_Y22_N6
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ $ 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ $ (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\);

-- Location: LCCOMB_X20_Y22_N8
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ & VCC)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\) # (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\);

-- Location: LCCOMB_X20_Y22_N10
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ $ 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ $ (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\);

-- Location: LCCOMB_X20_Y22_N12
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ & VCC)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\) # (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\);

-- Location: LCCOMB_X20_Y22_N14
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ $ 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ $ (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\);

-- Location: LCCOMB_X20_Y22_N16
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ & VCC)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\) # (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\);

-- Location: LCCOMB_X20_Y22_N18
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ $ 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ $ (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\);

-- Location: LCCOMB_X20_Y22_N20
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ & VCC)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\) # (GND)))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\,
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\);

-- Location: LCCOMB_X20_Y22_N22
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\ = ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) $ 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ $ (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\)))) # (GND)
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ & 
-- !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\);

-- Location: LCCOMB_X20_Y22_N24
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & 
-- ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\)) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\) # (GND))))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & 
-- (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ & VCC)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\))))
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\) 
-- # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & !\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\,
	cout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\);

-- Location: LCCOMB_X20_Y22_N26
\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\ = \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\,
	combout => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Neuron_1_0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux0~0_combout\ = (!loadOff(1) & !loadOff(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => loadOff(1),
	datad => loadOff(0),
	combout => \Neuron_1_0|Mux0~0_combout\);

-- Location: FF_X22_Y24_N29
\Neuron_1_0|w_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(4),
	sload => VCC,
	ena => \Neuron_1_0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_0\(0));

-- Location: FF_X22_Y24_N1
\Neuron_1_0|w_0[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(3),
	sload => VCC,
	ena => \Neuron_1_0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_0[-1]~q\);

-- Location: LCCOMB_X22_Y24_N6
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ = \Neuron_1_0|w_0\(0) $ (\Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|w_0\(0),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\);

-- Location: FF_X22_Y24_N27
\Neuron_1_0|w_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(8),
	sload => VCC,
	ena => \Neuron_1_0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_0\(4));

-- Location: LCCOMB_X23_Y24_N18
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9) = (\nnIn_0[4]~input_o\ & (((\Neuron_1_0|w_0[-1]~q\ & \Neuron_1_0|w_0\(0))))) # (!\nnIn_0[4]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0[-1]~q\ $ (!\Neuron_1_0|w_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[4]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \Neuron_1_0|w_0\(0),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9));

-- Location: LCCOMB_X23_Y24_N26
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[4]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[4]~input_o\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(9),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9));

-- Location: LCCOMB_X23_Y24_N20
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7) = (\nnIn_0[2]~input_o\ & (((\Neuron_1_0|w_0[-1]~q\ & \Neuron_1_0|w_0\(0))))) # (!\nnIn_0[2]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0[-1]~q\ $ (!\Neuron_1_0|w_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[2]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \Neuron_1_0|w_0\(0),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7));

-- Location: LCCOMB_X23_Y24_N22
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[3]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[3]~input_o\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(7),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7));

-- Location: LCCOMB_X23_Y24_N12
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) = (!\nnIn_0[4]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[4]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9));

-- Location: LCCOMB_X23_Y24_N0
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) = (!\nnIn_0[3]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[3]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8));

-- Location: LCCOMB_X22_Y24_N0
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6) = (\nnIn_0[1]~input_o\ & (((\Neuron_1_0|w_0[-1]~q\ & \Neuron_1_0|w_0\(0))))) # (!\nnIn_0[1]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0[-1]~q\ $ (!\Neuron_1_0|w_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[1]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \Neuron_1_0|w_0\(0),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6));

-- Location: LCCOMB_X22_Y24_N26
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[2]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(6),
	datab => \nnIn_0[2]~input_o\,
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6));

-- Location: LCCOMB_X22_Y24_N22
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5) = (\nnIn_0[0]~input_o\ & (\Neuron_1_0|w_0\(0) & ((\Neuron_1_0|w_0[-1]~q\)))) # (!\nnIn_0[0]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[0]~input_o\,
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5));

-- Location: LCCOMB_X22_Y24_N2
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_0\(4) $ (\nnIn_0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[1]~input_o\,
	datac => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(5),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X23_Y24_N2
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) = (!\nnIn_0[2]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[2]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7));

-- Location: LCCOMB_X22_Y24_N24
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4) = (\nnIn_0[-1]~input_o\ & (\Neuron_1_0|w_0\(0) & ((\Neuron_1_0|w_0[-1]~q\)))) # (!\nnIn_0[-1]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-1]~input_o\,
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4));

-- Location: LCCOMB_X22_Y24_N20
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[0]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[0]~input_o\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(4),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X21_Y24_N0
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) = (\Neuron_1_0|w_0[-1]~q\ & !\nnIn_0[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|w_0[-1]~q\,
	datac => \nnIn_0[1]~input_o\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6));

-- Location: LCCOMB_X22_Y24_N10
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3) = (\nnIn_0[-2]~input_o\ & (\Neuron_1_0|w_0\(0) & ((\Neuron_1_0|w_0[-1]~q\)))) # (!\nnIn_0[-2]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-2]~input_o\,
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3));

-- Location: LCCOMB_X22_Y24_N30
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[-1]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datab => \nnIn_0[-1]~input_o\,
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(3),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X21_Y24_N2
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) = (!\nnIn_0[0]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[0]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5));

-- Location: LCCOMB_X22_Y24_N16
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2) = (\nnIn_0[-3]~input_o\ & (\Neuron_1_0|w_0\(0) & ((\Neuron_1_0|w_0[-1]~q\)))) # (!\nnIn_0[-3]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-3]~input_o\,
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2));

-- Location: LCCOMB_X22_Y24_N12
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\nnIn_0[-2]~input_o\ $ (\Neuron_1_0|w_0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-2]~input_o\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(2),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X21_Y24_N4
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) = (\Neuron_1_0|w_0[-1]~q\ & !\nnIn_0[-1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \nnIn_0[-1]~input_o\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4));

-- Location: LCCOMB_X21_Y24_N30
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) = (!\nnIn_0[-2]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[-2]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3));

-- Location: LCCOMB_X22_Y24_N14
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1) = (\nnIn_0[-4]~input_o\ & (\Neuron_1_0|w_0\(0) & ((\Neuron_1_0|w_0[-1]~q\)))) # (!\nnIn_0[-4]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nnIn_0[-4]~input_o\,
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1));

-- Location: LCCOMB_X22_Y24_N18
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_0\(4) $ (\nnIn_0[-3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[-3]~input_o\,
	datac => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(1),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X22_Y24_N8
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0) = (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0\(0) $ (!\Neuron_1_0|w_0[-1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|w_0\(0),
	datac => \Neuron_1_0|w_0\(4),
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0));

-- Location: LCCOMB_X22_Y24_N4
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_0\(4) $ (\nnIn_0[-4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[-4]~input_o\,
	datac => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(0),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X22_Y24_N28
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) = (!\nnIn_0[-3]~input_o\ & \Neuron_1_0|w_0[-1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nnIn_0[-3]~input_o\,
	datad => \Neuron_1_0|w_0[-1]~q\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2));

-- Location: LCCOMB_X21_Y24_N6
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_0[-1]~q\ $ (VCC))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_0[-1]~q\ & VCC))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & \Neuron_1_0|w_0[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datab => \Neuron_1_0|w_0[-1]~q\,
	datad => VCC,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\);

-- Location: LCCOMB_X21_Y24_N8
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\) # (GND)))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\ = CARRY((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~1\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\);

-- Location: LCCOMB_X21_Y24_N10
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) $ 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(2),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~3\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\);

-- Location: LCCOMB_X21_Y24_N12
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\ & VCC)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\) # 
-- (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3) & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(3),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~5\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\);

-- Location: LCCOMB_X21_Y24_N14
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) $ 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(4),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~7\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\);

-- Location: LCCOMB_X21_Y24_N16
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\ & VCC)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\) # 
-- (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(5),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~9\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\);

-- Location: LCCOMB_X21_Y24_N18
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) $ 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(6),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~11\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\);

-- Location: LCCOMB_X21_Y24_N20
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\ & VCC)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\) # 
-- (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(7),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~13\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\);

-- Location: LCCOMB_X21_Y24_N22
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) $ (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) $ 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(8),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(6),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~15\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\);

-- Location: LCCOMB_X21_Y24_N24
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\ & 
-- VCC)))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\) # 
-- (GND))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9) & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(7),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(9),
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~17\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\);

-- Location: LCCOMB_X21_Y24_N26
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ = \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\ $ (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\ = CARRY(!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~19\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\);

-- Location: LCCOMB_X21_Y24_N28
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ = \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~21\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\);

-- Location: LCCOMB_X23_Y24_N10
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8) = (\nnIn_0[3]~input_o\ & (((\Neuron_1_0|w_0[-1]~q\ & \Neuron_1_0|w_0\(0))))) # (!\nnIn_0[3]~input_o\ & (\Neuron_1_0|w_0\(4) & (\Neuron_1_0|w_0[-1]~q\ $ (!\Neuron_1_0|w_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \nnIn_0[3]~input_o\,
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \Neuron_1_0|w_0\(0),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8));

-- Location: LCCOMB_X23_Y24_N16
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8)) # ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\ & 
-- (\Neuron_1_0|w_0\(4) $ (\nnIn_0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0\(4),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs4a[2]~0_combout\,
	datac => \nnIn_0[4]~input_o\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le3a\(8),
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8));

-- Location: LCCOMB_X19_Y24_N6
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_0\(4) $ (VCC))) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & (\Neuron_1_0|w_0\(4) & VCC))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & \Neuron_1_0|w_0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datab => \Neuron_1_0|w_0\(4),
	datad => VCC,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\);

-- Location: LCCOMB_X19_Y24_N8
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\) # (GND)))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ = CARRY((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~1\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\);

-- Location: LCCOMB_X19_Y24_N10
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ $ (GND))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\ & VCC))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~3\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\);

-- Location: LCCOMB_X19_Y24_N12
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\) # (GND)))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ = CARRY((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\) # 
-- (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~5\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\);

-- Location: LCCOMB_X19_Y24_N14
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ $ (GND))) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\ & VCC))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~7\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\);

-- Location: LCCOMB_X19_Y24_N16
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ = (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\)) # (!\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\ & VCC))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ = CARRY((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~9\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\);

-- Location: LCCOMB_X19_Y24_N18
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ = \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\ $ (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\ = CARRY(!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~11\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\);

-- Location: LCCOMB_X19_Y24_N20
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ = \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~13\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = (\Neuron_1_0|w_0[-1]~q\ & !\nnIn_0[-4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Neuron_1_0|w_0[-1]~q\,
	datad => \nnIn_0[-4]~input_o\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X20_Y24_N4
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ = CARRY((\Neuron_1_0|w_0[-1]~q\ & \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_0[-1]~q\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[0]~0_combout\,
	datad => VCC,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\);

-- Location: LCCOMB_X20_Y24_N6
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\ & VCC)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\) # (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[1]~2_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[2]~1_cout\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\);

-- Location: LCCOMB_X20_Y24_N8
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ $ 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ $ (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[0]~0_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[2]~4_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~3\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\);

-- Location: LCCOMB_X20_Y24_N10
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\ & VCC)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\) # (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\ & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[1]~2_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[3]~6_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~5\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\);

-- Location: LCCOMB_X20_Y24_N12
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ $ 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ $ (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[2]~4_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[4]~8_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~7\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\);

-- Location: LCCOMB_X20_Y24_N14
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\ & VCC)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\) # (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\ & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[3]~6_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[5]~10_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~9\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\);

-- Location: LCCOMB_X20_Y24_N16
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ $ 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ $ (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[4]~8_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[6]~12_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~11\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\);

-- Location: LCCOMB_X20_Y24_N18
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\ & VCC)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\) # (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\ & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[7]~14_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[5]~10_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~13\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\);

-- Location: LCCOMB_X20_Y24_N20
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ $ 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ $ (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[8]~16_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[6]~12_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~15\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\);

-- Location: LCCOMB_X20_Y24_N22
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\ & VCC)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\) # (GND)))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\ & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[9]~18_combout\,
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add16_result[7]~14_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~17\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\);

-- Location: LCCOMB_X20_Y24_N24
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\ = ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) $ 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ $ (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\)))) # (GND)
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8) & (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\ & 
-- !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(8),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[10]~20_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~19\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\);

-- Location: LCCOMB_X20_Y24_N26
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\ = (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\)) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\) # (GND))))) # 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\ & VCC)) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\))))
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\ = CARRY((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & ((!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\) 
-- # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\))) # (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9) & 
-- (!\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\ & !\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(9),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add12_result[11]~22_combout\,
	datad => VCC,
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~21\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\,
	cout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\);

-- Location: LCCOMB_X20_Y24_N28
\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\ = \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~23\,
	combout => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\);

-- Location: LCCOMB_X20_Y22_N0
\Neuron_1_0|currentProduct[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[6]~1_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\,
	datab => \Neuron_1_0|clockIter\(0),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[14]~24_combout\,
	combout => \Neuron_1_0|currentProduct[6]~1_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Neuron_1_0|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux27~0_combout\ = (loadOff(1) & !loadOff(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => loadOff(1),
	datad => loadOff(0),
	combout => \Neuron_1_0|Mux27~0_combout\);

-- Location: FF_X21_Y23_N31
\Neuron_1_0|w_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(4),
	sload => VCC,
	ena => \Neuron_1_0|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_2\(0));

-- Location: FF_X21_Y23_N21
\Neuron_1_0|w_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(8),
	sload => VCC,
	ena => \Neuron_1_0|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_2\(1));

-- Location: LCCOMB_X21_Y23_N20
\Neuron_1_0|Mult2|mult_core|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult2|mult_core|_~0_combout\ = (\Neuron_1_0|w_2\(0) & !\Neuron_1_0|w_2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_2\(0),
	datac => \Neuron_1_0|w_2\(1),
	combout => \Neuron_1_0|Mult2|mult_core|_~0_combout\);

-- Location: FF_X21_Y23_N25
\Neuron_1_0|w_2[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \wm|data\(3),
	sload => VCC,
	ena => \Neuron_1_0|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|w_2[-1]~q\);

-- Location: LCCOMB_X21_Y23_N30
\Neuron_1_0|Mult2|mult_core|romout[1][5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ = \Neuron_1_0|w_2\(0) $ (\Neuron_1_0|w_2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Neuron_1_0|w_2\(0),
	datad => \Neuron_1_0|w_2\(1),
	combout => \Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\);

-- Location: LCCOMB_X20_Y23_N22
\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Neuron_1_0|w_2\(0) & (\Neuron_1_0|w_2[-1]~q\ $ (VCC))) # (!\Neuron_1_0|w_2\(0) & (\Neuron_1_0|w_2[-1]~q\ & VCC))
-- \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Neuron_1_0|w_2\(0) & \Neuron_1_0|w_2[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|w_2\(0),
	datab => \Neuron_1_0|w_2[-1]~q\,
	datad => VCC,
	combout => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X20_Y23_N24
\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ & ((\Neuron_1_0|w_2[-1]~q\ & (\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Neuron_1_0|w_2[-1]~q\ & (!\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ & ((\Neuron_1_0|w_2[-1]~q\ & (!\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)) 
-- # (!\Neuron_1_0|w_2[-1]~q\ & ((\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ & (!\Neuron_1_0|w_2[-1]~q\ & !\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\ & ((!\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Neuron_1_0|w_2[-1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult2|mult_core|romout[1][5]~0_combout\,
	datab => \Neuron_1_0|w_2[-1]~q\,
	datad => VCC,
	cin => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X20_Y23_N26
\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = \Neuron_1_0|Mult2|mult_core|_~0_combout\ $ (\Neuron_1_0|w_2[-1]~q\ $ (!\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult2|mult_core|_~0_combout\,
	datab => \Neuron_1_0|w_2[-1]~q\,
	cin => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X20_Y22_N30
\Neuron_1_0|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux28~0_combout\ = (\Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\Neuron_1_0|clockIter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Neuron_1_0|clockIter\(0),
	combout => \Neuron_1_0|Mux28~0_combout\);

-- Location: FF_X20_Y22_N1
\Neuron_1_0|currentProduct[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[6]~1_combout\,
	asdata => \Neuron_1_0|Mux28~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(6));

-- Location: LCCOMB_X19_Y23_N16
\Neuron_1_0|Mux46~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux46~2_combout\ = (\Neuron_1_0|clockIter\(1)) # (\Neuron_1_0|clockIter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Neuron_1_0|clockIter\(1),
	datad => \Neuron_1_0|clockIter\(0),
	combout => \Neuron_1_0|Mux46~2_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Neuron_1_0|currentProduct[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[5]~9_combout\ = (\Neuron_1_0|clockIter\(0) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\))) # (!\Neuron_1_0|clockIter\(0) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\,
	datab => \Neuron_1_0|clockIter\(0),
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[13]~22_combout\,
	combout => \Neuron_1_0|currentProduct[5]~9_combout\);

-- Location: FF_X20_Y22_N29
\Neuron_1_0|currentProduct[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[5]~9_combout\,
	asdata => \Neuron_1_0|Mux28~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(5));

-- Location: LCCOMB_X20_Y24_N0
\Neuron_1_0|currentProduct[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[4]~4_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[12]~20_combout\,
	combout => \Neuron_1_0|currentProduct[4]~4_combout\);

-- Location: LCCOMB_X19_Y24_N24
\Neuron_1_0|Mux76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux76~0_combout\ = (\Neuron_1_0|clockIter\(0) & \Neuron_1_0|clockIter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|clockIter\(0),
	datac => \Neuron_1_0|clockIter\(1),
	combout => \Neuron_1_0|Mux76~0_combout\);

-- Location: FF_X20_Y24_N1
\Neuron_1_0|currentProduct[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[4]~4_combout\,
	asdata => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(4));

-- Location: LCCOMB_X20_Y24_N2
\Neuron_1_0|currentProduct[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[3]~3_combout\ = (\Neuron_1_0|clockIter\(0) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\))) # (!\Neuron_1_0|clockIter\(0) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\,
	datab => \Neuron_1_0|clockIter\(0),
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[11]~18_combout\,
	combout => \Neuron_1_0|currentProduct[3]~3_combout\);

-- Location: FF_X20_Y24_N3
\Neuron_1_0|currentProduct[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[3]~3_combout\,
	asdata => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(3));

-- Location: LCCOMB_X20_Y24_N30
\Neuron_1_0|currentProduct[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[2]~2_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[10]~16_combout\,
	combout => \Neuron_1_0|currentProduct[2]~2_combout\);

-- Location: FF_X20_Y24_N31
\Neuron_1_0|currentProduct[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[2]~2_combout\,
	asdata => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(2));

-- Location: LCCOMB_X20_Y23_N20
\Neuron_1_0|currentProduct[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[1]~0_combout\ = (\Neuron_1_0|clockIter\(0) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\))) # (!\Neuron_1_0|clockIter\(0) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[9]~14_combout\,
	combout => \Neuron_1_0|currentProduct[1]~0_combout\);

-- Location: FF_X20_Y23_N21
\Neuron_1_0|currentProduct[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[1]~0_combout\,
	asdata => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(1));

-- Location: LCCOMB_X20_Y23_N8
\Neuron_1_0|currentProduct[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[0]~8_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\,
	datab => \Neuron_1_0|clockIter\(0),
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[8]~12_combout\,
	combout => \Neuron_1_0|currentProduct[0]~8_combout\);

-- Location: FF_X20_Y23_N9
\Neuron_1_0|currentProduct[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[0]~8_combout\,
	asdata => \Neuron_1_0|Mult2|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct\(0));

-- Location: LCCOMB_X20_Y23_N10
\Neuron_1_0|currentProduct[-1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[-1]~7_combout\ = (\Neuron_1_0|clockIter\(0) & ((\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\))) # (!\Neuron_1_0|clockIter\(0) & 
-- (\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\,
	datad => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[7]~10_combout\,
	combout => \Neuron_1_0|currentProduct[-1]~7_combout\);

-- Location: FF_X20_Y23_N11
\Neuron_1_0|currentProduct[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[-1]~7_combout\,
	asdata => \Neuron_1_0|w_2[-1]~q\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct[-1]~q\);

-- Location: LCCOMB_X20_Y23_N12
\Neuron_1_0|currentProduct[-2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[-2]~6_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[6]~8_combout\,
	combout => \Neuron_1_0|currentProduct[-2]~6_combout\);

-- Location: LCCOMB_X20_Y23_N14
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X20_Y23_N13
\Neuron_1_0|currentProduct[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[-2]~6_combout\,
	asdata => \~GND~combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct[-2]~q\);

-- Location: LCCOMB_X20_Y23_N18
\Neuron_1_0|currentProduct[-3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|currentProduct[-3]~5_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(0),
	datab => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[5]~6_combout\,
	combout => \Neuron_1_0|currentProduct[-3]~5_combout\);

-- Location: FF_X20_Y23_N19
\Neuron_1_0|currentProduct[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|currentProduct[-3]~5_combout\,
	asdata => \~GND~combout\,
	sclr => \Neuron_1_0|Mux76~0_combout\,
	sload => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct[-3]~q\);

-- Location: LCCOMB_X19_Y23_N0
\Neuron_1_0|Mux41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux41~0_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|clockIter\(0),
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[4]~4_combout\,
	combout => \Neuron_1_0|Mux41~0_combout\);

-- Location: FF_X19_Y23_N1
\Neuron_1_0|currentProduct[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux41~0_combout\,
	sclr => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct[-4]~q\);

-- Location: LCCOMB_X19_Y23_N2
\Neuron_1_0|Mux42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux42~0_combout\ = (\Neuron_1_0|clockIter\(0) & (\Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\)) # (!\Neuron_1_0|clockIter\(0) & 
-- ((\Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|clockIter\(0),
	datac => \Neuron_1_0|Mult1|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\,
	datad => \Neuron_1_0|Mult0|auto_generated|mac_mult1|auto_generated|mult1|add8_result[3]~2_combout\,
	combout => \Neuron_1_0|Mux42~0_combout\);

-- Location: FF_X19_Y23_N3
\Neuron_1_0|currentProduct[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux42~0_combout\,
	sclr => \Neuron_1_0|clockIter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentProduct[-5]~q\);

-- Location: LCCOMB_X18_Y23_N14
\Neuron_1_0|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~0_combout\ = (\Neuron_1_0|currentProduct[-5]~q\ & (\Neuron_1_0|currentSum[-5]~q\ $ (VCC))) # (!\Neuron_1_0|currentProduct[-5]~q\ & (\Neuron_1_0|currentSum[-5]~q\ & VCC))
-- \Neuron_1_0|Add0~1\ = CARRY((\Neuron_1_0|currentProduct[-5]~q\ & \Neuron_1_0|currentSum[-5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct[-5]~q\,
	datab => \Neuron_1_0|currentSum[-5]~q\,
	datad => VCC,
	combout => \Neuron_1_0|Add0~0_combout\,
	cout => \Neuron_1_0|Add0~1\);

-- Location: LCCOMB_X18_Y23_N8
\Neuron_1_0|Mux62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux62~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~0_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~0_combout\ & (\Neuron_1_0|Add0~32_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~0_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux62~0_combout\);

-- Location: FF_X18_Y23_N9
\Neuron_1_0|currentSum[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum[-5]~q\);

-- Location: LCCOMB_X18_Y23_N16
\Neuron_1_0|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~2_combout\ = (\Neuron_1_0|currentSum[-4]~q\ & ((\Neuron_1_0|currentProduct[-4]~q\ & (\Neuron_1_0|Add0~1\ & VCC)) # (!\Neuron_1_0|currentProduct[-4]~q\ & (!\Neuron_1_0|Add0~1\)))) # (!\Neuron_1_0|currentSum[-4]~q\ & 
-- ((\Neuron_1_0|currentProduct[-4]~q\ & (!\Neuron_1_0|Add0~1\)) # (!\Neuron_1_0|currentProduct[-4]~q\ & ((\Neuron_1_0|Add0~1\) # (GND)))))
-- \Neuron_1_0|Add0~3\ = CARRY((\Neuron_1_0|currentSum[-4]~q\ & (!\Neuron_1_0|currentProduct[-4]~q\ & !\Neuron_1_0|Add0~1\)) # (!\Neuron_1_0|currentSum[-4]~q\ & ((!\Neuron_1_0|Add0~1\) # (!\Neuron_1_0|currentProduct[-4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum[-4]~q\,
	datab => \Neuron_1_0|currentProduct[-4]~q\,
	datad => VCC,
	cin => \Neuron_1_0|Add0~1\,
	combout => \Neuron_1_0|Add0~2_combout\,
	cout => \Neuron_1_0|Add0~3\);

-- Location: LCCOMB_X19_Y23_N6
\Neuron_1_0|Mux61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux61~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~2_combout\ & \Neuron_1_0|Add0~32_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~2_combout\) # 
-- (\Neuron_1_0|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~34_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~2_combout\,
	datad => \Neuron_1_0|Add0~32_combout\,
	combout => \Neuron_1_0|Mux61~0_combout\);

-- Location: FF_X19_Y23_N7
\Neuron_1_0|currentSum[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum[-4]~q\);

-- Location: LCCOMB_X18_Y23_N18
\Neuron_1_0|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~4_combout\ = ((\Neuron_1_0|currentSum[-3]~q\ $ (\Neuron_1_0|currentProduct[-3]~q\ $ (!\Neuron_1_0|Add0~3\)))) # (GND)
-- \Neuron_1_0|Add0~5\ = CARRY((\Neuron_1_0|currentSum[-3]~q\ & ((\Neuron_1_0|currentProduct[-3]~q\) # (!\Neuron_1_0|Add0~3\))) # (!\Neuron_1_0|currentSum[-3]~q\ & (\Neuron_1_0|currentProduct[-3]~q\ & !\Neuron_1_0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum[-3]~q\,
	datab => \Neuron_1_0|currentProduct[-3]~q\,
	datad => VCC,
	cin => \Neuron_1_0|Add0~3\,
	combout => \Neuron_1_0|Add0~4_combout\,
	cout => \Neuron_1_0|Add0~5\);

-- Location: LCCOMB_X18_Y23_N6
\Neuron_1_0|Mux60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux60~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~32_combout\ & \Neuron_1_0|Add0~4_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~32_combout\) # 
-- (\Neuron_1_0|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~34_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~4_combout\,
	combout => \Neuron_1_0|Mux60~0_combout\);

-- Location: FF_X18_Y23_N7
\Neuron_1_0|currentSum[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum[-3]~q\);

-- Location: LCCOMB_X18_Y23_N20
\Neuron_1_0|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~6_combout\ = (\Neuron_1_0|currentProduct[-2]~q\ & ((\Neuron_1_0|currentSum[-2]~q\ & (\Neuron_1_0|Add0~5\ & VCC)) # (!\Neuron_1_0|currentSum[-2]~q\ & (!\Neuron_1_0|Add0~5\)))) # (!\Neuron_1_0|currentProduct[-2]~q\ & 
-- ((\Neuron_1_0|currentSum[-2]~q\ & (!\Neuron_1_0|Add0~5\)) # (!\Neuron_1_0|currentSum[-2]~q\ & ((\Neuron_1_0|Add0~5\) # (GND)))))
-- \Neuron_1_0|Add0~7\ = CARRY((\Neuron_1_0|currentProduct[-2]~q\ & (!\Neuron_1_0|currentSum[-2]~q\ & !\Neuron_1_0|Add0~5\)) # (!\Neuron_1_0|currentProduct[-2]~q\ & ((!\Neuron_1_0|Add0~5\) # (!\Neuron_1_0|currentSum[-2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct[-2]~q\,
	datab => \Neuron_1_0|currentSum[-2]~q\,
	datad => VCC,
	cin => \Neuron_1_0|Add0~5\,
	combout => \Neuron_1_0|Add0~6_combout\,
	cout => \Neuron_1_0|Add0~7\);

-- Location: LCCOMB_X18_Y23_N0
\Neuron_1_0|Mux59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux59~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~6_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~6_combout\ & (\Neuron_1_0|Add0~32_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~6_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux59~0_combout\);

-- Location: FF_X18_Y23_N1
\Neuron_1_0|currentSum[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum[-2]~q\);

-- Location: LCCOMB_X18_Y23_N22
\Neuron_1_0|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~8_combout\ = ((\Neuron_1_0|currentSum[-1]~q\ $ (\Neuron_1_0|currentProduct[-1]~q\ $ (!\Neuron_1_0|Add0~7\)))) # (GND)
-- \Neuron_1_0|Add0~9\ = CARRY((\Neuron_1_0|currentSum[-1]~q\ & ((\Neuron_1_0|currentProduct[-1]~q\) # (!\Neuron_1_0|Add0~7\))) # (!\Neuron_1_0|currentSum[-1]~q\ & (\Neuron_1_0|currentProduct[-1]~q\ & !\Neuron_1_0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum[-1]~q\,
	datab => \Neuron_1_0|currentProduct[-1]~q\,
	datad => VCC,
	cin => \Neuron_1_0|Add0~7\,
	combout => \Neuron_1_0|Add0~8_combout\,
	cout => \Neuron_1_0|Add0~9\);

-- Location: LCCOMB_X19_Y23_N20
\Neuron_1_0|Mux58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux58~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~8_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~8_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~8_combout\,
	datac => \Neuron_1_0|Mux46~2_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux58~0_combout\);

-- Location: FF_X19_Y23_N21
\Neuron_1_0|currentSum[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum[-1]~q\);

-- Location: LCCOMB_X18_Y23_N24
\Neuron_1_0|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~10_combout\ = (\Neuron_1_0|currentProduct\(0) & ((\Neuron_1_0|currentSum\(0) & (\Neuron_1_0|Add0~9\ & VCC)) # (!\Neuron_1_0|currentSum\(0) & (!\Neuron_1_0|Add0~9\)))) # (!\Neuron_1_0|currentProduct\(0) & ((\Neuron_1_0|currentSum\(0) & 
-- (!\Neuron_1_0|Add0~9\)) # (!\Neuron_1_0|currentSum\(0) & ((\Neuron_1_0|Add0~9\) # (GND)))))
-- \Neuron_1_0|Add0~11\ = CARRY((\Neuron_1_0|currentProduct\(0) & (!\Neuron_1_0|currentSum\(0) & !\Neuron_1_0|Add0~9\)) # (!\Neuron_1_0|currentProduct\(0) & ((!\Neuron_1_0|Add0~9\) # (!\Neuron_1_0|currentSum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct\(0),
	datab => \Neuron_1_0|currentSum\(0),
	datad => VCC,
	cin => \Neuron_1_0|Add0~9\,
	combout => \Neuron_1_0|Add0~10_combout\,
	cout => \Neuron_1_0|Add0~11\);

-- Location: LCCOMB_X19_Y23_N14
\Neuron_1_0|Mux57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux57~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~10_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~10_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~10_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux57~0_combout\);

-- Location: FF_X19_Y23_N15
\Neuron_1_0|currentSum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(0));

-- Location: LCCOMB_X18_Y23_N26
\Neuron_1_0|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~12_combout\ = ((\Neuron_1_0|currentProduct\(1) $ (\Neuron_1_0|currentSum\(1) $ (!\Neuron_1_0|Add0~11\)))) # (GND)
-- \Neuron_1_0|Add0~13\ = CARRY((\Neuron_1_0|currentProduct\(1) & ((\Neuron_1_0|currentSum\(1)) # (!\Neuron_1_0|Add0~11\))) # (!\Neuron_1_0|currentProduct\(1) & (\Neuron_1_0|currentSum\(1) & !\Neuron_1_0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct\(1),
	datab => \Neuron_1_0|currentSum\(1),
	datad => VCC,
	cin => \Neuron_1_0|Add0~11\,
	combout => \Neuron_1_0|Add0~12_combout\,
	cout => \Neuron_1_0|Add0~13\);

-- Location: LCCOMB_X19_Y23_N18
\Neuron_1_0|Mux56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux56~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~12_combout\ & \Neuron_1_0|Add0~32_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~12_combout\) # 
-- (\Neuron_1_0|Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~34_combout\,
	datab => \Neuron_1_0|Mux46~2_combout\,
	datac => \Neuron_1_0|Add0~12_combout\,
	datad => \Neuron_1_0|Add0~32_combout\,
	combout => \Neuron_1_0|Mux56~0_combout\);

-- Location: FF_X19_Y23_N19
\Neuron_1_0|currentSum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(1));

-- Location: LCCOMB_X18_Y23_N28
\Neuron_1_0|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~14_combout\ = (\Neuron_1_0|currentProduct\(2) & ((\Neuron_1_0|currentSum\(2) & (\Neuron_1_0|Add0~13\ & VCC)) # (!\Neuron_1_0|currentSum\(2) & (!\Neuron_1_0|Add0~13\)))) # (!\Neuron_1_0|currentProduct\(2) & ((\Neuron_1_0|currentSum\(2) & 
-- (!\Neuron_1_0|Add0~13\)) # (!\Neuron_1_0|currentSum\(2) & ((\Neuron_1_0|Add0~13\) # (GND)))))
-- \Neuron_1_0|Add0~15\ = CARRY((\Neuron_1_0|currentProduct\(2) & (!\Neuron_1_0|currentSum\(2) & !\Neuron_1_0|Add0~13\)) # (!\Neuron_1_0|currentProduct\(2) & ((!\Neuron_1_0|Add0~13\) # (!\Neuron_1_0|currentSum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct\(2),
	datab => \Neuron_1_0|currentSum\(2),
	datad => VCC,
	cin => \Neuron_1_0|Add0~13\,
	combout => \Neuron_1_0|Add0~14_combout\,
	cout => \Neuron_1_0|Add0~15\);

-- Location: LCCOMB_X19_Y23_N24
\Neuron_1_0|Mux55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux55~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~14_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~14_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~14_combout\,
	datac => \Neuron_1_0|Mux46~2_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux55~0_combout\);

-- Location: FF_X19_Y23_N25
\Neuron_1_0|currentSum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(2));

-- Location: LCCOMB_X18_Y23_N30
\Neuron_1_0|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~16_combout\ = ((\Neuron_1_0|currentProduct\(3) $ (\Neuron_1_0|currentSum\(3) $ (!\Neuron_1_0|Add0~15\)))) # (GND)
-- \Neuron_1_0|Add0~17\ = CARRY((\Neuron_1_0|currentProduct\(3) & ((\Neuron_1_0|currentSum\(3)) # (!\Neuron_1_0|Add0~15\))) # (!\Neuron_1_0|currentProduct\(3) & (\Neuron_1_0|currentSum\(3) & !\Neuron_1_0|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct\(3),
	datab => \Neuron_1_0|currentSum\(3),
	datad => VCC,
	cin => \Neuron_1_0|Add0~15\,
	combout => \Neuron_1_0|Add0~16_combout\,
	cout => \Neuron_1_0|Add0~17\);

-- Location: LCCOMB_X19_Y23_N10
\Neuron_1_0|Mux54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux54~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~16_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~16_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~16_combout\,
	datac => \Neuron_1_0|Mux46~2_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux54~0_combout\);

-- Location: FF_X19_Y23_N11
\Neuron_1_0|currentSum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(3));

-- Location: LCCOMB_X18_Y22_N0
\Neuron_1_0|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~18_combout\ = (\Neuron_1_0|currentSum\(4) & ((\Neuron_1_0|currentProduct\(4) & (\Neuron_1_0|Add0~17\ & VCC)) # (!\Neuron_1_0|currentProduct\(4) & (!\Neuron_1_0|Add0~17\)))) # (!\Neuron_1_0|currentSum\(4) & ((\Neuron_1_0|currentProduct\(4) 
-- & (!\Neuron_1_0|Add0~17\)) # (!\Neuron_1_0|currentProduct\(4) & ((\Neuron_1_0|Add0~17\) # (GND)))))
-- \Neuron_1_0|Add0~19\ = CARRY((\Neuron_1_0|currentSum\(4) & (!\Neuron_1_0|currentProduct\(4) & !\Neuron_1_0|Add0~17\)) # (!\Neuron_1_0|currentSum\(4) & ((!\Neuron_1_0|Add0~17\) # (!\Neuron_1_0|currentProduct\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(4),
	datab => \Neuron_1_0|currentProduct\(4),
	datad => VCC,
	cin => \Neuron_1_0|Add0~17\,
	combout => \Neuron_1_0|Add0~18_combout\,
	cout => \Neuron_1_0|Add0~19\);

-- Location: LCCOMB_X18_Y22_N22
\Neuron_1_0|Mux53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux53~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~32_combout\ & \Neuron_1_0|Add0~18_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~32_combout\) # 
-- (\Neuron_1_0|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mux46~2_combout\,
	datab => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~18_combout\,
	combout => \Neuron_1_0|Mux53~0_combout\);

-- Location: FF_X18_Y22_N23
\Neuron_1_0|currentSum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(4));

-- Location: LCCOMB_X18_Y22_N2
\Neuron_1_0|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~20_combout\ = ((\Neuron_1_0|currentProduct\(5) $ (\Neuron_1_0|currentSum\(5) $ (!\Neuron_1_0|Add0~19\)))) # (GND)
-- \Neuron_1_0|Add0~21\ = CARRY((\Neuron_1_0|currentProduct\(5) & ((\Neuron_1_0|currentSum\(5)) # (!\Neuron_1_0|Add0~19\))) # (!\Neuron_1_0|currentProduct\(5) & (\Neuron_1_0|currentSum\(5) & !\Neuron_1_0|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentProduct\(5),
	datab => \Neuron_1_0|currentSum\(5),
	datad => VCC,
	cin => \Neuron_1_0|Add0~19\,
	combout => \Neuron_1_0|Add0~20_combout\,
	cout => \Neuron_1_0|Add0~21\);

-- Location: LCCOMB_X18_Y22_N28
\Neuron_1_0|Mux52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux52~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~20_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~20_combout\ & (\Neuron_1_0|Add0~32_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mux46~2_combout\,
	datab => \Neuron_1_0|Add0~20_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux52~0_combout\);

-- Location: FF_X18_Y22_N29
\Neuron_1_0|currentSum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(5));

-- Location: LCCOMB_X18_Y22_N4
\Neuron_1_0|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~22_combout\ = (\Neuron_1_0|currentSum\(6) & ((\Neuron_1_0|currentProduct\(6) & (\Neuron_1_0|Add0~21\ & VCC)) # (!\Neuron_1_0|currentProduct\(6) & (!\Neuron_1_0|Add0~21\)))) # (!\Neuron_1_0|currentSum\(6) & ((\Neuron_1_0|currentProduct\(6) 
-- & (!\Neuron_1_0|Add0~21\)) # (!\Neuron_1_0|currentProduct\(6) & ((\Neuron_1_0|Add0~21\) # (GND)))))
-- \Neuron_1_0|Add0~23\ = CARRY((\Neuron_1_0|currentSum\(6) & (!\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~21\)) # (!\Neuron_1_0|currentSum\(6) & ((!\Neuron_1_0|Add0~21\) # (!\Neuron_1_0|currentProduct\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(6),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~21\,
	combout => \Neuron_1_0|Add0~22_combout\,
	cout => \Neuron_1_0|Add0~23\);

-- Location: LCCOMB_X18_Y22_N26
\Neuron_1_0|Mux51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux51~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~22_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~22_combout\ & (\Neuron_1_0|Add0~32_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mux46~2_combout\,
	datab => \Neuron_1_0|Add0~22_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux51~0_combout\);

-- Location: FF_X18_Y22_N27
\Neuron_1_0|currentSum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(6));

-- Location: LCCOMB_X18_Y22_N6
\Neuron_1_0|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~24_combout\ = ((\Neuron_1_0|currentSum\(7) $ (\Neuron_1_0|currentProduct\(6) $ (!\Neuron_1_0|Add0~23\)))) # (GND)
-- \Neuron_1_0|Add0~25\ = CARRY((\Neuron_1_0|currentSum\(7) & ((\Neuron_1_0|currentProduct\(6)) # (!\Neuron_1_0|Add0~23\))) # (!\Neuron_1_0|currentSum\(7) & (\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(7),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~23\,
	combout => \Neuron_1_0|Add0~24_combout\,
	cout => \Neuron_1_0|Add0~25\);

-- Location: LCCOMB_X18_Y22_N24
\Neuron_1_0|Mux50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux50~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~24_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~24_combout\ & (!\Neuron_1_0|Add0~34_combout\ & 
-- \Neuron_1_0|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~24_combout\,
	datab => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Mux46~2_combout\,
	combout => \Neuron_1_0|Mux50~0_combout\);

-- Location: FF_X18_Y22_N25
\Neuron_1_0|currentSum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(7));

-- Location: LCCOMB_X18_Y22_N8
\Neuron_1_0|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~26_combout\ = (\Neuron_1_0|currentSum\(8) & ((\Neuron_1_0|currentProduct\(6) & (\Neuron_1_0|Add0~25\ & VCC)) # (!\Neuron_1_0|currentProduct\(6) & (!\Neuron_1_0|Add0~25\)))) # (!\Neuron_1_0|currentSum\(8) & ((\Neuron_1_0|currentProduct\(6) 
-- & (!\Neuron_1_0|Add0~25\)) # (!\Neuron_1_0|currentProduct\(6) & ((\Neuron_1_0|Add0~25\) # (GND)))))
-- \Neuron_1_0|Add0~27\ = CARRY((\Neuron_1_0|currentSum\(8) & (!\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~25\)) # (!\Neuron_1_0|currentSum\(8) & ((!\Neuron_1_0|Add0~25\) # (!\Neuron_1_0|currentProduct\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(8),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~25\,
	combout => \Neuron_1_0|Add0~26_combout\,
	cout => \Neuron_1_0|Add0~27\);

-- Location: LCCOMB_X18_Y22_N30
\Neuron_1_0|Mux49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux49~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~26_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~26_combout\ & (\Neuron_1_0|Add0~32_combout\ & 
-- !\Neuron_1_0|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Mux46~2_combout\,
	datab => \Neuron_1_0|Add0~26_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux49~0_combout\);

-- Location: FF_X18_Y22_N31
\Neuron_1_0|currentSum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(8));

-- Location: LCCOMB_X18_Y22_N10
\Neuron_1_0|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~28_combout\ = ((\Neuron_1_0|currentSum\(9) $ (\Neuron_1_0|currentProduct\(6) $ (!\Neuron_1_0|Add0~27\)))) # (GND)
-- \Neuron_1_0|Add0~29\ = CARRY((\Neuron_1_0|currentSum\(9) & ((\Neuron_1_0|currentProduct\(6)) # (!\Neuron_1_0|Add0~27\))) # (!\Neuron_1_0|currentSum\(9) & (\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(9),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~27\,
	combout => \Neuron_1_0|Add0~28_combout\,
	cout => \Neuron_1_0|Add0~29\);

-- Location: LCCOMB_X18_Y22_N20
\Neuron_1_0|Mux48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux48~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~28_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~28_combout\ & (!\Neuron_1_0|Add0~34_combout\ & 
-- \Neuron_1_0|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~28_combout\,
	datab => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Mux46~2_combout\,
	combout => \Neuron_1_0|Mux48~0_combout\);

-- Location: FF_X18_Y22_N21
\Neuron_1_0|currentSum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(9));

-- Location: LCCOMB_X18_Y22_N12
\Neuron_1_0|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~30_combout\ = (\Neuron_1_0|currentSum\(10) & ((\Neuron_1_0|currentProduct\(6) & (\Neuron_1_0|Add0~29\ & VCC)) # (!\Neuron_1_0|currentProduct\(6) & (!\Neuron_1_0|Add0~29\)))) # (!\Neuron_1_0|currentSum\(10) & 
-- ((\Neuron_1_0|currentProduct\(6) & (!\Neuron_1_0|Add0~29\)) # (!\Neuron_1_0|currentProduct\(6) & ((\Neuron_1_0|Add0~29\) # (GND)))))
-- \Neuron_1_0|Add0~31\ = CARRY((\Neuron_1_0|currentSum\(10) & (!\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~29\)) # (!\Neuron_1_0|currentSum\(10) & ((!\Neuron_1_0|Add0~29\) # (!\Neuron_1_0|currentProduct\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(10),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~29\,
	combout => \Neuron_1_0|Add0~30_combout\,
	cout => \Neuron_1_0|Add0~31\);

-- Location: LCCOMB_X18_Y22_N18
\Neuron_1_0|Mux47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux47~0_combout\ = (\Neuron_1_0|Mux46~2_combout\ & ((\Neuron_1_0|Add0~30_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~30_combout\ & (!\Neuron_1_0|Add0~34_combout\ & 
-- \Neuron_1_0|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~30_combout\,
	datab => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Mux46~2_combout\,
	combout => \Neuron_1_0|Mux47~0_combout\);

-- Location: FF_X18_Y22_N19
\Neuron_1_0|currentSum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(10));

-- Location: LCCOMB_X18_Y22_N14
\Neuron_1_0|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~32_combout\ = ((\Neuron_1_0|currentSum\(11) $ (\Neuron_1_0|currentProduct\(6) $ (!\Neuron_1_0|Add0~31\)))) # (GND)
-- \Neuron_1_0|Add0~33\ = CARRY((\Neuron_1_0|currentSum\(11) & ((\Neuron_1_0|currentProduct\(6)) # (!\Neuron_1_0|Add0~31\))) # (!\Neuron_1_0|currentSum\(11) & (\Neuron_1_0|currentProduct\(6) & !\Neuron_1_0|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|currentSum\(11),
	datab => \Neuron_1_0|currentProduct\(6),
	datad => VCC,
	cin => \Neuron_1_0|Add0~31\,
	combout => \Neuron_1_0|Add0~32_combout\,
	cout => \Neuron_1_0|Add0~33\);

-- Location: LCCOMB_X18_Y22_N16
\Neuron_1_0|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Add0~34_combout\ = \Neuron_1_0|currentProduct\(6) $ (\Neuron_1_0|Add0~33\ $ (\Neuron_1_0|currentSum\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|currentProduct\(6),
	datad => \Neuron_1_0|currentSum\(11),
	cin => \Neuron_1_0|Add0~33\,
	combout => \Neuron_1_0|Add0~34_combout\);

-- Location: LCCOMB_X19_Y23_N28
\Neuron_1_0|Mux46~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|Mux46~3_combout\ = (\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|clockIter\(1)) # (\Neuron_1_0|clockIter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|clockIter\(1),
	datab => \Neuron_1_0|clockIter\(0),
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|Mux46~3_combout\);

-- Location: FF_X19_Y23_N29
\Neuron_1_0|currentSum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|Mux46~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|currentSum\(11));

-- Location: LCCOMB_X19_Y23_N12
\Neuron_1_0|sum[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[0]~0_combout\ = (\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~10_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~10_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~10_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[0]~0_combout\);

-- Location: FF_X19_Y23_N13
\Neuron_1_0|latchOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[0]~0_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut\(0));

-- Location: LCCOMB_X11_Y15_N12
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Neuron_1_0|latchOut\(0) & (!clockCount(1) & !clockCount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|latchOut\(0),
	datab => clockCount(1),
	datad => clockCount(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X11_Y15_N26
\currentNeuronOutput[-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currentNeuronOutput[-4]~0_combout\ = (!\process_1~11_combout\ & ((clockCount(2)) # ((clockCount(1)) # (clockCount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clockCount(2),
	datab => clockCount(1),
	datac => \process_1~11_combout\,
	datad => clockCount(0),
	combout => \currentNeuronOutput[-4]~0_combout\);

-- Location: FF_X11_Y15_N13
\currentNeuronOutput[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currentNeuronOutput(0));

-- Location: LCCOMB_X18_Y23_N2
\Neuron_1_0|sum[-3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[-3]~2_combout\ = (\Neuron_1_0|Add0~4_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~4_combout\ & (\Neuron_1_0|Add0~32_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Add0~4_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[-3]~2_combout\);

-- Location: FF_X18_Y23_N3
\Neuron_1_0|latchOut[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[-3]~2_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut[-3]~q\);

-- Location: LCCOMB_X11_Y15_N28
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!clockCount(1) & (!clockCount(2) & \Neuron_1_0|latchOut[-3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => clockCount(2),
	datad => \Neuron_1_0|latchOut[-3]~q\,
	combout => \Mux12~0_combout\);

-- Location: FF_X11_Y15_N29
\currentNeuronOutput[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentNeuronOutput[-3]~q\);

-- Location: LCCOMB_X18_Y23_N4
\Neuron_1_0|sum[-2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[-2]~3_combout\ = (\Neuron_1_0|Add0~6_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~6_combout\ & (\Neuron_1_0|Add0~32_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Add0~6_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[-2]~3_combout\);

-- Location: FF_X18_Y23_N5
\Neuron_1_0|latchOut[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[-2]~3_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut[-2]~q\);

-- Location: LCCOMB_X11_Y15_N22
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!clockCount(1) & (!clockCount(2) & \Neuron_1_0|latchOut[-2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => clockCount(2),
	datad => \Neuron_1_0|latchOut[-2]~q\,
	combout => \Mux11~0_combout\);

-- Location: FF_X11_Y15_N23
\currentNeuronOutput[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentNeuronOutput[-2]~q\);

-- Location: LCCOMB_X19_Y23_N26
\Neuron_1_0|sum[-1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[-1]~4_combout\ = (\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~8_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~8_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~8_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[-1]~4_combout\);

-- Location: FF_X19_Y23_N27
\Neuron_1_0|latchOut[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[-1]~4_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut[-1]~q\);

-- Location: LCCOMB_X11_Y15_N20
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!clockCount(1) & (!clockCount(2) & \Neuron_1_0|latchOut[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => clockCount(2),
	datad => \Neuron_1_0|latchOut[-1]~q\,
	combout => \Mux10~0_combout\);

-- Location: FF_X11_Y15_N21
\currentNeuronOutput[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentNeuronOutput[-1]~q\);

-- Location: LCCOMB_X18_Y23_N12
\Neuron_1_0|sum[-4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[-4]~1_combout\ = (\Neuron_1_0|Add0~2_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~2_combout\ & (\Neuron_1_0|Add0~32_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Add0~2_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[-4]~1_combout\);

-- Location: FF_X18_Y23_N13
\Neuron_1_0|latchOut[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[-4]~1_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut[-4]~q\);

-- Location: LCCOMB_X11_Y15_N2
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!clockCount(1) & (!clockCount(2) & \Neuron_1_0|latchOut[-4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => clockCount(2),
	datad => \Neuron_1_0|latchOut[-4]~q\,
	combout => \Mux13~0_combout\);

-- Location: FF_X11_Y15_N3
\currentNeuronOutput[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentNeuronOutput[-4]~q\);

-- Location: LCCOMB_X8_Y15_N4
\mem_0|LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|LessThan1~0_combout\ = (\currentNeuronOutput[-3]~q\) # ((\currentNeuronOutput[-2]~q\) # ((\currentNeuronOutput[-1]~q\) # (\currentNeuronOutput[-4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentNeuronOutput[-3]~q\,
	datab => \currentNeuronOutput[-2]~q\,
	datac => \currentNeuronOutput[-1]~q\,
	datad => \currentNeuronOutput[-4]~q\,
	combout => \mem_0|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Neuron_1_0|sum[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[3]~5_combout\ = (\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~16_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~16_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~16_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[3]~5_combout\);

-- Location: FF_X19_Y23_N9
\Neuron_1_0|latchOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[3]~5_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut\(3));

-- Location: LCCOMB_X11_Y15_N10
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!clockCount(1) & (\Neuron_1_0|latchOut\(3) & !clockCount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => \Neuron_1_0|latchOut\(3),
	datad => clockCount(2),
	combout => \Mux6~0_combout\);

-- Location: FF_X11_Y15_N11
\currentNeuronOutput[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currentNeuronOutput(3));

-- Location: LCCOMB_X18_Y23_N10
\Neuron_1_0|sum[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[4]~6_combout\ = (\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~32_combout\ & \Neuron_1_0|Add0~18_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~32_combout\) # (\Neuron_1_0|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~32_combout\,
	datad => \Neuron_1_0|Add0~18_combout\,
	combout => \Neuron_1_0|sum[4]~6_combout\);

-- Location: FF_X18_Y23_N11
\Neuron_1_0|latchOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[4]~6_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut\(4));

-- Location: LCCOMB_X11_Y15_N4
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!clockCount(1) & (!clockCount(2) & \Neuron_1_0|latchOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => clockCount(2),
	datad => \Neuron_1_0|latchOut\(4),
	combout => \Mux5~0_combout\);

-- Location: FF_X11_Y15_N5
\currentNeuronOutput[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currentNeuronOutput(4));

-- Location: LCCOMB_X19_Y23_N4
\Neuron_1_0|sum[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[2]~8_combout\ = (\Neuron_1_0|Add0~32_combout\ & ((\Neuron_1_0|Add0~14_combout\) # (!\Neuron_1_0|Add0~34_combout\))) # (!\Neuron_1_0|Add0~32_combout\ & (\Neuron_1_0|Add0~14_combout\ & !\Neuron_1_0|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~32_combout\,
	datab => \Neuron_1_0|Add0~14_combout\,
	datad => \Neuron_1_0|Add0~34_combout\,
	combout => \Neuron_1_0|sum[2]~8_combout\);

-- Location: FF_X19_Y23_N5
\Neuron_1_0|latchOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[2]~8_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut\(2));

-- Location: LCCOMB_X11_Y15_N24
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!clockCount(1) & (\Neuron_1_0|latchOut\(2) & !clockCount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => \Neuron_1_0|latchOut\(2),
	datad => clockCount(2),
	combout => \Mux7~0_combout\);

-- Location: FF_X11_Y15_N25
\currentNeuronOutput[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currentNeuronOutput(2));

-- Location: LCCOMB_X19_Y23_N22
\Neuron_1_0|sum[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Neuron_1_0|sum[1]~7_combout\ = (\Neuron_1_0|Add0~34_combout\ & (\Neuron_1_0|Add0~12_combout\ & \Neuron_1_0|Add0~32_combout\)) # (!\Neuron_1_0|Add0~34_combout\ & ((\Neuron_1_0|Add0~12_combout\) # (\Neuron_1_0|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neuron_1_0|Add0~34_combout\,
	datac => \Neuron_1_0|Add0~12_combout\,
	datad => \Neuron_1_0|Add0~32_combout\,
	combout => \Neuron_1_0|sum[1]~7_combout\);

-- Location: FF_X19_Y23_N23
\Neuron_1_0|latchOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Neuron_1_0|sum[1]~7_combout\,
	ena => \Neuron_1_0|Mux76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neuron_1_0|latchOut\(1));

-- Location: LCCOMB_X11_Y15_N30
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!clockCount(1) & (\Neuron_1_0|latchOut\(1) & !clockCount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clockCount(1),
	datac => \Neuron_1_0|latchOut\(1),
	datad => clockCount(2),
	combout => \Mux8~0_combout\);

-- Location: FF_X11_Y15_N31
\currentNeuronOutput[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \currentNeuronOutput[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currentNeuronOutput(1));

-- Location: LCCOMB_X8_Y15_N6
\mem_0|data[-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-4]~0_combout\ = (currentNeuronOutput(3)) # ((currentNeuronOutput(4)) # ((!currentNeuronOutput(1)) # (!currentNeuronOutput(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currentNeuronOutput(3),
	datab => currentNeuronOutput(4),
	datac => currentNeuronOutput(2),
	datad => currentNeuronOutput(1),
	combout => \mem_0|data[-4]~0_combout\);

-- Location: LCCOMB_X8_Y15_N8
\mem_0|data[-4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-4]~1_combout\ = (currentNeuronOutput(0)) # ((\mem_0|LessThan1~0_combout\) # (\mem_0|data[-4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currentNeuronOutput(0),
	datac => \mem_0|LessThan1~0_combout\,
	datad => \mem_0|data[-4]~0_combout\,
	combout => \mem_0|data[-4]~1_combout\);

-- Location: LCCOMB_X8_Y15_N26
\mem_0|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~0_combout\ = currentNeuronOutput(4) $ (\currentNeuronOutput[-4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => currentNeuronOutput(4),
	datad => \currentNeuronOutput[-4]~q\,
	combout => \mem_0|Add0~0_combout\);

-- Location: LCCOMB_X8_Y15_N10
\mem_0|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~1_combout\ = (\mem_0|Add0~0_combout\ & (currentNeuronOutput(4) $ (VCC))) # (!\mem_0|Add0~0_combout\ & (currentNeuronOutput(4) & VCC))
-- \mem_0|Add0~2\ = CARRY((\mem_0|Add0~0_combout\ & currentNeuronOutput(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|Add0~0_combout\,
	datab => currentNeuronOutput(4),
	datad => VCC,
	combout => \mem_0|Add0~1_combout\,
	cout => \mem_0|Add0~2\);

-- Location: LCCOMB_X8_Y15_N12
\mem_0|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~3_combout\ = (\mem_0|Add0~2\ & (\currentNeuronOutput[-3]~q\ $ ((!currentNeuronOutput(4))))) # (!\mem_0|Add0~2\ & ((\currentNeuronOutput[-3]~q\ $ (currentNeuronOutput(4))) # (GND)))
-- \mem_0|Add0~4\ = CARRY((\currentNeuronOutput[-3]~q\ $ (!currentNeuronOutput(4))) # (!\mem_0|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \currentNeuronOutput[-3]~q\,
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~2\,
	combout => \mem_0|Add0~3_combout\,
	cout => \mem_0|Add0~4\);

-- Location: LCCOMB_X8_Y15_N14
\mem_0|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~5_combout\ = (\mem_0|Add0~4\ & ((\currentNeuronOutput[-2]~q\ $ (currentNeuronOutput(4))))) # (!\mem_0|Add0~4\ & (\currentNeuronOutput[-2]~q\ $ (currentNeuronOutput(4) $ (VCC))))
-- \mem_0|Add0~6\ = CARRY((!\mem_0|Add0~4\ & (\currentNeuronOutput[-2]~q\ $ (currentNeuronOutput(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \currentNeuronOutput[-2]~q\,
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~4\,
	combout => \mem_0|Add0~5_combout\,
	cout => \mem_0|Add0~6\);

-- Location: LCCOMB_X8_Y15_N16
\mem_0|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~7_combout\ = (\mem_0|Add0~6\ & (\currentNeuronOutput[-1]~q\ $ ((!currentNeuronOutput(4))))) # (!\mem_0|Add0~6\ & ((\currentNeuronOutput[-1]~q\ $ (currentNeuronOutput(4))) # (GND)))
-- \mem_0|Add0~8\ = CARRY((\currentNeuronOutput[-1]~q\ $ (!currentNeuronOutput(4))) # (!\mem_0|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \currentNeuronOutput[-1]~q\,
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~6\,
	combout => \mem_0|Add0~7_combout\,
	cout => \mem_0|Add0~8\);

-- Location: LCCOMB_X8_Y15_N18
\mem_0|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~9_combout\ = (\mem_0|Add0~8\ & ((currentNeuronOutput(0) $ (currentNeuronOutput(4))))) # (!\mem_0|Add0~8\ & (currentNeuronOutput(0) $ (currentNeuronOutput(4) $ (VCC))))
-- \mem_0|Add0~10\ = CARRY((!\mem_0|Add0~8\ & (currentNeuronOutput(0) $ (currentNeuronOutput(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currentNeuronOutput(0),
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~8\,
	combout => \mem_0|Add0~9_combout\,
	cout => \mem_0|Add0~10\);

-- Location: LCCOMB_X8_Y15_N20
\mem_0|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~11_combout\ = (\mem_0|Add0~10\ & (currentNeuronOutput(1) $ ((!currentNeuronOutput(4))))) # (!\mem_0|Add0~10\ & ((currentNeuronOutput(1) $ (currentNeuronOutput(4))) # (GND)))
-- \mem_0|Add0~12\ = CARRY((currentNeuronOutput(1) $ (!currentNeuronOutput(4))) # (!\mem_0|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currentNeuronOutput(1),
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~10\,
	combout => \mem_0|Add0~11_combout\,
	cout => \mem_0|Add0~12\);

-- Location: LCCOMB_X8_Y15_N22
\mem_0|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~13_combout\ = (\mem_0|Add0~12\ & ((currentNeuronOutput(2) $ (currentNeuronOutput(4))))) # (!\mem_0|Add0~12\ & (currentNeuronOutput(2) $ (currentNeuronOutput(4) $ (VCC))))
-- \mem_0|Add0~14\ = CARRY((!\mem_0|Add0~12\ & (currentNeuronOutput(2) $ (currentNeuronOutput(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currentNeuronOutput(2),
	datab => currentNeuronOutput(4),
	datad => VCC,
	cin => \mem_0|Add0~12\,
	combout => \mem_0|Add0~13_combout\,
	cout => \mem_0|Add0~14\);

-- Location: LCCOMB_X8_Y15_N24
\mem_0|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add0~15_combout\ = currentNeuronOutput(3) $ (currentNeuronOutput(4) $ (\mem_0|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currentNeuronOutput(3),
	datab => currentNeuronOutput(4),
	cin => \mem_0|Add0~14\,
	combout => \mem_0|Add0~15_combout\);

-- Location: M9K_X7_Y13_N0
\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400010000400010000400010000400010000400010000400010000800020000800020000800020000800020000C00030000C00030000C00030001000040001000040001000050001400050001400060001800060001800070001C00070001C0008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/NNSync.ram0_TFWrap_Mem_UNIPOLAR_SIGMIOD_7de7c362.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "TFWrapper_UNIPOLAR_SIGMIOD:mem_0|TFWrap_Mem_UNIPOLAR_SIGMIOD:sm|altsyncram:ram_rtl_0|altsyncram_l291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 9,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X6_Y13_N8
\mem_0|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~1_cout\ = CARRY(!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => VCC,
	cout => \mem_0|Add1~1_cout\);

-- Location: LCCOMB_X6_Y13_N10
\mem_0|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~2_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\ & ((\mem_0|Add1~1_cout\) # (GND))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\ & (!\mem_0|Add1~1_cout\))
-- \mem_0|Add1~3\ = CARRY((\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\) # (!\mem_0|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \mem_0|Add1~1_cout\,
	combout => \mem_0|Add1~2_combout\,
	cout => \mem_0|Add1~3\);

-- Location: LCCOMB_X6_Y13_N12
\mem_0|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~4_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\ & (!\mem_0|Add1~3\ & VCC)) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\ & (\mem_0|Add1~3\ $ (GND)))
-- \mem_0|Add1~5\ = CARRY((!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\ & !\mem_0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \mem_0|Add1~3\,
	combout => \mem_0|Add1~4_combout\,
	cout => \mem_0|Add1~5\);

-- Location: LCCOMB_X6_Y13_N14
\mem_0|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~6_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\ & ((\mem_0|Add1~5\) # (GND))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\ & (!\mem_0|Add1~5\))
-- \mem_0|Add1~7\ = CARRY((\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\) # (!\mem_0|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \mem_0|Add1~5\,
	combout => \mem_0|Add1~6_combout\,
	cout => \mem_0|Add1~7\);

-- Location: LCCOMB_X6_Y13_N16
\mem_0|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~8_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\ & (\mem_0|Add1~7\ $ (GND))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\ & ((GND) # (!\mem_0|Add1~7\)))
-- \mem_0|Add1~9\ = CARRY((!\mem_0|Add1~7\) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \mem_0|Add1~7\,
	combout => \mem_0|Add1~8_combout\,
	cout => \mem_0|Add1~9\);

-- Location: LCCOMB_X6_Y13_N18
\mem_0|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~10_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\ & ((\mem_0|Add1~9\) # (GND))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\ & (!\mem_0|Add1~9\))
-- \mem_0|Add1~11\ = CARRY((\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\) # (!\mem_0|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \mem_0|Add1~9\,
	combout => \mem_0|Add1~10_combout\,
	cout => \mem_0|Add1~11\);

-- Location: LCCOMB_X6_Y13_N20
\mem_0|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~12_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\ & (!\mem_0|Add1~11\ & VCC)) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\ & (\mem_0|Add1~11\ $ (GND)))
-- \mem_0|Add1~13\ = CARRY((!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\ & !\mem_0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \mem_0|Add1~11\,
	combout => \mem_0|Add1~12_combout\,
	cout => \mem_0|Add1~13\);

-- Location: LCCOMB_X6_Y13_N22
\mem_0|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~14_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\ & ((\mem_0|Add1~13\) # (GND))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\ & (!\mem_0|Add1~13\))
-- \mem_0|Add1~15\ = CARRY((\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\) # (!\mem_0|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \mem_0|Add1~13\,
	combout => \mem_0|Add1~14_combout\,
	cout => \mem_0|Add1~15\);

-- Location: LCCOMB_X6_Y13_N24
\mem_0|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~16_combout\ = (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\ & (!\mem_0|Add1~15\ & VCC)) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\ & (\mem_0|Add1~15\ $ (GND)))
-- \mem_0|Add1~17\ = CARRY((!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\ & !\mem_0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => VCC,
	cin => \mem_0|Add1~15\,
	combout => \mem_0|Add1~16_combout\,
	cout => \mem_0|Add1~17\);

-- Location: LCCOMB_X6_Y13_N26
\mem_0|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|Add1~18_combout\ = \mem_0|Add1~17\ $ (\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a8\,
	cin => \mem_0|Add1~17\,
	combout => \mem_0|Add1~18_combout\);

-- Location: LCCOMB_X8_Y13_N2
\mem_0|data[-4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-4]~2_combout\ = (!\mem_0|data[-4]~1_combout\ & ((\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\mem_0|Add1~16_combout\) # (\mem_0|Add1~18_combout\))) # (!\mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- (\mem_0|Add1~16_combout\ & \mem_0|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|data[-4]~1_combout\,
	datab => \mem_0|sm|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \mem_0|Add1~16_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[-4]~2_combout\);

-- Location: FF_X8_Y13_N3
\threshNeuronOutputs[2][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[-4]~2_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][-4]~q\);

-- Location: LCCOMB_X8_Y13_N30
\output_latch_0[-4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_0[-4]~0_combout\ = (!\process_1~11_combout\ & clockCount(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datad => clockCount(2),
	combout => \output_latch_0[-4]~0_combout\);

-- Location: FF_X8_Y13_N13
\output_latch_0[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][-4]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_0[-4]~q\);

-- Location: LCCOMB_X5_Y13_N16
\mem_0|data[-3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-3]~3_combout\ = (!\mem_0|data[-4]~1_combout\ & ((\mem_0|Add1~2_combout\ & ((\mem_0|Add1~16_combout\) # (\mem_0|Add1~18_combout\))) # (!\mem_0|Add1~2_combout\ & (\mem_0|Add1~16_combout\ & \mem_0|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|data[-4]~1_combout\,
	datab => \mem_0|Add1~2_combout\,
	datac => \mem_0|Add1~16_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[-3]~3_combout\);

-- Location: FF_X5_Y13_N17
\threshNeuronOutputs[2][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[-3]~3_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][-3]~q\);

-- Location: LCCOMB_X5_Y13_N12
\output_latch_0[-3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_0[-3]~feeder_combout\ = \threshNeuronOutputs[2][-3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \threshNeuronOutputs[2][-3]~q\,
	combout => \output_latch_0[-3]~feeder_combout\);

-- Location: FF_X5_Y13_N13
\output_latch_0[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_0[-3]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_0[-3]~q\);

-- Location: LCCOMB_X5_Y13_N2
\mem_0|data[-2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-2]~4_combout\ = (!\mem_0|data[-4]~1_combout\ & ((\mem_0|Add1~4_combout\ & ((\mem_0|Add1~16_combout\) # (\mem_0|Add1~18_combout\))) # (!\mem_0|Add1~4_combout\ & (\mem_0|Add1~16_combout\ & \mem_0|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|data[-4]~1_combout\,
	datab => \mem_0|Add1~4_combout\,
	datac => \mem_0|Add1~16_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[-2]~4_combout\);

-- Location: FF_X5_Y13_N3
\threshNeuronOutputs[2][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[-2]~4_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][-2]~q\);

-- Location: FF_X5_Y13_N31
\output_latch_0[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][-2]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_0[-2]~q\);

-- Location: LCCOMB_X5_Y13_N20
\mem_0|data[-1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[-1]~5_combout\ = (!\mem_0|data[-4]~1_combout\ & ((\mem_0|Add1~6_combout\ & ((\mem_0|Add1~16_combout\) # (\mem_0|Add1~18_combout\))) # (!\mem_0|Add1~6_combout\ & (\mem_0|Add1~16_combout\ & \mem_0|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|data[-4]~1_combout\,
	datab => \mem_0|Add1~6_combout\,
	datac => \mem_0|Add1~16_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[-1]~5_combout\);

-- Location: FF_X5_Y13_N21
\threshNeuronOutputs[2][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[-1]~5_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][-1]~q\);

-- Location: FF_X6_Y13_N17
\output_latch_0[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][-1]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_0[-1]~q\);

-- Location: LCCOMB_X5_Y13_N18
\mem_0|data[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[0]~6_combout\ = (\mem_0|data[-4]~1_combout\) # ((\mem_0|Add1~8_combout\ & ((\mem_0|Add1~16_combout\) # (\mem_0|Add1~18_combout\))) # (!\mem_0|Add1~8_combout\ & (\mem_0|Add1~16_combout\ & \mem_0|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|data[-4]~1_combout\,
	datab => \mem_0|Add1~8_combout\,
	datac => \mem_0|Add1~16_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[0]~6_combout\);

-- Location: FF_X5_Y13_N19
\threshNeuronOutputs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[0]~6_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][0]~q\);

-- Location: FF_X6_Y13_N25
\output_latch_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][0]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_0(0));

-- Location: LCCOMB_X8_Y15_N30
\mem_0|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|LessThan1~1_combout\ = (currentNeuronOutput(2) & currentNeuronOutput(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => currentNeuronOutput(2),
	datad => currentNeuronOutput(1),
	combout => \mem_0|LessThan1~1_combout\);

-- Location: LCCOMB_X8_Y15_N28
\mem_0|data[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[1]~8_combout\ = (!currentNeuronOutput(3) & (((!\mem_0|LessThan1~0_combout\ & !currentNeuronOutput(0))) # (!\mem_0|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|LessThan1~1_combout\,
	datab => \mem_0|LessThan1~0_combout\,
	datac => currentNeuronOutput(3),
	datad => currentNeuronOutput(0),
	combout => \mem_0|data[1]~8_combout\);

-- Location: LCCOMB_X6_Y13_N0
\mem_0|data[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[1]~7_combout\ = ((\mem_0|Add1~10_combout\ & ((\mem_0|Add1~18_combout\) # (\mem_0|Add1~16_combout\))) # (!\mem_0|Add1~10_combout\ & (\mem_0|Add1~18_combout\ & \mem_0|Add1~16_combout\))) # (!\mem_0|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|LessThan1~1_combout\,
	datab => \mem_0|Add1~10_combout\,
	datac => \mem_0|Add1~18_combout\,
	datad => \mem_0|Add1~16_combout\,
	combout => \mem_0|data[1]~7_combout\);

-- Location: LCCOMB_X6_Y13_N2
\mem_0|data[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[1]~9_combout\ = (currentNeuronOutput(4)) # ((\mem_0|data[1]~8_combout\ & \mem_0|data[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currentNeuronOutput(4),
	datac => \mem_0|data[1]~8_combout\,
	datad => \mem_0|data[1]~7_combout\,
	combout => \mem_0|data[1]~9_combout\);

-- Location: FF_X6_Y13_N3
\threshNeuronOutputs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[1]~9_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][1]~q\);

-- Location: FF_X8_Y13_N31
\output_latch_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][1]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_0(1));

-- Location: LCCOMB_X6_Y13_N28
\mem_0|data[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[2]~10_combout\ = ((\mem_0|Add1~12_combout\ & ((\mem_0|Add1~18_combout\) # (\mem_0|Add1~16_combout\))) # (!\mem_0|Add1~12_combout\ & (\mem_0|Add1~18_combout\ & \mem_0|Add1~16_combout\))) # (!\mem_0|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|LessThan1~1_combout\,
	datab => \mem_0|Add1~12_combout\,
	datac => \mem_0|Add1~18_combout\,
	datad => \mem_0|Add1~16_combout\,
	combout => \mem_0|data[2]~10_combout\);

-- Location: LCCOMB_X6_Y13_N4
\mem_0|data[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[2]~11_combout\ = (currentNeuronOutput(4)) # ((\mem_0|data[1]~8_combout\ & \mem_0|data[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currentNeuronOutput(4),
	datac => \mem_0|data[1]~8_combout\,
	datad => \mem_0|data[2]~10_combout\,
	combout => \mem_0|data[2]~11_combout\);

-- Location: FF_X6_Y13_N5
\threshNeuronOutputs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[2]~11_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][2]~q\);

-- Location: FF_X6_Y13_N21
\output_latch_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][2]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_0(2));

-- Location: LCCOMB_X6_Y13_N6
\mem_0|data[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[3]~12_combout\ = ((\mem_0|Add1~14_combout\ & ((\mem_0|Add1~18_combout\) # (\mem_0|Add1~16_combout\))) # (!\mem_0|Add1~14_combout\ & (\mem_0|Add1~18_combout\ & \mem_0|Add1~16_combout\))) # (!\mem_0|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|Add1~14_combout\,
	datab => \mem_0|LessThan1~1_combout\,
	datac => \mem_0|Add1~18_combout\,
	datad => \mem_0|Add1~16_combout\,
	combout => \mem_0|data[3]~12_combout\);

-- Location: LCCOMB_X6_Y13_N30
\mem_0|data[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[3]~13_combout\ = (currentNeuronOutput(4)) # ((\mem_0|data[1]~8_combout\ & \mem_0|data[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currentNeuronOutput(4),
	datac => \mem_0|data[1]~8_combout\,
	datad => \mem_0|data[3]~12_combout\,
	combout => \mem_0|data[3]~13_combout\);

-- Location: FF_X6_Y13_N31
\threshNeuronOutputs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[3]~13_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][3]~q\);

-- Location: FF_X6_Y13_N19
\output_latch_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \threshNeuronOutputs[2][3]~q\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_0(3));

-- Location: LCCOMB_X8_Y13_N24
\mem_0|data[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem_0|data[4]~14_combout\ = (currentNeuronOutput(4)) # ((\mem_0|data[1]~8_combout\ & ((!\mem_0|Add1~18_combout\) # (!\mem_0|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_0|LessThan1~1_combout\,
	datab => currentNeuronOutput(4),
	datac => \mem_0|data[1]~8_combout\,
	datad => \mem_0|Add1~18_combout\,
	combout => \mem_0|data[4]~14_combout\);

-- Location: FF_X8_Y13_N25
\threshNeuronOutputs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem_0|data[4]~14_combout\,
	ena => \threshNeuronOutputs[2][-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \threshNeuronOutputs[2][4]~q\);

-- Location: LCCOMB_X8_Y13_N20
\output_latch_0[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_0[4]~feeder_combout\ = \threshNeuronOutputs[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \threshNeuronOutputs[2][4]~q\,
	combout => \output_latch_0[4]~feeder_combout\);

-- Location: FF_X8_Y13_N21
\output_latch_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_0[4]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_0(4));

-- Location: LCCOMB_X8_Y13_N26
\output_latch_1[-4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[-4]~feeder_combout\ = \mem_0|data[-4]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[-4]~2_combout\,
	combout => \output_latch_1[-4]~feeder_combout\);

-- Location: FF_X8_Y13_N27
\output_latch_1[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[-4]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_1[-4]~q\);

-- Location: LCCOMB_X5_Y13_N24
\output_latch_1[-3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[-3]~feeder_combout\ = \mem_0|data[-3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[-3]~3_combout\,
	combout => \output_latch_1[-3]~feeder_combout\);

-- Location: FF_X5_Y13_N25
\output_latch_1[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[-3]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_1[-3]~q\);

-- Location: LCCOMB_X5_Y13_N6
\output_latch_1[-2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[-2]~feeder_combout\ = \mem_0|data[-2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[-2]~4_combout\,
	combout => \output_latch_1[-2]~feeder_combout\);

-- Location: FF_X5_Y13_N7
\output_latch_1[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[-2]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_1[-2]~q\);

-- Location: LCCOMB_X5_Y13_N28
\output_latch_1[-1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[-1]~feeder_combout\ = \mem_0|data[-1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[-1]~5_combout\,
	combout => \output_latch_1[-1]~feeder_combout\);

-- Location: FF_X5_Y13_N29
\output_latch_1[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[-1]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_latch_1[-1]~q\);

-- Location: LCCOMB_X5_Y13_N22
\output_latch_1[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[0]~feeder_combout\ = \mem_0|data[0]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[0]~6_combout\,
	combout => \output_latch_1[0]~feeder_combout\);

-- Location: FF_X5_Y13_N23
\output_latch_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[0]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_1(0));

-- Location: FF_X6_Y13_N11
\output_latch_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem_0|data[1]~9_combout\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_1(1));

-- Location: FF_X6_Y13_N13
\output_latch_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem_0|data[2]~11_combout\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_1(2));

-- Location: FF_X6_Y13_N9
\output_latch_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mem_0|data[3]~13_combout\,
	sload => VCC,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_1(3));

-- Location: LCCOMB_X8_Y13_N28
\output_latch_1[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_latch_1[4]~feeder_combout\ = \mem_0|data[4]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_0|data[4]~14_combout\,
	combout => \output_latch_1[4]~feeder_combout\);

-- Location: FF_X8_Y13_N29
\output_latch_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output_latch_1[4]~feeder_combout\,
	ena => \output_latch_0[-4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => output_latch_1(4));

ww_nnOut_0_neg_4 <= \nnOut_0[-4]~output_o\;

ww_nnOut_0_neg_3 <= \nnOut_0[-3]~output_o\;

ww_nnOut_0_neg_2 <= \nnOut_0[-2]~output_o\;

ww_nnOut_0_neg_1 <= \nnOut_0[-1]~output_o\;

ww_nnOut_0(0) <= \nnOut_0[0]~output_o\;

ww_nnOut_0(1) <= \nnOut_0[1]~output_o\;

ww_nnOut_0(2) <= \nnOut_0[2]~output_o\;

ww_nnOut_0(3) <= \nnOut_0[3]~output_o\;

ww_nnOut_0(4) <= \nnOut_0[4]~output_o\;

ww_nnOut_1_neg_4 <= \nnOut_1[-4]~output_o\;

ww_nnOut_1_neg_3 <= \nnOut_1[-3]~output_o\;

ww_nnOut_1_neg_2 <= \nnOut_1[-2]~output_o\;

ww_nnOut_1_neg_1 <= \nnOut_1[-1]~output_o\;

ww_nnOut_1(0) <= \nnOut_1[0]~output_o\;

ww_nnOut_1(1) <= \nnOut_1[1]~output_o\;

ww_nnOut_1(2) <= \nnOut_1[2]~output_o\;

ww_nnOut_1(3) <= \nnOut_1[3]~output_o\;

ww_nnOut_1(4) <= \nnOut_1[4]~output_o\;

ww_ready <= \ready~output_o\;
END structure;


