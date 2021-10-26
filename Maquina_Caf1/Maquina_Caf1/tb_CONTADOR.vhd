library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY tb_CONTADOR IS
END tb_CONTADOR;

architecture behavioral of tb_contador is

	component CONTADOR IS
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
	END component;

	signal w_clk : std_logic;
	signal w_rst : std_logic;
	signal w_en  : std_logic_vector(4 DOWNTO 0);
	signal w_done : std_logic;
	
begin

	UUT : CONTADOR
	GENERIC map(
		p_TB => '1'
	)
	PORT map(
			i_CLK  => w_clk,	
			i_RST  => w_rst,
			i_EN 	 => w_en,
			o_DONE => w_done
	);

	CLK: process
	begin
		w_clk <= '0';
		wait for 10 ns;
		w_clk <= '1';
		wait for 10 ns;
	end process CLK;
	
	
	RST: process
	begin
		w_rst <= '0';
		wait for 35 ns;
		w_rst <= '1';
		wait;
	end process RST;
	
	
	EN: process
	begin
		w_en(4) <= '1'; --habilita contagem
		
		--desejo contar 2 segundos
		w_en(3) <= '0';
		w_en(2) <= '0';
		w_en(1) <= '1';
		w_en(0) <= '0';
		wait;
	end process EN;
	
end behavioral;