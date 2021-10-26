	library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MAQUINA_ESTADOS IS
	PORT(
		
		i_RST 				: in STD_LOGIC;
		i_CLK 				: in STD_LOGIC;
	
		i_BOTAO_REPOSICAO : in STD_LOGIC;
		i_BOTAO_PREPARO 	: in STD_LOGIC;
		i_PEDIDO 			: in STD_LOGIC_VECTOR(4 DOWNTO 0):= (others =>'0'); --4tamanho, 3açucar, 2mocha, 1cleite, 0cafe
		i_VALIDADE			: in STD_LOGIC;
		i_CONTAGEM_PO	   : in STD_LOGIC;
		i_EN_SENSORES		: in STD_LOGIC;
		
		o_VALVULAS			: out STD_LOGIC_VECTOR(4 DOWNTO 0):=(others =>'0'); --4tamanho, 3açucar, 2chocolate, 1leite, 0cafe
		o_EN_CONTAGEM		: out STD_LOGIC_VECTOR(4 DOWNTO 0):=(others =>'0');
		o_DISPLAY			: out STD_LOGIC_VECTOR(1 DOWNTO 0):=(others =>'0');	--decidir se é 1 ou 2 posições
		o_EN_DISPLAY		: out	STD_LOGIC;
		o_EN_PEDIDO			: out STD_LOGIC; 
		o_RST_PEDIDO		: OUT STD_LOGIC;
		o_RST_CONT			: out STD_LOGIC;
		o_RST_DISPLAY		: out STD_LOGIC
		
		
	);
END MAQUINA_ESTADOS;

ARCHITECTURE behavioral OF maquina_estados IS

	type w_State_Type is (st_IDLE, st_escolha_POS, st_AGUARD_CONT_PO, st_colocar_AGUA, st_AGUARD_CONT_AGUA, st_REPOSICAO, st_PRONTO, st_AGUARD_CONT_PRONTO,st_ERRO);  --st__AGUARD_CONT_PO = aguarda contagem de pós
	
		attribute syn_encoding : string;
		attribute syn_encoding of w_State_Type : type is "safe"; --ATENÇÃO: TUDO QUE FOR DECLARADO AQUI, NÃO PODE SER MUDADO

		signal w_STATE 	           :  w_State_Type;
		signal w_porcao_cafe	        : STD_LOGIC_VECTOR(3 DOWNTO 0);
		signal w_porcao_leite	     : STD_LOGIC_VECTOR(3 DOWNTO 0);
		signal w_porcao_chocolate	  : STD_LOGIC_VECTOR(3 DOWNTO 0);
		signal w_porcao_acucar	     : STD_LOGIC_VECTOR(3 DOWNTO 0);
		
