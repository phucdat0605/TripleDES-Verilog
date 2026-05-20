library verilog;
use verilog.vl_types.all;
entity des_encrypt is
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        plaintext       : in     vl_logic_vector(63 downto 0);
        key             : in     vl_logic_vector(63 downto 0);
        dectext         : out    vl_logic_vector(63 downto 0);
        done            : out    vl_logic
    );
end des_encrypt;
