library verilog;
use verilog.vl_types.all;
entity e_expand is
    port(
        in32            : in     vl_logic_vector(31 downto 0);
        out48           : out    vl_logic_vector(47 downto 0)
    );
end e_expand;
