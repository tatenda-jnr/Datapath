--
-- 4 way multiplexer 
--
-- author  : Tatenda Muvhu & Ronewa Ndou
-- version : 16-08-17

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4 way Multiplexer entitiy
entity mux41 is
    Port ( SEL      : in  STD_LOGIC_VECTOR (1 downto 0);    -- select line 
           A        : in  STD_LOGIC_VECTOR (7 downto 0);    -- 4 inputs a to d
           B        : in  STD_LOGIC_VECTOR (7 downto 0);  
           C   	  : in  STD_LOGIC_VECTOR (7 downto 0);  
           D   	  : in  STD_LOGIC_VECTOR (7 downto 0);  
           output   : out STD_LOGIC_VECTOR (7 downto 0)); 	-- output                 
end mux41;

 -- behavioral description of the 4 way Multiplexer
architecture behavioral of mux41 is
begin
with SEL select
    output <= A when "00",   -- 
				  B when "01",
				  C when "10",
				  D when "11",
				  "00000000"  when others;
end behavioral;