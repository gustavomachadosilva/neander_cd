library verilog;
use verilog.vl_types.all;
entity RCA8_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end RCA8_vlg_sample_tst;
