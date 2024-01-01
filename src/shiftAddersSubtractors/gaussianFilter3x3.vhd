library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;



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

                out_val_reg <= (others => '0');
            elsif rising_edge(clk) then

                out_val_reg <= adder_10;
                end if;
            end process;
            -- Line 1
            adder_0 <= std_logic_vector(resize(std_logic_vector(in_1), in_3'length)) + std_logic_vector(resize(std_logic_vector(in_3), in_1'length));

            adder_1 <= in_5 + in_7;
            adder_2 <= in_0 + in_2;
            adder_3 <= in_6 + in_8;
            --                
            sll_0 <= std_logic_vector(resize(in_4, sll_0'length) sll 2);
            sub_0 <= sll_0 - in_4;

            -- Line 2
            adder_4 <= adder_0 + adder_1;
            adder_5 <= adder_2 + adder_3;
            --

            sll_1 <= to_stdlogicvector(to_bitvector(adder_4) sll 4);
            sub_1 <= sll_1 - adder_4;
            sll_2 <= to_stdlogicvector(to_bitvector(adder_5) sll 4);
            sub_2 <= sll_2 - adder_5;

            -- Line 3
            sll_3 <= to_stdlogicvector(to_bitvector(adder_4) sll 2);
            adder_6 <= sub_1 + sll_3;
            adder_7 <= adder_6 + sub_2;
            --

            -- Line 4
            sll_4 <= to_stdlogicvector(to_bitvector(sub_0) sll 3);
            adder_9 <= sll_4 + adder_7;
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




