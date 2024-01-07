library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity gaussianFilter7x7 is
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
        in_25   : in std_logic_vector(15 downto 0);
        in_26   : in std_logic_vector(15 downto 0);
        in_27   : in std_logic_vector(15 downto 0);
        in_28   : in std_logic_vector(15 downto 0);
        in_29   : in std_logic_vector(15 downto 0);
        in_30   : in std_logic_vector(15 downto 0);
        in_31   : in std_logic_vector(15 downto 0);
        in_32   : in std_logic_vector(15 downto 0);
        in_33   : in std_logic_vector(15 downto 0);
        in_34   : in std_logic_vector(15 downto 0);
        in_35   : in std_logic_vector(15 downto 0);
        in_36   : in std_logic_vector(15 downto 0);
        in_37   : in std_logic_vector(15 downto 0);
        in_38   : in std_logic_vector(15 downto 0);
        in_39   : in std_logic_vector(15 downto 0);
        in_40   : in std_logic_vector(15 downto 0);
        in_41   : in std_logic_vector(15 downto 0);
        in_42   : in std_logic_vector(15 downto 0);
        in_43   : in std_logic_vector(15 downto 0);
        in_44   : in std_logic_vector(15 downto 0);
        in_45   : in std_logic_vector(15 downto 0);
        in_46   : in std_logic_vector(15 downto 0);
        in_47   : in std_logic_vector(15 downto 0);
        in_48   : in std_logic_vector(15 downto 0);
        out_val : out std_logic_vector(15 downto 0)
        );
end entity gaussianFilter7x7;
        
