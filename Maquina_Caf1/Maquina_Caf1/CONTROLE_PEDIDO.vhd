library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CONTROLE_PEDIDO IS
	PORT(
		i_BOTAO_Cafe 	: IN STD_LOGIC;
		i_BOTAO_CLeite : IN STD_LOGIC;
		i_BOTAO_Mocha 	: IN STD_LOGIC;
		i_BOTAO_Acucar : IN STD_LOGIC;
		i_BOTAO_Tamanho: IN STD_LOGIC;
		
		i_RST 		: IN STD_LOGIC;
		i_CLK			: IN STD_LOGIC;
		i_EN			: IN STD_LOGIC;
		
		o_PEDIDO 	: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		o_VALIDADE	: OUT STD_LOGIC;
		o_INTERFACE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END CONTROLE_PEDIDO;

ARCHITECTURE behavioral OF CONTROLE_PEDIDO IS



BEGIN
	
	o_PEDIDO(0) <= i_BOTAO_Cafe;
	o_PEDIDO(1) <= i_BOTAO_CLeite;
	o_PEDIDO(2) <= i_BOTAO_Mocha;
	o_PEDIDO(3) <= i_BOTAO_Acucar;
	o_PEDIDO(4) <= i_BOTAO_Tamanho;
	o_INTERFACE(0) <= i_BOTAO_Cafe;
	o_INTERFACE(1) <= i_BOTAO_CLeite;
	o_INTERFACE(2) <= i_BOTAO_Mocha;
	
validade : Process(i_CLK, i_RST)
	BEGIN
		if(i_RST = '0') then
			o_VALIDADE <= '0';
		elsif rising_edge(i_CLK) then
			if(i_EN = '1') then
				if(i_BOTAO_Cafe = '1' AND i_BOTAO_CLeite = '0' AND i_BOTAO_Mocha = '0') then
					o_VALIDADE <= '1';
				elsif(i_BOTAO_Cafe = '0' AND i_BOTAO_CLeite = '1' AND i_BOTAO_Mocha = '0') then
					o_VALIDADE <= '1';
				elsif(i_BOTAO_Cafe = '0' AND i_BOTAO_CLeite = '0' AND i_BOTAO_Mocha = '1') then 
					o_VALIDADE <= '1';
				else
					o_VALIDADE <= '0';
				END IF;
			END IF;
		END IF;
	END PROCESS;
END behavioral;