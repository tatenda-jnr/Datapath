--
-- 2 way multiplexer 
--
-- author  : Tatenda Muvhu & Ronewa Ndou
-- version : 16-08-17

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 2 way multiplexer entity
entity mux21 is
    Port ( 		SEL : in  STD_LOGIC;    -- select line 
					A   : in  STD_LOGIC_VECTOR (7 downto 0);
					B   : in  STD_LOGIC_VECTOR (7 downto 0);
           output  : out STD_LOGIC_VECTOR (7 downto 0)); -- output
end mux21;

-- behavioral description of the 2 way multiplexer when select line is
-- high, input A is selected
architecture behavior of mux21 is
begin
	output <= A when (SEL = '1') else B;
end behavior;
