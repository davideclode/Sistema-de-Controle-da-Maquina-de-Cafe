library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY tb_CONTROLE_PEDIDO IS
END tb_CONTROLE_PEDIDO;

ARCHITECTURE behavioral OF tb_CONTROLE_PEDIDO IS

	component CONTROLE_PEDIDO IS
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
	END component;

	signal w_BOTAO_Cafe 	  : std_logic;
	signal w_BOTAO_CLeite  : std_logic;
	signal w_BOTAO_Mocha   : std_logic;
	signal w_BOTAO_Acucar  : std_logic;
	signal w_BOTAO_Tamanho : std_logic;
	signal w_RST : std_logic;
	signal w_CLK : std_logic;
	signal w_EN	 : std_logic;
	signal w_VALIDADE	 : std_logic;
	signal w_PEDIDO	 : std_logic_vector(4 downto 0);
	signal w_INTERFACE : std_logic_vector(2 downto 0);
	
	
BEGIN
	
	UUT1 : CONTROLE_PEDIDO
	PORT map(
		i_BOTAO_Cafe 	 => w_BOTAO_Cafe,
		i_BOTAO_CLeite  => w_BOTAO_CLeite,
		i_BOTAO_Mocha 	 => w_BOTAO_Mocha,
		i_BOTAO_Acucar  => w_BOTAO_Acucar,
		i_BOTAO_Tamanho => w_BOTAO_Tamanho,
		
		i_RST => w_RST,
		i_CLK	=> w_CLK,
		i_EN	=> w_EN,
		
		o_PEDIDO 	=> w_PEDIDO,
		o_VALIDADE	=> w_VALIDADE,
		o_INTERFACE => w_INTERFACE
	);
	
	clk: process
	begin
		w_clk <= '0';
		wait for 10 ns;
		w_clk <= '1';
		wait for 10 ns;
	end process clk;
	
	rst: process
	begin
		w_rst <= '0';
		wait for 35 ns;
		w_rst <= '1';
		wait;
	end process rst;
	
	input: process
	begin
		w_en <= '1';
		w_BOTAO_Cafe    <= '0';
		w_BOTAO_CLeite  <= '0';
		w_BOTAO_Mocha   <= '0';
		w_BOTAO_Acucar  <= '0';
		w_BOTAO_Tamanho <= '0';
		wait for 5 ns;
		
		w_BOTAO_Cafe    <= '1';
		w_BOTAO_CLeite  <= '0';
		w_BOTAO_Mocha   <= '0';
		w_BOTAO_Acucar  <= '1';
		w_BOTAO_Tamanho <= '0';
		wait for 30 ns;
		
		w_BOTAO_Cafe    <= '1';
		w_BOTAO_CLeite  <= '1';
		w_BOTAO_Mocha   <= '0';
		w_BOTAO_Acucar  <= '0';
		w_BOTAO_Tamanho <= '1';
		wait for 30 ns;
		
		w_BOTAO_Cafe    <= '0';
		w_BOTAO_CLeite  <= '1';
		w_BOTAO_Mocha   <= '0';
		w_BOTAO_Acucar  <= '1';
		w_BOTAO_Tamanho <= '1';
		wait for 30 ns;
		
		w_BOTAO_Cafe    <= '1';
		w_BOTAO_CLeite  <= '1';
		w_BOTAO_Mocha   <= '1';
		w_BOTAO_Acucar  <= '1';
		w_BOTAO_Tamanho <= '1';
		wait for 30 ns;
		
		w_BOTAO_Cafe    <= '0';
		w_BOTAO_CLeite  <= '0';
		w_BOTAO_Mocha   <= '1';
		w_BOTAO_Acucar  <= '1';
		w_BOTAO_Tamanho <= '0';
		wait for 30 ns;
		
	end process input;
	
END behavioral;