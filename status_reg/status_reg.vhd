-- status bit register
--
-- author  : Tatenda Muvhu & Ronewa Ndou
-- version : 16-08-17

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- status bit register entity
entity status_reg is  
port ( CLK : in std_logic; 
			N : out std_logic;
			C : out std_logic;
			Z  : out std_logic;
			in_N :  in std_logic;
			in_Z :  in std_logic;
			in_C :   in std_logic);  
end status_reg;  

-- behavioural description of status bit register
architecture behavioural of status_reg is  
  begin  
   process (CLK)  
    begin  
    
	if (CLK'event and CLK='1' ) then  
			N <= in_N;
			Z <= in_Z;
			C <= in_C;
    end if; 
  end process;  
 end behavioural; 