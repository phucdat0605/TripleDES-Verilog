library verilog;
use verilog.vl_types.all;
entity tripleDES is
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        key0            : in     vl_logic_vector(63 downto 0);
        key1            : in     vl_logic_vector(63 downto 0);
        key2            : in     vl_logic_vector(63 downto 0);
        plaintext_in    : in     vl_logic_vector(63 downto 0);
        ciphertext_out  : out    vl_logic_vector(63 downto 0);
        recovered_out   : out    vl_logic_vector(63 downto 0);
        done_all        : out    vl_logic
    );
end tripleDES;
