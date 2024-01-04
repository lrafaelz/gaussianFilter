library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gaussianFilter5x5 is
    port (
        clk     : in std_logic;
        rst     : in std_logic;
        in_0   : in std_logic_vector(15 downto 0);
        in_1   : in std_logic_vector(15 downto 0);
        in_2   : in std_logic_vector(15 downto 0);
        in_3   : in std_logic_vector(15 downto 0);
        in_4   : in std_logic_vector(15 downto 0);
        in_5   : in std_logic_vector(15 downto 0);
        in_6   : in std_logic_vector(15 downto 0);
        in_7   : in std_logic_vector(15 downto 0);
        in_8   : in std_logic_vector(15 downto 0);
        in_9   : in std_logic_vector(15 downto 0);
        in_10   : in std_logic_vector(15 downto 0);
        in_11   : in std_logic_vector(15 downto 0);
        in_12   : in std_logic_vector(15 downto 0);
        in_13   : in std_logic_vector(15 downto 0);
        in_14   : in std_logic_vector(15 downto 0);
        in_15   : in std_logic_vector(15 downto 0);
        in_16   : in std_logic_vector(15 downto 0);
        in_17   : in std_logic_vector(15 downto 0);
        in_18   : in std_logic_vector(15 downto 0);
        in_19   : in std_logic_vector(15 downto 0);
        in_20   : in std_logic_vector(15 downto 0);
        in_21   : in std_logic_vector(15 downto 0);
        in_22   : in std_logic_vector(15 downto 0);
        in_23   : in std_logic_vector(15 downto 0);
        in_24   : in std_logic_vector(15 downto 0);
        out_val : out std_logic_vector(31 downto 0)
        );
        end entity gaussianFilter5x5;
        
        
        architecture behavioral of gaussianFilter5x5 is
            signal out_val_reg          : std_logic_vector(31 downto 0);
            signal partial_product_0    : std_logic_vector(31 downto 0);
            signal partial_product_1    : std_logic_vector(31 downto 0);
            signal partial_product_2    : std_logic_vector(31 downto 0);
            signal partial_product_3    : std_logic_vector(31 downto 0);
            signal partial_product_4    : std_logic_vector(31 downto 0);
            signal partial_product_5    : std_logic_vector(31 downto 0);
            signal partial_product_6    : std_logic_vector(31 downto 0);
            signal partial_product_7    : std_logic_vector(31 downto 0);
            signal partial_product_8    : std_logic_vector(31 downto 0);
            signal partial_product_9    : std_logic_vector(31 downto 0);
            signal partial_product_10   : std_logic_vector(31 downto 0);
            signal partial_product_11   : std_logic_vector(31 downto 0);
            signal partial_product_12   : std_logic_vector(31 downto 0);
            signal partial_product_13   : std_logic_vector(31 downto 0);
            signal partial_product_14   : std_logic_vector(31 downto 0);
            signal partial_product_15   : std_logic_vector(31 downto 0);
            signal partial_product_16   : std_logic_vector(31 downto 0);
            signal partial_product_17   : std_logic_vector(31 downto 0);
            signal partial_product_18   : std_logic_vector(31 downto 0);
            signal partial_product_19   : std_logic_vector(31 downto 0);
            signal partial_product_20   : std_logic_vector(31 downto 0);
            signal partial_product_21   : std_logic_vector(31 downto 0);
            signal partial_product_22   : std_logic_vector(31 downto 0);
            signal partial_product_23   : std_logic_vector(31 downto 0);
            signal partial_product_24   : std_logic_vector(31 downto 0);

            -- input registers
            signal in0_reg              : std_logic_vector(15 downto 0);
            signal in1_reg              : std_logic_vector(15 downto 0);
            signal in2_reg              : std_logic_vector(15 downto 0);
            signal in3_reg              : std_logic_vector(15 downto 0);
            signal in4_reg              : std_logic_vector(15 downto 0);
            signal in5_reg              : std_logic_vector(15 downto 0);
            signal in6_reg              : std_logic_vector(15 downto 0);
            signal in7_reg              : std_logic_vector(15 downto 0);
            signal in8_reg              : std_logic_vector(15 downto 0);
            signal in9_reg              : std_logic_vector(15 downto 0);
            signal in10_reg             : std_logic_vector(15 downto 0);
            signal in11_reg             : std_logic_vector(15 downto 0);
            signal in12_reg             : std_logic_vector(15 downto 0);
            signal in13_reg             : std_logic_vector(15 downto 0);
            signal in14_reg             : std_logic_vector(15 downto 0);
            signal in15_reg             : std_logic_vector(15 downto 0);
            signal in16_reg             : std_logic_vector(15 downto 0);
            signal in17_reg             : std_logic_vector(15 downto 0);
            signal in18_reg             : std_logic_vector(15 downto 0);
            signal in19_reg             : std_logic_vector(15 downto 0);
            signal in20_reg             : std_logic_vector(15 downto 0);
            signal in21_reg             : std_logic_vector(15 downto 0);
            signal in22_reg             : std_logic_vector(15 downto 0);
            signal in23_reg             : std_logic_vector(15 downto 0);
            signal in24_reg             : std_logic_vector(15 downto 0);
            
            begin
            process(clk, rst)
            begin
                if rst = '1' then
                    out_val_reg <= (others => '0');
                    in0_reg <= (others => '0');
                    in1_reg <= (others => '0');
                    in2_reg <= (others => '0');
                    in3_reg <= (others => '0');
                    in4_reg <= (others => '0');
                    in5_reg <= (others => '0');
                    in6_reg <= (others => '0');
                    in7_reg <= (others => '0');
                    in8_reg <= (others => '0');
                    in9_reg <= (others => '0');
                    in10_reg <= (others => '0');
                    in11_reg <= (others => '0');
                    in12_reg <= (others => '0');
                    in13_reg <= (others => '0');
                    in14_reg <= (others => '0');
                    in15_reg <= (others => '0');
                    in16_reg <= (others => '0');
                    in17_reg <= (others => '0');
                    in18_reg <= (others => '0');
                    in19_reg <= (others => '0');
                    in20_reg <= (others => '0');
                    in21_reg <= (others => '0');
                    in22_reg <= (others => '0');
                    in23_reg <= (others => '0');
                    in24_reg <= (others => '0');

                elsif rising_edge(clk) then
                    -- INPUT REGISTERS
                    in0_reg <= in_0;
                    in1_reg <= in_1;
                    in2_reg <= in_2;
                    in3_reg <= in_3;
                    in4_reg <= in_4;
                    in5_reg <= in_5;
                    in6_reg <= in_6;
                    in7_reg <= in_7;
                    in8_reg <= in_8;
                    in9_reg <= in_9;
                    in10_reg <= in_10;
                    in11_reg <= in_11;
                    in12_reg <= in_12;
                    in13_reg <= in_13;
                    in14_reg <= in_14;
                    in15_reg <= in_15;
                    in16_reg <= in_16;
                    in17_reg <= in_17;
                    in18_reg <= in_18;
                    in19_reg <= in_19;
                    in20_reg <= in_20;
                    in21_reg <= in_21;
                    in22_reg <= in_22;
                    in23_reg <= in_23;
                    in24_reg <= in_24;

                    -- SUM
                    out_val_reg <= std_logic_vector(unsigned(partial_product_0) + unsigned(partial_product_1) + unsigned(partial_product_2) + unsigned(partial_product_3) + unsigned(partial_product_4) + unsigned(partial_product_5) + unsigned(partial_product_6) + unsigned(partial_product_7) + unsigned(partial_product_8) + unsigned(partial_product_9) + unsigned(partial_product_10) + unsigned(partial_product_11) + unsigned(partial_product_12) + unsigned(partial_product_13) + unsigned(partial_product_14) + unsigned(partial_product_15) + unsigned(partial_product_16) + unsigned(partial_product_17) + unsigned(partial_product_18) + unsigned(partial_product_19) + unsigned(partial_product_20) + unsigned(partial_product_21) + unsigned(partial_product_22) + unsigned(partial_product_23) + unsigned(partial_product_24));

                end if;
            end process;
            -- (0, 0)
            partial_product_0 <= std_logic_vector(unsigned(in0_reg) * 2);
            partial_product_1 <= std_logic_vector(unsigned(in1_reg) * 4);
            partial_product_2 <= std_logic_vector(unsigned(in2_reg) * 5);
            partial_product_3 <= std_logic_vector(unsigned(in3_reg) * 4);
            partial_product_4 <= std_logic_vector(unsigned(in4_reg) * 2);
            -- (1, 0)
            partial_product_5 <= std_logic_vector(unsigned(in5_reg) * 4);
            partial_product_6 <= std_logic_vector(unsigned(in6_reg) * 9);
            partial_product_7 <= std_logic_vector(unsigned(in7_reg) * 12);
            partial_product_8 <= std_logic_vector(unsigned(in8_reg) * 9);
            partial_product_9 <= std_logic_vector(unsigned(in9_reg) * 4);
            -- (2, 0)
            partial_product_10 <= std_logic_vector(unsigned(in10_reg) * 5);
            partial_product_11 <= std_logic_vector(unsigned(in11_reg) * 12);
            partial_product_12 <= std_logic_vector(unsigned(in12_reg) * 15);
            partial_product_13 <= std_logic_vector(unsigned(in13_reg) * 12);
            partial_product_14 <= std_logic_vector(unsigned(in14_reg) * 5);
            -- (3, 0)
            partial_product_15 <= std_logic_vector(unsigned(in15_reg) * 4);
            partial_product_16 <= std_logic_vector(unsigned(in16_reg) * 9);
            partial_product_17 <= std_logic_vector(unsigned(in17_reg) * 12);
            partial_product_18 <= std_logic_vector(unsigned(in18_reg) * 9);
            partial_product_19 <= std_logic_vector(unsigned(in19_reg) * 4);
            -- (4, 0)
            partial_product_20 <= std_logic_vector(unsigned(in20_reg) * 2);
            partial_product_21 <= std_logic_vector(unsigned(in21_reg) * 4);
            partial_product_22 <= std_logic_vector(unsigned(in22_reg) * 5);
            partial_product_23 <= std_logic_vector(unsigned(in23_reg) * 4);
            partial_product_24 <= std_logic_vector(unsigned(in24_reg) * 2);



            out_val <= out_val_reg;
    end architecture behavioral;
    