library verilog;
use verilog.vl_types.all;
entity Neander_vlg_sample_tst is
    port(
        clk_placa       : in     vl_logic;
        reset           : in     vl_logic;
        seletor         : in     vl_logic;
        step_up         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Neander_vlg_sample_tst;
