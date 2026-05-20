library verilog;
use verilog.vl_types.all;
entity IP_1 is
    port(
        in64            : in     vl_logic_vector(63 downto 0);
        out64           : out    vl_logic_vector(63 downto 0)
    );
end IP_1;
