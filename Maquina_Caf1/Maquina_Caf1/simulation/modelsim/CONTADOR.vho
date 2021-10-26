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

-- DATE "07/08/2019 20:30:55"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	CAFETEIRA IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_BOTAO_Preparo : IN std_logic;
	i_BOTAO_Reposicao : IN std_logic;
	i_BOTAO_Cafe : IN std_logic;
	i_BOTAO_CLeite : IN std_logic;
	i_BOTAO_Mocha : IN std_logic;
	i_BOTAO_Acucar : IN std_logic;
	i_BOTAO_Tamanho : IN std_logic;
	i_SensorTempert : IN std_logic;
	i_SensorNivel : IN std_logic;
	o_Valvulas : OUT std_logic_vector(4 DOWNTO 0);
	o_SensorTempert : OUT std_logic;
	o_SensorNivel : OUT std_logic;
	o_Display1 : OUT std_logic_vector(7 DOWNTO 0);
	o_Display2 : OUT std_logic_vector(7 DOWNTO 0);
	o_Display3 : OUT std_logic_vector(7 DOWNTO 0);
	o_Display4 : OUT std_logic_vector(7 DOWNTO 0);
	o_Interface : OUT std_logic_vector(2 DOWNTO 0)
	);
END CAFETEIRA;

