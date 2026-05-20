`timescale 1ns / 1ps

module tdes_decrypt_tb;

    reg         clock;
    reg         rst;
    reg         start;
    reg  [63:0] key0;
    reg  [63:0] key1;
    reg  [63:0] key2;
    reg  [63:0] data_in;
    
    wire [63:0] data_out;
    wire        done;
	 
    tdes_decrypt uut (
        .clock(clock),
        .rst(rst),
        .start(start),
        .key0(key0),
        .key1(key1),
        .key2(key2),
        .data_in(data_in),
        .data_out(data_out),
        .done(done)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        rst = 1;
        start = 0;
        key0 = 64'h133457799BBCDFF1; // Khóa k0
        key1 = 64'h1122334455667788; // Khóa k1
        key2 = 64'h7766554433221100; // Khóa k2
        data_in = 64'h0;

        #25;
        rst = 0; 
        #20;

        // --- CASE 1        
        data_in = 64'h4A446342624D1E5A;       
        $display("Key0: %h | Key1: %h | Key2: %h", key0, key1, key2);
        $display("Ciphertext : %h", data_in);

        start = 1;
        #10 start = 0;
        wait(done == 1);
        
        #5;
        $display("--------------------------------------");
        $display("Plaintext  : %h", data_out);      
        #100;
        
        // --- CASE 2
        key0 = 64'h133457799BBCDFF1;
        key1 = 64'h133457799BBCDFF1;
        key2 = 64'h133457799BBCDFF1;
        data_in = 64'h85E813540F0AB405; // Kết quả mã hóa DES đơn của 0123456789ABCDEF    
        $display("Key0: %h | Key1: %h | Key2: %h", key0, key1, key2);
        $display("Ciphertext : %h", data_in);

        start = 1;
        #10 start = 0;
        wait(done == 1);
        
        #5;
        $display("--------------------------------------");
        $display("Plaintext  : %h", data_out);      
        #100;
        $stop;
    end

endmodule