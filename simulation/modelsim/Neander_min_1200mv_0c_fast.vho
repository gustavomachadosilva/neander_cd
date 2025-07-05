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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/05/2025 14:55:26"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Neander IS
    PORT (
	S : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic
	);
END Neander;

-- Design Ports Information
-- S[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Neander IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst10~0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7|inst10~0_q\ : std_logic;
SIGNAL \inst7|inst10~1_q\ : std_logic;
SIGNAL \inst7|inst12~1_q\ : std_logic;
SIGNAL \inst7|inst4~1_q\ : std_logic;
SIGNAL \inst7|inst14~1_q\ : std_logic;
SIGNAL \inst1|inst2|inst14~1_combout\ : std_logic;
SIGNAL \inst1|inst|inst1|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst15~1_combout\ : std_logic;
SIGNAL \inst10|inst24~combout\ : std_logic;
SIGNAL \inst10|inst14|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst8|inst6~1_combout\ : std_logic;
SIGNAL \inst10|inst21~q\ : std_logic;
SIGNAL \inst5|inst9|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst7~1_combout\ : std_logic;
SIGNAL \inst5|inst10~q\ : std_logic;
SIGNAL \inst10|inst30~combout\ : std_logic;
SIGNAL \inst10|inst19|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst27~q\ : std_logic;
SIGNAL \inst5|inst11|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst12~q\ : std_logic;
SIGNAL \inst10|inst20|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst20|inst6~1_combout\ : std_logic;
SIGNAL \inst10|inst33~q\ : std_logic;
SIGNAL \inst5|inst13|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst14~q\ : std_logic;
SIGNAL \inst10|inst22|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst22|inst6~1_combout\ : std_logic;
SIGNAL \inst10|inst39~q\ : std_logic;
SIGNAL \inst5|inst15|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst16~q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst7|inst6~1_q\ : std_logic;
SIGNAL \inst7|inst6~4_combout\ : std_logic;
SIGNAL \inst10|inst10|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst10|inst6~1_combout\ : std_logic;
SIGNAL \inst10|inst2~q\ : std_logic;
SIGNAL \inst10|inst11|inst6~0_combout\ : std_logic;
SIGNAL \inst7|inst8~1_q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst7|inst8~4_combout\ : std_logic;
SIGNAL \inst10|inst11|inst6~1_combout\ : std_logic;
SIGNAL \inst10|inst5~q\ : std_logic;
SIGNAL \inst5|inst7|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst8~q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst7|inst14~4_combout\ : std_logic;
SIGNAL \inst8|inst14~q\ : std_logic;
SIGNAL \inst1|inst2|inst19~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst16~0_combout\ : std_logic;
SIGNAL \inst5|inst5|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst6~q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst7|inst4~4_combout\ : std_logic;
SIGNAL \inst10|inst8|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst1~q\ : std_logic;
SIGNAL \inst5|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst4~q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst7|inst12~4_combout\ : std_logic;
SIGNAL \inst8|inst12~q\ : std_logic;
SIGNAL \inst1|inst2|inst42~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst42~1_combout\ : std_logic;
SIGNAL \inst7|inst~1_q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst7|inst~4_combout\ : std_logic;
SIGNAL \inst10|inst~0_combout\ : std_logic;
SIGNAL \inst10|inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst10|inst~q\ : std_logic;
SIGNAL \inst5|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst~q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst7|inst10~4_combout\ : std_logic;
SIGNAL \inst8|inst10~q\ : std_logic;
SIGNAL \inst1|inst1|inst13~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst4|inst~combout\ : std_logic;
SIGNAL \inst1|inst2|inst26~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst40~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst40~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst43~0_combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst~q\ : std_logic;
SIGNAL \inst1|inst|inst|inst10|inst~combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst1~q\ : std_logic;
SIGNAL \inst1|inst|inst|inst99|inst~combout\ : std_logic;
SIGNAL \inst1|inst|inst|inst2~q\ : std_logic;
SIGNAL \inst1|inst|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst16~q\ : std_logic;
SIGNAL \inst1|inst2|inst14~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst18~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst22~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst22~1_combout\ : std_logic;
SIGNAL \inst7|inst10~3_q\ : std_logic;
SIGNAL \inst7|inst16~1_q\ : std_logic;
SIGNAL \inst11|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst7|inst16~4_combout\ : std_logic;
SIGNAL \inst|inst10|inst7~combout\ : std_logic;
SIGNAL \inst1|inst2|inst26~1_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst4~3_combout\ : std_logic;
SIGNAL \inst|inst10|inst3~combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst4~2_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst10|inst~combout\ : std_logic;
SIGNAL \inst3|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst~4_wirecell_combout\ : std_logic;
SIGNAL \inst1|inst2|inst27~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst34~2_combout\ : std_logic;
SIGNAL \inst3|inst~q\ : std_logic;
SIGNAL \inst|inst|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst1~combout\ : std_logic;
SIGNAL \inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst7|inst4~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst4~q\ : std_logic;
SIGNAL \inst|inst|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst1~combout\ : std_logic;
SIGNAL \inst3|inst6~0_combout\ : std_logic;
SIGNAL \inst7|inst6~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst6~q\ : std_logic;
SIGNAL \inst|inst|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst|inst4|inst1~combout\ : std_logic;
SIGNAL \inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst7|inst8~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst8~q\ : std_logic;
SIGNAL \inst|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst1~combout\ : std_logic;
SIGNAL \inst3|inst10~0_combout\ : std_logic;
SIGNAL \inst7|inst10~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst10~q\ : std_logic;
SIGNAL \inst|inst|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst4~1_combout\ : std_logic;
SIGNAL \inst|inst|inst5|inst4~2_combout\ : std_logic;
SIGNAL \inst|inst|inst6|inst1~combout\ : std_logic;
SIGNAL \inst|inst10|inst5~combout\ : std_logic;
SIGNAL \inst3|inst12~0_combout\ : std_logic;
SIGNAL \inst7|inst12~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst12~q\ : std_logic;
SIGNAL \inst|inst|inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst7|inst1~combout\ : std_logic;
SIGNAL \inst3|inst14~0_combout\ : std_logic;
SIGNAL \inst7|inst14~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst14~q\ : std_logic;
SIGNAL \inst|inst|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst|inst8|inst1~combout\ : std_logic;
SIGNAL \inst3|inst16~0_combout\ : std_logic;
SIGNAL \inst7|inst16~4_wirecell_combout\ : std_logic;
SIGNAL \inst3|inst16~q\ : std_logic;
SIGNAL \inst1|inst2|ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

S <= ww_S;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst5|inst16~q\ & \inst5|inst14~q\ & \inst5|inst12~q\ & \inst5|inst10~q\ & \inst5|inst8~q\ & \inst5|inst6~q\ & \inst5|inst4~q\ & \inst5|inst~q\);

