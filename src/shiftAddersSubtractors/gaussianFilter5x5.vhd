library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
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
        out_val : out std_logic_vector(15 downto 0)
        );
end entity gaussianFilter5x5;
        
architecture behavioral of gaussianFilter5x5 is
    -- registers
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
    signal out_val_reg          : std_logic_vector(15 downto 0);
    -- adders
    signal adder_1              : std_logic_vector(15 downto 0);
    signal adder_2              : std_logic_vector(15 downto 0);
    signal adder_3              : std_logic_vector(15 downto 0);
    signal adder_4              : std_logic_vector(15 downto 0);
    signal adder_5              : std_logic_vector(15 downto 0);
    signal adder_6              : std_logic_vector(15 downto 0);
    signal adder_7              : std_logic_vector(15 downto 0);
    signal adder_8              : std_logic_vector(15 downto 0);
    signal adder_9              : std_logic_vector(15 downto 0);
    signal adder_10             : std_logic_vector(15 downto 0);
    signal adder_11             : std_logic_vector(15 downto 0);
    signal adder_12             : std_logic_vector(15 downto 0);
    signal adder_13             : std_logic_vector(15 downto 0);
    signal adder_14             : std_logic_vector(15 downto 0);
    signal adder_15             : std_logic_vector(15 downto 0);
    signal adder_16             : std_logic_vector(15 downto 0);
    signal adder_17             : std_logic_vector(15 downto 0);
    signal adder_18             : std_logic_vector(15 downto 0);
    signal adder_19             : std_logic_vector(15 downto 0);
    signal adder_20             : std_logic_vector(15 downto 0);
    signal adder_21             : std_logic_vector(15 downto 0);
    signal adder_22             : std_logic_vector(15 downto 0);
    signal adder_23             : std_logic_vector(15 downto 0);
    signal adder_24             : std_logic_vector(15 downto 0);
    signal adder_25             : std_logic_vector(15 downto 0);
    signal adder_26             : std_logic_vector(15 downto 0);
    signal adder_27             : std_logic_vector(15 downto 0);
    signal adder_28             : std_logic_vector(15 downto 0);
    signal adder_29             : std_logic_vector(15 downto 0);
    signal adder_30             : std_logic_vector(15 downto 0);
    -- subtractors
    signal sub_1                : std_logic_vector(15 downto 0);
    -- shift left logical
    signal sll_0                : std_logic_vector(15 downto 0);
    signal sll_1                : std_logic_vector(15 downto 0);
    signal sll_2                : std_logic_vector(15 downto 0);
    signal sll_3                : std_logic_vector(15 downto 0);
    -- shift right logical
    signal srl_0                : std_logic_vector(15 downto 0);
    signal srl_1                : std_logic_vector(15 downto 0);
    signal srl_2                : std_logic_vector(15 downto 0);
    signal srl_3                : std_logic_vector(15 downto 0);

    begin
        process(clk, rst)
        begin
            if rst = '1' then
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
                out_val_reg <= (others => '0');
            elsif rising_edge(clk) then
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
                out_val_reg <= adder_30;
            end if;
        end process;

        -- Line 1
        adder_1 <= in17_reg + in18_reg;
        adder_2 <= in19_reg + in20_reg;
        adder_3 <= in13_reg + in14_reg;
        adder_4 <= in15_reg + in16_reg;
        adder_5 <= in9_reg + in10_reg;
        adder_6 <= in11_reg + in12_reg;
        adder_7 <= in0_reg + in1_reg;
        adder_8 <= in2_reg + in3_reg;
        adder_9 <= in4_reg + in5_reg;
        adder_10 <= in6_reg + in7_reg;
        adder_11 <= in21_reg + in22_reg;
        adder_12 <= in23_reg + in24_reg;
        --

        -- Line 2
        adder_13 <= adder_1 + adder_2;
        adder_14 <= adder_3 + adder_4;
        adder_15 <= adder_5 + adder_6;
        adder_16 <= adder_7 + adder_8;
        adder_17 <= adder_9 + adder_10;
        adder_18 <= adder_11 + adder_12;
        --

        -- Line 3
        adder_19 <= adder_13 + adder_14;
        adder_20 <= adder_15 + adder_16;
        adder_21 <= adder_16 + adder_17;
        adder_22 <= adder_15 + adder_17;
        --

        sll_0 <= to_stdlogicvector(to_bitvector(in8_reg) sll 4);
        sub_1 <= sll_0 - in8_reg;

        sll_1 <= to_stdlogicvector(to_bitvector(adder_18) sll 1);

        -- Line 4
        adder_23 <= adder_19 + adder_20;
        sll_2 <= to_stdlogicvector(to_bitvector(adder_22) sll 3);
        sll_3 <= to_stdlogicvector(to_bitvector(adder_23) sll 2);

        adder_24 <= adder_21 + sll_1;

        adder_25 <= sll_3 + sll_2;

        adder_26 <= adder_24 + sub_1;
        --

        -- Line 5
        adder_27 <= adder_25 + adder_26;

        srl_0 <= to_stdlogicvector(to_bitvector(adder_27) srl 8);
        srl_1 <= to_stdlogicvector(to_bitvector(adder_27) srl 9);
        adder_28 <= srl_0 + srl_1;
        srl_2 <= to_stdlogicvector(to_bitvector(adder_27) srl 12);
        srl_3 <= to_stdlogicvector(to_bitvector(adder_27) srl 13);
        adder_29 <= srl_2 + srl_3;
        adder_30 <= adder_28 + adder_29;

        
        out_val <= out_val_reg;

            
end architecture behavioral;