-- Design Ports Information
-- o_Valvulas[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Valvulas[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Valvulas[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Valvulas[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Valvulas[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SensorTempert	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SensorNivel	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display1[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display2[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display3[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[6]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Display4[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Interface[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Interface[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Interface[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SensorTempert	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SensorNivel	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Cafe	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_CLeite	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Mocha	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Acucar	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Preparo	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Reposicao	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BOTAO_Tamanho	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CAFETEIRA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_BOTAO_Preparo : std_logic;
SIGNAL ww_i_BOTAO_Reposicao : std_logic;
SIGNAL ww_i_BOTAO_Cafe : std_logic;
SIGNAL ww_i_BOTAO_CLeite : std_logic;
SIGNAL ww_i_BOTAO_Mocha : std_logic;
SIGNAL ww_i_BOTAO_Acucar : std_logic;
SIGNAL ww_i_BOTAO_Tamanho : std_logic;
SIGNAL ww_i_SensorTempert : std_logic;
SIGNAL ww_i_SensorNivel : std_logic;
SIGNAL ww_o_Valvulas : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_o_SensorTempert : std_logic;
SIGNAL ww_o_SensorNivel : std_logic;
SIGNAL ww_o_Display1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Display2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Display3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Display4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_Interface : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_Valvulas[0]~output_o\ : std_logic;
SIGNAL \o_Valvulas[1]~output_o\ : std_logic;
SIGNAL \o_Valvulas[2]~output_o\ : std_logic;
SIGNAL \o_Valvulas[3]~output_o\ : std_logic;
SIGNAL \o_Valvulas[4]~output_o\ : std_logic;
SIGNAL \o_SensorTempert~output_o\ : std_logic;
SIGNAL \o_SensorNivel~output_o\ : std_logic;
SIGNAL \o_Display1[0]~output_o\ : std_logic;
SIGNAL \o_Display1[1]~output_o\ : std_logic;
SIGNAL \o_Display1[2]~output_o\ : std_logic;
SIGNAL \o_Display1[3]~output_o\ : std_logic;
SIGNAL \o_Display1[4]~output_o\ : std_logic;
SIGNAL \o_Display1[5]~output_o\ : std_logic;
SIGNAL \o_Display1[6]~output_o\ : std_logic;
SIGNAL \o_Display1[7]~output_o\ : std_logic;
SIGNAL \o_Display2[0]~output_o\ : std_logic;
SIGNAL \o_Display2[1]~output_o\ : std_logic;
SIGNAL \o_Display2[2]~output_o\ : std_logic;
SIGNAL \o_Display2[3]~output_o\ : std_logic;
SIGNAL \o_Display2[4]~output_o\ : std_logic;
SIGNAL \o_Display2[5]~output_o\ : std_logic;
SIGNAL \o_Display2[6]~output_o\ : std_logic;
SIGNAL \o_Display2[7]~output_o\ : std_logic;
SIGNAL \o_Display3[0]~output_o\ : std_logic;
SIGNAL \o_Display3[1]~output_o\ : std_logic;
SIGNAL \o_Display3[2]~output_o\ : std_logic;
SIGNAL \o_Display3[3]~output_o\ : std_logic;
SIGNAL \o_Display3[4]~output_o\ : std_logic;
SIGNAL \o_Display3[5]~output_o\ : std_logic;
SIGNAL \o_Display3[6]~output_o\ : std_logic;
SIGNAL \o_Display3[7]~output_o\ : std_logic;
SIGNAL \o_Display4[0]~output_o\ : std_logic;
SIGNAL \o_Display4[1]~output_o\ : std_logic;
SIGNAL \o_Display4[2]~output_o\ : std_logic;
SIGNAL \o_Display4[3]~output_o\ : std_logic;
SIGNAL \o_Display4[4]~output_o\ : std_logic;
SIGNAL \o_Display4[5]~output_o\ : std_logic;
SIGNAL \o_Display4[6]~output_o\ : std_logic;
SIGNAL \o_Display4[7]~output_o\ : std_logic;
SIGNAL \o_Interface[0]~output_o\ : std_logic;
SIGNAL \o_Interface[1]~output_o\ : std_logic;
SIGNAL \o_Interface[2]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SensorTempert~input_o\ : std_logic;
SIGNAL \i_SensorNivel~input_o\ : std_logic;
SIGNAL \InstancicaoContSensor|o_EN_Maquina~combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~32_combout\ : std_logic;
SIGNAL \i_BOTAO_Preparo~input_o\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~39_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~24_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector2~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector2~2_combout\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_EN_PEDIDO~q\ : std_logic;
SIGNAL \i_BOTAO_Cafe~input_o\ : std_logic;
SIGNAL \i_BOTAO_CLeite~input_o\ : std_logic;
SIGNAL \i_BOTAO_Mocha~input_o\ : std_logic;
SIGNAL \InstanciacaoContPedid|o_VALIDADE~0_combout\ : std_logic;
SIGNAL \InstanciacaoContPedid|o_VALIDADE~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~28_combout\ : std_logic;
SIGNAL \i_BOTAO_Reposicao~input_o\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~26_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~25_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~27_combout\ : std_logic;
SIGNAL \i_BOTAO_Tamanho~input_o\ : std_logic;
SIGNAL \InstanciacaoContPedid|o_VALIDADE~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector3~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_leite[0]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_leite[0]~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector29~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_leite[2]~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector28~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|LessThan3~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector27~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_cafe~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_cafe[0]~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector21~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector20~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector19~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector19~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|LessThan1~0_combout\ : std_logic;
SIGNAL \i_BOTAO_Acucar~input_o\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_acucar[0]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector17~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector16~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|LessThan0~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector15~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[0]~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[0]~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[0]~6_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector25~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[2]~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector24~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|LessThan2~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector23~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|U_MACHINE~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|U_MACHINE~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_POS~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_POS~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_POS~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector3~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~29_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~30_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~31_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~37_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~38_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector1~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector1~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_RST_PEDIDO~q\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \InstanciacaoContPedid|o_VALIDADE~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector0~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~40_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector2~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~35_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~36_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~33_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~34_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector37~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector37~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector39~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector39~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[0]~26_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector36~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_RST_CONT~q\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~0_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~2_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~3_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~4_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[3]~6_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CLEAR_CONT~q\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[0]~27\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[1]~28_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[1]~29\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[2]~30_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[2]~31\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[3]~32_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[3]~33\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[4]~34_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[4]~35\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[5]~36_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[5]~37\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[6]~38_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[6]~39\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[7]~40_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[7]~41\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[8]~42_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[8]~43\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[9]~44_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[9]~45\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[10]~46_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[10]~47\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[11]~48_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[11]~49\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[12]~50_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[12]~51\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[13]~52_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[13]~53\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[14]~54_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[14]~55\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[15]~56_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[15]~57\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[16]~58_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[16]~59\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[17]~60_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[17]~61\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[18]~62_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[18]~63\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[19]~64_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[19]~65\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[20]~66_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[20]~67\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[21]~68_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[21]~69\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[22]~70_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[22]~71\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[23]~72_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[23]~73\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[24]~74_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[24]~75\ : std_logic;
SIGNAL \InstanciacaoContad|w_CONT[25]~76_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~5_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~6_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~7_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Equal0~8_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[0]~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[0]~2_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Add1~0_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[2]~4_combout\ : std_logic;
SIGNAL \InstanciacaoContad|Add1~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[3]~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector38~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector38~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|process_1~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[3]~0_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_LIMITE[1]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~41_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector40~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector40~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector40~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector40~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector13~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector41~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector41~1_combout\ : std_logic;
SIGNAL \InstanciacaoContad|process_1~0_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_DONE~0_combout\ : std_logic;
SIGNAL \InstanciacaoContad|w_DONE~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~22_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE~23_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[0]~5_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector34~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[0]~2_wirecell_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS[3]~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector31~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector13~1_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector14~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector14~1_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector0~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector0~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_RST_DISPLAY~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector3~2_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector3~3_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|Selector3~4_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|o_EN_DISPLAY~q\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[1]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[2]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[3]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[4]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[5]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1[6]~1_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2[0]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2[1]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|Equal1~0_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2[4]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2[5]~1_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2~0_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[0]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[1]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[2]~0_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[3]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[4]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[5]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3[6]~1_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4[1]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4[2]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4~0_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4[4]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4[5]~2_combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4[6]~feeder_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|w_n_leite\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|w_n_choco\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|w_n_cafe\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|w_n_acucar\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|o_VALVULAS\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|o_EN_CONTAGEM\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \InstanciacaoMaqEstd|o_DISPLAY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \InstanciacaoContad|w_LIMITE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstanciacaoContad|w_CONT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|o_DISPLAY_4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|o_DISPLAY_3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|o_DISPLAY_2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|o_DISPLAY_1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\ : std_logic;
SIGNAL \InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\ : std_logic;
SIGNAL \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_BOTAO_Preparo <= i_BOTAO_Preparo;
ww_i_BOTAO_Reposicao <= i_BOTAO_Reposicao;
ww_i_BOTAO_Cafe <= i_BOTAO_Cafe;
ww_i_BOTAO_CLeite <= i_BOTAO_CLeite;
ww_i_BOTAO_Mocha <= i_BOTAO_Mocha;
ww_i_BOTAO_Acucar <= i_BOTAO_Acucar;
ww_i_BOTAO_Tamanho <= i_BOTAO_Tamanho;
ww_i_SensorTempert <= i_SensorTempert;
ww_i_SensorNivel <= i_SensorNivel;
o_Valvulas <= ww_o_Valvulas;
o_SensorTempert <= ww_o_SensorTempert;
o_SensorNivel <= ww_o_SensorNivel;
o_Display1 <= ww_o_Display1;
o_Display2 <= ww_o_Display2;
o_Display3 <= ww_o_Display3;
o_Display4 <= ww_o_Display4;
o_Interface <= ww_o_Interface;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\ <= NOT \InstanciacaoMaqEstd|w_STATE.st_POS~q\;
\InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\ <= NOT \InstancicaoContSensor|o_EN_Maquina~combout\;
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(6) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(6);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(5) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(5);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(4) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(4);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(3) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(3);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(2) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(2);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(1) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(1);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(0) <= NOT \InstanciacaoContDisp|o_DISPLAY_4\(0);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(6) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(6);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(5) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(5);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(4) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(4);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(3) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(3);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(2) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(2);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(1) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(1);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(0) <= NOT \InstanciacaoContDisp|o_DISPLAY_3\(0);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(6) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(6);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(5) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(5);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(4) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(4);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(2) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(2);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(1) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(1);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(0) <= NOT \InstanciacaoContDisp|o_DISPLAY_2\(0);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(6) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(6);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(5) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(5);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(4) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(4);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(3) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(3);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(2) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(2);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(1) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(1);
\InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(0) <= NOT \InstanciacaoContDisp|o_DISPLAY_1\(0);

-- Location: IOOBUF_X23_Y29_N16
\o_Valvulas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoMaqEstd|o_VALVULAS\(0),
	devoe => ww_devoe,
	o => \o_Valvulas[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_Valvulas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoMaqEstd|o_VALVULAS\(1),
	devoe => ww_devoe,
	o => \o_Valvulas[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_Valvulas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoMaqEstd|o_VALVULAS\(2),
	devoe => ww_devoe,
	o => \o_Valvulas[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_Valvulas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoMaqEstd|o_VALVULAS\(3),
	devoe => ww_devoe,
	o => \o_Valvulas[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_Valvulas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoMaqEstd|o_VALVULAS\(4),
	devoe => ww_devoe,
	o => \o_Valvulas[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\o_SensorTempert~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_SensorTempert~input_o\,
	devoe => ww_devoe,
	o => \o_SensorTempert~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_SensorNivel~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_SensorNivel~input_o\,
	devoe => ww_devoe,
	o => \o_SensorNivel~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\o_Display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(0),
	devoe => ww_devoe,
	o => \o_Display1[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\o_Display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(1),
	devoe => ww_devoe,
	o => \o_Display1[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_Display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(2),
	devoe => ww_devoe,
	o => \o_Display1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\o_Display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(3),
	devoe => ww_devoe,
	o => \o_Display1[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\o_Display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(4),
	devoe => ww_devoe,
	o => \o_Display1[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_Display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(5),
	devoe => ww_devoe,
	o => \o_Display1[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\o_Display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_1\(6),
	devoe => ww_devoe,
	o => \o_Display1[6]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\o_Display1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_Display1[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\o_Display2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(0),
	devoe => ww_devoe,
	o => \o_Display2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_Display2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(1),
	devoe => ww_devoe,
	o => \o_Display2[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\o_Display2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(2),
	devoe => ww_devoe,
	o => \o_Display2[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\o_Display2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_Display2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_Display2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(4),
	devoe => ww_devoe,
	o => \o_Display2[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\o_Display2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(5),
	devoe => ww_devoe,
	o => \o_Display2[5]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\o_Display2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_2\(6),
	devoe => ww_devoe,
	o => \o_Display2[6]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\o_Display2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_Display2[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_Display3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(0),
	devoe => ww_devoe,
	o => \o_Display3[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\o_Display3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(1),
	devoe => ww_devoe,
	o => \o_Display3[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\o_Display3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(2),
	devoe => ww_devoe,
	o => \o_Display3[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_Display3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(3),
	devoe => ww_devoe,
	o => \o_Display3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\o_Display3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(4),
	devoe => ww_devoe,
	o => \o_Display3[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_Display3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(5),
	devoe => ww_devoe,
	o => \o_Display3[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\o_Display3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_3\(6),
	devoe => ww_devoe,
	o => \o_Display3[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_Display3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_Display3[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\o_Display4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(0),
	devoe => ww_devoe,
	o => \o_Display4[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_Display4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(1),
	devoe => ww_devoe,
	o => \o_Display4[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\o_Display4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(2),
	devoe => ww_devoe,
	o => \o_Display4[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_Display4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(3),
	devoe => ww_devoe,
	o => \o_Display4[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\o_Display4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(4),
	devoe => ww_devoe,
	o => \o_Display4[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\o_Display4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(5),
	devoe => ww_devoe,
	o => \o_Display4[5]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\o_Display4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstanciacaoContDisp|ALT_INV_o_DISPLAY_4\(6),
	devoe => ww_devoe,
	o => \o_Display4[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\o_Display4[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_Display4[7]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_Interface[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_BOTAO_Cafe~input_o\,
	devoe => ww_devoe,
	o => \o_Interface[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_Interface[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_BOTAO_CLeite~input_o\,
	devoe => ww_devoe,
	o => \o_Interface[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_Interface[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_BOTAO_Mocha~input_o\,
	devoe => ww_devoe,
	o => \o_Interface[2]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G4
\i_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y29_N29
\i_SensorTempert~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SensorTempert,
	o => \i_SensorTempert~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\i_SensorNivel~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SensorNivel,
	o => \i_SensorNivel~input_o\);

-- Location: LCCOMB_X23_Y24_N14
\InstancicaoContSensor|o_EN_Maquina\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstancicaoContSensor|o_EN_Maquina~combout\ = (\i_SensorTempert~input_o\) # (\i_SensorNivel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SensorTempert~input_o\,
	datad => \i_SensorNivel~input_o\,
	combout => \InstancicaoContSensor|o_EN_Maquina~combout\);

-- Location: LCCOMB_X26_Y23_N24
\InstanciacaoMaqEstd|w_STATE~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~32_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\ & ((\i_SensorNivel~input_o\) # ((\i_SensorTempert~input_o\) # (!\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SensorNivel~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datac => \i_SensorTempert~input_o\,
	datad => \InstanciacaoContad|w_DONE~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~32_combout\);

-- Location: IOIBUF_X26_Y29_N22
\i_BOTAO_Preparo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Preparo,
	o => \i_BOTAO_Preparo~input_o\);

-- Location: LCCOMB_X26_Y23_N10
\InstanciacaoMaqEstd|w_STATE~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~39_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & ((\i_BOTAO_Preparo~input_o\) # ((\i_SensorTempert~input_o\) # (\i_SensorNivel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \i_SensorTempert~input_o\,
	datac => \i_SensorNivel~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~39_combout\);

-- Location: LCCOMB_X26_Y23_N14
\InstanciacaoMaqEstd|w_STATE~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~24_combout\ = (\i_SensorTempert~input_o\) # ((\i_SensorNivel~input_o\) # ((\i_BOTAO_Preparo~input_o\ & !\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \i_SensorTempert~input_o\,
	datac => \i_SensorNivel~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~24_combout\);

-- Location: LCCOMB_X26_Y23_N12
\InstanciacaoMaqEstd|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector2~1_combout\ = (\i_BOTAO_Preparo~input_o\) # ((\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\) # (\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	combout => \InstanciacaoMaqEstd|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y23_N0
\InstanciacaoMaqEstd|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector2~2_combout\ = (\InstanciacaoMaqEstd|Selector0~1_combout\ & (!\InstanciacaoMaqEstd|Selector2~0_combout\ & ((\InstanciacaoMaqEstd|o_EN_PEDIDO~q\) # (!\InstanciacaoMaqEstd|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|Selector2~1_combout\,
	datab => \InstanciacaoMaqEstd|Selector0~1_combout\,
	datac => \InstanciacaoMaqEstd|o_EN_PEDIDO~q\,
	datad => \InstanciacaoMaqEstd|Selector2~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector2~2_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: CLKCTRL_G2
\i_RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_RST~inputclkctrl_outclk\);

-- Location: FF_X26_Y23_N1
\InstanciacaoMaqEstd|o_EN_PEDIDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector2~2_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_PEDIDO~q\);

-- Location: IOIBUF_X21_Y29_N22
\i_BOTAO_Cafe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Cafe,
	o => \i_BOTAO_Cafe~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\i_BOTAO_CLeite~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_CLeite,
	o => \i_BOTAO_CLeite~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\i_BOTAO_Mocha~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Mocha,
	o => \i_BOTAO_Mocha~input_o\);

-- Location: LCCOMB_X22_Y24_N12
\InstanciacaoContPedid|o_VALIDADE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContPedid|o_VALIDADE~0_combout\ = (!\InstanciacaoMaqEstd|o_EN_PEDIDO~q\ & ((\i_BOTAO_Cafe~input_o\ & (!\i_BOTAO_CLeite~input_o\ & !\i_BOTAO_Mocha~input_o\)) # (!\i_BOTAO_Cafe~input_o\ & (\i_BOTAO_CLeite~input_o\ $ 
-- (\i_BOTAO_Mocha~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Cafe~input_o\,
	datab => \InstanciacaoMaqEstd|o_EN_PEDIDO~q\,
	datac => \i_BOTAO_CLeite~input_o\,
	datad => \i_BOTAO_Mocha~input_o\,
	combout => \InstanciacaoContPedid|o_VALIDADE~0_combout\);

-- Location: LCCOMB_X22_Y24_N20
\InstanciacaoContPedid|o_VALIDADE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContPedid|o_VALIDADE~1_combout\ = (\InstanciacaoContPedid|o_VALIDADE~0_combout\) # ((\InstanciacaoMaqEstd|o_EN_PEDIDO~q\ & \InstanciacaoContPedid|o_VALIDADE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|o_EN_PEDIDO~q\,
	datac => \InstanciacaoContPedid|o_VALIDADE~q\,
	datad => \InstanciacaoContPedid|o_VALIDADE~0_combout\,
	combout => \InstanciacaoContPedid|o_VALIDADE~1_combout\);

-- Location: LCCOMB_X27_Y23_N20
\InstanciacaoMaqEstd|w_STATE~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~28_combout\ = (\InstancicaoContSensor|o_EN_Maquina~combout\ & (((\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\)))) # (!\InstancicaoContSensor|o_EN_Maquina~combout\ & (\InstanciacaoContad|w_DONE~q\ & 
-- ((\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~28_combout\);

-- Location: IOIBUF_X21_Y29_N1
\i_BOTAO_Reposicao~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Reposicao,
	o => \i_BOTAO_Reposicao~input_o\);

-- Location: LCCOMB_X23_Y23_N14
\InstanciacaoMaqEstd|w_STATE~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~26_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ & ((\i_BOTAO_Reposicao~input_o\) # (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Reposicao~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~26_combout\);

-- Location: LCCOMB_X23_Y23_N0
\InstanciacaoMaqEstd|w_STATE~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~25_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & (\i_BOTAO_Preparo~input_o\)) # (!\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & ((!\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datac => \InstanciacaoContad|w_DONE~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~25_combout\);

-- Location: LCCOMB_X23_Y23_N8
\InstanciacaoMaqEstd|w_STATE~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~27_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & (\InstanciacaoMaqEstd|w_STATE~26_combout\ & \InstanciacaoMaqEstd|w_STATE~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE~26_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE~25_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~27_combout\);

-- Location: IOIBUF_X21_Y29_N29
\i_BOTAO_Tamanho~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Tamanho,
	o => \i_BOTAO_Tamanho~input_o\);

-- Location: LCCOMB_X22_Y24_N22
\InstanciacaoContPedid|o_VALIDADE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContPedid|o_VALIDADE~2_combout\ = (!\i_BOTAO_CLeite~input_o\ & !\i_BOTAO_Mocha~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BOTAO_CLeite~input_o\,
	datad => \i_BOTAO_Mocha~input_o\,
	combout => \InstanciacaoContPedid|o_VALIDADE~2_combout\);

-- Location: LCCOMB_X22_Y24_N14
\InstanciacaoMaqEstd|w_n_acucar[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ = (\i_RST~input_o\ & (!\i_SensorTempert~input_o\ & !\i_SensorNivel~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_SensorTempert~input_o\,
	datac => \i_SensorNivel~input_o\,
	combout => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\);

-- Location: LCCOMB_X23_Y23_N2
\InstanciacaoMaqEstd|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector3~1_combout\ = (\i_BOTAO_Reposicao~input_o\) # (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Reposicao~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	combout => \InstanciacaoMaqEstd|Selector3~1_combout\);

-- Location: LCCOMB_X22_Y24_N10
\InstanciacaoMaqEstd|w_n_choco[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (!\i_BOTAO_Cafe~input_o\)) # (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & 
-- ((!\InstanciacaoMaqEstd|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Cafe~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|Selector3~1_combout\,
	combout => \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\);

-- Location: LCCOMB_X22_Y24_N28
\InstanciacaoMaqEstd|w_n_choco[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\ = (!\i_BOTAO_Tamanho~input_o\ & (\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\,
	combout => \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\);

-- Location: LCCOMB_X22_Y24_N24
\InstanciacaoMaqEstd|w_n_leite[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_leite[0]~3_combout\ = ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & ((\i_BOTAO_Tamanho~input_o\) # (\InstanciacaoContPedid|o_VALIDADE~2_combout\)))) # (!\InstanciacaoMaqEstd|w_n_choco[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoContPedid|o_VALIDADE~2_combout\,
	datad => \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\,
	combout => \InstanciacaoMaqEstd|w_n_leite[0]~3_combout\);

-- Location: LCCOMB_X22_Y24_N0
\InstanciacaoMaqEstd|w_n_leite[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_leite[0]~4_combout\ = (\InstanciacaoMaqEstd|w_n_leite\(0) & (((\InstanciacaoMaqEstd|w_n_leite[0]~3_combout\)))) # (!\InstanciacaoMaqEstd|w_n_leite\(0) & (!\InstanciacaoContPedid|o_VALIDADE~2_combout\ & 
-- (\InstanciacaoMaqEstd|w_n_choco[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContPedid|o_VALIDADE~2_combout\,
	datab => \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\,
	datac => \InstanciacaoMaqEstd|w_n_leite\(0),
	datad => \InstanciacaoMaqEstd|w_n_leite[0]~3_combout\,
	combout => \InstanciacaoMaqEstd|w_n_leite[0]~4_combout\);

-- Location: FF_X22_Y24_N1
\InstanciacaoMaqEstd|w_n_leite[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_n_leite[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_leite\(0));

-- Location: LCCOMB_X22_Y23_N12
\InstanciacaoMaqEstd|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector29~0_combout\ = \InstanciacaoMaqEstd|w_n_leite\(1) $ (((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_leite\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_leite\(1),
	datad => \InstanciacaoMaqEstd|w_n_leite\(0),
	combout => \InstanciacaoMaqEstd|Selector29~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\InstanciacaoMaqEstd|w_n_leite[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_leite[2]~2_combout\ = (!\i_BOTAO_Cafe~input_o\ & (\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & ((\i_BOTAO_CLeite~input_o\) # (\i_BOTAO_Mocha~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_CLeite~input_o\,
	datab => \i_BOTAO_Mocha~input_o\,
	datac => \i_BOTAO_Cafe~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|w_n_leite[2]~2_combout\);

-- Location: LCCOMB_X23_Y23_N6
\InstanciacaoMaqEstd|w_n_leite[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & ((\InstanciacaoMaqEstd|w_n_leite[2]~2_combout\) # ((!\i_BOTAO_Reposicao~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Reposicao~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datac => \InstanciacaoMaqEstd|w_n_leite[2]~2_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	combout => \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\);

-- Location: FF_X22_Y23_N13
\InstanciacaoMaqEstd|w_n_leite[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector29~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_leite\(1));

-- Location: LCCOMB_X21_Y23_N6
\InstanciacaoMaqEstd|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector28~0_combout\ = \InstanciacaoMaqEstd|w_n_leite\(2) $ (((!\InstanciacaoMaqEstd|w_n_leite\(1) & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_leite\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_leite\(1),
	datac => \InstanciacaoMaqEstd|w_n_leite\(2),
	datad => \InstanciacaoMaqEstd|w_n_leite\(0),
	combout => \InstanciacaoMaqEstd|Selector28~0_combout\);

-- Location: FF_X21_Y23_N7
\InstanciacaoMaqEstd|w_n_leite[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector28~0_combout\,
	sclr => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_leite\(2));

-- Location: LCCOMB_X22_Y23_N8
\InstanciacaoMaqEstd|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|LessThan3~0_combout\ = (!\InstanciacaoMaqEstd|w_n_leite\(2) & !\InstanciacaoMaqEstd|w_n_leite\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_n_leite\(2),
	datad => \InstanciacaoMaqEstd|w_n_leite\(1),
	combout => \InstanciacaoMaqEstd|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y23_N18
\InstanciacaoMaqEstd|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector27~0_combout\ = \InstanciacaoMaqEstd|w_n_leite\(3) $ (((\InstanciacaoMaqEstd|LessThan3~0_combout\ & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_leite\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|LessThan3~0_combout\,
	datac => \InstanciacaoMaqEstd|w_n_leite\(3),
	datad => \InstanciacaoMaqEstd|w_n_leite\(0),
	combout => \InstanciacaoMaqEstd|Selector27~0_combout\);

-- Location: FF_X22_Y23_N19
\InstanciacaoMaqEstd|w_n_leite[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector27~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_leite[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_leite\(3));

-- Location: LCCOMB_X24_Y23_N8
\InstanciacaoMaqEstd|w_n_cafe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_cafe~2_combout\ = \InstanciacaoMaqEstd|w_n_cafe\(0) $ (((\i_BOTAO_Cafe~input_o\) # ((\i_BOTAO_CLeite~input_o\) # (\i_BOTAO_Mocha~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Cafe~input_o\,
	datab => \i_BOTAO_CLeite~input_o\,
	datac => \i_BOTAO_Mocha~input_o\,
	datad => \InstanciacaoMaqEstd|w_n_cafe\(0),
	combout => \InstanciacaoMaqEstd|w_n_cafe~2_combout\);

-- Location: LCCOMB_X24_Y23_N18
\InstanciacaoMaqEstd|w_n_cafe[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (!\i_BOTAO_Tamanho~input_o\)) # (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & 
-- ((!\InstanciacaoMaqEstd|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datad => \InstanciacaoMaqEstd|Selector3~1_combout\,
	combout => \InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\);

-- Location: LCCOMB_X24_Y23_N20
\InstanciacaoMaqEstd|w_n_cafe[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_cafe[0]~4_combout\ = (\InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\ & (\InstanciacaoMaqEstd|w_n_cafe~2_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_POS~q\))) # (!\InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\ & 
-- (((\InstanciacaoMaqEstd|w_n_cafe\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_cafe~2_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|w_n_cafe\(0),
	datad => \InstanciacaoMaqEstd|w_n_cafe[0]~3_combout\,
	combout => \InstanciacaoMaqEstd|w_n_cafe[0]~4_combout\);

-- Location: FF_X24_Y23_N21
\InstanciacaoMaqEstd|w_n_cafe[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_n_cafe[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_cafe\(0));

-- Location: LCCOMB_X26_Y23_N26
\InstanciacaoMaqEstd|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector21~0_combout\ = \InstanciacaoMaqEstd|w_n_cafe\(1) $ (((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_cafe\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_cafe\(0),
	datac => \InstanciacaoMaqEstd|w_n_cafe\(1),
	datad => \i_BOTAO_Tamanho~input_o\,
	combout => \InstanciacaoMaqEstd|Selector21~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\InstanciacaoMaqEstd|o_VALVULAS[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\ = ((!\i_BOTAO_Cafe~input_o\ & (!\i_BOTAO_CLeite~input_o\ & !\i_BOTAO_Mocha~input_o\))) # (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Cafe~input_o\,
	datab => \i_BOTAO_CLeite~input_o\,
	datac => \i_BOTAO_Mocha~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\InstanciacaoMaqEstd|w_n_cafe[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & (((!\i_BOTAO_Reposicao~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\)) # (!\InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datab => \i_BOTAO_Reposicao~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datad => \InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\,
	combout => \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\);

-- Location: FF_X26_Y23_N27
\InstanciacaoMaqEstd|w_n_cafe[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector21~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_cafe\(1));

-- Location: LCCOMB_X21_Y23_N12
\InstanciacaoMaqEstd|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector20~0_combout\ = \InstanciacaoMaqEstd|w_n_cafe\(2) $ (((!\InstanciacaoMaqEstd|w_n_cafe\(1) & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_cafe\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_cafe\(0),
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_cafe\(2),
	datad => \InstanciacaoMaqEstd|w_n_cafe\(1),
	combout => \InstanciacaoMaqEstd|Selector20~0_combout\);

-- Location: FF_X21_Y23_N13
\InstanciacaoMaqEstd|w_n_cafe[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector20~0_combout\,
	sclr => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_cafe\(2));

-- Location: LCCOMB_X26_Y23_N18
\InstanciacaoMaqEstd|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector19~0_combout\ = (\InstanciacaoMaqEstd|w_n_cafe\(1)) # ((\InstanciacaoMaqEstd|w_n_cafe\(2)) # ((!\i_BOTAO_Tamanho~input_o\ & \InstanciacaoMaqEstd|w_n_cafe\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_cafe\(1),
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_cafe\(0),
	datad => \InstanciacaoMaqEstd|w_n_cafe\(2),
	combout => \InstanciacaoMaqEstd|Selector19~0_combout\);

-- Location: LCCOMB_X26_Y23_N28
\InstanciacaoMaqEstd|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector19~1_combout\ = \InstanciacaoMaqEstd|w_n_cafe\(3) $ (!\InstanciacaoMaqEstd|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_n_cafe\(3),
	datad => \InstanciacaoMaqEstd|Selector19~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector19~1_combout\);

-- Location: FF_X26_Y23_N29
\InstanciacaoMaqEstd|w_n_cafe[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector19~1_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_cafe[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_cafe\(3));

-- Location: LCCOMB_X26_Y23_N20
\InstanciacaoMaqEstd|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|LessThan1~0_combout\ = (!\InstanciacaoMaqEstd|w_n_cafe\(3) & (!\InstanciacaoMaqEstd|w_n_cafe\(1) & !\InstanciacaoMaqEstd|w_n_cafe\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_n_cafe\(3),
	datac => \InstanciacaoMaqEstd|w_n_cafe\(1),
	datad => \InstanciacaoMaqEstd|w_n_cafe\(2),
	combout => \InstanciacaoMaqEstd|LessThan1~0_combout\);

-- Location: IOIBUF_X23_Y29_N22
\i_BOTAO_Acucar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BOTAO_Acucar,
	o => \i_BOTAO_Acucar~input_o\);

-- Location: LCCOMB_X24_Y23_N6
\InstanciacaoMaqEstd|w_n_acucar[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (\i_BOTAO_Acucar~input_o\)) # (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & 
-- ((!\InstanciacaoMaqEstd|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Acucar~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datad => \InstanciacaoMaqEstd|Selector3~1_combout\,
	combout => \InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\);

-- Location: LCCOMB_X24_Y23_N2
\InstanciacaoMaqEstd|w_n_acucar[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_acucar[0]~3_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (\i_BOTAO_Tamanho~input_o\ $ (!\InstanciacaoMaqEstd|w_n_acucar\(0))))) # 
-- (!\InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\ & (((\InstanciacaoMaqEstd|w_n_acucar\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|w_n_acucar\(0),
	datad => \InstanciacaoMaqEstd|w_n_acucar[0]~2_combout\,
	combout => \InstanciacaoMaqEstd|w_n_acucar[0]~3_combout\);

-- Location: FF_X24_Y23_N3
\InstanciacaoMaqEstd|w_n_acucar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_n_acucar[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_acucar\(0));

-- Location: LCCOMB_X23_Y24_N20
\InstanciacaoMaqEstd|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector17~0_combout\ = \InstanciacaoMaqEstd|w_n_acucar\(1) $ (((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_acucar\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_acucar\(1),
	datad => \InstanciacaoMaqEstd|w_n_acucar\(0),
	combout => \InstanciacaoMaqEstd|Selector17~0_combout\);

-- Location: LCCOMB_X23_Y24_N6
\InstanciacaoMaqEstd|w_n_acucar[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & (((\i_BOTAO_Acucar~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_POS~q\)) # (!\InstanciacaoMaqEstd|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datab => \i_BOTAO_Acucar~input_o\,
	datac => \InstanciacaoMaqEstd|Selector3~1_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\);

-- Location: FF_X23_Y24_N21
\InstanciacaoMaqEstd|w_n_acucar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector17~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_acucar\(1));

-- Location: LCCOMB_X24_Y24_N8
\InstanciacaoMaqEstd|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector16~0_combout\ = \InstanciacaoMaqEstd|w_n_acucar\(2) $ (((!\InstanciacaoMaqEstd|w_n_acucar\(1) & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_acucar\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_acucar\(1),
	datac => \InstanciacaoMaqEstd|w_n_acucar\(2),
	datad => \InstanciacaoMaqEstd|w_n_acucar\(0),
	combout => \InstanciacaoMaqEstd|Selector16~0_combout\);

-- Location: FF_X24_Y24_N9
\InstanciacaoMaqEstd|w_n_acucar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector16~0_combout\,
	sclr => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_acucar\(2));

-- Location: LCCOMB_X24_Y24_N6
\InstanciacaoMaqEstd|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|LessThan0~0_combout\ = (!\InstanciacaoMaqEstd|w_n_acucar\(2) & !\InstanciacaoMaqEstd|w_n_acucar\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_n_acucar\(2),
	datad => \InstanciacaoMaqEstd|w_n_acucar\(1),
	combout => \InstanciacaoMaqEstd|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y24_N30
\InstanciacaoMaqEstd|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector15~0_combout\ = \InstanciacaoMaqEstd|w_n_acucar\(3) $ (((\InstanciacaoMaqEstd|LessThan0~0_combout\ & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_acucar\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_acucar\(0),
	datac => \InstanciacaoMaqEstd|w_n_acucar\(3),
	datad => \InstanciacaoMaqEstd|LessThan0~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector15~0_combout\);

-- Location: FF_X23_Y24_N31
\InstanciacaoMaqEstd|w_n_acucar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector15~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_acucar\(3));

-- Location: LCCOMB_X22_Y24_N16
\InstanciacaoMaqEstd|w_n_choco[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[0]~5_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (((\i_BOTAO_CLeite~input_o\) # (\i_BOTAO_Tamanho~input_o\)) # (!\i_BOTAO_Mocha~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Mocha~input_o\,
	datab => \i_BOTAO_CLeite~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \i_BOTAO_Tamanho~input_o\,
	combout => \InstanciacaoMaqEstd|w_n_choco[0]~5_combout\);

-- Location: LCCOMB_X22_Y24_N6
\InstanciacaoMaqEstd|w_n_choco[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[0]~4_combout\ = (\i_BOTAO_Mocha~input_o\ & (!\InstanciacaoMaqEstd|w_n_choco\(0) & (!\i_BOTAO_CLeite~input_o\ & \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Mocha~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_choco\(0),
	datac => \i_BOTAO_CLeite~input_o\,
	datad => \InstanciacaoMaqEstd|w_n_choco[0]~3_combout\,
	combout => \InstanciacaoMaqEstd|w_n_choco[0]~4_combout\);

-- Location: LCCOMB_X22_Y24_N30
\InstanciacaoMaqEstd|w_n_choco[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[0]~6_combout\ = (\InstanciacaoMaqEstd|w_n_choco[0]~4_combout\) # ((\InstanciacaoMaqEstd|w_n_choco\(0) & ((\InstanciacaoMaqEstd|w_n_choco[0]~5_combout\) # (!\InstanciacaoMaqEstd|w_n_choco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_choco[0]~2_combout\,
	datab => \InstanciacaoMaqEstd|w_n_choco[0]~5_combout\,
	datac => \InstanciacaoMaqEstd|w_n_choco\(0),
	datad => \InstanciacaoMaqEstd|w_n_choco[0]~4_combout\,
	combout => \InstanciacaoMaqEstd|w_n_choco[0]~6_combout\);

-- Location: FF_X22_Y24_N31
\InstanciacaoMaqEstd|w_n_choco[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_n_choco[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_choco\(0));

-- Location: LCCOMB_X22_Y23_N24
\InstanciacaoMaqEstd|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector25~0_combout\ = \InstanciacaoMaqEstd|w_n_choco\(1) $ (((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_choco\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_choco\(0),
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_choco\(1),
	combout => \InstanciacaoMaqEstd|Selector25~0_combout\);

-- Location: LCCOMB_X24_Y23_N4
\InstanciacaoMaqEstd|o_VALVULAS[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\ = (\i_BOTAO_CLeite~input_o\) # (\i_BOTAO_Cafe~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BOTAO_CLeite~input_o\,
	datad => \i_BOTAO_Cafe~input_o\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\);

-- Location: LCCOMB_X22_Y23_N26
\InstanciacaoMaqEstd|w_n_choco[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[2]~0_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & \i_BOTAO_Mocha~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \i_BOTAO_Mocha~input_o\,
	combout => \InstanciacaoMaqEstd|w_n_choco[2]~0_combout\);

-- Location: LCCOMB_X22_Y23_N16
\InstanciacaoMaqEstd|w_n_choco[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\ = (\InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\ & (((!\InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\ & \InstanciacaoMaqEstd|w_n_choco[2]~0_combout\)) # (!\InstanciacaoMaqEstd|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	datab => \InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\,
	datac => \InstanciacaoMaqEstd|w_n_choco[2]~0_combout\,
	datad => \InstanciacaoMaqEstd|Selector3~1_combout\,
	combout => \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\);

-- Location: FF_X22_Y23_N25
\InstanciacaoMaqEstd|w_n_choco[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector25~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_choco\(1));

-- Location: LCCOMB_X23_Y23_N4
\InstanciacaoMaqEstd|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector24~0_combout\ = \InstanciacaoMaqEstd|w_n_choco\(2) $ (((!\InstanciacaoMaqEstd|w_n_choco\(1) & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_choco\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_n_choco\(1),
	datac => \InstanciacaoMaqEstd|w_n_choco\(2),
	datad => \InstanciacaoMaqEstd|w_n_choco\(0),
	combout => \InstanciacaoMaqEstd|Selector24~0_combout\);

-- Location: FF_X23_Y23_N5
\InstanciacaoMaqEstd|w_n_choco[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector24~0_combout\,
	sclr => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_choco\(2));

-- Location: LCCOMB_X23_Y23_N22
\InstanciacaoMaqEstd|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|LessThan2~0_combout\ = (!\InstanciacaoMaqEstd|w_n_choco\(2) & !\InstanciacaoMaqEstd|w_n_choco\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_n_choco\(2),
	datad => \InstanciacaoMaqEstd|w_n_choco\(1),
	combout => \InstanciacaoMaqEstd|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y23_N6
\InstanciacaoMaqEstd|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector23~0_combout\ = \InstanciacaoMaqEstd|w_n_choco\(3) $ (((\InstanciacaoMaqEstd|LessThan2~0_combout\ & ((\i_BOTAO_Tamanho~input_o\) # (!\InstanciacaoMaqEstd|w_n_choco\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_choco\(0),
	datab => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_n_choco\(3),
	datad => \InstanciacaoMaqEstd|LessThan2~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector23~0_combout\);

-- Location: FF_X22_Y23_N7
\InstanciacaoMaqEstd|w_n_choco[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector23~0_combout\,
	asdata => VCC,
	sload => \InstanciacaoMaqEstd|ALT_INV_w_STATE.st_POS~q\,
	ena => \InstanciacaoMaqEstd|w_n_choco[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_n_choco\(3));

-- Location: LCCOMB_X23_Y23_N24
\InstanciacaoMaqEstd|U_MACHINE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|U_MACHINE~0_combout\ = (\InstanciacaoMaqEstd|w_n_acucar\(3) & (!\InstanciacaoMaqEstd|w_n_choco\(3) & (\InstanciacaoMaqEstd|LessThan2~0_combout\))) # (!\InstanciacaoMaqEstd|w_n_acucar\(3) & ((\InstanciacaoMaqEstd|LessThan0~0_combout\) 
-- # ((!\InstanciacaoMaqEstd|w_n_choco\(3) & \InstanciacaoMaqEstd|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_n_acucar\(3),
	datab => \InstanciacaoMaqEstd|w_n_choco\(3),
	datac => \InstanciacaoMaqEstd|LessThan2~0_combout\,
	datad => \InstanciacaoMaqEstd|LessThan0~0_combout\,
	combout => \InstanciacaoMaqEstd|U_MACHINE~0_combout\);

-- Location: LCCOMB_X23_Y23_N18
\InstanciacaoMaqEstd|U_MACHINE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|U_MACHINE~1_combout\ = (\InstanciacaoMaqEstd|LessThan1~0_combout\) # ((\InstanciacaoMaqEstd|U_MACHINE~0_combout\) # ((\InstanciacaoMaqEstd|LessThan3~0_combout\ & !\InstanciacaoMaqEstd|w_n_leite\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|LessThan3~0_combout\,
	datab => \InstanciacaoMaqEstd|w_n_leite\(3),
	datac => \InstanciacaoMaqEstd|LessThan1~0_combout\,
	datad => \InstanciacaoMaqEstd|U_MACHINE~0_combout\,
	combout => \InstanciacaoMaqEstd|U_MACHINE~1_combout\);

-- Location: LCCOMB_X23_Y23_N12
\InstanciacaoMaqEstd|w_STATE.st_POS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_POS~0_combout\ = (\InstanciacaoMaqEstd|w_STATE~27_combout\ & (((\InstanciacaoMaqEstd|w_STATE.st_POS~q\)))) # (!\InstanciacaoMaqEstd|w_STATE~27_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\ & 
-- ((!\InstanciacaoMaqEstd|U_MACHINE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|w_STATE~27_combout\,
	datad => \InstanciacaoMaqEstd|U_MACHINE~1_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_POS~0_combout\);

-- Location: LCCOMB_X23_Y23_N30
\InstanciacaoMaqEstd|w_STATE.st_POS~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_POS~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstanciacaoMaqEstd|w_STATE~24_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\))) # (!\InstanciacaoMaqEstd|w_STATE~24_combout\ & 
-- (\InstanciacaoMaqEstd|w_STATE.st_POS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_POS~0_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE~24_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_POS~1_combout\);

-- Location: FF_X23_Y23_N31
\InstanciacaoMaqEstd|w_STATE.st_POS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE.st_POS~1_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_POS~q\);

-- Location: LCCOMB_X27_Y23_N2
\InstanciacaoMaqEstd|w_STATE.st_INICIO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & !\InstanciacaoMaqEstd|w_STATE.st_POS~q\))) # 
-- (!\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ $ (((\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\) # (\InstanciacaoMaqEstd|w_STATE.st_POS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\);

-- Location: LCCOMB_X27_Y23_N6
\InstanciacaoMaqEstd|w_STATE.st_INICIO~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ & !\InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\)) # (!\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & 
-- (\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ $ (\InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\);

-- Location: LCCOMB_X27_Y23_N14
\InstanciacaoMaqEstd|w_STATE.st_INICIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_POS~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & ((\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\) # (\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\))) # 
-- (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & (\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\);

-- Location: LCCOMB_X27_Y23_N12
\InstanciacaoMaqEstd|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector3~0_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ & (\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & !\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	combout => \InstanciacaoMaqEstd|Selector3~0_combout\);

-- Location: LCCOMB_X27_Y23_N8
\InstanciacaoMaqEstd|w_STATE.st_INICIO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & (((\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\) # (\InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\)))) # (!\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & 
-- (\InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\ & ((\InstanciacaoMaqEstd|Selector3~0_combout\) # (\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|Selector3~0_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~1_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\);

-- Location: LCCOMB_X27_Y23_N0
\InstanciacaoMaqEstd|w_STATE.st_INICIO~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & ((\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & (\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ & !\InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\)) # 
-- (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\)))) # (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\) # 
-- (\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\);

-- Location: LCCOMB_X27_Y23_N10
\InstanciacaoMaqEstd|w_STATE.st_INICIO~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\)) # 
-- (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\))))) # (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\ & (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\ & 
-- (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\ & !\InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_INICIO~3_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_INICIO~0_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~2_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~4_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\);

-- Location: LCCOMB_X27_Y23_N18
\InstanciacaoMaqEstd|w_STATE~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~29_combout\ = (\InstanciacaoMaqEstd|w_STATE~28_combout\ & \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_STATE~28_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~29_combout\);

-- Location: FF_X27_Y23_N19
\InstanciacaoMaqEstd|w_STATE.st_AGUA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~29_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\);

-- Location: LCCOMB_X27_Y23_N30
\InstanciacaoMaqEstd|w_STATE~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~30_combout\ = (\InstancicaoContSensor|o_EN_Maquina~combout\ & (((\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\)))) # (!\InstancicaoContSensor|o_EN_Maquina~combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\) # 
-- ((\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ & !\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	datac => \InstanciacaoContad|w_DONE~q\,
	datad => \InstancicaoContSensor|o_EN_Maquina~combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~30_combout\);

-- Location: LCCOMB_X27_Y23_N4
\InstanciacaoMaqEstd|w_STATE~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~31_combout\ = (\InstanciacaoMaqEstd|w_STATE~30_combout\ & \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE~30_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~31_combout\);

-- Location: FF_X27_Y23_N5
\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~31_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\);

-- Location: LCCOMB_X26_Y23_N8
\InstanciacaoMaqEstd|w_STATE~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~37_combout\ = (!\i_SensorNivel~input_o\ & (!\i_SensorTempert~input_o\ & (\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ & \InstanciacaoContad|w_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SensorNivel~input_o\,
	datab => \i_SensorTempert~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	datad => \InstanciacaoContad|w_DONE~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~37_combout\);

-- Location: LCCOMB_X27_Y23_N24
\InstanciacaoMaqEstd|w_STATE~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~38_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstanciacaoMaqEstd|w_STATE~37_combout\) # ((\InstancicaoContSensor|o_EN_Maquina~combout\ & \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE~37_combout\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~38_combout\);

-- Location: FF_X27_Y23_N25
\InstanciacaoMaqEstd|w_STATE.st_PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~38_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\);

-- Location: LCCOMB_X23_Y24_N4
\InstanciacaoMaqEstd|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector1~2_combout\ = (\InstanciacaoMaqEstd|o_RST_PEDIDO~q\ & (((\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\) # (\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\)))) # (!\InstanciacaoMaqEstd|o_RST_PEDIDO~q\ & 
-- (\InstanciacaoContad|w_DONE~q\ & (\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstanciacaoMaqEstd|o_RST_PEDIDO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	combout => \InstanciacaoMaqEstd|Selector1~2_combout\);

-- Location: LCCOMB_X22_Y24_N18
\InstanciacaoMaqEstd|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector1~3_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\) # (\InstanciacaoMaqEstd|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datad => \InstanciacaoMaqEstd|Selector1~2_combout\,
	combout => \InstanciacaoMaqEstd|Selector1~3_combout\);

-- Location: FF_X22_Y24_N19
\InstanciacaoMaqEstd|o_RST_PEDIDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector1~3_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_RST_PEDIDO~q\);

-- Location: LCCOMB_X22_Y24_N8
\comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\InstanciacaoMaqEstd|o_RST_PEDIDO~q\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \InstanciacaoMaqEstd|o_RST_PEDIDO~q\,
	combout => \comb~2_combout\);

-- Location: FF_X22_Y24_N21
\InstanciacaoContPedid|o_VALIDADE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContPedid|o_VALIDADE~1_combout\,
	clrn => \ALT_INV_comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContPedid|o_VALIDADE~q\);

-- Location: LCCOMB_X23_Y23_N10
\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & \InstanciacaoContPedid|o_VALIDADE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datad => \InstanciacaoContPedid|o_VALIDADE~q\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1_combout\ = (\InstanciacaoMaqEstd|w_STATE~27_combout\ & (((\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\)))) # (!\InstanciacaoMaqEstd|w_STATE~27_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\ & 
-- ((\InstanciacaoMaqEstd|U_MACHINE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~0_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE~27_combout\,
	datad => \InstanciacaoMaqEstd|U_MACHINE~1_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1_combout\);

-- Location: LCCOMB_X23_Y23_N16
\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~2_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstanciacaoMaqEstd|w_STATE~24_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\))) # (!\InstanciacaoMaqEstd|w_STATE~24_combout\ & 
-- (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE~24_combout\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~1_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~2_combout\);

-- Location: FF_X23_Y23_N17
\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~2_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\);

-- Location: LCCOMB_X24_Y23_N0
\InstanciacaoMaqEstd|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector0~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & (\i_BOTAO_Reposicao~input_o\ & ((!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\) # (!\InstanciacaoContad|w_DONE~q\)))) # 
-- (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & (((!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\) # (!\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datab => \i_BOTAO_Reposicao~input_o\,
	datac => \InstanciacaoContad|w_DONE~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	combout => \InstanciacaoMaqEstd|Selector0~1_combout\);

-- Location: LCCOMB_X27_Y23_N22
\InstanciacaoMaqEstd|w_STATE~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~40_combout\ = (!\InstanciacaoMaqEstd|w_STATE~39_combout\ & (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstancicaoContSensor|o_EN_Maquina~combout\) # (\InstanciacaoMaqEstd|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE~39_combout\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|Selector0~1_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~40_combout\);

-- Location: FF_X27_Y23_N23
\InstanciacaoMaqEstd|w_STATE.st_INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~40_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\);

-- Location: LCCOMB_X26_Y23_N2
\InstanciacaoMaqEstd|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector2~0_combout\ = (!\i_BOTAO_Preparo~input_o\ & (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & !\InstanciacaoContPedid|o_VALIDADE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datac => \InstanciacaoContPedid|o_VALIDADE~q\,
	combout => \InstanciacaoMaqEstd|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y23_N16
\InstanciacaoMaqEstd|w_STATE~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~35_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & ((\i_BOTAO_Preparo~input_o\) # ((\i_SensorTempert~input_o\) # (\i_SensorNivel~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \i_SensorTempert~input_o\,
	datac => \i_SensorNivel~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~35_combout\);

-- Location: LCCOMB_X27_Y23_N16
\InstanciacaoMaqEstd|w_STATE~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~36_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstanciacaoMaqEstd|w_STATE~35_combout\) # ((\InstanciacaoMaqEstd|Selector2~0_combout\ & !\InstancicaoContSensor|o_EN_Maquina~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|Selector2~0_combout\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE~35_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~36_combout\);

-- Location: FF_X27_Y23_N17
\InstanciacaoMaqEstd|w_STATE.st_ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~36_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\);

-- Location: LCCOMB_X26_Y23_N6
\InstanciacaoMaqEstd|w_STATE~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~33_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\) # ((!\i_BOTAO_Preparo~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~33_combout\);

-- Location: LCCOMB_X27_Y23_N26
\InstanciacaoMaqEstd|w_STATE~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~34_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\ & ((\InstanciacaoMaqEstd|w_STATE~32_combout\) # ((!\InstancicaoContSensor|o_EN_Maquina~combout\ & \InstanciacaoMaqEstd|w_STATE~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE~32_combout\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE~33_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~34_combout\);

-- Location: FF_X27_Y23_N27
\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~34_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\);

-- Location: LCCOMB_X24_Y24_N14
\InstanciacaoMaqEstd|w_STATE.st_POS~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & !\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\);

-- Location: LCCOMB_X24_Y24_N10
\InstanciacaoMaqEstd|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector37~0_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & (\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\ & ((!\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\) # (!\i_BOTAO_Preparo~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datab => \i_BOTAO_Preparo~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	combout => \InstanciacaoMaqEstd|Selector37~0_combout\);

-- Location: LCCOMB_X24_Y24_N0
\InstanciacaoMaqEstd|Selector37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector37~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\ & (((\InstanciacaoMaqEstd|o_EN_CONTAGEM\(4)) # (\InstanciacaoMaqEstd|Selector37~0_combout\)))) # (!\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\ & 
-- (!\InstanciacaoContad|w_DONE~q\ & (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\,
	datac => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	datad => \InstanciacaoMaqEstd|Selector37~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector37~1_combout\);

-- Location: FF_X24_Y24_N1
\InstanciacaoMaqEstd|o_EN_CONTAGEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector37~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4));

-- Location: LCCOMB_X24_Y24_N28
\InstanciacaoMaqEstd|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector39~0_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(2) & (((!\InstanciacaoContad|w_DONE~q\ & !\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\)) # (!\InstanciacaoMaqEstd|Selector37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(2),
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\,
	datad => \InstanciacaoMaqEstd|Selector37~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector39~0_combout\);

-- Location: LCCOMB_X24_Y24_N24
\InstanciacaoMaqEstd|Selector39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector39~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\) # ((\InstanciacaoMaqEstd|Selector39~0_combout\) # ((!\i_BOTAO_Tamanho~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datad => \InstanciacaoMaqEstd|Selector39~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector39~1_combout\);

-- Location: FF_X24_Y24_N25
\InstanciacaoMaqEstd|o_EN_CONTAGEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector39~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(2));

-- Location: LCCOMB_X23_Y22_N6
\InstanciacaoContad|w_CONT[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[0]~26_combout\ = \InstanciacaoContad|w_CONT\(0) $ (VCC)
-- \InstanciacaoContad|w_CONT[0]~27\ = CARRY(\InstanciacaoContad|w_CONT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(0),
	datad => VCC,
	combout => \InstanciacaoContad|w_CONT[0]~26_combout\,
	cout => \InstanciacaoContad|w_CONT[0]~27\);

-- Location: LCCOMB_X23_Y23_N28
\InstanciacaoMaqEstd|w_STATE.st_INICIO~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & !\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	combout => \InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\);

-- Location: LCCOMB_X24_Y22_N28
\InstanciacaoMaqEstd|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector36~0_combout\ = ((!\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & \InstanciacaoMaqEstd|o_RST_CONT~q\))) # (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datac => \InstanciacaoMaqEstd|o_RST_CONT~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\,
	combout => \InstanciacaoMaqEstd|Selector36~0_combout\);

-- Location: FF_X24_Y22_N29
\InstanciacaoMaqEstd|o_RST_CONT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector36~0_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_RST_CONT~q\);

-- Location: LCCOMB_X24_Y22_N30
\comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\InstanciacaoMaqEstd|o_RST_CONT~q\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \InstanciacaoMaqEstd|o_RST_CONT~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X23_Y22_N2
\InstanciacaoContad|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~0_combout\ = (!\InstanciacaoContad|w_CONT\(3) & (!\InstanciacaoContad|w_CONT\(0) & (!\InstanciacaoContad|w_CONT\(2) & !\InstanciacaoContad|w_CONT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(3),
	datab => \InstanciacaoContad|w_CONT\(0),
	datac => \InstanciacaoContad|w_CONT\(2),
	datad => \InstanciacaoContad|w_CONT\(1),
	combout => \InstanciacaoContad|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\InstanciacaoContad|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~1_combout\ = (!\InstanciacaoContad|w_CONT\(4) & (!\InstanciacaoContad|w_CONT\(6) & (!\InstanciacaoContad|w_CONT\(5) & \InstanciacaoContad|w_CONT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(4),
	datab => \InstanciacaoContad|w_CONT\(6),
	datac => \InstanciacaoContad|w_CONT\(5),
	datad => \InstanciacaoContad|w_CONT\(7),
	combout => \InstanciacaoContad|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y22_N4
\InstanciacaoContad|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~2_combout\ = (!\InstanciacaoContad|w_CONT\(8) & (!\InstanciacaoContad|w_CONT\(9) & (!\InstanciacaoContad|w_CONT\(10) & !\InstanciacaoContad|w_CONT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(8),
	datab => \InstanciacaoContad|w_CONT\(9),
	datac => \InstanciacaoContad|w_CONT\(10),
	datad => \InstanciacaoContad|w_CONT\(11),
	combout => \InstanciacaoContad|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y22_N2
\InstanciacaoContad|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~3_combout\ = (\InstanciacaoContad|w_CONT\(15) & (\InstanciacaoContad|w_CONT\(12) & (\InstanciacaoContad|w_CONT\(13) & \InstanciacaoContad|w_CONT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(15),
	datab => \InstanciacaoContad|w_CONT\(12),
	datac => \InstanciacaoContad|w_CONT\(13),
	datad => \InstanciacaoContad|w_CONT\(14),
	combout => \InstanciacaoContad|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y22_N16
\InstanciacaoContad|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~4_combout\ = (\InstanciacaoContad|Equal0~0_combout\ & (\InstanciacaoContad|Equal0~1_combout\ & (\InstanciacaoContad|Equal0~2_combout\ & \InstanciacaoContad|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|Equal0~0_combout\,
	datab => \InstanciacaoContad|Equal0~1_combout\,
	datac => \InstanciacaoContad|Equal0~2_combout\,
	datad => \InstanciacaoContad|Equal0~3_combout\,
	combout => \InstanciacaoContad|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y22_N8
\InstanciacaoContad|w_LIMITE[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[3]~6_combout\ = (\InstanciacaoContad|process_1~0_combout\ & (((\InstanciacaoContad|Equal0~4_combout\ & \InstanciacaoContad|Equal0~7_combout\)))) # (!\InstanciacaoContad|process_1~0_combout\ & 
-- (((\InstanciacaoContad|Equal0~4_combout\ & \InstanciacaoContad|Equal0~7_combout\)) # (!\InstanciacaoContad|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|process_1~0_combout\,
	datab => \InstanciacaoContad|process_1~1_combout\,
	datac => \InstanciacaoContad|Equal0~4_combout\,
	datad => \InstanciacaoContad|Equal0~7_combout\,
	combout => \InstanciacaoContad|w_LIMITE[3]~6_combout\);

-- Location: FF_X26_Y22_N9
\InstanciacaoContad|w_CLEAR_CONT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_LIMITE[3]~6_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CLEAR_CONT~q\);

-- Location: FF_X23_Y22_N7
\InstanciacaoContad|w_CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[0]~26_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(0));

-- Location: LCCOMB_X23_Y22_N8
\InstanciacaoContad|w_CONT[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[1]~28_combout\ = (\InstanciacaoContad|w_CONT\(1) & (!\InstanciacaoContad|w_CONT[0]~27\)) # (!\InstanciacaoContad|w_CONT\(1) & ((\InstanciacaoContad|w_CONT[0]~27\) # (GND)))
-- \InstanciacaoContad|w_CONT[1]~29\ = CARRY((!\InstanciacaoContad|w_CONT[0]~27\) # (!\InstanciacaoContad|w_CONT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(1),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[0]~27\,
	combout => \InstanciacaoContad|w_CONT[1]~28_combout\,
	cout => \InstanciacaoContad|w_CONT[1]~29\);

-- Location: FF_X23_Y22_N9
\InstanciacaoContad|w_CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[1]~28_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(1));

-- Location: LCCOMB_X23_Y22_N10
\InstanciacaoContad|w_CONT[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[2]~30_combout\ = (\InstanciacaoContad|w_CONT\(2) & (\InstanciacaoContad|w_CONT[1]~29\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(2) & (!\InstanciacaoContad|w_CONT[1]~29\ & VCC))
-- \InstanciacaoContad|w_CONT[2]~31\ = CARRY((\InstanciacaoContad|w_CONT\(2) & !\InstanciacaoContad|w_CONT[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(2),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[1]~29\,
	combout => \InstanciacaoContad|w_CONT[2]~30_combout\,
	cout => \InstanciacaoContad|w_CONT[2]~31\);

-- Location: FF_X23_Y22_N11
\InstanciacaoContad|w_CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[2]~30_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(2));

-- Location: LCCOMB_X23_Y22_N12
\InstanciacaoContad|w_CONT[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[3]~32_combout\ = (\InstanciacaoContad|w_CONT\(3) & (!\InstanciacaoContad|w_CONT[2]~31\)) # (!\InstanciacaoContad|w_CONT\(3) & ((\InstanciacaoContad|w_CONT[2]~31\) # (GND)))
-- \InstanciacaoContad|w_CONT[3]~33\ = CARRY((!\InstanciacaoContad|w_CONT[2]~31\) # (!\InstanciacaoContad|w_CONT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(3),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[2]~31\,
	combout => \InstanciacaoContad|w_CONT[3]~32_combout\,
	cout => \InstanciacaoContad|w_CONT[3]~33\);

-- Location: FF_X23_Y22_N13
\InstanciacaoContad|w_CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[3]~32_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(3));

-- Location: LCCOMB_X23_Y22_N14
\InstanciacaoContad|w_CONT[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[4]~34_combout\ = (\InstanciacaoContad|w_CONT\(4) & (\InstanciacaoContad|w_CONT[3]~33\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(4) & (!\InstanciacaoContad|w_CONT[3]~33\ & VCC))
-- \InstanciacaoContad|w_CONT[4]~35\ = CARRY((\InstanciacaoContad|w_CONT\(4) & !\InstanciacaoContad|w_CONT[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(4),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[3]~33\,
	combout => \InstanciacaoContad|w_CONT[4]~34_combout\,
	cout => \InstanciacaoContad|w_CONT[4]~35\);

-- Location: FF_X23_Y22_N15
\InstanciacaoContad|w_CONT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[4]~34_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(4));

-- Location: LCCOMB_X23_Y22_N16
\InstanciacaoContad|w_CONT[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[5]~36_combout\ = (\InstanciacaoContad|w_CONT\(5) & (!\InstanciacaoContad|w_CONT[4]~35\)) # (!\InstanciacaoContad|w_CONT\(5) & ((\InstanciacaoContad|w_CONT[4]~35\) # (GND)))
-- \InstanciacaoContad|w_CONT[5]~37\ = CARRY((!\InstanciacaoContad|w_CONT[4]~35\) # (!\InstanciacaoContad|w_CONT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(5),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[4]~35\,
	combout => \InstanciacaoContad|w_CONT[5]~36_combout\,
	cout => \InstanciacaoContad|w_CONT[5]~37\);

-- Location: FF_X23_Y22_N17
\InstanciacaoContad|w_CONT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[5]~36_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(5));

-- Location: LCCOMB_X23_Y22_N18
\InstanciacaoContad|w_CONT[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[6]~38_combout\ = (\InstanciacaoContad|w_CONT\(6) & (\InstanciacaoContad|w_CONT[5]~37\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(6) & (!\InstanciacaoContad|w_CONT[5]~37\ & VCC))
-- \InstanciacaoContad|w_CONT[6]~39\ = CARRY((\InstanciacaoContad|w_CONT\(6) & !\InstanciacaoContad|w_CONT[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(6),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[5]~37\,
	combout => \InstanciacaoContad|w_CONT[6]~38_combout\,
	cout => \InstanciacaoContad|w_CONT[6]~39\);

-- Location: FF_X23_Y22_N19
\InstanciacaoContad|w_CONT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[6]~38_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(6));

-- Location: LCCOMB_X23_Y22_N20
\InstanciacaoContad|w_CONT[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[7]~40_combout\ = (\InstanciacaoContad|w_CONT\(7) & (!\InstanciacaoContad|w_CONT[6]~39\)) # (!\InstanciacaoContad|w_CONT\(7) & ((\InstanciacaoContad|w_CONT[6]~39\) # (GND)))
-- \InstanciacaoContad|w_CONT[7]~41\ = CARRY((!\InstanciacaoContad|w_CONT[6]~39\) # (!\InstanciacaoContad|w_CONT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(7),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[6]~39\,
	combout => \InstanciacaoContad|w_CONT[7]~40_combout\,
	cout => \InstanciacaoContad|w_CONT[7]~41\);

-- Location: FF_X23_Y22_N21
\InstanciacaoContad|w_CONT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[7]~40_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(7));

-- Location: LCCOMB_X23_Y22_N22
\InstanciacaoContad|w_CONT[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[8]~42_combout\ = (\InstanciacaoContad|w_CONT\(8) & (\InstanciacaoContad|w_CONT[7]~41\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(8) & (!\InstanciacaoContad|w_CONT[7]~41\ & VCC))
-- \InstanciacaoContad|w_CONT[8]~43\ = CARRY((\InstanciacaoContad|w_CONT\(8) & !\InstanciacaoContad|w_CONT[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(8),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[7]~41\,
	combout => \InstanciacaoContad|w_CONT[8]~42_combout\,
	cout => \InstanciacaoContad|w_CONT[8]~43\);

-- Location: FF_X23_Y22_N23
\InstanciacaoContad|w_CONT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[8]~42_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(8));

-- Location: LCCOMB_X23_Y22_N24
\InstanciacaoContad|w_CONT[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[9]~44_combout\ = (\InstanciacaoContad|w_CONT\(9) & (!\InstanciacaoContad|w_CONT[8]~43\)) # (!\InstanciacaoContad|w_CONT\(9) & ((\InstanciacaoContad|w_CONT[8]~43\) # (GND)))
-- \InstanciacaoContad|w_CONT[9]~45\ = CARRY((!\InstanciacaoContad|w_CONT[8]~43\) # (!\InstanciacaoContad|w_CONT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(9),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[8]~43\,
	combout => \InstanciacaoContad|w_CONT[9]~44_combout\,
	cout => \InstanciacaoContad|w_CONT[9]~45\);

-- Location: FF_X23_Y22_N25
\InstanciacaoContad|w_CONT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[9]~44_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(9));

-- Location: LCCOMB_X23_Y22_N26
\InstanciacaoContad|w_CONT[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[10]~46_combout\ = (\InstanciacaoContad|w_CONT\(10) & (\InstanciacaoContad|w_CONT[9]~45\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(10) & (!\InstanciacaoContad|w_CONT[9]~45\ & VCC))
-- \InstanciacaoContad|w_CONT[10]~47\ = CARRY((\InstanciacaoContad|w_CONT\(10) & !\InstanciacaoContad|w_CONT[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(10),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[9]~45\,
	combout => \InstanciacaoContad|w_CONT[10]~46_combout\,
	cout => \InstanciacaoContad|w_CONT[10]~47\);

-- Location: FF_X23_Y22_N27
\InstanciacaoContad|w_CONT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[10]~46_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(10));

-- Location: LCCOMB_X23_Y22_N28
\InstanciacaoContad|w_CONT[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[11]~48_combout\ = (\InstanciacaoContad|w_CONT\(11) & (!\InstanciacaoContad|w_CONT[10]~47\)) # (!\InstanciacaoContad|w_CONT\(11) & ((\InstanciacaoContad|w_CONT[10]~47\) # (GND)))
-- \InstanciacaoContad|w_CONT[11]~49\ = CARRY((!\InstanciacaoContad|w_CONT[10]~47\) # (!\InstanciacaoContad|w_CONT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(11),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[10]~47\,
	combout => \InstanciacaoContad|w_CONT[11]~48_combout\,
	cout => \InstanciacaoContad|w_CONT[11]~49\);

-- Location: FF_X23_Y22_N29
\InstanciacaoContad|w_CONT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[11]~48_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(11));

-- Location: LCCOMB_X23_Y22_N30
\InstanciacaoContad|w_CONT[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[12]~50_combout\ = (\InstanciacaoContad|w_CONT\(12) & (\InstanciacaoContad|w_CONT[11]~49\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(12) & (!\InstanciacaoContad|w_CONT[11]~49\ & VCC))
-- \InstanciacaoContad|w_CONT[12]~51\ = CARRY((\InstanciacaoContad|w_CONT\(12) & !\InstanciacaoContad|w_CONT[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(12),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[11]~49\,
	combout => \InstanciacaoContad|w_CONT[12]~50_combout\,
	cout => \InstanciacaoContad|w_CONT[12]~51\);

-- Location: FF_X23_Y22_N31
\InstanciacaoContad|w_CONT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[12]~50_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(12));

-- Location: LCCOMB_X23_Y21_N0
\InstanciacaoContad|w_CONT[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[13]~52_combout\ = (\InstanciacaoContad|w_CONT\(13) & (!\InstanciacaoContad|w_CONT[12]~51\)) # (!\InstanciacaoContad|w_CONT\(13) & ((\InstanciacaoContad|w_CONT[12]~51\) # (GND)))
-- \InstanciacaoContad|w_CONT[13]~53\ = CARRY((!\InstanciacaoContad|w_CONT[12]~51\) # (!\InstanciacaoContad|w_CONT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(13),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[12]~51\,
	combout => \InstanciacaoContad|w_CONT[13]~52_combout\,
	cout => \InstanciacaoContad|w_CONT[13]~53\);

-- Location: FF_X23_Y21_N1
\InstanciacaoContad|w_CONT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[13]~52_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(13));

-- Location: LCCOMB_X23_Y21_N2
\InstanciacaoContad|w_CONT[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[14]~54_combout\ = (\InstanciacaoContad|w_CONT\(14) & (\InstanciacaoContad|w_CONT[13]~53\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(14) & (!\InstanciacaoContad|w_CONT[13]~53\ & VCC))
-- \InstanciacaoContad|w_CONT[14]~55\ = CARRY((\InstanciacaoContad|w_CONT\(14) & !\InstanciacaoContad|w_CONT[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(14),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[13]~53\,
	combout => \InstanciacaoContad|w_CONT[14]~54_combout\,
	cout => \InstanciacaoContad|w_CONT[14]~55\);

-- Location: FF_X23_Y21_N3
\InstanciacaoContad|w_CONT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[14]~54_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(14));

-- Location: LCCOMB_X23_Y21_N4
\InstanciacaoContad|w_CONT[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[15]~56_combout\ = (\InstanciacaoContad|w_CONT\(15) & (!\InstanciacaoContad|w_CONT[14]~55\)) # (!\InstanciacaoContad|w_CONT\(15) & ((\InstanciacaoContad|w_CONT[14]~55\) # (GND)))
-- \InstanciacaoContad|w_CONT[15]~57\ = CARRY((!\InstanciacaoContad|w_CONT[14]~55\) # (!\InstanciacaoContad|w_CONT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(15),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[14]~55\,
	combout => \InstanciacaoContad|w_CONT[15]~56_combout\,
	cout => \InstanciacaoContad|w_CONT[15]~57\);

-- Location: FF_X23_Y21_N5
\InstanciacaoContad|w_CONT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[15]~56_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(15));

-- Location: LCCOMB_X23_Y21_N6
\InstanciacaoContad|w_CONT[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[16]~58_combout\ = (\InstanciacaoContad|w_CONT\(16) & (\InstanciacaoContad|w_CONT[15]~57\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(16) & (!\InstanciacaoContad|w_CONT[15]~57\ & VCC))
-- \InstanciacaoContad|w_CONT[16]~59\ = CARRY((\InstanciacaoContad|w_CONT\(16) & !\InstanciacaoContad|w_CONT[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(16),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[15]~57\,
	combout => \InstanciacaoContad|w_CONT[16]~58_combout\,
	cout => \InstanciacaoContad|w_CONT[16]~59\);

-- Location: FF_X23_Y21_N7
\InstanciacaoContad|w_CONT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[16]~58_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(16));

-- Location: LCCOMB_X23_Y21_N8
\InstanciacaoContad|w_CONT[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[17]~60_combout\ = (\InstanciacaoContad|w_CONT\(17) & (!\InstanciacaoContad|w_CONT[16]~59\)) # (!\InstanciacaoContad|w_CONT\(17) & ((\InstanciacaoContad|w_CONT[16]~59\) # (GND)))
-- \InstanciacaoContad|w_CONT[17]~61\ = CARRY((!\InstanciacaoContad|w_CONT[16]~59\) # (!\InstanciacaoContad|w_CONT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(17),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[16]~59\,
	combout => \InstanciacaoContad|w_CONT[17]~60_combout\,
	cout => \InstanciacaoContad|w_CONT[17]~61\);

-- Location: FF_X23_Y21_N9
\InstanciacaoContad|w_CONT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[17]~60_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(17));

-- Location: LCCOMB_X23_Y21_N10
\InstanciacaoContad|w_CONT[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[18]~62_combout\ = (\InstanciacaoContad|w_CONT\(18) & (\InstanciacaoContad|w_CONT[17]~61\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(18) & (!\InstanciacaoContad|w_CONT[17]~61\ & VCC))
-- \InstanciacaoContad|w_CONT[18]~63\ = CARRY((\InstanciacaoContad|w_CONT\(18) & !\InstanciacaoContad|w_CONT[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(18),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[17]~61\,
	combout => \InstanciacaoContad|w_CONT[18]~62_combout\,
	cout => \InstanciacaoContad|w_CONT[18]~63\);

-- Location: FF_X23_Y21_N11
\InstanciacaoContad|w_CONT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[18]~62_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(18));

-- Location: LCCOMB_X23_Y21_N12
\InstanciacaoContad|w_CONT[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[19]~64_combout\ = (\InstanciacaoContad|w_CONT\(19) & (!\InstanciacaoContad|w_CONT[18]~63\)) # (!\InstanciacaoContad|w_CONT\(19) & ((\InstanciacaoContad|w_CONT[18]~63\) # (GND)))
-- \InstanciacaoContad|w_CONT[19]~65\ = CARRY((!\InstanciacaoContad|w_CONT[18]~63\) # (!\InstanciacaoContad|w_CONT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(19),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[18]~63\,
	combout => \InstanciacaoContad|w_CONT[19]~64_combout\,
	cout => \InstanciacaoContad|w_CONT[19]~65\);

-- Location: FF_X23_Y21_N13
\InstanciacaoContad|w_CONT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[19]~64_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(19));

-- Location: LCCOMB_X23_Y21_N14
\InstanciacaoContad|w_CONT[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[20]~66_combout\ = (\InstanciacaoContad|w_CONT\(20) & (\InstanciacaoContad|w_CONT[19]~65\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(20) & (!\InstanciacaoContad|w_CONT[19]~65\ & VCC))
-- \InstanciacaoContad|w_CONT[20]~67\ = CARRY((\InstanciacaoContad|w_CONT\(20) & !\InstanciacaoContad|w_CONT[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(20),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[19]~65\,
	combout => \InstanciacaoContad|w_CONT[20]~66_combout\,
	cout => \InstanciacaoContad|w_CONT[20]~67\);

-- Location: FF_X23_Y21_N15
\InstanciacaoContad|w_CONT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[20]~66_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(20));

-- Location: LCCOMB_X23_Y21_N16
\InstanciacaoContad|w_CONT[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[21]~68_combout\ = (\InstanciacaoContad|w_CONT\(21) & (!\InstanciacaoContad|w_CONT[20]~67\)) # (!\InstanciacaoContad|w_CONT\(21) & ((\InstanciacaoContad|w_CONT[20]~67\) # (GND)))
-- \InstanciacaoContad|w_CONT[21]~69\ = CARRY((!\InstanciacaoContad|w_CONT[20]~67\) # (!\InstanciacaoContad|w_CONT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(21),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[20]~67\,
	combout => \InstanciacaoContad|w_CONT[21]~68_combout\,
	cout => \InstanciacaoContad|w_CONT[21]~69\);

-- Location: FF_X23_Y21_N17
\InstanciacaoContad|w_CONT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[21]~68_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(21));

-- Location: LCCOMB_X23_Y21_N18
\InstanciacaoContad|w_CONT[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[22]~70_combout\ = (\InstanciacaoContad|w_CONT\(22) & (\InstanciacaoContad|w_CONT[21]~69\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(22) & (!\InstanciacaoContad|w_CONT[21]~69\ & VCC))
-- \InstanciacaoContad|w_CONT[22]~71\ = CARRY((\InstanciacaoContad|w_CONT\(22) & !\InstanciacaoContad|w_CONT[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(22),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[21]~69\,
	combout => \InstanciacaoContad|w_CONT[22]~70_combout\,
	cout => \InstanciacaoContad|w_CONT[22]~71\);

-- Location: FF_X23_Y21_N19
\InstanciacaoContad|w_CONT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[22]~70_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(22));

-- Location: LCCOMB_X23_Y21_N20
\InstanciacaoContad|w_CONT[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[23]~72_combout\ = (\InstanciacaoContad|w_CONT\(23) & (!\InstanciacaoContad|w_CONT[22]~71\)) # (!\InstanciacaoContad|w_CONT\(23) & ((\InstanciacaoContad|w_CONT[22]~71\) # (GND)))
-- \InstanciacaoContad|w_CONT[23]~73\ = CARRY((!\InstanciacaoContad|w_CONT[22]~71\) # (!\InstanciacaoContad|w_CONT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoContad|w_CONT\(23),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[22]~71\,
	combout => \InstanciacaoContad|w_CONT[23]~72_combout\,
	cout => \InstanciacaoContad|w_CONT[23]~73\);

-- Location: FF_X23_Y21_N21
\InstanciacaoContad|w_CONT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[23]~72_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(23));

-- Location: LCCOMB_X23_Y21_N22
\InstanciacaoContad|w_CONT[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[24]~74_combout\ = (\InstanciacaoContad|w_CONT\(24) & (\InstanciacaoContad|w_CONT[23]~73\ $ (GND))) # (!\InstanciacaoContad|w_CONT\(24) & (!\InstanciacaoContad|w_CONT[23]~73\ & VCC))
-- \InstanciacaoContad|w_CONT[24]~75\ = CARRY((\InstanciacaoContad|w_CONT\(24) & !\InstanciacaoContad|w_CONT[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(24),
	datad => VCC,
	cin => \InstanciacaoContad|w_CONT[23]~73\,
	combout => \InstanciacaoContad|w_CONT[24]~74_combout\,
	cout => \InstanciacaoContad|w_CONT[24]~75\);

-- Location: FF_X23_Y21_N23
\InstanciacaoContad|w_CONT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[24]~74_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(24));

-- Location: LCCOMB_X23_Y21_N24
\InstanciacaoContad|w_CONT[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_CONT[25]~76_combout\ = \InstanciacaoContad|w_CONT[24]~75\ $ (\InstanciacaoContad|w_CONT\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContad|w_CONT\(25),
	cin => \InstanciacaoContad|w_CONT[24]~75\,
	combout => \InstanciacaoContad|w_CONT[25]~76_combout\);

-- Location: FF_X23_Y21_N25
\InstanciacaoContad|w_CONT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_CONT[25]~76_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	sclr => \InstanciacaoContad|w_CLEAR_CONT~q\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_CONT\(25));

-- Location: LCCOMB_X23_Y21_N26
\InstanciacaoContad|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~5_combout\ = (!\InstanciacaoContad|w_CONT\(16) & (\InstanciacaoContad|w_CONT\(17) & (!\InstanciacaoContad|w_CONT\(18) & \InstanciacaoContad|w_CONT\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(16),
	datab => \InstanciacaoContad|w_CONT\(17),
	datac => \InstanciacaoContad|w_CONT\(18),
	datad => \InstanciacaoContad|w_CONT\(19),
	combout => \InstanciacaoContad|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y21_N28
\InstanciacaoContad|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~6_combout\ = (\InstanciacaoContad|w_CONT\(23) & (\InstanciacaoContad|w_CONT\(21) & (\InstanciacaoContad|w_CONT\(20) & \InstanciacaoContad|w_CONT\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(23),
	datab => \InstanciacaoContad|w_CONT\(21),
	datac => \InstanciacaoContad|w_CONT\(20),
	datad => \InstanciacaoContad|w_CONT\(22),
	combout => \InstanciacaoContad|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y21_N30
\InstanciacaoContad|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~7_combout\ = (!\InstanciacaoContad|w_CONT\(24) & (\InstanciacaoContad|w_CONT\(25) & (\InstanciacaoContad|Equal0~5_combout\ & \InstanciacaoContad|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_CONT\(24),
	datab => \InstanciacaoContad|w_CONT\(25),
	datac => \InstanciacaoContad|Equal0~5_combout\,
	datad => \InstanciacaoContad|Equal0~6_combout\,
	combout => \InstanciacaoContad|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y22_N18
\InstanciacaoContad|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Equal0~8_combout\ = (\InstanciacaoContad|Equal0~7_combout\ & \InstanciacaoContad|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoContad|Equal0~7_combout\,
	datad => \InstanciacaoContad|Equal0~4_combout\,
	combout => \InstanciacaoContad|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y22_N6
\InstanciacaoContad|w_LIMITE[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[0]~1_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(4) & ((\InstanciacaoContad|Equal0~8_combout\) # ((!\InstanciacaoContad|process_1~0_combout\ & !\InstanciacaoContad|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	datab => \InstanciacaoContad|process_1~0_combout\,
	datac => \InstanciacaoContad|process_1~1_combout\,
	datad => \InstanciacaoContad|Equal0~8_combout\,
	combout => \InstanciacaoContad|w_LIMITE[0]~1_combout\);

-- Location: LCCOMB_X24_Y22_N0
\InstanciacaoContad|w_LIMITE[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[0]~2_combout\ = (\InstanciacaoContad|w_LIMITE\(0) & ((!\InstanciacaoContad|w_LIMITE[0]~1_combout\))) # (!\InstanciacaoContad|w_LIMITE\(0) & (\InstanciacaoContad|w_LIMITE[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE[3]~0_combout\,
	datac => \InstanciacaoContad|w_LIMITE\(0),
	datad => \InstanciacaoContad|w_LIMITE[0]~1_combout\,
	combout => \InstanciacaoContad|w_LIMITE[0]~2_combout\);

-- Location: FF_X24_Y22_N1
\InstanciacaoContad|w_LIMITE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_LIMITE[0]~2_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_LIMITE\(0));

-- Location: LCCOMB_X24_Y22_N24
\InstanciacaoContad|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Add1~0_combout\ = \InstanciacaoContad|w_LIMITE\(2) $ (((\InstanciacaoContad|w_LIMITE\(1) & \InstanciacaoContad|w_LIMITE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE\(1),
	datac => \InstanciacaoContad|w_LIMITE\(2),
	datad => \InstanciacaoContad|w_LIMITE\(0),
	combout => \InstanciacaoContad|Add1~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\InstanciacaoContad|w_LIMITE[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[2]~4_combout\ = (\InstanciacaoContad|w_LIMITE[3]~0_combout\ & ((\InstanciacaoContad|Add1~0_combout\) # ((\InstanciacaoContad|w_LIMITE\(2) & !\InstanciacaoContad|w_LIMITE[0]~1_combout\)))) # 
-- (!\InstanciacaoContad|w_LIMITE[3]~0_combout\ & (((\InstanciacaoContad|w_LIMITE\(2) & !\InstanciacaoContad|w_LIMITE[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE[3]~0_combout\,
	datab => \InstanciacaoContad|Add1~0_combout\,
	datac => \InstanciacaoContad|w_LIMITE\(2),
	datad => \InstanciacaoContad|w_LIMITE[0]~1_combout\,
	combout => \InstanciacaoContad|w_LIMITE[2]~4_combout\);

-- Location: FF_X24_Y22_N27
\InstanciacaoContad|w_LIMITE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_LIMITE[2]~4_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_LIMITE\(2));

-- Location: LCCOMB_X24_Y22_N10
\InstanciacaoContad|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|Add1~1_combout\ = \InstanciacaoContad|w_LIMITE\(3) $ (((\InstanciacaoContad|w_LIMITE\(1) & (\InstanciacaoContad|w_LIMITE\(2) & \InstanciacaoContad|w_LIMITE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE\(1),
	datab => \InstanciacaoContad|w_LIMITE\(3),
	datac => \InstanciacaoContad|w_LIMITE\(2),
	datad => \InstanciacaoContad|w_LIMITE\(0),
	combout => \InstanciacaoContad|Add1~1_combout\);

-- Location: LCCOMB_X24_Y22_N4
\InstanciacaoContad|w_LIMITE[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[3]~5_combout\ = (\InstanciacaoContad|w_LIMITE[3]~0_combout\ & ((\InstanciacaoContad|Add1~1_combout\) # ((\InstanciacaoContad|w_LIMITE\(3) & !\InstanciacaoContad|w_LIMITE[0]~1_combout\)))) # 
-- (!\InstanciacaoContad|w_LIMITE[3]~0_combout\ & (((\InstanciacaoContad|w_LIMITE\(3) & !\InstanciacaoContad|w_LIMITE[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE[3]~0_combout\,
	datab => \InstanciacaoContad|Add1~1_combout\,
	datac => \InstanciacaoContad|w_LIMITE\(3),
	datad => \InstanciacaoContad|w_LIMITE[0]~1_combout\,
	combout => \InstanciacaoContad|w_LIMITE[3]~5_combout\);

-- Location: FF_X24_Y22_N5
\InstanciacaoContad|w_LIMITE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_LIMITE[3]~5_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_LIMITE\(3));

-- Location: LCCOMB_X24_Y24_N30
\InstanciacaoMaqEstd|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector38~0_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(3) & (((!\InstanciacaoContad|w_DONE~q\ & !\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\)) # (!\InstanciacaoMaqEstd|Selector37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(3),
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\,
	datad => \InstanciacaoMaqEstd|Selector37~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector38~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\InstanciacaoMaqEstd|Selector38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector38~1_combout\ = (\InstanciacaoMaqEstd|Selector38~0_combout\) # ((\i_BOTAO_Tamanho~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datac => \InstanciacaoMaqEstd|Selector38~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector38~1_combout\);

-- Location: FF_X24_Y24_N23
\InstanciacaoMaqEstd|o_EN_CONTAGEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector38~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(3));

-- Location: LCCOMB_X24_Y22_N14
\InstanciacaoContad|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|process_1~1_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(2) & ((\InstanciacaoContad|w_LIMITE\(3) $ (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(3))) # (!\InstanciacaoContad|w_LIMITE\(2)))) # (!\InstanciacaoMaqEstd|o_EN_CONTAGEM\(2) & 
-- ((\InstanciacaoContad|w_LIMITE\(2)) # (\InstanciacaoContad|w_LIMITE\(3) $ (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(2),
	datab => \InstanciacaoContad|w_LIMITE\(3),
	datac => \InstanciacaoContad|w_LIMITE\(2),
	datad => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(3),
	combout => \InstanciacaoContad|process_1~1_combout\);

-- Location: LCCOMB_X24_Y22_N12
\InstanciacaoContad|w_LIMITE[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[3]~0_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(4) & (\InstanciacaoContad|Equal0~8_combout\ & ((\InstanciacaoContad|process_1~0_combout\) # (\InstanciacaoContad|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	datab => \InstanciacaoContad|process_1~0_combout\,
	datac => \InstanciacaoContad|process_1~1_combout\,
	datad => \InstanciacaoContad|Equal0~8_combout\,
	combout => \InstanciacaoContad|w_LIMITE[3]~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\InstanciacaoContad|w_LIMITE[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_LIMITE[1]~3_combout\ = (\InstanciacaoContad|w_LIMITE\(1) & (((\InstanciacaoContad|w_LIMITE[3]~0_combout\ & !\InstanciacaoContad|w_LIMITE\(0))) # (!\InstanciacaoContad|w_LIMITE[0]~1_combout\))) # (!\InstanciacaoContad|w_LIMITE\(1) & 
-- (\InstanciacaoContad|w_LIMITE[3]~0_combout\ & (\InstanciacaoContad|w_LIMITE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE[3]~0_combout\,
	datab => \InstanciacaoContad|w_LIMITE\(0),
	datac => \InstanciacaoContad|w_LIMITE\(1),
	datad => \InstanciacaoContad|w_LIMITE[0]~1_combout\,
	combout => \InstanciacaoContad|w_LIMITE[1]~3_combout\);

-- Location: FF_X24_Y22_N23
\InstanciacaoContad|w_LIMITE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_LIMITE[1]~3_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_LIMITE\(1));

-- Location: LCCOMB_X24_Y24_N20
\InstanciacaoMaqEstd|w_STATE~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~41_combout\ = (!\i_BOTAO_Preparo~input_o\ & \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BOTAO_Preparo~input_o\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~41_combout\);

-- Location: LCCOMB_X24_Y24_N26
\InstanciacaoMaqEstd|Selector40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector40~1_combout\ = (\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\) # (!\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	combout => \InstanciacaoMaqEstd|Selector40~1_combout\);

-- Location: LCCOMB_X24_Y24_N16
\InstanciacaoMaqEstd|Selector40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector40~2_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(1) & ((\InstanciacaoMaqEstd|Selector40~1_combout\) # ((!\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\ & !\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|Selector40~1_combout\,
	datab => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(1),
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\,
	datad => \InstanciacaoContad|w_DONE~q\,
	combout => \InstanciacaoMaqEstd|Selector40~2_combout\);

-- Location: LCCOMB_X24_Y24_N18
\InstanciacaoMaqEstd|Selector40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector40~3_combout\ = (\InstanciacaoMaqEstd|w_STATE~41_combout\) # ((\InstanciacaoMaqEstd|Selector40~2_combout\) # ((\i_BOTAO_Tamanho~input_o\ & !\InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datab => \InstanciacaoMaqEstd|w_STATE~41_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_INICIO~6_combout\,
	datad => \InstanciacaoMaqEstd|Selector40~2_combout\,
	combout => \InstanciacaoMaqEstd|Selector40~3_combout\);

-- Location: FF_X24_Y24_N19
\InstanciacaoMaqEstd|o_EN_CONTAGEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector40~3_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(1));

-- Location: LCCOMB_X24_Y24_N4
\InstanciacaoMaqEstd|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector40~0_combout\ = (\i_BOTAO_Tamanho~input_o\ & ((\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\) # (\InstanciacaoMaqEstd|w_STATE.st_POS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Tamanho~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|Selector40~0_combout\);

-- Location: LCCOMB_X23_Y24_N8
\InstanciacaoMaqEstd|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector13~0_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & !\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	combout => \InstanciacaoMaqEstd|Selector13~0_combout\);

-- Location: LCCOMB_X24_Y24_N2
\InstanciacaoMaqEstd|Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector41~0_combout\ = (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(0) & (!\InstanciacaoMaqEstd|w_STATE~41_combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\) # (!\InstanciacaoContad|w_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(0),
	datab => \InstanciacaoMaqEstd|w_STATE~41_combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~2_combout\,
	datad => \InstanciacaoContad|w_DONE~q\,
	combout => \InstanciacaoMaqEstd|Selector41~0_combout\);

-- Location: LCCOMB_X24_Y24_N12
\InstanciacaoMaqEstd|Selector41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector41~1_combout\ = (!\InstanciacaoMaqEstd|Selector40~0_combout\ & ((\InstanciacaoMaqEstd|Selector41~0_combout\) # ((\InstanciacaoMaqEstd|Selector3~0_combout\ & \InstanciacaoMaqEstd|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|Selector3~0_combout\,
	datab => \InstanciacaoMaqEstd|Selector40~0_combout\,
	datac => \InstanciacaoMaqEstd|Selector13~0_combout\,
	datad => \InstanciacaoMaqEstd|Selector41~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector41~1_combout\);

-- Location: FF_X24_Y24_N13
\InstanciacaoMaqEstd|o_EN_CONTAGEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector41~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(0));

-- Location: LCCOMB_X24_Y22_N20
\InstanciacaoContad|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|process_1~0_combout\ = (\InstanciacaoContad|w_LIMITE\(1) & ((\InstanciacaoContad|w_LIMITE\(0) $ (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(0))) # (!\InstanciacaoMaqEstd|o_EN_CONTAGEM\(1)))) # (!\InstanciacaoContad|w_LIMITE\(1) & 
-- ((\InstanciacaoMaqEstd|o_EN_CONTAGEM\(1)) # (\InstanciacaoContad|w_LIMITE\(0) $ (\InstanciacaoMaqEstd|o_EN_CONTAGEM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_LIMITE\(1),
	datab => \InstanciacaoContad|w_LIMITE\(0),
	datac => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(1),
	datad => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(0),
	combout => \InstanciacaoContad|process_1~0_combout\);

-- Location: LCCOMB_X23_Y22_N0
\InstanciacaoContad|w_DONE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContad|w_DONE~0_combout\ = (\InstanciacaoContad|process_1~0_combout\ & (((\InstanciacaoContad|w_DONE~q\ & \InstanciacaoContad|Equal0~8_combout\)))) # (!\InstanciacaoContad|process_1~0_combout\ & (((\InstanciacaoContad|w_DONE~q\ & 
-- \InstanciacaoContad|Equal0~8_combout\)) # (!\InstanciacaoContad|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|process_1~0_combout\,
	datab => \InstanciacaoContad|process_1~1_combout\,
	datac => \InstanciacaoContad|w_DONE~q\,
	datad => \InstanciacaoContad|Equal0~8_combout\,
	combout => \InstanciacaoContad|w_DONE~0_combout\);

-- Location: FF_X23_Y22_N1
\InstanciacaoContad|w_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContad|w_DONE~0_combout\,
	clrn => \ALT_INV_comb~1_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_CONTAGEM\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContad|w_DONE~q\);

-- Location: LCCOMB_X26_Y23_N4
\InstanciacaoMaqEstd|w_STATE~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~22_combout\ = (\InstancicaoContSensor|o_EN_Maquina~combout\ & (((\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\)))) # (!\InstancicaoContSensor|o_EN_Maquina~combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\) # 
-- ((!\InstanciacaoContad|w_DONE~q\ & \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datab => \InstanciacaoContad|w_DONE~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	combout => \InstanciacaoMaqEstd|w_STATE~22_combout\);

-- Location: LCCOMB_X27_Y23_N28
\InstanciacaoMaqEstd|w_STATE~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|w_STATE~23_combout\ = (\InstanciacaoMaqEstd|w_STATE~22_combout\ & \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE~22_combout\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~5_combout\,
	combout => \InstanciacaoMaqEstd|w_STATE~23_combout\);

-- Location: FF_X27_Y23_N29
\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|w_STATE~23_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\);

-- Location: LCCOMB_X24_Y23_N22
\InstanciacaoMaqEstd|o_VALVULAS[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[0]~5_combout\ = !\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[0]~5_combout\);

-- Location: LCCOMB_X24_Y23_N10
\InstanciacaoMaqEstd|o_VALVULAS[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\ = (!\InstancicaoContSensor|o_EN_Maquina~combout\ & (((\InstanciacaoContad|w_DONE~q\ & \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\)) # (!\InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datad => \InstanciacaoMaqEstd|o_VALVULAS[0]~0_combout\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\);

-- Location: FF_X24_Y23_N23
\InstanciacaoMaqEstd|o_VALVULAS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|o_VALVULAS[0]~5_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_VALVULAS\(0));

-- Location: LCCOMB_X24_Y23_N12
\InstanciacaoMaqEstd|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector34~0_combout\ = (!\i_BOTAO_Cafe~input_o\ & !\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Cafe~input_o\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	combout => \InstanciacaoMaqEstd|Selector34~0_combout\);

-- Location: FF_X24_Y23_N13
\InstanciacaoMaqEstd|o_VALVULAS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector34~0_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_VALVULAS\(1));

-- Location: LCCOMB_X24_Y23_N16
\InstanciacaoMaqEstd|o_VALVULAS[0]~2_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[0]~2_wirecell_combout\ = !\InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_VALVULAS[0]~2_combout\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[0]~2_wirecell_combout\);

-- Location: FF_X24_Y23_N17
\InstanciacaoMaqEstd|o_VALVULAS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|o_VALVULAS[0]~2_wirecell_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sclr => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	ena => \InstanciacaoMaqEstd|o_VALVULAS[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_VALVULAS\(2));

-- Location: LCCOMB_X24_Y23_N14
\InstanciacaoMaqEstd|o_VALVULAS[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\ = (!\InstancicaoContSensor|o_EN_Maquina~combout\ & ((\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & (\InstanciacaoContad|w_DONE~q\)) # (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & 
-- ((\InstanciacaoMaqEstd|w_STATE.st_POS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstancicaoContSensor|o_EN_Maquina~combout\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\);

-- Location: LCCOMB_X24_Y23_N26
\InstanciacaoMaqEstd|o_VALVULAS[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|o_VALVULAS[3]~4_combout\ = (\InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\ & (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\ & ((\i_BOTAO_Acucar~input_o\)))) # (!\InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\ & 
-- (((\InstanciacaoMaqEstd|o_VALVULAS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AG_C_POS~q\,
	datab => \InstanciacaoMaqEstd|o_VALVULAS[3]~3_combout\,
	datac => \InstanciacaoMaqEstd|o_VALVULAS\(3),
	datad => \i_BOTAO_Acucar~input_o\,
	combout => \InstanciacaoMaqEstd|o_VALVULAS[3]~4_combout\);

-- Location: FF_X24_Y23_N27
\InstanciacaoMaqEstd|o_VALVULAS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|o_VALVULAS[3]~4_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_VALVULAS\(3));

-- Location: LCCOMB_X23_Y24_N0
\InstanciacaoMaqEstd|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector31~0_combout\ = (\InstanciacaoMaqEstd|o_VALVULAS\(4) & (((!\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\)) # (!\InstanciacaoContad|w_DONE~q\))) # (!\InstanciacaoMaqEstd|o_VALVULAS\(4) & 
-- (((\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ & !\InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoContad|w_DONE~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datac => \InstanciacaoMaqEstd|o_VALVULAS\(4),
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_AGUA~q\,
	combout => \InstanciacaoMaqEstd|Selector31~0_combout\);

-- Location: FF_X23_Y24_N1
\InstanciacaoMaqEstd|o_VALVULAS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector31~0_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_VALVULAS\(4));

-- Location: LCCOMB_X26_Y24_N24
\InstanciacaoMaqEstd|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector13~1_combout\ = ((!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\ & \InstanciacaoMaqEstd|o_DISPLAY\(1)))) # (!\InstanciacaoMaqEstd|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	datad => \InstanciacaoMaqEstd|Selector13~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector13~1_combout\);

-- Location: FF_X26_Y24_N25
\InstanciacaoMaqEstd|o_DISPLAY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector13~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_DISPLAY\(1));

-- Location: LCCOMB_X27_Y24_N28
\InstanciacaoMaqEstd|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector14~0_combout\ = (!\InstanciacaoMaqEstd|w_STATE.st_ERRO~q\ & !\InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|w_STATE.st_ERRO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_PRONTO~q\,
	combout => \InstanciacaoMaqEstd|Selector14~0_combout\);

-- Location: LCCOMB_X27_Y24_N4
\InstanciacaoMaqEstd|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector14~1_combout\ = ((!\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\ & (!\InstanciacaoMaqEstd|w_STATE.st_POS~q\ & \InstanciacaoMaqEstd|o_DISPLAY\(0)))) # (!\InstanciacaoMaqEstd|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_POS~q\,
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	datad => \InstanciacaoMaqEstd|Selector14~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector14~1_combout\);

-- Location: FF_X27_Y24_N5
\InstanciacaoMaqEstd|o_DISPLAY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector14~1_combout\,
	ena => \InstanciacaoMaqEstd|w_n_acucar[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_DISPLAY\(0));

-- Location: LCCOMB_X29_Y23_N12
\InstanciacaoContDisp|o_DISPLAY_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1~0_combout\ = (\InstanciacaoMaqEstd|o_DISPLAY\(1)) # (\InstanciacaoMaqEstd|o_DISPLAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|o_DISPLAY_1~0_combout\);

-- Location: LCCOMB_X26_Y23_N30
\InstanciacaoMaqEstd|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector0~0_combout\ = (\InstanciacaoMaqEstd|o_RST_DISPLAY~q\ & ((\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\) # ((\InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\) # (\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|o_RST_DISPLAY~q\,
	datab => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	datac => \InstanciacaoMaqEstd|w_STATE.st_REPOSICAO~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	combout => \InstanciacaoMaqEstd|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y23_N18
\InstanciacaoMaqEstd|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector0~2_combout\ = (\InstanciacaoMaqEstd|Selector0~0_combout\) # (!\InstanciacaoMaqEstd|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|Selector0~1_combout\,
	datad => \InstanciacaoMaqEstd|Selector0~0_combout\,
	combout => \InstanciacaoMaqEstd|Selector0~2_combout\);

-- Location: FF_X28_Y23_N19
\InstanciacaoMaqEstd|o_RST_DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector0~2_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_RST_DISPLAY~q\);

-- Location: LCCOMB_X28_Y23_N6
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\InstanciacaoMaqEstd|o_RST_DISPLAY~q\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datad => \InstanciacaoMaqEstd|o_RST_DISPLAY~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X27_Y24_N18
\InstanciacaoMaqEstd|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector3~2_combout\ = (\InstanciacaoMaqEstd|o_EN_DISPLAY~q\ & ((\i_BOTAO_Preparo~input_o\) # ((\InstanciacaoMaqEstd|w_STATE.st_INICIO~q\) # (!\InstanciacaoContPedid|o_VALIDADE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BOTAO_Preparo~input_o\,
	datab => \InstanciacaoContPedid|o_VALIDADE~q\,
	datac => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	datad => \InstanciacaoMaqEstd|w_STATE.st_INICIO~q\,
	combout => \InstanciacaoMaqEstd|Selector3~2_combout\);

-- Location: LCCOMB_X27_Y24_N24
\InstanciacaoMaqEstd|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector3~3_combout\ = (\InstanciacaoMaqEstd|Selector3~2_combout\ & ((!\InstanciacaoContad|w_DONE~q\) # (!\InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstanciacaoMaqEstd|w_STATE.st_AG_C_PRONTO~q\,
	datac => \InstanciacaoContad|w_DONE~q\,
	datad => \InstanciacaoMaqEstd|Selector3~2_combout\,
	combout => \InstanciacaoMaqEstd|Selector3~3_combout\);

-- Location: LCCOMB_X27_Y24_N30
\InstanciacaoMaqEstd|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoMaqEstd|Selector3~4_combout\ = (\InstanciacaoMaqEstd|Selector3~1_combout\ & ((\InstanciacaoMaqEstd|Selector3~3_combout\) # ((!\InstanciacaoMaqEstd|w_STATE.st_AGUA~q\ & \InstanciacaoMaqEstd|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstanciacaoMaqEstd|w_STATE.st_AGUA~q\,
	datab => \InstanciacaoMaqEstd|Selector3~0_combout\,
	datac => \InstanciacaoMaqEstd|Selector3~1_combout\,
	datad => \InstanciacaoMaqEstd|Selector3~3_combout\,
	combout => \InstanciacaoMaqEstd|Selector3~4_combout\);

-- Location: FF_X27_Y24_N31
\InstanciacaoMaqEstd|o_EN_DISPLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoMaqEstd|Selector3~4_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	ena => \InstancicaoContSensor|ALT_INV_o_EN_Maquina~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\);

-- Location: FF_X29_Y23_N13
\InstanciacaoContDisp|o_DISPLAY_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(0));

-- Location: LCCOMB_X29_Y23_N22
\InstanciacaoContDisp|o_DISPLAY_1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[1]~feeder_combout\ = \InstanciacaoContDisp|o_DISPLAY_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContDisp|o_DISPLAY_1~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_1[1]~feeder_combout\);

-- Location: FF_X29_Y23_N23
\InstanciacaoContDisp|o_DISPLAY_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[1]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(1));

-- Location: LCCOMB_X29_Y23_N4
\InstanciacaoContDisp|o_DISPLAY_1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[2]~feeder_combout\ = \InstanciacaoMaqEstd|o_DISPLAY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	combout => \InstanciacaoContDisp|o_DISPLAY_1[2]~feeder_combout\);

-- Location: FF_X29_Y23_N5
\InstanciacaoContDisp|o_DISPLAY_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[2]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(2));

-- Location: LCCOMB_X29_Y23_N10
\InstanciacaoContDisp|o_DISPLAY_1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_1[3]~feeder_combout\);

-- Location: FF_X29_Y23_N11
\InstanciacaoContDisp|o_DISPLAY_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[3]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(3));

-- Location: LCCOMB_X29_Y23_N0
\InstanciacaoContDisp|o_DISPLAY_1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_1[4]~feeder_combout\);

-- Location: FF_X29_Y23_N1
\InstanciacaoContDisp|o_DISPLAY_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[4]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(4));

-- Location: LCCOMB_X28_Y23_N12
\InstanciacaoContDisp|o_DISPLAY_1[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_1[5]~feeder_combout\);

-- Location: FF_X28_Y23_N13
\InstanciacaoContDisp|o_DISPLAY_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[5]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(5));

-- Location: LCCOMB_X29_Y23_N6
\InstanciacaoContDisp|o_DISPLAY_1[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_1[6]~1_combout\ = !\InstanciacaoMaqEstd|o_DISPLAY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	combout => \InstanciacaoContDisp|o_DISPLAY_1[6]~1_combout\);

-- Location: FF_X29_Y23_N7
\InstanciacaoContDisp|o_DISPLAY_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_1[6]~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_1\(6));

-- Location: LCCOMB_X29_Y23_N16
\InstanciacaoContDisp|o_DISPLAY_2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_2[0]~feeder_combout\ = \InstanciacaoMaqEstd|o_DISPLAY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	combout => \InstanciacaoContDisp|o_DISPLAY_2[0]~feeder_combout\);

-- Location: FF_X29_Y23_N17
\InstanciacaoContDisp|o_DISPLAY_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_2[0]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(0));

-- Location: LCCOMB_X29_Y23_N2
\InstanciacaoContDisp|o_DISPLAY_2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_2[1]~feeder_combout\ = \InstanciacaoMaqEstd|o_DISPLAY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	combout => \InstanciacaoContDisp|o_DISPLAY_2[1]~feeder_combout\);

-- Location: FF_X29_Y23_N3
\InstanciacaoContDisp|o_DISPLAY_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_2[1]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(1));

-- Location: LCCOMB_X29_Y23_N24
\InstanciacaoContDisp|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|Equal1~0_combout\ = (!\InstanciacaoMaqEstd|o_DISPLAY\(1) & \InstanciacaoMaqEstd|o_DISPLAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|Equal1~0_combout\);

-- Location: FF_X29_Y23_N25
\InstanciacaoContDisp|o_DISPLAY_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|Equal1~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(2));

-- Location: LCCOMB_X28_Y23_N2
\InstanciacaoContDisp|o_DISPLAY_2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_2[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_2[4]~feeder_combout\);

-- Location: FF_X28_Y23_N3
\InstanciacaoContDisp|o_DISPLAY_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_2[4]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(4));

-- Location: LCCOMB_X28_Y23_N28
\InstanciacaoContDisp|o_DISPLAY_2[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_2[5]~1_combout\ = !\InstanciacaoContDisp|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContDisp|Equal1~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_2[5]~1_combout\);

-- Location: FF_X28_Y23_N29
\InstanciacaoContDisp|o_DISPLAY_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_2[5]~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(5));

-- Location: LCCOMB_X28_Y23_N22
\InstanciacaoContDisp|o_DISPLAY_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_2~0_combout\ = \InstanciacaoMaqEstd|o_DISPLAY\(1) $ (\InstanciacaoMaqEstd|o_DISPLAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|o_DISPLAY_2~0_combout\);

-- Location: FF_X28_Y23_N7
\InstanciacaoContDisp|o_DISPLAY_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \InstanciacaoContDisp|o_DISPLAY_2~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_2\(6));

-- Location: LCCOMB_X28_Y23_N20
\InstanciacaoContDisp|o_DISPLAY_3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_3[0]~feeder_combout\);

-- Location: FF_X28_Y23_N21
\InstanciacaoContDisp|o_DISPLAY_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[0]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(0));

-- Location: LCCOMB_X28_Y23_N14
\InstanciacaoContDisp|o_DISPLAY_3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_3[1]~feeder_combout\);

-- Location: FF_X28_Y23_N15
\InstanciacaoContDisp|o_DISPLAY_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[1]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(1));

-- Location: LCCOMB_X28_Y23_N4
\InstanciacaoContDisp|o_DISPLAY_3[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[2]~0_combout\ = !\InstanciacaoMaqEstd|o_DISPLAY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	combout => \InstanciacaoContDisp|o_DISPLAY_3[2]~0_combout\);

-- Location: FF_X28_Y23_N5
\InstanciacaoContDisp|o_DISPLAY_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[2]~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(2));

-- Location: LCCOMB_X28_Y23_N26
\InstanciacaoContDisp|o_DISPLAY_3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[3]~feeder_combout\ = \InstanciacaoContDisp|o_DISPLAY_2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoContDisp|o_DISPLAY_2~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_3[3]~feeder_combout\);

-- Location: FF_X28_Y23_N27
\InstanciacaoContDisp|o_DISPLAY_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[3]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(3));

-- Location: LCCOMB_X28_Y23_N24
\InstanciacaoContDisp|o_DISPLAY_3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_3[4]~feeder_combout\);

-- Location: FF_X28_Y23_N25
\InstanciacaoContDisp|o_DISPLAY_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[4]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(4));

-- Location: LCCOMB_X28_Y23_N10
\InstanciacaoContDisp|o_DISPLAY_3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_3[5]~feeder_combout\);

-- Location: FF_X28_Y23_N11
\InstanciacaoContDisp|o_DISPLAY_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[5]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(5));

-- Location: LCCOMB_X28_Y23_N0
\InstanciacaoContDisp|o_DISPLAY_3[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_3[6]~1_combout\ = !\InstanciacaoMaqEstd|o_DISPLAY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|o_DISPLAY_3[6]~1_combout\);

-- Location: FF_X28_Y23_N1
\InstanciacaoContDisp|o_DISPLAY_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_3[6]~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_3\(6));

-- Location: FF_X28_Y23_N23
\InstanciacaoContDisp|o_DISPLAY_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(0));

-- Location: LCCOMB_X28_Y23_N16
\InstanciacaoContDisp|o_DISPLAY_4[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \InstanciacaoContDisp|o_DISPLAY_4[1]~feeder_combout\);

-- Location: FF_X28_Y23_N17
\InstanciacaoContDisp|o_DISPLAY_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4[1]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(1));

-- Location: LCCOMB_X29_Y23_N26
\InstanciacaoContDisp|o_DISPLAY_4[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4[2]~feeder_combout\ = \InstanciacaoContDisp|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContDisp|Equal1~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_4[2]~feeder_combout\);

-- Location: FF_X29_Y23_N27
\InstanciacaoContDisp|o_DISPLAY_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4[2]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(2));

-- Location: LCCOMB_X28_Y23_N30
\InstanciacaoContDisp|o_DISPLAY_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4~0_combout\ = (\InstanciacaoMaqEstd|o_DISPLAY\(0)) # (!\InstanciacaoMaqEstd|o_DISPLAY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InstanciacaoMaqEstd|o_DISPLAY\(1),
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|o_DISPLAY_4~0_combout\);

-- Location: FF_X28_Y23_N31
\InstanciacaoContDisp|o_DISPLAY_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(3));

-- Location: LCCOMB_X29_Y23_N28
\InstanciacaoContDisp|o_DISPLAY_4[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4[4]~feeder_combout\ = \InstanciacaoContDisp|o_DISPLAY_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContDisp|o_DISPLAY_1~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_4[4]~feeder_combout\);

-- Location: FF_X29_Y23_N29
\InstanciacaoContDisp|o_DISPLAY_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4[4]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(4));

-- Location: LCCOMB_X28_Y23_N8
\InstanciacaoContDisp|o_DISPLAY_4[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4[5]~2_combout\ = !\InstanciacaoContDisp|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoContDisp|Equal1~0_combout\,
	combout => \InstanciacaoContDisp|o_DISPLAY_4[5]~2_combout\);

-- Location: FF_X28_Y23_N9
\InstanciacaoContDisp|o_DISPLAY_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4[5]~2_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(5));

-- Location: LCCOMB_X29_Y23_N14
\InstanciacaoContDisp|o_DISPLAY_4[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InstanciacaoContDisp|o_DISPLAY_4[6]~feeder_combout\ = \InstanciacaoMaqEstd|o_DISPLAY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InstanciacaoMaqEstd|o_DISPLAY\(0),
	combout => \InstanciacaoContDisp|o_DISPLAY_4[6]~feeder_combout\);

-- Location: FF_X29_Y23_N15
\InstanciacaoContDisp|o_DISPLAY_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \InstanciacaoContDisp|o_DISPLAY_4[6]~feeder_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \InstanciacaoMaqEstd|o_EN_DISPLAY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InstanciacaoContDisp|o_DISPLAY_4\(6));

ww_o_Valvulas(0) <= \o_Valvulas[0]~output_o\;

ww_o_Valvulas(1) <= \o_Valvulas[1]~output_o\;

ww_o_Valvulas(2) <= \o_Valvulas[2]~output_o\;

ww_o_Valvulas(3) <= \o_Valvulas[3]~output_o\;

ww_o_Valvulas(4) <= \o_Valvulas[4]~output_o\;

ww_o_SensorTempert <= \o_SensorTempert~output_o\;

ww_o_SensorNivel <= \o_SensorNivel~output_o\;

ww_o_Display1(0) <= \o_Display1[0]~output_o\;

ww_o_Display1(1) <= \o_Display1[1]~output_o\;

ww_o_Display1(2) <= \o_Display1[2]~output_o\;

ww_o_Display1(3) <= \o_Display1[3]~output_o\;

ww_o_Display1(4) <= \o_Display1[4]~output_o\;

ww_o_Display1(5) <= \o_Display1[5]~output_o\;

ww_o_Display1(6) <= \o_Display1[6]~output_o\;

ww_o_Display1(7) <= \o_Display1[7]~output_o\;

ww_o_Display2(0) <= \o_Display2[0]~output_o\;

ww_o_Display2(1) <= \o_Display2[1]~output_o\;

ww_o_Display2(2) <= \o_Display2[2]~output_o\;

ww_o_Display2(3) <= \o_Display2[3]~output_o\;

ww_o_Display2(4) <= \o_Display2[4]~output_o\;

ww_o_Display2(5) <= \o_Display2[5]~output_o\;

ww_o_Display2(6) <= \o_Display2[6]~output_o\;

ww_o_Display2(7) <= \o_Display2[7]~output_o\;

ww_o_Display3(0) <= \o_Display3[0]~output_o\;

ww_o_Display3(1) <= \o_Display3[1]~output_o\;

ww_o_Display3(2) <= \o_Display3[2]~output_o\;

ww_o_Display3(3) <= \o_Display3[3]~output_o\;

ww_o_Display3(4) <= \o_Display3[4]~output_o\;

ww_o_Display3(5) <= \o_Display3[5]~output_o\;

ww_o_Display3(6) <= \o_Display3[6]~output_o\;

ww_o_Display3(7) <= \o_Display3[7]~output_o\;

ww_o_Display4(0) <= \o_Display4[0]~output_o\;

ww_o_Display4(1) <= \o_Display4[1]~output_o\;

ww_o_Display4(2) <= \o_Display4[2]~output_o\;

ww_o_Display4(3) <= \o_Display4[3]~output_o\;

ww_o_Display4(4) <= \o_Display4[4]~output_o\;

ww_o_Display4(5) <= \o_Display4[5]~output_o\;

ww_o_Display4(6) <= \o_Display4[6]~output_o\;

ww_o_Display4(7) <= \o_Display4[7]~output_o\;

ww_o_Interface(0) <= \o_Interface[0]~output_o\;

ww_o_Interface(1) <= \o_Interface[1]~output_o\;

ww_o_Interface(2) <= \o_Interface[2]~output_o\;
END structure;


