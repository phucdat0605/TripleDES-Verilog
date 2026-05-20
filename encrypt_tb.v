`timescale 1ns / 1ps

module encrypt_tb;
    reg         clock;
    reg         rst;
    reg         start;
    reg  [63:0] plaintext;
    reg  [63:0] key;
    wire [63:0] dectext;
    wire        done;

    des_encrypt uut (
        .clock(clock),
        .rst(rst),
        .start(start),
        .plaintext(plaintext),
        .key(key),
        .dectext(dectext),
        .done(done)
    );
	 
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        rst = 1;
        start = 0;
        plaintext = 64'h0;
        key = 64'h0;

        #20;
        rst = 0;
        #10;
        plaintext = 64'h0123456789ABCDEF;
        key       = 64'h133457799BBCDFF1;
        start    = 1; 
        
        #10;
        start = 0; 

        wait(done == 1);
        
        $display("Time: %t | Case 1 Finished", $time);
        $display("Plaintext: %h", plaintext);
        $display("Key      : %h", key);
        $display("Ciphertext: %h", dectext);
        $display("----------------------------");
        #50;

        plaintext = 64'hFFFFFFFFFFFFFFFF;
        key       = 64'h0000000000000000;
        start    = 1;
        
        #10;
        start = 0;

        wait(done == 1);
        
        $display("Time: %t | Case 2 Finished", $time);
        $display("Plaintext: %h", plaintext);
		  $display("Key      : %h", key);
        $display("Ciphertext: %h", dectext);
		  $display("----------------------------");

        #100;
        $display("Simulation Ended.");
        $stop; 
    end

endmodule