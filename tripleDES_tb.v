`timescale 1ns / 1ps

module tripleDES_tb;

    reg         clock;
    reg         rst;
    reg         start;
    reg  [63:0] key0;
    reg  [63:0] key1;
    reg  [63:0] key2;
    reg  [63:0] plaintext_in;
    
    wire [63:0] ciphertext_out;
    wire [63:0] recovered_out;
    wire        done_all;

    // Cấu hình số lượng testcase ngẫu nhiên muốn chạy (Ví dụ: 100 cases)
    parameter NUMBER_OF_RANDOM_TESTS = 500;
    integer i;

    tripleDES uut (
        .clock(clock), .rst(rst), .start(start),
        .key0(key0), .key1(key1), .key2(key2),
        .plaintext_in(plaintext_in),
        .ciphertext_out(ciphertext_out), .recovered_out(recovered_out),
        .done_all(done_all)
    );

    // Tạo xung clock 100MHz
    initial begin
        clock = 0; forever #5 clock = ~clock; 
    end

    // TASK: Tự động chạy và kiểm tra kết quả (Self-checking)
    task run_test;
        input [63:0] p_in;
        input [63:0] k0_in, k1_in, k2_in;
        begin
            plaintext_in = p_in; key0 = k0_in; key1 = k1_in; key2 = k2_in;
            @(posedge clock); start = 1;     
            @(posedge clock); start = 0;     
            wait(done_all == 1);
            
            if (plaintext_in == recovered_out)
                $display("PASS | Plaintext: %h | Ciphertext: %h", plaintext_in, ciphertext_out);
            else
                $display("FAIL | Khong khop! Plaintext: %h | Recovered: %h", plaintext_in, recovered_out);
            #20;
        end
    endtask

    // KỊCH BẢN MÔ PHỎNG NGẪU NHIÊN (CONSTRAINED RANDOM)
    initial begin
        // 0. Khởi tạo & Reset ban đầu
        rst = 1; start = 0; 
        plaintext_in = 64'h0; key0 = 64'h0; key1 = 64'h0; key2 = 64'h0;
        #25 rst = 0; #20;

        // ========================================================
        // PHẦN 1: CHẠY CÁC CASE BIÊN BẮT BUỘC (Corner Cases)
        // ========================================================
        $display("--- CHẠY CÁC CASE BIÊN ĐỂ KHÓA ĐẦU/CUỐI BIÊN ĐỘ COVRAGE ---");
        run_test(64'h0000000000000000, 64'h0000000000000000, 64'h0000000000000000, 64'h0000000000000000); // Toàn 0
        run_test(64'hFFFFFFFFFFFFFFFF, 64'hFFFFFFFFFFFFFFFF, 64'hFFFFFFFFFFFFFFFF, 64'hFFFFFFFFFFFFFFFF); // Toàn 1

        // ========================================================
        // PHẦN 2: CHẠY SỐ LƯỢNG LỚN TESTCASE NGẪU NHIÊN (CRV)
        // ========================================================
        $display("--- BẮT ĐẦU SINH %0d TESTCASE NGẪU NHIÊN (MAX TOGGLE COVERAGE) ---", NUMBER_OF_RANDOM_TESTS);
        
        for (i = 0; i < NUMBER_OF_RANDOM_TESTS; i = i + 1) begin
            // Vì $urandom trả về số 32-bit, ta cần ghép 2 hàm để tạo ra dữ liệu 64-bit ngẫu nhiên hoàn toàn
            run_test(
                { $urandom(), $urandom() }, // Plaintext ngẫu nhiên
                { $urandom(), $urandom() }, // Key 0 ngẫu nhiên
                { $urandom(), $urandom() }, // Key 1 ngẫu nhiên
                { $urandom(), $urandom() }  // Key 2 ngẫu nhiên
            );
        end

        // ========================================================
        // PHẦN 3: KỊCH BẢN NGOẠI LỆ & ÉP LỖI (Branch/FEC)
        // ========================================================
        $display("--- CHẠY CÁC KỊCH BẢN NGOẠI LỆ CỦA BỘ ĐIỀU KHIỂN ---");
        
        // Ngắt Reset giữa chừng khi đang chạy
        plaintext_in = { $urandom(), $urandom() }; 
        key0 = { $urandom(), $urandom() }; key1 = key0; key2 = key0;
        start = 1; #10; start = 0;
        #80; rst = 1; #15; rst = 0; #20; 
        
        // Reset và Start cùng bật
        rst = 1; start = 1; #15; rst = 0; start = 0; #20;
        
        // Giữ Start không nhả
        plaintext_in = { $urandom(), $urandom() };
        start = 1; #150; start = 0; wait(done_all == 1); #20;

        // Nhiễu tín hiệu Start (Spike)
        start = 1; #2; start = 0; #50;

        // Fault Injection (Ép lỗi dây đầu ra để phủ nhánh Else của bộ check)
        $display("--- FAULT INJECTION ---");
        force uut.recovered_out = 64'hDEADBEEF00000000;
        run_test({ $urandom(), $urandom() }, { $urandom(), $urandom() }, { $urandom(), $urandom() }, { $urandom(), $urandom() });
        release uut.recovered_out;

        $display("--------------------------------------------");
        $display("Simulation Ended. Executed %0d Random + Boundary Cases.", NUMBER_OF_RANDOM_TESTS + 7);
        $stop;
    end
endmodule