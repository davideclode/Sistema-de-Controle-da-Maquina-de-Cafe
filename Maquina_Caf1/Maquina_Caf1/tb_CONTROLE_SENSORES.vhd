library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY tb_CONTROLE_SENSORES IS
END tb_CONTROLE_SENSORES;

architecture behavioral of tb_CONTROLE_SENSORES is
	
	component CONTROLE_SENSORES IS
	PORT(

		i_SensorTempert 	: IN STD_LOGIC;
		i_SensorNivel 	: IN STD_LOGIC;
		
		o_SensorTempert 	: OUT STD_LOGIC;
		o_SensorNivel	: OUT STD_LOGIC;
		o_EN_Maquina: OUT STD_LOGIC
	);
	end component;
	
	signal w_iSensorTempert : std_logic;
	signal w_iSensorNivel   : std_logic;
	signal w_oSensorTempert : std_logic;
	signal w_oSensorNivel   : std_logic;
	signal w_EN_Maquina     : std_logic;
	
begin
	
	UUT1 : CONTROLE_SENSORES
	PORT Map(

		i_SensorTempert => w_iSensorTempert,
		i_SensorNivel 	 => w_iSensorNivel,
		o_SensorTempert => w_oSensorTempert,
		o_SensorNivel	 => w_oSensorNivel,
		o_EN_Maquina   => w_EN_Maquina
	);
	
	ST: process
	begin
		w_iSensorTempert <= '0';
		wait for 50 ns;
		w_iSensorTempert <= '1';
		wait;
	end process ST;
	
	SN: process
	begin
		w_iSensorNivel <= '0';
		wait for 20 ns;
		w_iSensorNivel <= '1';
		wait for 50 ns;
		w_iSensorNivel <= '1';
		wait for 20 ns;
		w_iSensorNivel <= '0';
		wait;
	end process SN;
	
end behavioral;
