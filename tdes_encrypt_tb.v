`timescale 1ns / 1ps

module tdes_encrypt_tb;
    reg         clock;
    reg         rst;
    reg         start;
    reg  [63:0] key0;
    reg  [63:0] key1;
    reg  [63:0] key2;
    reg  [63:0] input_data;
    
    wire [63:0] output_data;
    wire        done;

    tdes_encrypt uut (
        .clock(clock),
        .rst(rst),
        .start(start),
        .key0(key0),
        .key1(key1),
        .key2(key2),
        .input_data(input_data),
        .output_data(output_data),
        .done(done)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        rst = 1;
        start = 0;
        input_data = 64'h0;
        key0 = 64'h0;
        key1 = 64'h0;
        key2 = 64'h0;

        #25;
        rst = 0; 
        #20;

        // --- CASE 1: 
        input_data = 64'h0123456789ABCDEF;
        key0       = 64'h133457799BBCDFF1;
        key1       = 64'h1122334455667788;
        key2       = 64'h7766554433221100;
        
        $display("Time: %t | Bat dau ma hoa Triple DES...", $time);
        start = 1;
        #10 start = 0; 

        wait(done == 1);
        
        #5; 
        $display("--------------------------------------");
        $display("Ket qua Case 1:");
        $display("Input data : %h", input_data);
        $display("Keys       : K0=%h, K1=%h, K2=%h", key0, key1, key2);
        $display("Output data: %h", output_data);
        $display("--------------------------------------");

        #100;

        // --- CASE 2: Kiem tra tính tương thích DES đơn ---
        // Trong 3DES, nếu K0 = K1 = K2, thì kết quả sẽ giống hệt DES đơn lẻ
        input_data = 64'h0123456789ABCDEF;
        key0       = 64'h133457799BBCDFF1;
        key1       = 64'h133457799BBCDFF1;
        key2       = 64'h133457799BBCDFF1;

        start = 1;
        #10 start = 0;

        wait(done == 1);
        #5;
        $display("--------------------------------------");
        $display("Ket qua Case 2:");
        $display("Input data : %h", input_data);
        $display("Keys       : K0=%h, K1=%h, K2=%h", key0, key1, key2);
        $display("Output data: %h", output_data);
        $display("--------------------------------------");

        #100;
        $stop;
    end

endmodule