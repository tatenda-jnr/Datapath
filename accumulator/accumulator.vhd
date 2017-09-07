--
-- accumulator
--
-- author  : Tatenda Muvhu & Ronewa Ndou
-- version : 16-08-17

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- accumulator entity
entity accumulator is
port(		       CLK : in std_logic;
					load : in std_logic;
					 input : in std_logic_vector(7 downto 0);
				  output : out std_logic_vector(7 downto 0));
end accumulator;


-- behavioral description of accumulator
architecture behavior of accumulator is

	
	begin
	process (CLK)
		begin
			if (CLK'event and CLK='1' and load ='1' ) then
				output <= input;
			end if;
		end process;
end behavior;