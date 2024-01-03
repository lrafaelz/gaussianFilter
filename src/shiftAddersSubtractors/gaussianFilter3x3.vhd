library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;



entity gaussianFilter3x3 is
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
        out_val : out std_logic_vector(15 downto 0)
        );
end entity gaussianFilter3x3;
        
architecture behavioral of gaussianFilter3x3 is
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
    signal out_val_reg          : std_logic_vector(15 downto 0);
    -- adders
    signal adder_0              : std_logic_vector(15 downto 0);
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
    -- subtractors
    signal sub_0                : std_logic_vector(15 downto 0);
    signal sub_1                : std_logic_vector(15 downto 0);
    signal sub_2                : std_logic_vector(15 downto 0);
    signal sub_3                : std_logic_vector(15 downto 0);
    -- shift left logical
    signal sll_0                : std_logic_vector(15 downto 0);
    signal sll_1                : std_logic_vector(15 downto 0);
    signal sll_2                : std_logic_vector(15 downto 0);
    signal sll_3                : std_logic_vector(15 downto 0);
    signal sll_4                : std_logic_vector(15 downto 0);
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
                out_val_reg <= adder_10;
            end if;
        end process;

        -- Line 1
        adder_0 <= in1_reg + in3_reg;
        adder_1 <= in5_reg + in7_reg;
        adder_2 <= in0_reg + in2_reg;
        adder_3 <= in6_reg + in8_reg;
        --

        sll_0 <= to_stdlogicvector(to_bitvector(in4_reg) sll 2);
        sub_0 <= sll_0 - in4_reg;

        -- Line 2
        adder_4 <= adder_0 + adder_1;
        adder_5 <= adder_2 + adder_3;
        --

        sll_1 <= to_stdlogicvector(to_bitvector(adder_4) sll 4);
        sub_1 <= sll_1 - adder_4;
        sll_2 <= to_stdlogicvector(to_bitvector(adder_5) sll 4);
        sub_2 <= sll_2 - adder_5;

        sll_3 <= to_stdlogicvector(to_bitvector(adder_4) sll 2);

        -- Line 3
        adder_6 <= sub_1 + sll_3;
        adder_7 <= adder_6 + sub_2;
        --
        
        sll_4 <= to_stdlogicvector(to_bitvector(sub_0) sll 3);

        -- Line 4
        adder_8 <= sll_4 + adder_7; -- Adder 8 is the sum result
        --

        srl_0 <= to_stdlogicvector(to_bitvector(adder_8) srl 14);
        srl_1 <= to_stdlogicvector(to_bitvector(adder_8) srl 11);
        sub_3 <= srl_1 - srl_0;

        -- Line 5
        srl_2 <= to_stdlogicvector(to_bitvector(adder_8) srl 8);
        srl_3 <= to_stdlogicvector(to_bitvector(adder_8) srl 9);
        adder_9 <= srl_2 + srl_3;
        adder_10 <= adder_9 + sub_3;
        --

        out_val <= out_val_reg;

            
end architecture behavioral;