\inst11|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a1\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a2\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a3\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a4\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a5\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a6\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst11|Mux0_rtl_0|auto_generated|ram_block1a7\ <= \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\inst1|inst2|ALT_INV_inst43~0_combout\ <= NOT \inst1|inst2|inst43~0_combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X23_Y24_N23
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst16~q\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst14~q\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst12~q\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst10~q\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst8~q\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst6~q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst4~q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X24_Y22_N14
\inst7|inst10~0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst10~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst7|inst10~0feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y22_N15
\inst7|inst10~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst10~0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst10~0_q\);

-- Location: FF_X23_Y22_N21
\inst7|inst10~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst10~1_q\);

-- Location: FF_X24_Y22_N17
\inst7|inst12~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst12~1_q\);

-- Location: FF_X26_Y22_N13
\inst7|inst4~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst4~1_q\);

-- Location: FF_X24_Y22_N19
\inst7|inst14~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst14~1_q\);

-- Location: LCCOMB_X22_Y22_N20
\inst1|inst2|inst14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst14~1_combout\ = (!\inst3|inst16~q\ & \inst8|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst16~q\,
	datad => \inst8|inst10~q\,
	combout => \inst1|inst2|inst14~1_combout\);

-- Location: LCCOMB_X21_Y22_N4
\inst1|inst|inst1|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst3~1_combout\ = (!\inst1|inst|inst|inst2~q\ & (\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst|inst2~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst~q\,
	combout => \inst1|inst|inst1|inst3~1_combout\);

-- Location: LCCOMB_X22_Y22_N10
\inst1|inst2|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst15~0_combout\ = (!\inst1|inst|inst|inst1~q\ & ((\inst1|inst|inst|inst~q\ & ((!\inst1|inst|inst|inst2~q\))) # (!\inst1|inst|inst|inst~q\ & (\inst1|inst2|inst19~0_combout\ & \inst1|inst|inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst19~0_combout\,
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst2~q\,
	combout => \inst1|inst2|inst15~0_combout\);

-- Location: LCCOMB_X22_Y22_N6
\inst1|inst2|inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst15~1_combout\ = (\inst1|inst2|inst15~0_combout\) # ((\inst1|inst2|inst14~0_combout\ & (\inst1|inst2|inst14~1_combout\ & \inst1|inst|inst1|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst14~0_combout\,
	datab => \inst1|inst2|inst14~1_combout\,
	datac => \inst1|inst|inst1|inst3~1_combout\,
	datad => \inst1|inst2|inst15~0_combout\,
	combout => \inst1|inst2|inst15~1_combout\);

-- Location: LCCOMB_X23_Y22_N16
\inst10|inst24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst24~combout\ = (\inst10|inst5~q\ & (\inst10|inst~q\ & (\inst10|inst2~q\ & \inst10|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5~q\,
	datab => \inst10|inst~q\,
	datac => \inst10|inst2~q\,
	datad => \inst10|inst1~q\,
	combout => \inst10|inst24~combout\);

-- Location: LCCOMB_X22_Y22_N26
\inst10|inst14|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst14|inst6~0_combout\ = (\inst1|inst2|inst15~1_combout\ & ((\inst10|inst24~combout\ $ (\inst10|inst21~q\)))) # (!\inst1|inst2|inst15~1_combout\ & (\inst7|inst10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~4_combout\,
	datab => \inst10|inst24~combout\,
	datac => \inst10|inst21~q\,
	datad => \inst1|inst2|inst15~1_combout\,
	combout => \inst10|inst14|inst6~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\inst10|inst8|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst8|inst6~1_combout\ = \inst1|inst2|inst42~1_combout\ $ (\inst1|inst2|inst15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|inst42~1_combout\,
	datad => \inst1|inst2|inst15~1_combout\,
	combout => \inst10|inst8|inst6~1_combout\);

-- Location: FF_X22_Y22_N27
\inst10|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst14|inst6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst21~q\);

-- Location: LCCOMB_X23_Y22_N0
\inst5|inst9|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst9|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst10~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst10|inst21~q\,
	datad => \inst7|inst10~4_combout\,
	combout => \inst5|inst9|inst2~0_combout\);

-- Location: LCCOMB_X22_Y22_N16
\inst1|inst2|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst7~0_combout\ = (\inst1|inst2|inst16~0_combout\) # ((\inst1|inst|inst1|inst3~1_combout\ & ((\inst1|inst2|inst19~0_combout\) # (\inst1|inst2|inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst19~0_combout\,
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst1|inst|inst1|inst3~1_combout\,
	datad => \inst1|inst2|inst14~0_combout\,
	combout => \inst1|inst2|inst7~0_combout\);

-- Location: LCCOMB_X22_Y22_N18
\inst1|inst2|inst7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst7~1_combout\ = (\inst1|inst2|inst7~0_combout\) # ((!\inst1|inst|inst|inst~q\ & (!\inst1|inst|inst|inst2~q\ & !\inst1|inst|inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst|inst~q\,
	datab => \inst1|inst|inst|inst2~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst2|inst7~0_combout\,
	combout => \inst1|inst2|inst7~1_combout\);

-- Location: FF_X23_Y22_N1
\inst5|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst9|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst10~q\);

-- Location: LCCOMB_X22_Y22_N24
\inst10|inst30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst30~combout\ = (\inst10|inst21~q\ & \inst10|inst24~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst21~q\,
	datad => \inst10|inst24~combout\,
	combout => \inst10|inst30~combout\);

-- Location: LCCOMB_X24_Y22_N26
\inst10|inst19|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst19|inst6~0_combout\ = (\inst1|inst2|inst15~1_combout\ & (\inst10|inst30~combout\ $ ((\inst10|inst27~q\)))) # (!\inst1|inst2|inst15~1_combout\ & (((\inst7|inst12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst15~1_combout\,
	datab => \inst10|inst30~combout\,
	datac => \inst10|inst27~q\,
	datad => \inst7|inst12~4_combout\,
	combout => \inst10|inst19|inst6~0_combout\);

