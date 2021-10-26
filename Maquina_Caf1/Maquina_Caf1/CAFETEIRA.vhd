
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CAFETEIRA IS
	PORT(
		
		i_CLK					: IN STD_LOGIC;
		i_RST					: IN STD_LOGIC;
	
		i_BOTAO_Preparo 		: IN STD_LOGIC;
		i_BOTAO_Reposicao 	: IN STD_LOGIC;
		i_BOTAO_Cafe 			: IN STD_LOGIC;
		i_BOTAO_CLeite 		: IN STD_LOGIC;
		i_BOTAO_Mocha 			: IN STD_LOGIC;
		i_BOTAO_Acucar 		: IN STD_LOGIC;
		i_BOTAO_Tamanho 		: IN STD_LOGIC;
		i_SensorTempert 		: IN STD_LOGIC;
		i_SensorNivel			: IN STD_LOGIC;
		
		o_Valvulas		 	: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		o_SensorTempert			: OUT STD_LOGIC;
		o_SensorNivel			: OUT STD_LOGIC;
		o_Display1			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_Display2			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_Display3			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_Display4			: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_Interface 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	
	);
END CAFETEIRA;

ARCHITECTURE behavioral OF CAFETEIRA IS

	COMPONENT CONTROLE_PEDIDO IS
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
	END COMPONENT;
	
	COMPONENT MAQUINA_ESTADOS IS
	PORT(
		
		i_RST 				: in STD_LOGIC;
		i_CLK 				: in STD_LOGIC;
	
		i_BOTAO_REPOSICAO 	: in STD_LOGIC;
		i_BOTAO_PREPARO 		: in STD_LOGIC;
		i_PEDIDO 			: in STD_LOGIC_VECTOR(4 DOWNTO 0); --4tamanho, 3açucar, 2mocha, 1cleite, 0cafe
		i_VALIDADE			: in STD_LOGIC;
		i_CONTAGEM_PO		: in STD_LOGIC;
		i_EN_SENSORES		: in STD_LOGIC;
		
		o_VALVULAS			: out STD_LOGIC_VECTOR(4 DOWNTO 0); --4tamanho, 3açucar, 2chocolate, 1leite, 0cafe
		o_EN_CONTAGEM		: out STD_LOGIC_VECTOR(4 DOWNTO 0);
		o_DISPLAY			: out STD_LOGIC_VECTOR(1 DOWNTO 0);	--decidir se é 1 ou 2 posições
		o_EN_DISPLAY		: out	STD_LOGIC;
		o_EN_PEDIDO			: out STD_LOGIC; 
		o_RST_PEDIDO		: OUT STD_LOGIC;
		o_RST_CONT			: out STD_LOGIC;
		o_RST_DISPLAY		: out STD_LOGIC
		
		);
	END COMPONENT;
	
	COMPONENT CONTADOR IS
	PORT(
		i_CLK 	: IN STD_LOGIC;
		i_RST 	: IN STD_LOGIC;
		
		i_EN 		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		o_DONE 	: OUT STD_LOGIC
		
	);
	END COMPONENT;
	
	COMPONENT CONTROLE_DISPLAYS IS
	PORT(
	
		i_RST 		: IN STD_LOGIC;
		i_CLK			: IN STD_LOGIC;
		i_EN			: IN STD_LOGIC;
		i_DISPLAYS	: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		
		o_DISPLAY_1	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_DISPLAY_2	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_DISPLAY_3	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		o_DISPLAY_4	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		
		);
	END COMPONENT;
	
	COMPONENT CONTROLE_SENSORES IS
	PORT(

		i_SensorTempert 	: IN STD_LOGIC;
		i_SensorNivel 	: IN STD_LOGIC;
		
		o_SensorTempert 	: OUT STD_LOGIC;
		o_SensorNivel	: OUT STD_LOGIC;
		o_EN_Maquina: OUT STD_LOGIC
		
		);
	END COMPONENT;
	
	signal w_EN_PEDIDO	   : STD_LOGIC;	
	signal w_PEDIDO		   : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal w_VALIDADE		   : STD_LOGIC;
	signal w_DISPLAY		   : STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal w_EN_DISPLAY	   : STD_LOGIC;
	signal w_RST_PEDIDO	   : STD_LOGIC;
	signal w_RST_CONTADOR   : STD_LOGIC;
	signal w_EN_CONTAGEM	   : STD_LOGIC_VECTOR(4 DOWNTO 0);
	signal w_CONTAGEM_PO	   : STD_LOGIC;
	signal w_RST			   : STD_LOGIC;
	signal w_BOTAO_Reposicao: STD_LOGIC;
	signal w_BOTAO_Preparo 	: STD_LOGIC;
	signal w_RST_DISPLAY	   : STD_LOGIC;
	signal w_EN_MAQUINA	   : STD_LOGIC;
	
	
