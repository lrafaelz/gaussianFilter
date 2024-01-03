library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Definindo o testbench
entity tb_gaussianFilter3x3 is
end tb_gaussianFilter3x3;
    
architecture behavior of tb_gaussianFilter3x3 is
    component gaussianFilter3x3 is
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
            out_val : out std_logic_vector(15 downto 0)
            );
    end component;

type matrix_3x3 is array (0 to 2, 0 to 2) of std_logic_vector(15 downto 0);
signal clk_sg      : std_logic :='0';
signal rst_sg      : std_logic := '1';
signal in_val_sg   : matrix_3x3;
signal out_val_sg  : std_logic_vector(15 downto 0);

begin
    inst_top: gaussianFilter3x3
    port map(
        clk     => clk_sg,
        rst     => rst_sg,
        in_0   => in_val_sg(0, 0),
        in_1   => in_val_sg(0, 1),
        in_2   => in_val_sg(0, 2),
        in_3   => in_val_sg(1, 0),
        in_4   => in_val_sg(1, 1),
        in_5   => in_val_sg(1, 2),
        in_6   => in_val_sg(2, 0),
        in_7   => in_val_sg(2, 1),
        in_8   => in_val_sg(2, 2),
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
            in_val_sg(1, 0) <= "0000000000000001";
            in_val_sg(1, 1) <= "0000000000000001";
            in_val_sg(1, 2) <= "0000000000000001";
            in_val_sg(2, 0) <= "0000000000000001";
            in_val_sg(2, 1) <= "0000000000000001";
            in_val_sg(2, 2) <= "0000000000000001";
        wait for 15 ns;
            in_val_sg(0, 0) <= "0000000000000010";
            in_val_sg(0, 1) <= "0000000000000010";
            in_val_sg(0, 2) <= "0000000000000010";
            in_val_sg(1, 0) <= "0000000000000010";
            in_val_sg(1, 1) <= "0000000000000010";
            in_val_sg(1, 2) <= "0000000000000010";
            in_val_sg(2, 0) <= "0000000000000010";
            in_val_sg(2, 1) <= "0000000000000010";
            in_val_sg(2, 2) <= "0000000000000010";
        wait for 20 ns; -- 3 ns antes do segundo rise clock
            in_val_sg(0, 0) <= "0000000000000011";
            in_val_sg(0, 1) <= "0000000000000011";
            in_val_sg(0, 2) <= "0000000000000011";
            in_val_sg(1, 0) <= "0000000000000011";
            in_val_sg(1, 1) <= "0000000000000011";
            in_val_sg(1, 2) <= "0000000000000011";
            in_val_sg(2, 0) <= "0000000000000011";
            in_val_sg(2, 1) <= "0000000000000011";
            in_val_sg(2, 2) <= "0000000000000011";
        wait for 20 ns;
            in_val_sg(0, 0) <= "0000000000000100";
            in_val_sg(0, 1) <= "0000000000000100";
            in_val_sg(0, 2) <= "0000000000000100";
            in_val_sg(1, 0) <= "0000000000000100";
            in_val_sg(1, 1) <= "0000000000000100";
            in_val_sg(1, 2) <= "0000000000000100";
            in_val_sg(2, 0) <= "0000000000000100";
            in_val_sg(2, 1) <= "0000000000000100";
            in_val_sg(2, 2) <= "0000000000000100";
        wait;
    end process;
end behavior;