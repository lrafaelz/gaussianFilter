library ieee;
use ieee.std_logic_1164.all;
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
    begin
        process(clk, rst)
        begin
            if rst = '1' then
                adder_0 <= (others => '0');
                adder_1 <= (others => '0');
                adder_2 <= (others => '0');
                adder_3 <= (others => '0');
                adder_4 <= (others => '0');
                adder_5 <= (others => '0');
                adder_6 <= (others => '0');
                adder_7 <= (others => '0');
                adder_8 <= (others => '0');
                adder_9 <= (others => '0');
                adder_10 <= (others => '0');
                sub_0 <= (others => '0');
                sub_1 <= (others => '0');
                sub_2 <= (others => '0');
                sub_3 <= (others => '0');
                out_val_reg <= (others => '0');
            elsif rising_edge(clk) then
                -- Line 1
                adder_0 <= std_logic_vector(unsigned(in_1) + unsigned(in_3));
                adder_1 <= std_logic_vector(unsigned(in_5) + unsigned(in_7));
                adder_2 <= std_logic_vector(unsigned(in_0) + unsigned(in_2));
                adder_3 <= std_logic_vector(unsigned(in_6) + unsigned(in_8));
                --
                
                sub_0 <= std_logic_vector(unsigned((std_logic_vector(unsigned(in_4))) sll 2) - unsigned(in_4));

                -- Line 2
                adder_4 <= adder_0 + adder_1;
                adder_5 <= adder_2 + adder_3;
                --

                sub_1 <= (adder_4 sll 4) - adder_4;
                sub_2 <= (adder_5 sll 4) - adder_5;

                -- Line 3
                adder_6 <= sub_1 + (adder_4 sll 2);
                adder_7 <= adder_6 + sub_2;
                --

                -- Line 4
                adder_9 <= (sub_0 sll 3) + adder_7;
                --

                sub_3 <= (adder_8 srl 11) - (adder_8 srl 14);

                -- Line 5
                adder_9 <= (adder_8 srl 8) + (adder_8 srl 9);
                adder_10 <= adder_9 + sub_3;
                --
            end if;
        end process;
        out_val <= out_val_reg;
end architecture behavioral;