-- Location: FF_X24_Y22_N27
\inst10|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst19|inst6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst27~q\);

-- Location: LCCOMB_X23_Y22_N26
\inst5|inst11|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst11|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst12~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst10|inst27~q\,
	datad => \inst7|inst12~4_combout\,
	combout => \inst5|inst11|inst2~0_combout\);

-- Location: FF_X23_Y22_N27
\inst5|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst11|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst12~q\);

-- Location: LCCOMB_X22_Y22_N14
\inst10|inst20|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst20|inst6~0_combout\ = \inst10|inst33~q\ $ (((\inst10|inst27~q\ & (\inst10|inst21~q\ & \inst10|inst24~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33~q\,
	datab => \inst10|inst27~q\,
	datac => \inst10|inst21~q\,
	datad => \inst10|inst24~combout\,
	combout => \inst10|inst20|inst6~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst10|inst20|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst20|inst6~1_combout\ = (\inst1|inst2|inst15~1_combout\ & (\inst10|inst20|inst6~0_combout\)) # (!\inst1|inst2|inst15~1_combout\ & ((\inst7|inst14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst15~1_combout\,
	datac => \inst10|inst20|inst6~0_combout\,
	datad => \inst7|inst14~4_combout\,
	combout => \inst10|inst20|inst6~1_combout\);

-- Location: FF_X24_Y22_N1
\inst10|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst20|inst6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst33~q\);

-- Location: LCCOMB_X23_Y22_N4
\inst5|inst13|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst13|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst14~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst33~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33~q\,
	datab => \inst1|inst2|inst16~0_combout\,
	datad => \inst7|inst14~4_combout\,
	combout => \inst5|inst13|inst2~0_combout\);

-- Location: FF_X23_Y22_N5
\inst5|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst13|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst14~q\);

-- Location: LCCOMB_X22_Y22_N4
\inst10|inst22|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst22|inst6~0_combout\ = \inst10|inst39~q\ $ (((\inst10|inst33~q\ & (\inst10|inst30~combout\ & \inst10|inst27~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33~q\,
	datab => \inst10|inst30~combout\,
	datac => \inst10|inst39~q\,
	datad => \inst10|inst27~q\,
	combout => \inst10|inst22|inst6~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\inst10|inst22|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst22|inst6~1_combout\ = (\inst1|inst2|inst15~1_combout\ & (\inst10|inst22|inst6~0_combout\)) # (!\inst1|inst2|inst15~1_combout\ & ((\inst7|inst16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst15~1_combout\,
	datab => \inst10|inst22|inst6~0_combout\,
	datac => \inst7|inst16~4_combout\,
	combout => \inst10|inst22|inst6~1_combout\);

-- Location: FF_X22_Y22_N9
\inst10|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst22|inst6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst39~q\);

-- Location: LCCOMB_X23_Y22_N10
\inst5|inst15|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst15|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst16~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst39~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst39~q\,
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst7|inst16~4_combout\,
	combout => \inst5|inst15|inst2~0_combout\);

-- Location: FF_X23_Y22_N11
\inst5|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst15|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst16~q\);

-- Location: M9K_X27_Y22_N0
\inst11|Mux0_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080000000300002000300000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030C000500100003C00004001900100002C0010400110010800090010800C0000040040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Neander.Neander0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst11|altsyncram:Mux0_rtl_0|altsyncram_8hv:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst11|Mux0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X26_Y22_N23
\inst7|inst6~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst6~1_q\);

-- Location: LCCOMB_X26_Y22_N22
\inst7|inst6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst6~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & (\inst11|Mux0_rtl_0|auto_generated|ram_block1a2\)) # (!\inst7|inst10~3_q\ & ((\inst7|inst6~1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst11|Mux0_rtl_0|auto_generated|ram_block1a2\,
	datac => \inst7|inst6~1_q\,
	datad => \inst7|inst10~3_q\,
	combout => \inst7|inst6~4_combout\);

-- Location: LCCOMB_X23_Y22_N24
\inst10|inst10|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst10|inst6~0_combout\ = \inst10|inst2~q\ $ (((\inst10|inst1~q\ & \inst10|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst1~q\,
	datab => \inst10|inst~q\,
	datac => \inst10|inst2~q\,
	combout => \inst10|inst10|inst6~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\inst10|inst10|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst10|inst6~1_combout\ = (\inst1|inst2|inst15~1_combout\ & ((\inst10|inst10|inst6~0_combout\))) # (!\inst1|inst2|inst15~1_combout\ & (\inst7|inst6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst15~1_combout\,
	datab => \inst7|inst6~4_combout\,
	datad => \inst10|inst10|inst6~0_combout\,
	combout => \inst10|inst10|inst6~1_combout\);

-- Location: FF_X22_Y22_N1
\inst10|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst10|inst6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2~q\);

-- Location: LCCOMB_X23_Y22_N14
\inst10|inst11|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst11|inst6~0_combout\ = \inst10|inst5~q\ $ (((\inst10|inst~q\ & (\inst10|inst2~q\ & \inst10|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5~q\,
	datab => \inst10|inst~q\,
	datac => \inst10|inst2~q\,
	datad => \inst10|inst1~q\,
	combout => \inst10|inst11|inst6~0_combout\);

-- Location: FF_X25_Y22_N17
\inst7|inst8~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst8~1_q\);

-- Location: LCCOMB_X25_Y22_N16
\inst7|inst8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst8~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a5\))) # (!\inst7|inst10~3_q\ & (\inst7|inst8~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst7|inst10~3_q\,
	datac => \inst7|inst8~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a5\,
	combout => \inst7|inst8~4_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst10|inst11|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst11|inst6~1_combout\ = (\inst1|inst2|inst15~1_combout\ & (\inst10|inst11|inst6~0_combout\)) # (!\inst1|inst2|inst15~1_combout\ & ((\inst7|inst8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11|inst6~0_combout\,
	datab => \inst7|inst8~4_combout\,
	datad => \inst1|inst2|inst15~1_combout\,
	combout => \inst10|inst11|inst6~1_combout\);

-- Location: FF_X24_Y22_N21
\inst10|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst11|inst6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst5~q\);

