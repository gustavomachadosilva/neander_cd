library verilog;
use verilog.vl_types.all;
entity Neander_vlg_check_tst is
    port(
        Acc             : in     vl_logic_vector(7 downto 0);
        accD            : in     vl_logic_vector(6 downto 0);
        accU            : in     vl_logic_vector(6 downto 0);
        HLT             : in     vl_logic;
        N               : in     vl_logic;
        pc              : in     vl_logic_vector(7 downto 0);
        pcD             : in     vl_logic_vector(6 downto 0);
        pcU             : in     vl_logic_vector(6 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Neander_vlg_check_tst;
