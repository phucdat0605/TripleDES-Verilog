`timescale 1ns / 1ps

module decrypt_tb;
    reg         clock;
    reg         rst;
    reg         start;
    reg  [63:0] ciphertext;
    reg  [63:0] key;
    wire [63:0] plaintext_out;
    wire        done;

    des_decrypt uut (
        .clock(clock),
        .rst(rst),
        .start(start),
        .ciphertext(ciphertext),
        .key(key),
        .plaintext_out(plaintext_out),
        .done(done)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        rst = 1;
        start = 0;
        ciphertext = 64'h0;
        key = 64'h0;

        #25;
        rst = 0; 
        #10;
		  //CASE1
        ciphertext = 64'h85E813540F0AB405; 
        key        = 64'h133457799BBCDFF1;
        start      = 1;
        
        #10 start = 0;
        wait(done == 1);       
        $display("Ciphertext  : %h", ciphertext);
        $display("Key         : %h", key);
        $display("Plaintext   : %h", plaintext_out);
		  $display("----------------------------");

        #50;

        // CASE2: 
        ciphertext = 64'h4A446342624D1E5A; // Ciphertext giả định
        key        = 64'h0000000000000000;
        start      = 1;
        #10 start = 0;

        wait(done == 1);
        $display("Ciphertext  : %h", ciphertext);
        $display("Key         : %h", key);
        $display("Plaintext   : %h", plaintext_out);
		  $display("----------------------------");

        #100;
        $stop;
    end

endmodule