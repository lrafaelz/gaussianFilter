library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- -- Definindo matriz 3x3

entity gaussianFilter is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        in_0   : in std_logic_vector(7 downto 0);
        in_1   : in std_logic_vector(7 downto 0);
        in_2   : in std_logic_vector(7 downto 0);
        in_3   : in std_logic_vector(7 downto 0);
        in_4   : in std_logic_vector(7 downto 0);
        in_5   : in std_logic_vector(7 downto 0);
        in_6   : in std_logic_vector(7 downto 0);
        in_7   : in std_logic_vector(7 downto 0);
        in_8   : in std_logic_vector(7 downto 0);
        out_val : out std_logic_vector(15 downto 0)
        );
        end entity gaussianFilter;
        
        
        architecture behavioral of gaussianFilter is
            signal out_val_reg          : std_logic_vector(15 downto 0);
            signal partial_product_0    : std_logic_vector(15 downto 0);
            signal partial_product_1    : std_logic_vector(15 downto 0);
            signal partial_product_2    : std_logic_vector(15 downto 0);
            signal partial_product_3    : std_logic_vector(15 downto 0);
            signal partial_product_4    : std_logic_vector(15 downto 0);
            signal partial_product_5    : std_logic_vector(15 downto 0);
            signal partial_product_6    : std_logic_vector(15 downto 0);
            signal partial_product_7    : std_logic_vector(15 downto 0);
            signal partial_product_8    : std_logic_vector(15 downto 0);
            signal partial_sum          : std_logic_vector(15 downto 0);
            begin
        process(clk, rst)
        begin
            if rst = '1' then
                partial_sum <= (others => '0');
                out_val_reg <= (others => '0');
            elsif rising_edge(clk) then
                partial_product_0 <= std_logic_vector(unsigned(in_0) * 15);
                partial_product_1 <= std_logic_vector(unsigned(in_1) * 19);
                partial_product_2 <= std_logic_vector(unsigned(in_2) * 15);
                partial_product_3 <= std_logic_vector(unsigned(in_3) * 19);
                partial_product_4 <= std_logic_vector(unsigned(in_4) * 24);
                partial_product_5 <= std_logic_vector(unsigned(in_5) * 19);
                partial_product_6 <= std_logic_vector(unsigned(in_6) * 15);
                partial_product_7 <= std_logic_vector(unsigned(in_7) * 19);
                partial_product_8 <= std_logic_vector(unsigned(in_8) * 15);
                partial_sum <= std_logic_vector(unsigned(partial_product_0) + unsigned(partial_product_1) + unsigned(partial_product_2) + unsigned(partial_product_3) + unsigned(partial_product_4) + unsigned(partial_product_5) + unsigned(partial_product_6) + unsigned(partial_product_7) + unsigned(partial_product_8));
                out_val_reg <= partial_sum;


            end if;
        end process;
        out_val <= out_val_reg;
    end architecture behavioral;
    