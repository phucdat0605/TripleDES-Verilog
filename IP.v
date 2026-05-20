module IP (
    input  [63:0] plaintext,
    output [63:0] ip_out
);
    function [0:0] get_bit;
        input [6:0] des_pos; 
        input [63:0] data;  
        begin
            get_bit = data[64 - des_pos];
        end
    endfunction
    assign ip_out = {
        get_bit(58, plaintext), get_bit(50, plaintext), get_bit(42, plaintext), get_bit(34, plaintext),
        get_bit(26, plaintext), get_bit(18, plaintext), get_bit(10, plaintext), get_bit(2,  plaintext),
        get_bit(60, plaintext), get_bit(52, plaintext), get_bit(44, plaintext), get_bit(36, plaintext),
        get_bit(28, plaintext), get_bit(20, plaintext), get_bit(12, plaintext), get_bit(4,  plaintext),
        get_bit(62, plaintext), get_bit(54, plaintext), get_bit(46, plaintext), get_bit(38, plaintext),
        get_bit(30, plaintext), get_bit(22, plaintext), get_bit(14, plaintext), get_bit(6,  plaintext),
        get_bit(64, plaintext), get_bit(56, plaintext), get_bit(48, plaintext), get_bit(40, plaintext),
        get_bit(32, plaintext), get_bit(24, plaintext), get_bit(16, plaintext), get_bit(8,  plaintext),
        get_bit(57, plaintext), get_bit(49, plaintext), get_bit(41, plaintext), get_bit(33, plaintext),
        get_bit(25, plaintext), get_bit(17, plaintext), get_bit(9,  plaintext), get_bit(1,  plaintext),
        get_bit(59, plaintext), get_bit(51, plaintext), get_bit(43, plaintext), get_bit(35, plaintext),
        get_bit(27, plaintext), get_bit(19, plaintext), get_bit(11, plaintext), get_bit(3,  plaintext),
        get_bit(61, plaintext), get_bit(53, plaintext), get_bit(45, plaintext), get_bit(37, plaintext),
        get_bit(29, plaintext), get_bit(21, plaintext), get_bit(13, plaintext), get_bit(5,  plaintext),
        get_bit(63, plaintext), get_bit(55, plaintext), get_bit(47, plaintext), get_bit(39, plaintext),
        get_bit(31, plaintext), get_bit(23, plaintext), get_bit(15, plaintext), get_bit(7,  plaintext)
    };

endmodule