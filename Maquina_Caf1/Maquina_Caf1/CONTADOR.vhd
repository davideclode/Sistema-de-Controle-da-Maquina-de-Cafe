library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CONTADOR IS
	GENERIC (
		p_TB : std_logic := '0'
	);
	PORT(
		i_CLK 	: IN STD_LOGIC;
		i_RST 	: IN STD_LOGIC;
		--O QUARTO BIT REFERE-SE A HABILITAÇÃO
		i_EN 		: IN STD_LOGIC_VECTOR(4 DOWNTO 0);			--4 bit - enable, o resto é o valor do tempo em segundos
		o_DONE 	: OUT STD_LOGIC
	);
END CONTADOR;

ARCHITECTURE behavioral OF CONTADOR IS
--------------------------------------------------------
--------------------------------------------------------
	signal w_CONT 			:  STD_LOGIC_VECTOR(25 DOWNTO 0); --26 bits pra contar até 50 milhoes
	signal w_clk_limit 	:  STD_LOGIC_VECTOR(25 DOWNTO 0);
	signal w_CLEAR_CONT 	:  STD_LOGIC;
	signal w_LIMITE		:  STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal w_DONE			:  STD_LOGIC;
--------------------------------------------------------
--------------------------------------------------------
BEGIN
	

RUN:
	if (p_TB = '0') generate --'0' para execucao normal
		w_clk_limit <= "10111110101111000010000000"; --50 000 000 para contar 1 segundo
	end generate;
	
TB:
	if (p_TB = '1') generate --'1' para execucao no testbench
		w_clk_limit <= "00000000000000000000001010"; --10 para contar 1 segundo
	end generate;
	
	--DECLARAÇÃO DO PROCESSO QUE REALIZARÁ A CONTAGEM
	process(i_CLK, i_RST)
	begin	
		IF (i_RST = '0') THEN
				w_CONT <= (OTHERS => '0');
		elsif rising_edge(i_CLK) then	
			if(i_RST = '1') then
				if(i_EN(4) = '1') then 
					if(w_CLEAR_CONT = '1') then
						w_CONT <= (OTHERS => '0');
					else
						w_CONT <= w_CONT + 1; --CONTARÁ PULSOS  DE 20ns
					end if;
				end if;
			end if;
		end if;
	end process;
	
	--DECLARAÇÃO DO PROCESSO QUE CONTROLA CONTAGEM ATÉ ATINGIR 1 SEGUNDO
	
	process(i_CLK, i_RST)
	begin
			if(i_RST = '0') then	
				w_DONE 			<= '0';
				w_CLEAR_CONT 	<= '0';
				w_LIMITE       <= (OTHERS => '0');
				
			elsif rising_edge(i_CLK) then	
				if(i_EN(4) = '1') then
					--i_en(3 downto 0) = w_limite;
					if((i_EN(0) = w_LIMITE(0)) AND (i_EN(1) = w_LIMITE(1)) AND (i_EN(2) = w_LIMITE(2)) AND (i_EN(3) = w_LIMITE(3))) then   --
						w_CLEAR_CONT <= '1';
						w_LIMITE <= (OTHERS => '0');
						w_DONE <= '1';
					elsif(w_CONT = w_clk_limit) then
						w_LIMITE <= w_LIMITE + 1; --conta 1 segundo
						w_CLEAR_CONT 	<= '1';	  --zera o w_CONT
					else
						w_DONE 			<= '0';
						w_CLEAR_CONT 	<= '0';
					end if;
				end if;
			end if;
	end process;
	
	o_DONE <= w_DONE; --ENVIA PARA O DONE
------------------------------------------------------------------

END behavioral;