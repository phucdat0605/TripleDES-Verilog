library verilog;
use verilog.vl_types.all;
entity p_permutation is
    port(
        in32            : in     vl_logic_vector(31 downto 0);
        out32           : out    vl_logic_vector(31 downto 0)
    );
end p_permutation;