BEGIN

	U_MACHINE : PROCESS(i_CLK, i_RST)
	BEGIN	
		if(i_RST = '0') THEN
			o_EN_PEDIDO   <= '1';
			o_EN_DISPLAY  <= '0';
			o_VALVULAS(0) <= '0';
			o_VALVULAS(1) <= '0';
			o_VALVULAS(2) <= '0';
			o_VALVULAS(3) <= '0';
			o_VALVULAS(4) <= '0';
			o_RST_DISPLAY <= '0';
			
		elsif rising_edge(i_CLK) THEN
			if(i_EN_SENSORES = '1') THEN
				CASE w_STATE is
				
					WHEN st_IDLE => 
							o_RST_PEDIDO <= '0';
							o_RST_DISPLAY <= '0';
							if(i_BOTAO_PREPARO = '1') THEN
								if(i_VALIDADE = '1') THEN
									o_EN_PEDIDO <= '0';
									o_EN_DISPLAY <= '0';
									if (w_porcao_acucar < "0010" OR w_porcao_cafe < "0010" OR w_porcao_chocolate < "0010" OR w_porcao_leite < "0010") THEN
										w_STATE <= st_REPOSICAO;
									else
										w_STATE <= st_escolha_POS;
									END IF;
								else
									o_EN_PEDIDO <= '1';
									w_STATE <= st_ERRO;
								END IF;
							END IF;
								
					WHEN st_REPOSICAO =>
							o_DISPLAY <= "10";  -- MOSTRE A REPOSIÇÃO NO DISPLAYp
							o_EN_DISPLAY <= '1';
							if(i_BOTAO_REPOSICAO = '1') THEN
								w_porcao_cafe      <= x"A";
								w_porcao_leite     <= x"A";
								w_porcao_acucar    <= x"A";
								w_porcao_chocolate <= x"A";
								o_EN_PEDIDO        <= '1';
								o_EN_DISPLAY       <= '0';
								o_RST_DISPLAY      <= '1';
								
								w_STATE <= st_IDLE;
							END IF;
					
					WHEN st_escolha_POS => 
							o_DISPLAY     <= "00";
							o_EN_DISPLAY  <= '1';
							o_VALVULAS(3) <= i_PEDIDO(3); --Açucar
							if(i_PEDIDO(3) = '1') THEN
								if(i_PEDIDO(4) = '1') THEN
									w_porcao_acucar <= w_porcao_acucar - "10";
								else
									w_porcao_acucar <= w_porcao_acucar - 1;
								END IF;
							END IF;
							if(i_PEDIDO(0) = '1') THEN
								o_VALVULAS(0) <= '1';
								o_VALVULAS(1) <= '0';
								o_VALVULAS(2) <= '0';
								if(i_PEDIDO(4) = '1') THEN
									w_porcao_cafe <= w_porcao_cafe - "10";
								else
									w_porcao_cafe <= w_porcao_cafe - 1;
								END IF;
							elsif(i_PEDIDO(1) = '1') THEN
								o_VALVULAS(0) <= '1';
								o_VALVULAS(1) <= '1';
								o_VALVULAS(2) <= '0';
								if(i_PEDIDO(4) = '1') THEN
									w_porcao_cafe <= w_porcao_cafe - "10";
									w_porcao_leite <= w_porcao_leite - "10";
								else
									w_porcao_cafe <= w_porcao_cafe - 1;
									w_porcao_leite <= w_porcao_leite - 1;
								END IF;
							elsif(i_PEDIDO(2) = '1') THEN
								o_VALVULAS(0) <= '1';
								o_VALVULAS(1) <= '1';
								o_VALVULAS(2) <= '1';
								if(i_PEDIDO(4) = '1') THEN
									w_porcao_cafe <= w_porcao_cafe - "10";
									w_porcao_leite <= w_porcao_leite - "10";
									w_porcao_chocolate <= w_porcao_chocolate - "10";
								else
									w_porcao_cafe <= w_porcao_cafe - 1;
									w_porcao_leite <= w_porcao_leite - 1;
									w_porcao_chocolate <= w_porcao_chocolate - 1;
								END IF;
								
							END IF;
							o_RST_CONT <= '1';
							if(i_PEDIDO(4) = '1') THEN
								o_EN_CONTAGEM <= "1" & x"2";
							else
								o_EN_CONTAGEM <= "1" & x"1";
							END IF;
							w_STATE <= st_AGUARD_CONT_PO;
							
					WHEN st_AGUARD_CONT_PO => 
					
							o_RST_CONT <= '0';
							if(i_CONTAGEM_PO = '1') THEN
								o_VALVULAS(0) <= '0';
								o_VALVULAS(1) <= '0';
								o_VALVULAS(2) <= '0';
								o_VALVULAS(3) <= '0';
								o_EN_CONTAGEM <= "0" & x"0";
								w_STATE <= st_colocar_AGUA;
							END IF;
							
					WHEN st_colocar_AGUA => 
							o_VALVULAS(4) <= '1';
							if(i_PEDIDO(4) = '1') THEN
								o_EN_CONTAGEM <= "1" & x"A";	-- Concatenation operator--11010 conta 10 segundos
							else
								o_EN_CONTAGEM <= "1" & x"5";  --10101 conta 5 segundos
							END IF;
							o_RST_CONT <= '1';
							w_STATE <= st_AGUARD_CONT_AGUA;
							
					WHEN st_AGUARD_CONT_AGUA => 
							o_RST_CONT <= '0';
							if(i_CONTAGEM_PO = '1') THEN
								o_VALVULAS(4) <= '0';
								o_EN_CONTAGEM <= "0" & x"0";
								w_STATE <= st_PRONTO;
							END IF;
							
					WHEN st_PRONTO =>
							o_DISPLAY <= "01";            
							o_EN_DISPLAY <= '1';          
							o_RST_PEDIDO <= '1';            
							o_EN_CONTAGEM <= "1" & x"5";        --10101 conta 5 segundos
							w_STATE <= st_AGUARD_CONT_PRONTO;  
					
					WHEN st_AGUARD_CONT_PRONTO =>
							if(i_CONTAGEM_PO = '1') THEN
								o_EN_DISPLAY  <= '0';
								o_RST_PEDIDO  <= '1';
								o_EN_PEDIDO   <= '1';
								o_RST_DISPLAY <= '1';
								o_EN_CONTAGEM <= "0" & x"0";
								w_STATE       <= st_IDLE;
							END IF;
							
					WHEN st_ERRO => 
							o_RST_PEDIDO     <= '1';
							o_EN_DISPLAY     <= '1';
							o_DISPLAY        <= "11";
							if(i_BOTAO_PREPARO = '1') THEN
								w_STATE       <= st_AGUARD_CONT_PRONTO;
								o_EN_CONTAGEM <= "1" & x"2";
							END IF;
							
								
					WHEN others => 
							   w_STATE       <= st_IDLE;
				END CASE;
			END IF;		
		END IF;

	END PROCESS U_MACHINE;

END BEHAVIORAL;