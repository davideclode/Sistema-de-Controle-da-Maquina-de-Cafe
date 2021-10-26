library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY tb_CONTROLE_DISPLAYS IS
END tb_CONTROLE_DISPLAYS;

architecture behavioral of tb_CONTROLE_DISPLAYS is
	
	component CONTROLE_DISPLAYS IS
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
	end component;
	
	signal w_rst : std_logic;
	signal w_clk : std_logic;
	signal w_en  : std_logic;
	signal w_displays  : std_logic_vector(1 downto 0);
	
	signal w_display_1 : std_logic_vector(6 downto 0);
	signal w_display_2 : std_logic_vector(6 downto 0);
	signal w_display_3 : std_logic_vector(6 downto 0);
	signal w_display_4 : std_logic_vector(6 downto 0);
	
begin

	UUT1 : CONTROLE_DISPLAYS
	PORT map(
		i_RST 		=> w_rst,
		i_CLK			=> w_clk,
		i_EN			=> w_en,
		i_DISPLAYS	=> w_displays,
		
		o_DISPLAY_1	=> w_display_1,
		o_DISPLAY_2	=> w_display_2,
		o_DISPLAY_3	=> w_display_3,
		o_DISPLAY_4	=> w_display_4
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
		wait for 25 ns;
		w_rst <= '1';
		wait;
	end process rst;
	
	en: process
	begin
		w_en <= '1';
		wait;
	end process en;
	
	disp: process
	begin
		w_displays(0) <= '0';
		w_displays(1) <= '0';
		wait for 35 ns;
		
		w_displays(0) <= '0';
		w_displays(1) <= '1';
		wait for 30 ns;
		
		w_displays(0) <= '1';
		w_displays(1) <= '0';
		wait for 30 ns;
		
		w_displays(0) <= '1';
		w_displays(1) <= '1';
		wait for 25 ns;
	end process disp;

end behavioral;