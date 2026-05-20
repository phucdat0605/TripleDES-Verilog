library verilog;
use verilog.vl_types.all;
entity pc1 is
    port(
        key64           : in     vl_logic_vector(63 downto 0);
        k56             : out    vl_logic_vector(55 downto 0);
        C0              : out    vl_logic_vector(27 downto 0);
        D0              : out    vl_logic_vector(27 downto 0)
    );
end pc1;