-- Location: LCCOMB_X23_Y22_N30
\inst5|inst7|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst7|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst8~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst10|inst5~q\,
	datad => \inst7|inst8~4_combout\,
	combout => \inst5|inst7|inst2~0_combout\);

-- Location: FF_X23_Y22_N31
\inst5|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst7|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8~q\);

-- Location: LCCOMB_X24_Y22_N18
\inst7|inst14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst14~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a7\))) # (!\inst7|inst10~3_q\ & (\inst7|inst14~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~3_q\,
	datab => \inst7|inst10~0_q\,
	datac => \inst7|inst14~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst7|inst14~4_combout\);

-- Location: FF_X21_Y22_N29
\inst8|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|inst14~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|inst|inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst14~q\);

-- Location: LCCOMB_X21_Y22_N12
\inst1|inst2|inst19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst19~0_combout\ = (!\inst8|inst16~q\ & ((\inst8|inst14~q\ & ((!\inst8|inst12~q\))) # (!\inst8|inst14~q\ & (\inst8|inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst10~q\,
	datab => \inst8|inst16~q\,
	datac => \inst8|inst12~q\,
	datad => \inst8|inst14~q\,
	combout => \inst1|inst2|inst19~0_combout\);

-- Location: LCCOMB_X22_Y22_N2
\inst1|inst2|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst16~0_combout\ = (\inst1|inst2|inst19~0_combout\ & (\inst1|inst|inst|inst~q\ & (!\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst19~0_combout\,
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst2~q\,
	combout => \inst1|inst2|inst16~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\inst5|inst5|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst5|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst6~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst10|inst2~q\,
	datad => \inst7|inst6~4_combout\,
	combout => \inst5|inst5|inst2~0_combout\);

-- Location: FF_X23_Y22_N29
\inst5|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst5|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6~q\);

-- Location: LCCOMB_X26_Y22_N12
\inst7|inst4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst4~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a4\))) # (!\inst7|inst10~3_q\ & (\inst7|inst4~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst7|inst10~3_q\,
	datac => \inst7|inst4~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst7|inst4~4_combout\);

-- Location: LCCOMB_X24_Y22_N2
\inst10|inst8|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst8|inst6~0_combout\ = (\inst1|inst2|inst15~1_combout\ & (\inst10|inst~q\ $ (((\inst10|inst1~q\))))) # (!\inst1|inst2|inst15~1_combout\ & (((\inst7|inst4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst~q\,
	datab => \inst7|inst4~4_combout\,
	datac => \inst10|inst1~q\,
	datad => \inst1|inst2|inst15~1_combout\,
	combout => \inst10|inst8|inst6~0_combout\);

-- Location: FF_X24_Y22_N3
\inst10|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst8|inst6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst10|inst8|inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst1~q\);

-- Location: LCCOMB_X23_Y22_N2
\inst5|inst3|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst4~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst1~q\,
	datab => \inst1|inst2|inst16~0_combout\,
	datac => \inst7|inst4~4_combout\,
	combout => \inst5|inst3|inst2~0_combout\);

-- Location: FF_X23_Y22_N3
\inst5|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst3|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst4~q\);

-- Location: LCCOMB_X24_Y22_N16
\inst7|inst12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst12~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a6\))) # (!\inst7|inst10~3_q\ & (\inst7|inst12~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~3_q\,
	datab => \inst7|inst10~0_q\,
	datac => \inst7|inst12~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst7|inst12~4_combout\);

-- Location: FF_X21_Y22_N15
\inst8|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|inst12~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|inst|inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst12~q\);

-- Location: LCCOMB_X21_Y22_N26
\inst1|inst2|inst42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst42~0_combout\ = (\inst1|inst|inst|inst2~q\ & (!\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst|inst2~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst~q\,
	combout => \inst1|inst2|inst42~0_combout\);

-- Location: LCCOMB_X21_Y22_N8
\inst1|inst2|inst42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst42~1_combout\ = (!\inst8|inst12~q\ & (\inst8|inst16~q\ & (\inst1|inst2|inst42~0_combout\ & !\inst8|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst12~q\,
	datab => \inst8|inst16~q\,
	datac => \inst1|inst2|inst42~0_combout\,
	datad => \inst8|inst14~q\,
	combout => \inst1|inst2|inst42~1_combout\);

-- Location: FF_X26_Y22_N15
\inst7|inst~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst~1_q\);

-- Location: LCCOMB_X26_Y22_N14
\inst7|inst~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a3\))) # (!\inst7|inst10~3_q\ & (\inst7|inst~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst7|inst10~3_q\,
	datac => \inst7|inst~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst7|inst~4_combout\);

-- Location: LCCOMB_X24_Y22_N12
\inst10|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst~0_combout\ = (\inst1|inst2|inst42~1_combout\ & ((\inst7|inst~4_combout\))) # (!\inst1|inst2|inst42~1_combout\ & (\inst10|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst42~1_combout\,
	datac => \inst10|inst~q\,
	datad => \inst7|inst~4_combout\,
	combout => \inst10|inst~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\inst10|inst4|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|inst4|inst6~0_combout\ = \inst1|inst2|inst42~1_combout\ $ (!\inst10|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|inst42~1_combout\,
	datad => \inst10|inst~q\,
	combout => \inst10|inst4|inst6~0_combout\);

-- Location: FF_X24_Y22_N13
\inst10|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|inst~0_combout\,
	asdata => \inst10|inst4|inst6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst~q\);

-- Location: LCCOMB_X23_Y22_N12
\inst5|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst2~0_combout\ = (\inst1|inst2|inst16~0_combout\ & ((\inst7|inst~4_combout\))) # (!\inst1|inst2|inst16~0_combout\ & (\inst10|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst~q\,
	datac => \inst1|inst2|inst16~0_combout\,
	datad => \inst7|inst~4_combout\,
	combout => \inst5|inst2|inst2~0_combout\);

-- Location: FF_X23_Y22_N13
\inst5|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|inst2|inst2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \inst1|inst2|inst7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst~q\);

-- Location: LCCOMB_X23_Y22_N20
\inst7|inst10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst10~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a1\))) # (!\inst7|inst10~3_q\ & (\inst7|inst10~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst7|inst10~3_q\,
	datac => \inst7|inst10~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst7|inst10~4_combout\);

