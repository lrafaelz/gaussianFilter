library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Definindo o testbench
entity tb_gaussianFilter7x7 is
end tb_gaussianFilter7x7;
    
architecture behavior of tb_gaussianFilter7x7 is
    component gaussianFilter7x7 is
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
    end component;

type matrix_7x7 is array (0 to 6, 0 to 6) of std_logic_vector(15 downto 0);
signal clk_sg      : std_logic :='0';
signal rst_sg      : std_logic := '1';
signal in_val_sg   : matrix_7x7;
signal out_val_sg  : std_logic_vector(15 downto 0);

begin
    inst_top: gaussianFilter7x7
    port map(
        clk     => clk_sg,
        rst     => rst_sg,
        in_0   => in_val_sg(0, 0),
        in_1   => in_val_sg(0, 1),
        in_2   => in_val_sg(0, 2),
        in_3   => in_val_sg(0, 3),
        in_4   => in_val_sg(0, 4),
        in_5   => in_val_sg(0, 5),
        in_6   => in_val_sg(0, 6),
        in_7   => in_val_sg(1, 0),
        in_8   => in_val_sg(1, 1),
        in_9   => in_val_sg(1, 2),
        in_10   => in_val_sg(1, 3),
        in_11   => in_val_sg(1, 4),
        in_12   => in_val_sg(1, 5),
        in_13   => in_val_sg(1, 6),
        in_14   => in_val_sg(2, 0),
        in_15   => in_val_sg(2, 1),
        in_16   => in_val_sg(2, 2),
        in_17   => in_val_sg(2, 3),
        in_18   => in_val_sg(2, 4),
        in_19   => in_val_sg(2, 5),
        in_20   => in_val_sg(2, 6),
        in_21   => in_val_sg(3, 0),
        in_22   => in_val_sg(3, 1),
        in_23   => in_val_sg(3, 2),
        in_24   => in_val_sg(3, 3),
        in_25   => in_val_sg(3, 4),
        in_26   => in_val_sg(3, 5),
        in_27   => in_val_sg(3, 6),
        in_28   => in_val_sg(4, 0),
        in_29   => in_val_sg(4, 1),
        in_30   => in_val_sg(4, 2),
        in_31   => in_val_sg(4, 3),
        in_32   => in_val_sg(4, 4),
        in_33   => in_val_sg(4, 5),
        in_34   => in_val_sg(4, 6),
        in_35   => in_val_sg(5, 0),
        in_36   => in_val_sg(5, 1),
        in_37   => in_val_sg(5, 2),
        in_38   => in_val_sg(5, 3),
        in_39   => in_val_sg(5, 4),
        in_40   => in_val_sg(5, 5),
        in_41   => in_val_sg(5, 6),
        in_42   => in_val_sg(6, 0),
        in_43   => in_val_sg(6, 1),
        in_44   => in_val_sg(6, 2),
        in_45   => in_val_sg(6, 3),
        in_46   => in_val_sg(6, 4),
        in_47   => in_val_sg(6, 5),
        in_48   => in_val_sg(6, 6),
        out_val => out_val_sg
    );

    clk_sg <= not clk_sg after 5 ns;
    process
    begin
        wait for 1 ns; -- Pouco antes do primeiro rise clock
            rst_sg <= '0';
            in_val_sg(0, 0) <= "0000000000000001";
            in_val_sg(0, 1) <= "0000000000000001";
            in_val_sg(0, 2) <= "0000000000000001";
            in_val_sg(0, 3) <= "0000000000000001";
            in_val_sg(0, 4) <= "0000000000000001";
            in_val_sg(0, 5) <= "0000000000000001";
            in_val_sg(0, 6) <= "0000000000000001";
            in_val_sg(1, 0) <= "0000000000000001";
            in_val_sg(1, 1) <= "0000000000000001";
            in_val_sg(1, 2) <= "0000000000000001";
            in_val_sg(1, 3) <= "0000000000000001";
            in_val_sg(1, 4) <= "0000000000000001";
            in_val_sg(1, 5) <= "0000000000000001";
            in_val_sg(1, 6) <= "0000000000000001";
            in_val_sg(2, 0) <= "0000000000000001";
            in_val_sg(2, 1) <= "0000000000000001";
            in_val_sg(2, 2) <= "0000000000000001";
            in_val_sg(2, 3) <= "0000000000000001";
            in_val_sg(2, 4) <= "0000000000000001";
            in_val_sg(2, 5) <= "0000000000000001";
            in_val_sg(2, 6) <= "0000000000000001";
            in_val_sg(3, 0) <= "0000000000000001";
            in_val_sg(3, 1) <= "0000000000000001";
            in_val_sg(3, 2) <= "0000000000000001";
            in_val_sg(3, 3) <= "0000000000000001";
            in_val_sg(3, 4) <= "0000000000000001";
            in_val_sg(3, 5) <= "0000000000000001";
            in_val_sg(3, 6) <= "0000000000000001";
            in_val_sg(4, 0) <= "0000000000000001";
            in_val_sg(4, 1) <= "0000000000000001";
            in_val_sg(4, 2) <= "0000000000000001";
            in_val_sg(4, 3) <= "0000000000000001";
            in_val_sg(4, 4) <= "0000000000000001";
            in_val_sg(4, 5) <= "0000000000000001";
            in_val_sg(4, 6) <= "0000000000000001";
            in_val_sg(5, 0) <= "0000000000000001";
            in_val_sg(5, 1) <= "0000000000000001";
            in_val_sg(5, 2) <= "0000000000000001";
            in_val_sg(5, 3) <= "0000000000000001";
            in_val_sg(5, 4) <= "0000000000000001";
            in_val_sg(5, 5) <= "0000000000000001";
            in_val_sg(5, 6) <= "0000000000000001";
            in_val_sg(6, 0) <= "0000000000000001";
            in_val_sg(6, 1) <= "0000000000000001";
            in_val_sg(6, 2) <= "0000000000000001";
            in_val_sg(6, 3) <= "0000000000000001";
            in_val_sg(6, 4) <= "0000000000000001";
            in_val_sg(6, 5) <= "0000000000000001";
            in_val_sg(6, 6) <= "0000000000000001";

        wait for 15 ns;
            in_val_sg(0, 0) <= "0000000000000010";
            in_val_sg(0, 1) <= "0000000000000010";
            in_val_sg(0, 2) <= "0000000000000010";
            in_val_sg(0, 3) <= "0000000000000010";
            in_val_sg(0, 4) <= "0000000000000010";
            in_val_sg(0, 5) <= "0000000000000010";
            in_val_sg(0, 6) <= "0000000000000010";
            in_val_sg(1, 0) <= "0000000000000010";
            in_val_sg(1, 1) <= "0000000000000010";
            in_val_sg(1, 2) <= "0000000000000010";
            in_val_sg(1, 3) <= "0000000000000010";
            in_val_sg(1, 4) <= "0000000000000010";
            in_val_sg(1, 5) <= "0000000000000010";
            in_val_sg(1, 6) <= "0000000000000010";
            in_val_sg(2, 0) <= "0000000000000010";
            in_val_sg(2, 1) <= "0000000000000010";
            in_val_sg(2, 2) <= "0000000000000010";
            in_val_sg(2, 3) <= "0000000000000010";
            in_val_sg(2, 4) <= "0000000000000010";
            in_val_sg(2, 5) <= "0000000000000010";
            in_val_sg(2, 6) <= "0000000000000010";
            in_val_sg(3, 0) <= "0000000000000010";
            in_val_sg(3, 1) <= "0000000000000010";
            in_val_sg(3, 2) <= "0000000000000010";
            in_val_sg(3, 3) <= "0000000000000010";
            in_val_sg(3, 4) <= "0000000000000010";
            in_val_sg(3, 5) <= "0000000000000010";
            in_val_sg(3, 6) <= "0000000000000010";
            in_val_sg(4, 0) <= "0000000000000010";
            in_val_sg(4, 1) <= "0000000000000010";
            in_val_sg(4, 2) <= "0000000000000010";
            in_val_sg(4, 3) <= "0000000000000010";
            in_val_sg(4, 4) <= "0000000000000010";
            in_val_sg(4, 5) <= "0000000000000010";
            in_val_sg(4, 6) <= "0000000000000010";
            in_val_sg(5, 0) <= "0000000000000010";
            in_val_sg(5, 1) <= "0000000000000010";
            in_val_sg(5, 2) <= "0000000000000010";
            in_val_sg(5, 3) <= "0000000000000010";
            in_val_sg(5, 4) <= "0000000000000010";
            in_val_sg(5, 5) <= "0000000000000010";
            in_val_sg(5, 6) <= "0000000000000010";
            in_val_sg(6, 0) <= "0000000000000010";
            in_val_sg(6, 1) <= "0000000000000010";
            in_val_sg(6, 2) <= "0000000000000010";
            in_val_sg(6, 3) <= "0000000000000010";
            in_val_sg(6, 4) <= "0000000000000010";
            in_val_sg(6, 5) <= "0000000000000010";
            in_val_sg(6, 6) <= "0000000000000010";
        wait for 20 ns; -- 3 ns antes do segundo rise clock
            in_val_sg(0, 0) <= "0000000000000011";
            in_val_sg(0, 1) <= "0000000000000011";
            in_val_sg(0, 2) <= "0000000000000011";
            in_val_sg(0, 3) <= "0000000000000011";
            in_val_sg(0, 4) <= "0000000000000011";
            in_val_sg(0, 5) <= "0000000000000011";
            in_val_sg(0, 6) <= "0000000000000011";
            in_val_sg(1, 0) <= "0000000000000011";
            in_val_sg(1, 1) <= "0000000000000011";
            in_val_sg(1, 2) <= "0000000000000011";
            in_val_sg(1, 3) <= "0000000000000011";
            in_val_sg(1, 4) <= "0000000000000011";
            in_val_sg(1, 5) <= "0000000000000011";
            in_val_sg(1, 6) <= "0000000000000011";
            in_val_sg(2, 0) <= "0000000000000011";
            in_val_sg(2, 1) <= "0000000000000011";
            in_val_sg(2, 2) <= "0000000000000011";
            in_val_sg(2, 3) <= "0000000000000011";
            in_val_sg(2, 4) <= "0000000000000011";
            in_val_sg(2, 5) <= "0000000000000011";
            in_val_sg(2, 6) <= "0000000000000011";
            in_val_sg(3, 0) <= "0000000000000011";
            in_val_sg(3, 1) <= "0000000000000011";
            in_val_sg(3, 2) <= "0000000000000011";
            in_val_sg(3, 3) <= "0000000000000011";
            in_val_sg(3, 4) <= "0000000000000011";
            in_val_sg(3, 5) <= "0000000000000011";
            in_val_sg(3, 6) <= "0000000000000011";
            in_val_sg(4, 0) <= "0000000000000011";
            in_val_sg(4, 1) <= "0000000000000011";
            in_val_sg(4, 2) <= "0000000000000011";
            in_val_sg(4, 3) <= "0000000000000011";
            in_val_sg(4, 4) <= "0000000000000011";
            in_val_sg(4, 5) <= "0000000000000011";
            in_val_sg(4, 6) <= "0000000000000011";
            in_val_sg(5, 0) <= "0000000000000011";
            in_val_sg(5, 1) <= "0000000000000011";
            in_val_sg(5, 2) <= "0000000000000011";
            in_val_sg(5, 3) <= "0000000000000011";
            in_val_sg(5, 4) <= "0000000000000011";
            in_val_sg(5, 5) <= "0000000000000011";
            in_val_sg(5, 6) <= "0000000000000011";
            in_val_sg(6, 0) <= "0000000000000011";
            in_val_sg(6, 1) <= "0000000000000011";
            in_val_sg(6, 2) <= "0000000000000011";
            in_val_sg(6, 3) <= "0000000000000011";
            in_val_sg(6, 4) <= "0000000000000011";
            in_val_sg(6, 5) <= "0000000000000011";
            in_val_sg(6, 6) <= "0000000000000011";
        wait for 20 ns;
            in_val_sg(0, 0) <= "0000000000000100";
            in_val_sg(0, 1) <= "0000000000000100";
            in_val_sg(0, 2) <= "0000000000000100";
            in_val_sg(0, 3) <= "0000000000000100";
            in_val_sg(0, 4) <= "0000000000000100";
            in_val_sg(0, 5) <= "0000000000000100";
            in_val_sg(0, 6) <= "0000000000000100";
            in_val_sg(1, 0) <= "0000000000000100";
            in_val_sg(1, 1) <= "0000000000000100";
            in_val_sg(1, 2) <= "0000000000000100";
            in_val_sg(1, 3) <= "0000000000000100";
            in_val_sg(1, 4) <= "0000000000000100";
            in_val_sg(1, 5) <= "0000000000000100";
            in_val_sg(1, 6) <= "0000000000000100";
            in_val_sg(2, 0) <= "0000000000000100";
            in_val_sg(2, 1) <= "0000000000000100";
            in_val_sg(2, 2) <= "0000000000000100";
            in_val_sg(2, 3) <= "0000000000000100";
            in_val_sg(2, 4) <= "0000000000000100";
            in_val_sg(2, 5) <= "0000000000000100";
            in_val_sg(2, 6) <= "0000000000000100";
            in_val_sg(3, 0) <= "0000000000000100";
            in_val_sg(3, 1) <= "0000000000000100";
            in_val_sg(3, 2) <= "0000000000000100";
            in_val_sg(3, 3) <= "0000000000000100";
            in_val_sg(3, 4) <= "0000000000000100";
            in_val_sg(3, 5) <= "0000000000000100";
            in_val_sg(3, 6) <= "0000000000000100";
            in_val_sg(4, 0) <= "0000000000000100";
            in_val_sg(4, 1) <= "0000000000000100";
            in_val_sg(4, 2) <= "0000000000000100";
            in_val_sg(4, 3) <= "0000000000000100";
            in_val_sg(4, 4) <= "0000000000000100";
            in_val_sg(4, 5) <= "0000000000000100";
            in_val_sg(4, 6) <= "0000000000000100";
            in_val_sg(5, 0) <= "0000000000000100";
            in_val_sg(5, 1) <= "0000000000000100";
            in_val_sg(5, 2) <= "0000000000000100";
            in_val_sg(5, 3) <= "0000000000000100";
            in_val_sg(5, 4) <= "0000000000000100";
            in_val_sg(5, 5) <= "0000000000000100";
            in_val_sg(5, 6) <= "0000000000000100";
            in_val_sg(6, 0) <= "0000000000000100";
            in_val_sg(6, 1) <= "0000000000000100";
            in_val_sg(6, 2) <= "0000000000000100";
            in_val_sg(6, 3) <= "0000000000000100";
            in_val_sg(6, 4) <= "0000000000000100";
            in_val_sg(6, 5) <= "0000000000000100";
            in_val_sg(6, 6) <= "0000000000000100";

        wait;
    end process;
end behavior;