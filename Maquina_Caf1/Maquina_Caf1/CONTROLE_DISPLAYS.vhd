library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

ENTITY CONTROLE_DISPLAYS IS
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
END CONTROLE_DISPLAYS;

ARCHITECTURE behavioral OF CONTROLE_DISPLAYS IS
	

BEGIN
	
ABC: Process (i_CLK, i_RST)
	begin 
		if(i_RST = '0') then
			o_DISPLAY_1 <= "1111111";
			o_DISPLAY_2 <= "1111111";
			o_DISPLAY_3 <= "1111111";
			o_DISPLAY_4 <= "1111111";
		elsif rising_edge(i_CLK) then
			if(i_EN = '1') then
				if(i_DISPLAYS = "00") then				
					o_DISPLAY_1 <= "0000111";
					o_DISPLAY_2 <= "1001111";
					o_DISPLAY_3 <= "0001000";
					o_DISPLAY_4 <= "1010101";
				elsif(i_DISPLAYS = "01") then
					o_DISPLAY_1 <= "0000100";
					o_DISPLAY_2 <= "0101011";
					o_DISPLAY_3 <= "1000000"; 
					o_DISPLAY_4 <= "0100001";				
				elsif(i_DISPLAYS = "10") then
					o_DISPLAY_1 <= "1000000";
					o_DISPLAY_2 <= "0001100";
					o_DISPLAY_3 <= "0000100";
					o_DISPLAY_4 <= "1001100";					
				elsif(i_DISPLAYS = "11") then
					o_DISPLAY_1 <= "1000000";
					o_DISPLAY_2 <= "1001100";
					o_DISPLAY_3 <= "1001100";
					o_DISPLAY_4 <= "0000100";	
				end if;
			end if;
		end if;
	end process ABC;
	
END behavioral;