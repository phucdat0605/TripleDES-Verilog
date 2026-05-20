library verilog;
use verilog.vl_types.all;
entity pc2 is
    port(
        cd56            : in     vl_logic_vector(55 downto 0);
        k48             : out    vl_logic_vector(47 downto 0)
    );
end pc2;
