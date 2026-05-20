library verilog;
use verilog.vl_types.all;
entity sfunct is
    port(
        in48            : in     vl_logic_vector(47 downto 0);
        out32           : out    vl_logic_vector(31 downto 0)
    );
end sfunct;
