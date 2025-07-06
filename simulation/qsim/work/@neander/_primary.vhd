library verilog;
use verilog.vl_types.all;
entity Neander is
    port(
        N               : out    vl_logic;
        clk_placa       : in     vl_logic;
        step_up         : in     vl_logic;
        seletor         : in     vl_logic;
        Z               : out    vl_logic;
        reset           : in     vl_logic;
        pc              : out    vl_logic_vector(7 downto 0);
        Acc             : out    vl_logic_vector(7 downto 0);
        HLT             : out    vl_logic;
        accD            : out    vl_logic_vector(6 downto 0);
        accU            : out    vl_logic_vector(6 downto 0);
        pcD             : out    vl_logic_vector(6 downto 0);
        pcU             : out    vl_logic_vector(6 downto 0)
    );
end Neander;
