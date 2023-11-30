library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Definindo o testbench
entity tb_gaussianFilter is
end tb_gaussianFilter;
    
architecture behavior of tb_gaussianFilter is
    component gaussianFilter is
        port(
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
    end component;

type matrix_3x3 is array (0 to 2, 0 to 2) of std_logic_vector(7 downto 0);
signal clk_sg      : std_logic :='0';
signal rst_sg      : std_logic := '0';
-- signal in_0_sg     : std_logic_vector(7 downto 0);
-- signal in_1_sg     : std_logic_vector(7 downto 0);
-- signal in_2_sg     : std_logic_vector(7 downto 0);
-- signal in_3_sg     : std_logic_vector(7 downto 0);
-- signal in_4_sg     : std_logic_vector(7 downto 0);
-- signal in_5_sg     : std_logic_vector(7 downto 0);
-- signal in_6_sg     : std_logic_vector(7 downto 0);
-- signal in_7_sg     : std_logic_vector(7 downto 0);
-- signal in_8_sg     : std_logic_vector(7 downto 0);
signal in_val_sg   : matrix_3x3;
signal out_val_sg  : std_logic_vector(15 downto 0);

begin
    inst_top: gaussianFilter
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
        wait for 5 ns;
            rst_sg <= '1';
            in_val_sg(0, 0) <= "00000001";
            in_val_sg(0, 1) <= "00000001";
            in_val_sg(0, 2) <= "00000001";
            in_val_sg(1, 0) <= "00000001";
            in_val_sg(1, 1) <= "00000001";
            in_val_sg(1, 2) <= "00000001";
            in_val_sg(2, 0) <= "00000001";
            in_val_sg(2, 1) <= "00000001";
            in_val_sg(2, 2) <= "00000001";
        wait for 5 ns;





    -- Aguarde um tempo para que a entidade processe os valores
    wait for 10 ns;
    end process;
end behavior;