BEGIN

	w_RST <= NOT i_RST;
	w_BOTAO_Preparo <= NOT i_BOTAO_PREPARO;
	w_BOTAO_Reposicao <= NOT i_BOTAO_REPOSICAO;

	InstanciacaoContPedid: CONTROLE_PEDIDO
	PORT MAP (
		
		i_BOTAO_Cafe 		=> i_BOTAO_Cafe,
		i_BOTAO_CLeite 	=> i_BOTAO_CLeite,
		i_BOTAO_Mocha 		=> i_BOTAO_Mocha,
		i_BOTAO_Acucar 	=> i_BOTAO_Acucar,
		i_BOTAO_Tamanho 	=> i_BOTAO_Tamanho,
		
		i_RST 			=> w_RST OR w_RST_PEDIDO,
		i_CLK				=> i_CLK,
		i_EN				=> w_EN_PEDIDO,
		
		o_PEDIDO 		=> w_PEDIDO,
		o_VALIDADE		=> w_VALIDADE,
		o_INTERFACE		=> o_Interface
	);
	
	InstanciacaoMaqEstd: maquina_estados
	PORT MAP (
		
		i_RST 				=> w_RST,
		i_CLK 				=> i_CLK,
	
		i_BOTAO_REPOSICAO 	=> w_BOTAO_Reposicao,
		i_BOTAO_PREPARO 		=> w_BOTAO_Preparo,
		i_PEDIDO 			=> w_PEDIDO,
		i_VALIDADE			=> w_VALIDADE,
		i_CONTAGEM_PO		=> w_CONTAGEM_PO,
		i_EN_SENSORES		=> w_EN_MAQUINA,
		
		o_VALVULAS			=> o_Valvulas,
		o_EN_CONTAGEM		=> w_EN_CONTAGEM,
		o_DISPLAY			=> w_DISPLAY,
		o_EN_DISPLAY		=> w_EN_DISPLAY,
		o_EN_PEDIDO			=> w_EN_PEDIDO,
		o_RST_PEDIDO		=> w_RST_PEDIDO,
		o_RST_CONT			=> w_RST_CONTADOR,
		o_RST_DISPLAY  	=>	w_RST_DISPLAY
	
	);
	
	InstanciacaoContad: CONTADOR
	PORT MAP (
		
		i_CLK 	=> i_CLK,
		i_RST 	=> w_RST OR w_RST_CONTADOR,
		
		i_EN 		=> w_EN_CONTAGEM,
		o_DONE 	=> w_CONTAGEM_PO
	
	);
	
	
	InstanciacaoContDisp: CONTROLE_DISPLAYS
	PORT MAP ( 
		
		i_RST 		=> w_RST OR w_RST_DISPLAY,
		i_CLK			=> i_CLK,
		i_EN			=> w_EN_DISPLAY,
		i_DISPLAYS	=> w_DISPLAY,
		
		o_DISPLAY_1	=> o_Display1,
		o_DISPLAY_2	=> o_Display2,
		o_DISPLAY_3	=> o_Display3,
		o_DISPLAY_4	=> o_Display4
		
	);
	
	InstancicaoContSensor: CONTROLE_SENSORES
	PORT MAP ( 
		
		i_SensorTempert 	=> i_SensorTempert,
		i_SensorNivel 	=> i_SensorNivel,
		
		o_SensorTempert 	=> o_SensorTempert,
		o_SensorNivel	=> o_SensorNivel,
		o_EN_Maquina=> w_EN_MAQUINA
		
	);
	
END behavioral;