library verilog;
use verilog.vl_types.all;
entity tdes_decrypt is
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        key0            : in     vl_logic_vector(63 downto 0);
        key1            : in     vl_logic_vector(63 downto 0);
        key2            : in     vl_logic_vector(63 downto 0);
        data_in         : in     vl_logic_vector(63 downto 0);
        data_out        : out    vl_logic_vector(63 downto 0);
        done            : out    vl_logic
    );
end tdes_decrypt;
