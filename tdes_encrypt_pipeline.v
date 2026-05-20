module tdes_encrypt_pipeline
(
    input             clock,
    input             rst,
    input             start,       
    input      [63:0] key0,
    input      [63:0] key1,
    input      [63:0] key2,
    input      [63:0] input_data,
    output reg [63:0] output_data,
    output reg        done
);

    reg [63:0] k0, k1, k2;
    always @(posedge clock or posedge rst) begin
        if (rst) begin
            k0 <= 64'd0;
            k1 <= 64'd0;
            k2 <= 64'd0;
        end else begin
            k0 <= key0;
            k1 <= key1;
            k2 <= key2;
        end
    end

    //-------------------------------------------------------
    // TẦNG 1: Khối DES Mã hóa (des0 - Encrypt)
    //-------------------------------------------------------
    wire [63:0] BLOCK0_1;  
    wire        block0_done;

    des_encrypt des0 (
        .clock    (clock),
        .rst      (rst),
        .start    (start), 
        .plaintext(input_data),
        .key      (k0),
        .dectext  (BLOCK0_1),
        .done     (block0_done)
    );

    reg [63:0] r_block0_out;
    reg        r_start1;

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            r_block0_out <= 64'd0;
            r_start1     <= 1'b0;
        end else begin
            r_block0_out <= BLOCK0_1;   // Chốt dữ liệu trung gian
            r_start1     <= block0_done; // Khối 0 xong sẽ kích hoạt khối 1 ở chu kỳ sau
        end
    end

    //-------------------------------------------------------
    // TẦNG 2: Khối DES Giải mã (des1 - Decrypt)
    //-------------------------------------------------------
    wire [63:0] BLOCK1_2;  
    wire        block1_done;

    des_decrypt des1 (
        .clock        (clock),
        .rst          (rst),
        .start        (r_start1), // Kích hoạt tự động bằng tín hiệu đã đồng bộ qua thanh ghi
        .ciphertext   (r_block0_out),
        .key          (k1),
        .plaintext_out(BLOCK1_2),
        .done         (block1_done)
    );

    // THANH GHI ĐỆM PIPELINE 2: Chốt dữ liệu và tín hiệu điều khiển giữa Tầng 2 và Tầng 3
    reg [63:0] r_block1_out;
    reg        r_start2;

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            r_block1_out <= 64'd0;
            r_start2     <= 1'b0;
        end else begin
            r_block1_out <= BLOCK1_2;   
            r_start2     <= block1_done; 
        end
    end

    //-------------------------------------------------------
    // TẦNG 3: Khối DES Mã hóa cuối (des2 - Encrypt)
    //-------------------------------------------------------
    wire [63:0] BLOCK2_O;  
    wire        block2_done;

    des_encrypt des2 (
        .clock    (clock),
        .rst      (rst),
        .start    (r_start2), 
        .plaintext(r_block1_out),
        .key      (k2),
        .dectext  (BLOCK2_O),
        .done     (block2_done)
    );

    //-------------------------------------------------------
    // ĐĂNG KÝ NGÕ RA HỆ THỐNG (OUTPUT STAGE)
    //-------------------------------------------------------
    always @(posedge clock or posedge rst) begin
        if (rst) begin
            output_data <= 64'd0;
            done        <= 1'b0;
        end else begin
            done <= block2_done; 
            if (block2_done) begin
                output_data <= BLOCK2_O;
            end
        end
    end

endmodule