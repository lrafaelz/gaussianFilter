library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity text_read is
    port(address : in std_logic_vector(3 downto 0);
        dataout : out std_logic_vector(3 downto 0));
    end entity;
    architecture bev of text_read is
        type mem is array (15 downto 0) of std_logic_vector(3 downto 0);
        signal t_mem : mem;
        begin
            process(address)
                FILE f : TEXT;
                constant filename : string :="output.txt";
                VARIABLE L : LINE;
                variable i : integer:=0;
                variable b : std_logic_vector(3 downto 0);
                begin
                    
                    File_Open (f,FILENAME, read_mode);	
			while ((i<=15) and (not EndFile (f))) loop
			readline (f, l);
			next when l(1) = '#'; 
			read(l, b);
			t_mem(i) <= b;
			i := i + 1;
		end loop;
		File_Close (f);                    
                dataout<=t_mem(conv_integer(address));
            end process;
        end bev;