-- Location: FF_X21_Y22_N11
\inst8|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|inst10~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|inst|inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst10~q\);

-- Location: LCCOMB_X21_Y22_N2
\inst1|inst1|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst13~0_combout\ = (\inst8|inst10~q\ & (\inst8|inst16~q\ & (\inst8|inst12~q\ & \inst8|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst10~q\,
	datab => \inst8|inst16~q\,
	datac => \inst8|inst12~q\,
	datad => \inst8|inst14~q\,
	combout => \inst1|inst1|inst13~0_combout\);

-- Location: LCCOMB_X21_Y22_N20
\inst1|inst|inst|inst4|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst4|inst~combout\ = (!\inst1|inst|inst|inst~q\ & !\inst1|inst1|inst13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst|inst|inst~q\,
	datad => \inst1|inst1|inst13~0_combout\,
	combout => \inst1|inst|inst|inst4|inst~combout\);

-- Location: LCCOMB_X21_Y22_N16
\inst1|inst2|inst26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst26~0_combout\ = (\inst1|inst|inst|inst~q\ & (\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst2~q\,
	combout => \inst1|inst2|inst26~0_combout\);

-- Location: LCCOMB_X21_Y22_N6
\inst1|inst2|inst40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst40~0_combout\ = ((\inst8|inst10~q\ & !\inst3|inst16~q\)) # (!\inst8|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst10~q\,
	datab => \inst8|inst16~q\,
	datad => \inst3|inst16~q\,
	combout => \inst1|inst2|inst40~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst1|inst2|inst40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst40~1_combout\ = (!\inst8|inst14~q\ & (!\inst8|inst12~q\ & (\inst1|inst|inst1|inst3~1_combout\ & \inst1|inst2|inst40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst14~q\,
	datab => \inst8|inst12~q\,
	datac => \inst1|inst|inst1|inst3~1_combout\,
	datad => \inst1|inst2|inst40~0_combout\,
	combout => \inst1|inst2|inst40~1_combout\);

-- Location: LCCOMB_X21_Y22_N22
\inst1|inst2|inst43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst43~0_combout\ = (!\inst1|inst2|inst42~1_combout\ & (!\inst1|inst2|inst40~1_combout\ & ((!\inst1|inst2|inst26~0_combout\) # (!\inst1|inst2|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst19~0_combout\,
	datab => \inst1|inst2|inst26~0_combout\,
	datac => \inst1|inst2|inst42~1_combout\,
	datad => \inst1|inst2|inst40~1_combout\,
	combout => \inst1|inst2|inst43~0_combout\);

-- Location: FF_X21_Y22_N21
\inst1|inst|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst|inst|inst4|inst~combout\,
	clrn => \inst1|inst2|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|inst|inst~q\);

-- Location: LCCOMB_X21_Y22_N30
\inst1|inst|inst|inst10|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst10|inst~combout\ = (!\inst1|inst1|inst13~0_combout\ & (\inst1|inst|inst|inst~q\ $ (\inst1|inst|inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst1|inst13~0_combout\,
	combout => \inst1|inst|inst|inst10|inst~combout\);

-- Location: FF_X21_Y22_N31
\inst1|inst|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst|inst|inst10|inst~combout\,
	clrn => \inst1|inst2|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|inst|inst1~q\);

-- Location: LCCOMB_X21_Y22_N18
\inst1|inst|inst|inst99|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst|inst99|inst~combout\ = (!\inst1|inst1|inst13~0_combout\ & (\inst1|inst|inst|inst2~q\ $ (((\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst|inst1~q\,
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst2~q\,
	datad => \inst1|inst1|inst13~0_combout\,
	combout => \inst1|inst|inst|inst99|inst~combout\);

-- Location: FF_X21_Y22_N19
\inst1|inst|inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst|inst|inst99|inst~combout\,
	clrn => \inst1|inst2|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst|inst|inst2~q\);

-- Location: LCCOMB_X22_Y22_N12
\inst1|inst|inst1|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|inst1|inst3~0_combout\ = (!\inst1|inst|inst|inst2~q\ & (\inst1|inst|inst|inst1~q\ & !\inst1|inst|inst|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|inst|inst2~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst~q\,
	combout => \inst1|inst|inst1|inst3~0_combout\);

-- Location: FF_X21_Y22_N1
\inst8|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|inst16~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst1|inst|inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst16~q\);

-- Location: LCCOMB_X21_Y22_N14
\inst1|inst2|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst14~0_combout\ = (\inst8|inst16~q\ & (!\inst8|inst12~q\ & !\inst8|inst14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst16~q\,
	datac => \inst8|inst12~q\,
	datad => \inst8|inst14~q\,
	combout => \inst1|inst2|inst14~0_combout\);

-- Location: LCCOMB_X21_Y22_N28
\inst1|inst2|inst18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst18~0_combout\ = (!\inst8|inst16~q\ & ((\inst8|inst12~q\ & (\inst8|inst10~q\ & !\inst8|inst14~q\)) # (!\inst8|inst12~q\ & ((\inst8|inst14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst10~q\,
	datab => \inst8|inst12~q\,
	datac => \inst8|inst14~q\,
	datad => \inst8|inst16~q\,
	combout => \inst1|inst2|inst18~0_combout\);

-- Location: LCCOMB_X22_Y22_N30
\inst1|inst2|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst22~0_combout\ = (\inst1|inst|inst|inst1~q\ & (((\inst1|inst2|inst18~0_combout\)))) # (!\inst1|inst|inst|inst1~q\ & ((\inst1|inst2|inst14~0_combout\) # ((\inst1|inst2|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst14~0_combout\,
	datab => \inst1|inst2|inst18~0_combout\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst2|inst19~0_combout\,
	combout => \inst1|inst2|inst22~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst1|inst2|inst22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst22~1_combout\ = (\inst1|inst|inst|inst~q\ & (((!\inst1|inst|inst|inst1~q\ & !\inst1|inst|inst|inst2~q\)))) # (!\inst1|inst|inst|inst~q\ & (\inst1|inst2|inst22~0_combout\ & ((\inst1|inst|inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst22~0_combout\,
	datab => \inst1|inst|inst|inst~q\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst2~q\,
	combout => \inst1|inst2|inst22~1_combout\);

-- Location: FF_X22_Y22_N29
\inst7|inst10~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst10~3_q\);

-- Location: FF_X23_Y22_N9
\inst7|inst16~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst16~1_q\);

-- Location: LCCOMB_X23_Y22_N8
\inst7|inst16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst16~4_combout\ = (\inst7|inst10~0_q\ & ((\inst7|inst10~3_q\ & ((\inst11|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\inst7|inst10~3_q\ & (\inst7|inst16~1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~0_q\,
	datab => \inst7|inst10~3_q\,
	datac => \inst7|inst16~1_q\,
	datad => \inst11|Mux0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst7|inst16~4_combout\);

-- Location: LCCOMB_X23_Y22_N22
\inst|inst10|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst7~combout\ = (\inst3|inst16~q\) # (\inst7|inst16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst16~q\,
	datac => \inst7|inst16~4_combout\,
	combout => \inst|inst10|inst7~combout\);

-- Location: LCCOMB_X21_Y22_N0
\inst1|inst2|inst26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst26~1_combout\ = (\inst1|inst2|inst26~0_combout\ & (!\inst8|inst12~q\ & (!\inst8|inst16~q\ & \inst8|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~0_combout\,
	datab => \inst8|inst12~q\,
	datac => \inst8|inst16~q\,
	datad => \inst8|inst14~q\,
	combout => \inst1|inst2|inst26~1_combout\);

-- Location: LCCOMB_X24_Y22_N24
\inst|inst|inst7|inst4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst4~1_combout\ = (\inst3|inst14~q\) # (\inst7|inst14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst14~q\,
	datad => \inst7|inst14~4_combout\,
	combout => \inst|inst|inst7|inst4~1_combout\);

-- Location: LCCOMB_X24_Y22_N28
\inst|inst|inst5|inst4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst4~3_combout\ = (\inst3|inst10~q\) # (\inst7|inst10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10~q\,
	datad => \inst7|inst10~4_combout\,
	combout => \inst|inst|inst5|inst4~3_combout\);

-- Location: LCCOMB_X25_Y22_N20
\inst|inst10|inst3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst3~combout\ = (\inst3|inst8~q\) # (\inst7|inst8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst8~q\,
	datad => \inst7|inst8~4_combout\,
	combout => \inst|inst10|inst3~combout\);

-- Location: LCCOMB_X28_Y22_N4
\inst|inst|inst2|inst4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst4~2_combout\ = (\inst3|inst6~q\) # (\inst7|inst6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst6~q\,
	datad => \inst7|inst6~4_combout\,
	combout => \inst|inst|inst2|inst4~2_combout\);

-- Location: LCCOMB_X25_Y22_N26
\inst|inst|inst|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst~combout\ = \inst7|inst~4_combout\ $ (\inst3|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst~4_combout\,
	datac => \inst3|inst~q\,
	combout => \inst|inst|inst|inst~combout\);

-- Location: LCCOMB_X25_Y22_N24
\inst|inst10|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst~combout\ = (\inst7|inst~4_combout\) # (\inst3|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst~4_combout\,
	datac => \inst3|inst~q\,
	combout => \inst|inst10|inst~combout\);

-- Location: LCCOMB_X25_Y22_N14
\inst3|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst~0_combout\ = (\inst1|inst2|inst26~1_combout\ & ((\inst|inst10|inst~combout\))) # (!\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst|inst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst~combout\,
	datab => \inst|inst10|inst~combout\,
	datad => \inst1|inst2|inst26~1_combout\,
	combout => \inst3|inst~0_combout\);

-- Location: LCCOMB_X25_Y22_N30
\inst7|inst~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst~4_wirecell_combout\ = !\inst7|inst~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst~4_combout\,
	combout => \inst7|inst~4_wirecell_combout\);

-- Location: LCCOMB_X21_Y22_N10
\inst1|inst2|inst27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst27~0_combout\ = (\inst1|inst2|inst26~1_combout\ & \inst8|inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~1_combout\,
	datac => \inst8|inst10~q\,
	combout => \inst1|inst2|inst27~0_combout\);

-- Location: LCCOMB_X22_Y22_N22
\inst1|inst2|inst34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst34~2_combout\ = (\inst1|inst|inst|inst~q\ & (\inst1|inst2|inst18~0_combout\ & (\inst1|inst|inst|inst1~q\ & \inst1|inst|inst|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst|inst~q\,
	datab => \inst1|inst2|inst18~0_combout\,
	datac => \inst1|inst|inst|inst1~q\,
	datad => \inst1|inst|inst|inst2~q\,
	combout => \inst1|inst2|inst34~2_combout\);

-- Location: FF_X25_Y22_N15
\inst3|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst~0_combout\,
	asdata => \inst7|inst~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst~q\);

-- Location: LCCOMB_X25_Y22_N18
\inst|inst|inst1|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst1~0_combout\ = \inst3|inst4~q\ $ (\inst7|inst4~4_combout\ $ (((\inst3|inst~q\ & \inst7|inst~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4~q\,
	datab => \inst3|inst~q\,
	datac => \inst7|inst~4_combout\,
	datad => \inst7|inst4~4_combout\,
	combout => \inst|inst|inst1|inst1~0_combout\);

-- Location: LCCOMB_X25_Y22_N12
\inst|inst10|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst1~combout\ = (\inst3|inst4~q\) # (\inst7|inst4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst4~q\,
	datac => \inst7|inst4~4_combout\,
	combout => \inst|inst10|inst1~combout\);

-- Location: LCCOMB_X25_Y22_N4
\inst3|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst4~0_combout\ = (\inst1|inst2|inst26~1_combout\ & ((\inst|inst10|inst1~combout\))) # (!\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst1|inst1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~1_combout\,
	datab => \inst|inst|inst1|inst1~0_combout\,
	datad => \inst|inst10|inst1~combout\,
	combout => \inst3|inst4~0_combout\);

-- Location: LCCOMB_X25_Y22_N22
\inst7|inst4~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst4~4_wirecell_combout\ = !\inst7|inst4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst4~4_combout\,
	combout => \inst7|inst4~4_wirecell_combout\);

-- Location: FF_X25_Y22_N5
\inst3|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst4~0_combout\,
	asdata => \inst7|inst4~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst4~q\);

-- Location: LCCOMB_X26_Y22_N18
\inst|inst|inst1|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst4~0_combout\ = (\inst3|inst4~q\ & ((\inst7|inst4~4_combout\) # ((\inst3|inst~q\ & \inst7|inst~4_combout\)))) # (!\inst3|inst4~q\ & (\inst3|inst~q\ & (\inst7|inst~4_combout\ & \inst7|inst4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst~q\,
	datab => \inst3|inst4~q\,
	datac => \inst7|inst~4_combout\,
	datad => \inst7|inst4~4_combout\,
	combout => \inst|inst|inst1|inst4~0_combout\);

-- Location: LCCOMB_X28_Y22_N2
\inst|inst|inst2|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst1~combout\ = \inst3|inst6~q\ $ (\inst|inst|inst1|inst4~0_combout\ $ (\inst7|inst6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst6~q\,
	datac => \inst|inst|inst1|inst4~0_combout\,
	datad => \inst7|inst6~4_combout\,
	combout => \inst|inst|inst2|inst1~combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst3|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst6~0_combout\ = (\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst2|inst4~2_combout\)) # (!\inst1|inst2|inst26~1_combout\ & ((\inst|inst|inst2|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~1_combout\,
	datab => \inst|inst|inst2|inst4~2_combout\,
	datad => \inst|inst|inst2|inst1~combout\,
	combout => \inst3|inst6~0_combout\);

-- Location: LCCOMB_X28_Y22_N22
\inst7|inst6~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst6~4_wirecell_combout\ = !\inst7|inst6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst6~4_combout\,
	combout => \inst7|inst6~4_wirecell_combout\);

-- Location: FF_X28_Y22_N1
\inst3|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst6~0_combout\,
	asdata => \inst7|inst6~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst6~q\);

-- Location: LCCOMB_X26_Y22_N8
\inst|inst|inst2|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst4~0_combout\ = (\inst3|inst6~q\ & \inst7|inst6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst6~q\,
	datac => \inst7|inst6~4_combout\,
	combout => \inst|inst|inst2|inst4~0_combout\);

-- Location: LCCOMB_X26_Y22_N0
\inst|inst|inst2|inst4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst4~1_combout\ = (\inst|inst|inst1|inst4~0_combout\ & ((\inst3|inst6~q\) # (\inst7|inst6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst6~q\,
	datac => \inst7|inst6~4_combout\,
	datad => \inst|inst|inst1|inst4~0_combout\,
	combout => \inst|inst|inst2|inst4~1_combout\);

-- Location: LCCOMB_X25_Y22_N6
\inst|inst|inst4|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst1~combout\ = \inst7|inst8~4_combout\ $ (\inst3|inst8~q\ $ (((\inst|inst|inst2|inst4~0_combout\) # (\inst|inst|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst8~4_combout\,
	datab => \inst3|inst8~q\,
	datac => \inst|inst|inst2|inst4~0_combout\,
	datad => \inst|inst|inst2|inst4~1_combout\,
	combout => \inst|inst|inst4|inst1~combout\);

-- Location: LCCOMB_X25_Y22_N2
\inst3|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst8~0_combout\ = (\inst1|inst2|inst26~1_combout\ & (\inst|inst10|inst3~combout\)) # (!\inst1|inst2|inst26~1_combout\ & ((\inst|inst|inst4|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~1_combout\,
	datab => \inst|inst10|inst3~combout\,
	datad => \inst|inst|inst4|inst1~combout\,
	combout => \inst3|inst8~0_combout\);

-- Location: LCCOMB_X25_Y22_N8
\inst7|inst8~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst8~4_wirecell_combout\ = !\inst7|inst8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst8~4_combout\,
	combout => \inst7|inst8~4_wirecell_combout\);

-- Location: FF_X25_Y22_N3
\inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst8~0_combout\,
	asdata => \inst7|inst8~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8~q\);

-- Location: LCCOMB_X25_Y22_N10
\inst|inst|inst4|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst4~0_combout\ = (\inst7|inst8~4_combout\ & ((\inst3|inst8~q\) # ((\inst|inst|inst2|inst4~0_combout\) # (\inst|inst|inst2|inst4~1_combout\)))) # (!\inst7|inst8~4_combout\ & (\inst3|inst8~q\ & ((\inst|inst|inst2|inst4~0_combout\) # 
-- (\inst|inst|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst8~4_combout\,
	datab => \inst3|inst8~q\,
	datac => \inst|inst|inst2|inst4~0_combout\,
	datad => \inst|inst|inst2|inst4~1_combout\,
	combout => \inst|inst|inst4|inst4~0_combout\);

-- Location: LCCOMB_X25_Y22_N28
\inst|inst|inst5|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst1~combout\ = \inst3|inst10~q\ $ (\inst7|inst10~4_combout\ $ (\inst|inst|inst4|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10~q\,
	datac => \inst7|inst10~4_combout\,
	datad => \inst|inst|inst4|inst4~0_combout\,
	combout => \inst|inst|inst5|inst1~combout\);

-- Location: LCCOMB_X25_Y22_N0
\inst3|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst10~0_combout\ = (\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst5|inst4~3_combout\)) # (!\inst1|inst2|inst26~1_combout\ & ((\inst|inst|inst5|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst26~1_combout\,
	datab => \inst|inst|inst5|inst4~3_combout\,
	datad => \inst|inst|inst5|inst1~combout\,
	combout => \inst3|inst10~0_combout\);

-- Location: LCCOMB_X24_Y22_N6
\inst7|inst10~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst10~4_wirecell_combout\ = !\inst7|inst10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst10~4_combout\,
	combout => \inst7|inst10~4_wirecell_combout\);

-- Location: FF_X25_Y22_N1
\inst3|inst10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst10~0_combout\,
	asdata => \inst7|inst10~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst10~q\);

-- Location: LCCOMB_X23_Y22_N18
\inst|inst|inst5|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst4~0_combout\ = (\inst3|inst10~q\ & \inst7|inst10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst10~q\,
	datad => \inst7|inst10~4_combout\,
	combout => \inst|inst|inst5|inst4~0_combout\);

-- Location: LCCOMB_X26_Y22_N6
\inst|inst|inst5|inst4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst4~1_combout\ = (\inst7|inst8~4_combout\ & ((\inst3|inst8~q\) # ((\inst|inst|inst2|inst4~0_combout\) # (\inst|inst|inst2|inst4~1_combout\)))) # (!\inst7|inst8~4_combout\ & (\inst3|inst8~q\ & ((\inst|inst|inst2|inst4~0_combout\) # 
-- (\inst|inst|inst2|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst8~4_combout\,
	datab => \inst3|inst8~q\,
	datac => \inst|inst|inst2|inst4~0_combout\,
	datad => \inst|inst|inst2|inst4~1_combout\,
	combout => \inst|inst|inst5|inst4~1_combout\);

-- Location: LCCOMB_X26_Y22_N24
\inst|inst|inst5|inst4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst5|inst4~2_combout\ = (\inst|inst|inst5|inst4~1_combout\ & ((\inst3|inst10~q\) # (\inst7|inst10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10~q\,
	datac => \inst7|inst10~4_combout\,
	datad => \inst|inst|inst5|inst4~1_combout\,
	combout => \inst|inst|inst5|inst4~2_combout\);

-- Location: LCCOMB_X26_Y22_N30
\inst|inst|inst6|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst1~combout\ = \inst7|inst12~4_combout\ $ (\inst3|inst12~q\ $ (((\inst|inst|inst5|inst4~0_combout\) # (\inst|inst|inst5|inst4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst12~4_combout\,
	datab => \inst3|inst12~q\,
	datac => \inst|inst|inst5|inst4~0_combout\,
	datad => \inst|inst|inst5|inst4~2_combout\,
	combout => \inst|inst|inst6|inst1~combout\);

-- Location: LCCOMB_X24_Y22_N22
\inst|inst10|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst5~combout\ = (\inst3|inst12~q\) # (\inst7|inst12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst12~q\,
	datad => \inst7|inst12~4_combout\,
	combout => \inst|inst10|inst5~combout\);

-- Location: LCCOMB_X26_Y22_N4
\inst3|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst12~0_combout\ = (\inst1|inst2|inst26~1_combout\ & ((\inst|inst10|inst5~combout\))) # (!\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst6|inst1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst6|inst1~combout\,
	datab => \inst1|inst2|inst26~1_combout\,
	datad => \inst|inst10|inst5~combout\,
	combout => \inst3|inst12~0_combout\);

-- Location: LCCOMB_X24_Y22_N4
\inst7|inst12~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst12~4_wirecell_combout\ = !\inst7|inst12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst12~4_combout\,
	combout => \inst7|inst12~4_wirecell_combout\);

-- Location: FF_X26_Y22_N5
\inst3|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst12~0_combout\,
	asdata => \inst7|inst12~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst12~q\);

-- Location: LCCOMB_X26_Y22_N10
\inst|inst|inst6|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst6|inst4~0_combout\ = (\inst7|inst12~4_combout\ & ((\inst3|inst12~q\) # ((\inst|inst|inst5|inst4~0_combout\) # (\inst|inst|inst5|inst4~2_combout\)))) # (!\inst7|inst12~4_combout\ & (\inst3|inst12~q\ & ((\inst|inst|inst5|inst4~0_combout\) # 
-- (\inst|inst|inst5|inst4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst12~4_combout\,
	datab => \inst3|inst12~q\,
	datac => \inst|inst|inst5|inst4~0_combout\,
	datad => \inst|inst|inst5|inst4~2_combout\,
	combout => \inst|inst|inst6|inst4~0_combout\);

-- Location: LCCOMB_X26_Y22_N28
\inst|inst|inst7|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst1~combout\ = \inst3|inst14~q\ $ (\inst7|inst14~4_combout\ $ (\inst|inst|inst6|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst14~q\,
	datac => \inst7|inst14~4_combout\,
	datad => \inst|inst|inst6|inst4~0_combout\,
	combout => \inst|inst|inst7|inst1~combout\);

-- Location: LCCOMB_X26_Y22_N26
\inst3|inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14~0_combout\ = (\inst1|inst2|inst26~1_combout\ & (\inst|inst|inst7|inst4~1_combout\)) # (!\inst1|inst2|inst26~1_combout\ & ((\inst|inst|inst7|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst7|inst4~1_combout\,
	datab => \inst1|inst2|inst26~1_combout\,
	datad => \inst|inst|inst7|inst1~combout\,
	combout => \inst3|inst14~0_combout\);

-- Location: LCCOMB_X24_Y22_N10
\inst7|inst14~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst14~4_wirecell_combout\ = !\inst7|inst14~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst14~4_combout\,
	combout => \inst7|inst14~4_wirecell_combout\);

-- Location: FF_X26_Y22_N27
\inst3|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst14~0_combout\,
	asdata => \inst7|inst14~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst14~q\);

-- Location: LCCOMB_X26_Y22_N16
\inst|inst|inst7|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst7|inst4~0_combout\ = (\inst3|inst14~q\ & ((\inst7|inst14~4_combout\) # (\inst|inst|inst6|inst4~0_combout\))) # (!\inst3|inst14~q\ & (\inst7|inst14~4_combout\ & \inst|inst|inst6|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst14~q\,
	datac => \inst7|inst14~4_combout\,
	datad => \inst|inst|inst6|inst4~0_combout\,
	combout => \inst|inst|inst7|inst4~0_combout\);

-- Location: LCCOMB_X26_Y22_N2
\inst|inst|inst8|inst1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst8|inst1~combout\ = \inst3|inst16~q\ $ (\inst7|inst16~4_combout\ $ (\inst|inst|inst7|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst16~q\,
	datac => \inst7|inst16~4_combout\,
	datad => \inst|inst|inst7|inst4~0_combout\,
	combout => \inst|inst|inst8|inst1~combout\);

-- Location: LCCOMB_X26_Y22_N20
\inst3|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16~0_combout\ = (\inst1|inst2|inst26~1_combout\ & (\inst|inst10|inst7~combout\)) # (!\inst1|inst2|inst26~1_combout\ & ((\inst|inst|inst8|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst10|inst7~combout\,
	datab => \inst1|inst2|inst26~1_combout\,
	datad => \inst|inst|inst8|inst1~combout\,
	combout => \inst3|inst16~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\inst7|inst16~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst16~4_wirecell_combout\ = !\inst7|inst16~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst16~4_combout\,
	combout => \inst7|inst16~4_wirecell_combout\);

-- Location: FF_X26_Y22_N21
\inst3|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|inst16~0_combout\,
	asdata => \inst7|inst16~4_wirecell_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \inst1|inst2|inst27~0_combout\,
	ena => \inst1|inst2|inst34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst16~q\);

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


