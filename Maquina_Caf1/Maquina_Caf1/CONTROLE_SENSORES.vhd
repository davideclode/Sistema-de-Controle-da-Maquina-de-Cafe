library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CONTROLE_SENSORES IS
	PORT(

		i_SensorTempert 	: IN STD_LOGIC;
		i_SensorNivel 	: IN STD_LOGIC;
		
		o_SensorTempert 	: OUT STD_LOGIC;
		o_SensorNivel	: OUT STD_LOGIC;
		o_EN_Maquina: OUT STD_LOGIC
	);
	
END CONTROLE_SENSORES;

ARCHITECTURE behavioral OF CONTROLE_SENSORES IS
BEGIN

	o_SensorTempert <= i_SensorTempert;
	o_SensorNivel <= i_SensorNivel;
	
	o_EN_Maquina <= NOT i_SensorNivel AND NOT i_SensorTempert;
	
END behavioral;