architecture behavioral of gaussianFilter7x7 is
    -- registers
    -- signal in0_reg              : std_logic_vector(15 downto 0); -- = 0
    signal in1_reg              : std_logic_vector(15 downto 0);
    signal in2_reg              : std_logic_vector(15 downto 0);
    signal in3_reg              : std_logic_vector(15 downto 0);
    signal in4_reg              : std_logic_vector(15 downto 0);
    signal in5_reg              : std_logic_vector(15 downto 0);
    -- signal in6_reg              : std_logic_vector(15 downto 0); -- = 0
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
    signal in25_reg             : std_logic_vector(15 downto 0);
    signal in26_reg             : std_logic_vector(15 downto 0);
    signal in27_reg             : std_logic_vector(15 downto 0);
    signal in28_reg             : std_logic_vector(15 downto 0);
    signal in29_reg             : std_logic_vector(15 downto 0);
    signal in30_reg             : std_logic_vector(15 downto 0);
    signal in31_reg             : std_logic_vector(15 downto 0);
    signal in32_reg             : std_logic_vector(15 downto 0);
    signal in33_reg             : std_logic_vector(15 downto 0);
    signal in34_reg             : std_logic_vector(15 downto 0);
    signal in35_reg             : std_logic_vector(15 downto 0);
    signal in36_reg             : std_logic_vector(15 downto 0);
    signal in37_reg             : std_logic_vector(15 downto 0);
    signal in38_reg             : std_logic_vector(15 downto 0);
    signal in39_reg             : std_logic_vector(15 downto 0);
    signal in40_reg             : std_logic_vector(15 downto 0);
    signal in41_reg             : std_logic_vector(15 downto 0);
    -- signal in42_reg             : std_logic_vector(15 downto 0); -- = 0
    signal in43_reg             : std_logic_vector(15 downto 0);
    signal in44_reg             : std_logic_vector(15 downto 0);
    signal in45_reg             : std_logic_vector(15 downto 0);
    signal in46_reg             : std_logic_vector(15 downto 0);
    signal in47_reg             : std_logic_vector(15 downto 0);
    -- signal in48_reg             : std_logic_vector(15 downto 0); -- = 0
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
    signal adder_31             : std_logic_vector(15 downto 0);
    signal adder_32             : std_logic_vector(15 downto 0);
    signal adder_33             : std_logic_vector(15 downto 0);
    signal adder_34             : std_logic_vector(15 downto 0);
    signal adder_35             : std_logic_vector(15 downto 0);
    signal adder_36             : std_logic_vector(15 downto 0);
    signal adder_37             : std_logic_vector(15 downto 0);
    signal adder_38             : std_logic_vector(15 downto 0);
    signal adder_39             : std_logic_vector(15 downto 0);
    signal adder_40             : std_logic_vector(15 downto 0);
    signal adder_41             : std_logic_vector(15 downto 0);
    signal adder_42             : std_logic_vector(15 downto 0);
    signal adder_43             : std_logic_vector(15 downto 0);
    signal adder_44             : std_logic_vector(15 downto 0);
    signal adder_45             : std_logic_vector(15 downto 0);
    signal adder_46             : std_logic_vector(15 downto 0);
    signal adder_47             : std_logic_vector(15 downto 0);
    signal adder_48             : std_logic_vector(15 downto 0);
    signal adder_49             : std_logic_vector(15 downto 0);
    signal adder_50             : std_logic_vector(15 downto 0);
    -- subtractors
    signal sub_1                : std_logic_vector(15 downto 0);
    -- shift left logical
    signal sll_0                : std_logic_vector(15 downto 0);
    signal sll_1                : std_logic_vector(15 downto 0);
    signal sll_2                : std_logic_vector(15 downto 0);
    -- shift right logical
    signal srl_0                : std_logic_vector(15 downto 0);
    signal srl_1                : std_logic_vector(15 downto 0);
    signal srl_2                : std_logic_vector(15 downto 0);
    signal srl_3                : std_logic_vector(15 downto 0);

    begin
        process(clk, rst)
        begin
            if rst = '1' then
                in1_reg <= (others => '0');
                in2_reg <= (others => '0');
                in3_reg <= (others => '0');
                in4_reg <= (others => '0');
                in5_reg <= (others => '0');
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
                in25_reg <= (others => '0');
                in26_reg <= (others => '0');
                in27_reg <= (others => '0');
                in28_reg <= (others => '0');
                in29_reg <= (others => '0');
                in30_reg <= (others => '0');
                in31_reg <= (others => '0');
                in32_reg <= (others => '0');
                in33_reg <= (others => '0');
                in34_reg <= (others => '0');
                in35_reg <= (others => '0');
                in36_reg <= (others => '0');
                in37_reg <= (others => '0');
                in38_reg <= (others => '0');
                in39_reg <= (others => '0');
                in40_reg <= (others => '0');
                in41_reg <= (others => '0');
                in43_reg <= (others => '0');
                in44_reg <= (others => '0');
                in45_reg <= (others => '0');
                in46_reg <= (others => '0');
                in47_reg <= (others => '0');
                out_val_reg <= (others => '0');
            elsif rising_edge(clk) then
                in1_reg <= in_1;
                in2_reg <= in_2;
                in3_reg <= in_3;
                in4_reg <= in_4;
                in5_reg <= in_5;
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
                in25_reg <= in_25;
                in26_reg <= in_26;
                in27_reg <= in_27;
                in28_reg <= in_28;
                in29_reg <= in_29;
                in30_reg <= in_30;
                in31_reg <= in_31;
                in32_reg <= in_32;
                in33_reg <= in_33;
                in34_reg <= in_34;
                in35_reg <= in_35;
                in36_reg <= in_36;
                in37_reg <= in_37;
                in38_reg <= in_38;
                in39_reg <= in_39;
                in40_reg <= in_40;
                in41_reg <= in_41;
                in43_reg <= in_43;
                in44_reg <= in_44;
                in45_reg <= in_45;
                in46_reg <= in_46;
                in47_reg <= in_47;

                out_val_reg <= adder_50;
            end if;
        end process;

        -- Line 1
        adder_1 <=  in1_reg + in2_reg;
        adder_2 <=  in3_reg + in4_reg;
        adder_3 <=  in5_reg + in7_reg;
        adder_4 <=  in13_reg + in14_reg;
        adder_5 <=  in20_reg + in21_reg;
        adder_6 <=  in27_reg + in28_reg;
        adder_7 <=  in34_reg + in35_reg;
        adder_8 <=  in41_reg + in43_reg;
        adder_9 <=  in44_reg + in45_reg;
        adder_10 <= in46_reg + in47_reg;
        adder_11 <= in10_reg + in22_reg;
        adder_12 <= in26_reg + in38_reg;
        adder_17 <= in9_reg + in11_reg;
        adder_18 <= in15_reg + in19_reg;
        adder_19 <= in29_reg + in33_reg;
        adder_20 <= in37_reg + in39_reg;
        adder_13 <= in8_reg + in12_reg;
        adder_14 <= in36_reg + in40_reg;
        adder_15 <= in17_reg + in23_reg;
        adder_16 <= in25_reg + in31_reg;
        adder_21 <= in16_reg + in18_reg;
        adder_22 <= in30_reg + in32_reg;
        --

        -- Line 2
        adder_23 <= adder_1 + adder_2;
        adder_24 <= adder_3 + adder_4;
        adder_25 <= adder_5 + adder_6;
        adder_26 <= adder_7 + adder_8;
        adder_27 <= adder_9 + adder_10;
        adder_28 <= adder_11 + adder_12;
        adder_29 <= adder_17 + adder_18;
        adder_30 <= adder_19 + adder_20;
        adder_31 <= adder_13 + adder_14;
        adder_32 <= adder_15 + adder_16;
        adder_33 <= adder_21 + adder_22;
        --

        -- Line 3
        adder_34 <= adder_23 + adder_24;
        adder_35 <= adder_25 + adder_26;
        adder_36 <= adder_28 + in24_reg;
        adder_37 <= adder_29 + adder_30;
        adder_38 <= adder_31 + adder_32;
        adder_39 <= adder_32 + adder_33;
        --

        -- Line 4
        adder_40 <= adder_34 + adder_35;
        adder_41 <= adder_27 + adder_36;
        adder_42 <= adder_36 + adder_37;
        sll_0 <= to_stdlogicvector(to_bitvector(adder_38) sll 1);

        adder_43 <= in24_reg + adder_39;
        adder_44 <= adder_40 + adder_41;
        sll_2 <= to_stdlogicvector(to_bitvector(adder_42) sll 2);
        adder_45 <= sll_2 + sll_0;
        adder_46 <= adder_44 + adder_45;
        sll_1 <= to_stdlogicvector(to_bitvector(adder_43) sll 3);

        adder_47 <= adder_46 + sll_1;
        --

        -- Line 5
        srl_0 <= to_stdlogicvector(to_bitvector(adder_47) srl 8);
        srl_1 <= to_stdlogicvector(to_bitvector(adder_47) srl 9);
        adder_48 <= srl_0 + srl_1;
        srl_2 <= to_stdlogicvector(to_bitvector(adder_47) srl 12);
        srl_3 <= to_stdlogicvector(to_bitvector(adder_47) srl 14);
        adder_49 <= srl_2 + srl_3;
        adder_50 <= adder_48 + adder_49;

        
        out_val <= out_val_reg;

            
end architecture behavioral;




