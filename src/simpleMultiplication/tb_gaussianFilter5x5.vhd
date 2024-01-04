library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


-- Definindo o testbench
entity tb_gaussianFilter5x5 is
end tb_gaussianFilter5x5;
    
architecture behavior of tb_gaussianFilter5x5 is
    component gaussianFilter5x5 is
        port(
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
    end component;

    type matrix_5x5 is array (0 to 4, 0 to 4) of std_logic_vector(15 downto 0);
    signal clk_sg      : std_logic :='0';
    signal rst_sg      : std_logic := '1';
    signal in_val_sg   : matrix_5x5;
    signal out_val_sg  : std_logic_vector(31 downto 0);
    
    begin
        inst_top: gaussianFilter5x5
        port map(
            clk     => clk_sg,
            rst     => rst_sg,
            in_0   => in_val_sg(0, 0),
            in_1   => in_val_sg(0, 1),
            in_2   => in_val_sg(0, 2),
            in_3   => in_val_sg(0, 3),
            in_4   => in_val_sg(0, 4),
            in_5   => in_val_sg(1, 0),
            in_6   => in_val_sg(1, 1),
            in_7   => in_val_sg(1, 2),
            in_8   => in_val_sg(1, 3),
            in_9   => in_val_sg(1, 4),
            in_10   => in_val_sg(2, 0),
            in_11   => in_val_sg(2, 1),
            in_12   => in_val_sg(2, 2),
            in_13   => in_val_sg(2, 3),
            in_14   => in_val_sg(2, 4),
            in_15   => in_val_sg(3, 0),
            in_16   => in_val_sg(3, 1),
            in_17   => in_val_sg(3, 2),
            in_18   => in_val_sg(3, 3),
            in_19   => in_val_sg(3, 4),
            in_20   => in_val_sg(4, 0),
            in_21   => in_val_sg(4, 1),
            in_22   => in_val_sg(4, 2),
            in_23   => in_val_sg(4, 3),
            in_24   => in_val_sg(4, 4),
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
                in_val_sg(1, 0) <= "0000000000000001";
                in_val_sg(1, 1) <= "0000000000000001";
                in_val_sg(1, 2) <= "0000000000000001";
                in_val_sg(1, 3) <= "0000000000000001";
                in_val_sg(1, 4) <= "0000000000000001";
                in_val_sg(2, 0) <= "0000000000000001";
                in_val_sg(2, 1) <= "0000000000000001";
                in_val_sg(2, 2) <= "0000000000000001";
                in_val_sg(2, 3) <= "0000000000000001";
                in_val_sg(2, 4) <= "0000000000000001";
                in_val_sg(3, 0) <= "0000000000000001";
                in_val_sg(3, 1) <= "0000000000000001";
                in_val_sg(3, 2) <= "0000000000000001";
                in_val_sg(3, 3) <= "0000000000000001";
                in_val_sg(3, 4) <= "0000000000000001";
                in_val_sg(4, 0) <= "0000000000000001";
                in_val_sg(4, 1) <= "0000000000000001";
                in_val_sg(4, 2) <= "0000000000000001";
                in_val_sg(4, 3) <= "0000000000000001";
                in_val_sg(4, 4) <= "0000000000000001";
            wait for 15 ns;
                in_val_sg(0, 0) <= "0000000000000010";
                in_val_sg(0, 1) <= "0000000000000010";
                in_val_sg(0, 2) <= "0000000000000010";
                in_val_sg(0, 3) <= "0000000000000010";
                in_val_sg(0, 4) <= "0000000000000010";
                in_val_sg(1, 0) <= "0000000000000010";
                in_val_sg(1, 1) <= "0000000000000010";
                in_val_sg(1, 2) <= "0000000000000010";
                in_val_sg(1, 3) <= "0000000000000010";
                in_val_sg(1, 4) <= "0000000000000010";
                in_val_sg(2, 0) <= "0000000000000010";
                in_val_sg(2, 1) <= "0000000000000010";
                in_val_sg(2, 2) <= "0000000000000010";
                in_val_sg(2, 3) <= "0000000000000010";
                in_val_sg(2, 4) <= "0000000000000010";
                in_val_sg(3, 0) <= "0000000000000010";
                in_val_sg(3, 1) <= "0000000000000010";
                in_val_sg(3, 2) <= "0000000000000010";
                in_val_sg(3, 3) <= "0000000000000010";
                in_val_sg(3, 4) <= "0000000000000010";
                in_val_sg(4, 0) <= "0000000000000010";
                in_val_sg(4, 1) <= "0000000000000010";
                in_val_sg(4, 2) <= "0000000000000010";
                in_val_sg(4, 3) <= "0000000000000010";
                in_val_sg(4, 4) <= "0000000000000010";
            wait for 20 ns; -- 3 ns antes do segundo rise clock
                in_val_sg(0, 0) <= "0000000000000011";
                in_val_sg(0, 1) <= "0000000000000011";
                in_val_sg(0, 2) <= "0000000000000011";
                in_val_sg(0, 3) <= "0000000000000011";
                in_val_sg(0, 4) <= "0000000000000011";
                in_val_sg(1, 0) <= "0000000000000011";
                in_val_sg(1, 1) <= "0000000000000011";
                in_val_sg(1, 2) <= "0000000000000011";
                in_val_sg(1, 3) <= "0000000000000011";
                in_val_sg(1, 4) <= "0000000000000011";
                in_val_sg(2, 0) <= "0000000000000011";
                in_val_sg(2, 1) <= "0000000000000011";
                in_val_sg(2, 2) <= "0000000000000011";
                in_val_sg(2, 3) <= "0000000000000011";
                in_val_sg(2, 4) <= "0000000000000011";
                in_val_sg(3, 0) <= "0000000000000011";
                in_val_sg(3, 1) <= "0000000000000011";
                in_val_sg(3, 2) <= "0000000000000011";
                in_val_sg(3, 3) <= "0000000000000011";
                in_val_sg(3, 4) <= "0000000000000011";
                in_val_sg(4, 0) <= "0000000000000011";
                in_val_sg(4, 1) <= "0000000000000011";
                in_val_sg(4, 2) <= "0000000000000011";
                in_val_sg(4, 3) <= "0000000000000011";
                in_val_sg(4, 4) <= "0000000000000011";
            wait for 20 ns;
                in_val_sg(0, 0) <= "0000000000000100";
                in_val_sg(0, 1) <= "0000000000000100";
                in_val_sg(0, 2) <= "0000000000000100";
                in_val_sg(0, 3) <= "0000000000000100";
                in_val_sg(0, 4) <= "0000000000000100";
                in_val_sg(1, 0) <= "0000000000000100";
                in_val_sg(1, 1) <= "0000000000000100";
                in_val_sg(1, 2) <= "0000000000000100";
                in_val_sg(1, 3) <= "0000000000000100";
                in_val_sg(1, 4) <= "0000000000000100";
                in_val_sg(2, 0) <= "0000000000000100";
                in_val_sg(2, 1) <= "0000000000000100";
                in_val_sg(2, 2) <= "0000000000000100";
                in_val_sg(2, 3) <= "0000000000000100";
                in_val_sg(2, 4) <= "0000000000000100";
                in_val_sg(3, 0) <= "0000000000000100";
                in_val_sg(3, 1) <= "0000000000000100";
                in_val_sg(3, 2) <= "0000000000000100";
                in_val_sg(3, 3) <= "0000000000000100";
                in_val_sg(3, 4) <= "0000000000000100";
                in_val_sg(4, 0) <= "0000000000000100";
                in_val_sg(4, 1) <= "0000000000000100";
                in_val_sg(4, 2) <= "0000000000000100";
                in_val_sg(4, 3) <= "0000000000000100";
                in_val_sg(4, 4) <= "0000000000000100";
            wait;
        end process;
    end behavior;