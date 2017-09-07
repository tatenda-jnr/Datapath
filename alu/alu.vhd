--
-- ALU 
--
-- author  : Tatenda Muvhu & Ronewa Ndou
-- version : 16-08-17

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
-- alu entity
entity alu is
 Port (  opcode 		: in STD_LOGIC_VECTOR (4 downto 0);
		   in_acc 		: in STD_LOGIC_VECTOR(7 downto 0);        --  accumulator
			inp_b 		: in STD_LOGIC_VECTOR( 7 downto 0 );      --   first input
		   N 				: out STD_LOGIC;									-- status bits 
			C 				: out STD_LOGIC;
			Z 				: out STD_LOGIC;
        out_alu 		: out STD_LOGIC_VECTOR (7 downto 0));   -- output of ALU
end alu;
 
 
-- behavioral description of the alu
architecture behavioral of alu is
		   
			begin		
			process(opcode)
			variable temp 		: STD_LOGIC_VECTOR( 7 downto 0 );
			variable shifting : UNSIGNED( 7 downto 0 );         -- unsigned variable to facilitate shifting
			
			begin	
				case "000" & opcode is
						
					-- ADD OPERATION 
					when   x"1B" =>   ---"11011" => 
						-- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						  
						-- adding input A and input B
						temp := in_acc + inp_b;  
						
						 -- set the N flag 
						 -- N: R7 
						 -- set if MSB of result is one 
						if ( temp(7) = '1') then 		 
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
						-- set the C flag
						if ( (in_acc(7) = '1' and inp_b(7) = '1' ) or ( inp_b(7)='1' and temp(7)='0') or ( temp(7)='0' and in_acc(7) ='1' ) ) then
								C <= '1';
						end if;
						
						
					
					-- BITWISE AND OPERATION 
					when X"14" => ---"10100" =>
						-- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						 -- bitwise and input a and input b
						temp := in_acc and inp_b;
						
						-- set the N flag  
						if ( temp(7) = '1') then 		
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						 
						
					-- CLR OPERATION
					when X"0F" => ---"01111"  =>
					   temp :=  "00000000";
						N  <= '0';
						Z  <= '1';
						C  <= '0';
						
						
					-- CMP OPERATION
					when  X"11" => ---"10001" =>
						--  clear status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp := in_acc - inp_b; 
						
						 -- set the N flag 
						if ( temp(7) = '1') then 		 
							  N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
						-- set the C flag
						if ( (in_acc(7) = '0' and inp_b(7) = '1' ) or ( inp_b(7)='1' and temp(7)='1') or ( temp(7)='1' and in_acc(7) ='0' ) ) then
							C <= '1';
						end if;
						
						-- set output to value of accumulator
						temp := in_acc;
						
						
						
					-- ONE'S COMPLEMENT
					when  X"03" =>      ---"00011"  =>
					   -- clear out the status bits
					   N  <= '0';
						Z  <= '0';
						C  <= '0';
					  
					  -- one's compliment of input
					  temp := not in_acc;
					  
					  -- set the N flag  
					  if ( temp(7) = '1') then 		 
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
						-- set C flag
						C <= '1';
						
						
						
						
					-- DECREMENT 
					when  X"0A" => ---"01010" =>
					   -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
				
					 -- decrement
					  temp := in_acc - 1;
					  
					  -- set the N flag 
					   if ( temp(7) = '1') then 		  
							   N <= '1';
						end if;
					
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
						
						
					-- EOR 
					when  X"18" => ---"11000" =>
						 -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						-- exclusive or 
						temp := in_acc xor inp_b;
						
						-- set the N flag  
						 if ( temp(7) = '1') then 		 
							  N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
					
					-- INCREMENT 
					when  X"0C" => ---"01100" =>
					   -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						-- increment
						temp := in_acc + 1;
						
						-- set the N flag  
						 if ( temp(7) = '1') then 		 
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
						
					-- LOAD OPERATION
					when   X"16" => ---"10110" =>
					 -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						-- load
						temp :=  in_acc;
						
						-- set the N flag  
						if ( temp(7) = '1') then 		 
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
							Z <= '1';
					   end if;
						
					
					-- LOGICAL SHIFT LEFT
					when   X"08" => ---"01000" =>
					-- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp :=  in_acc;
						
						 -- set the C flag 
						 if ( temp(7) = '1') then 		 
							   C <= '1';
						end if;
						
						-- shifting left
						shifting := unsigned(temp) sll 1;
						temp := STD_LOGIC_VECTOR(shifting);
						
							-- set the N flag 
						if ( temp(7) = '1') then 		  
							   N <= '1';
						end if;
						
						 -- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
					
					
					 -- LOGICAL SHIFT RIGHT
					 when  X"04" => ----"00100" =>
					 -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp :=  in_acc;
						
						-- set the C flag 
						 if ( temp(0) = '1') then 		  
							   C <= '1';
						end if;
						
						shifting := unsigned(temp) srl 1;
						temp := STD_LOGIC_VECTOR(shifting);
						
						 -- set the N flag  
						 N <= '0';
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
						
					 
					  -- MOVE 
					  when    X"0E" => ---"01110" =>
					  -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp :=  in_acc;
						
						 -- set the N flag  
						 if ( temp(7) = '1') then 		
							   N <= '1';
						end if;
						
						 -- set the Z flag
						if (temp = "00000000") then  
								 Z <= '1';
					   end if;
					  
					  
					  -- BITWISE OR
					  when   X"1A" => ---"11010" =>
					  -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp :=  in_acc or inp_b;
						
						-- set the N flag 
						 if ( temp(7) = '1') then 		  
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								 Z <= '1';
					   end if;
					  
					  
					  -- STORE ACCUMULATOR
					  when   X"17" => ---"10111" =>
					  -- clear out the status bits
						N  <= '0';
						Z  <= '0';
						C  <= '0';
						
						temp :=  in_acc;
						
						-- set the N flag  
						 if ( temp(7) = '1') then 		 
							   N <= '1';
						end if;
						
						-- set the Z flag
						if (temp = "00000000") then   
								Z <= '1';
					   end if;
						
						
					-- SUBTRACT
					 when   X"10" =>  ---"10000" =>
					  -- clear out the status bits
					   N  <= '0';
						Z  <= '0';
						C  <= '0';
					 
						temp := in_acc - inp_b; 
						
						 -- set the N flag  
						if ( temp(7) = '1') then 		
							   N <= '1';
						end if;
						
						 -- set the Z flag
						if (temp = "00000000") then  
								 Z <= '1';
					   end if;
						
						-- set the C flag
						if ( (in_acc(7) = '0' and inp_b(7) = '1' ) or ( inp_b(7)='1' and temp(7)='1') or ( temp(7)='1' and in_acc(7) ='0' ) ) then
							C <= '1';
						end if;
						
						
					-- ALL OTHER CASES 
					when others =>
						NULL;
				
				end case;
				
				out_alu <= temp;
			end process;

end behavioral;