library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



-- -- Definindo matriz 3x3

entity gaussianFilter3x3 is
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
        end entity gaussianFilter3x3;
        
        
        architecture behavioral of gaussianFilter3x3 is
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
            -- input registers
            signal in_0_reg             : std_logic_vector(7 downto 0);
            signal in_1_reg             : std_logic_vector(7 downto 0);
            signal in_2_reg             : std_logic_vector(7 downto 0);
            signal in_3_reg             : std_logic_vector(7 downto 0);
            signal in_4_reg             : std_logic_vector(7 downto 0);
            signal in_5_reg             : std_logic_vector(7 downto 0);
            signal in_6_reg             : std_logic_vector(7 downto 0);
            signal in_7_reg             : std_logic_vector(7 downto 0);
            signal in_8_reg             : std_logic_vector(7 downto 0);
            
            begin
            process(clk, rst)
            begin
                if rst = '1' then
                    partial_sum <= (others => '0');
                    out_val_reg <= (others => '0');
                    in_0_reg <= (others => '0');
                    in_1_reg <= (others => '0');
                    in_2_reg <= (others => '0');
                    in_3_reg <= (others => '0');
                    in_4_reg <= (others => '0');
                    in_5_reg <= (others => '0');
                    in_6_reg <= (others => '0');
                    in_7_reg <= (others => '0');
                    in_8_reg <= (others => '0');

                elsif rising_edge(clk) then
                    -- INPUT REGISTERS
                    in_0_reg <= in_0;
                    in_1_reg <= in_1;
                    in_2_reg <= in_2;
                    in_3_reg <= in_3;
                    in_4_reg <= in_4;
                    in_5_reg <= in_5;
                    in_6_reg <= in_6;
                    in_7_reg <= in_7;
                    in_8_reg <= in_8;

                    -- SUM
                    out_val_reg <= std_logic_vector(unsigned(partial_product_0) + unsigned(partial_product_1) + unsigned(partial_product_2) + unsigned(partial_product_3) + unsigned(partial_product_4) + unsigned(partial_product_5) + unsigned(partial_product_6) + unsigned(partial_product_7) + unsigned(partial_product_8));

                end if;
            end process;
            partial_product_0 <= std_logic_vector(unsigned(in_0_reg) * 15);
            partial_product_1 <= std_logic_vector(unsigned(in_1_reg) * 19);
            partial_product_2 <= std_logic_vector(unsigned(in_2_reg) * 15);
            partial_product_3 <= std_logic_vector(unsigned(in_3_reg) * 19);
            partial_product_4 <= std_logic_vector(unsigned(in_4_reg) * 24);
            partial_product_5 <= std_logic_vector(unsigned(in_5_reg) * 19);
            partial_product_6 <= std_logic_vector(unsigned(in_6_reg) * 15);
            partial_product_7 <= std_logic_vector(unsigned(in_7_reg) * 19); 
            partial_product_8 <= std_logic_vector(unsigned(in_8_reg) * 15);
            out_val <= out_val_reg;
    end architecture behavioral;
    