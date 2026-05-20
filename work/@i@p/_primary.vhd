library verilog;
use verilog.vl_types.all;
entity IP is
    port(
        plaintext       : in     vl_logic_vector(63 downto 0);
        ip_out          : out    vl_logic_vector(63 downto 0)
    );
end IP;
