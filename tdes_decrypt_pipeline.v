module tdes_decrypt_pipeline
(
    input             clock,
    input             rst,
    input             start,       
    input      [63:0] key0,
    input      [63:0] key1,
    input      [63:0] key2,
    input      [63:0] data_in,       
    output reg [63:0] data_out,  
    output reg        done
);

    //-------------------------------------------------------
    // ĐỒNG BỘ HÓA KHÓA ĐẦU VÀO (STAGE 0)
    //-------------------------------------------------------
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
    // TẦNG 1: Khối DES Giải mã (stage1 - Decrypt)
    //-------------------------------------------------------
    wire [63:0] block0_out;   
    wire        stage1_done;

    des_decrypt stage1 (
        .clock        (clock),
        .rst          (rst),
        .start        (start), 
        .ciphertext   (data_in),
        .key          (k2),
        .plaintext_out(block0_out),
        .done         (stage1_done)
    );

    // THANH GHI ĐỆM PIPELINE 1: Chốt dữ liệu và tín hiệu giữa Tầng 1 và Tầng 2
    reg [63:0] r_block0_out;
    reg        r_start1;

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            r_block0_out <= 64'd0;
            r_start1     <= 1'b0;
        end else begin
            r_block0_out <= block0_out;   // Chốt dữ liệu trung gian
            r_start1     <= stage1_done; // Khối 1 xong kích hoạt khối 2 ở chu kỳ sau
        end
    end

    //-------------------------------------------------------
    // TẦNG 2: Khối DES Mã hóa (stage2 - Encrypt)
    //-------------------------------------------------------
    wire [63:0] block1_out;   
    wire        stage2_done;

    des_encrypt stage2 (
        .clock    (clock),
        .rst      (rst),
        .start    (r_start1), 
        .plaintext(r_block0_out),
        .key      (k1),
        .dectext  (block1_out),
        .done     (stage2_done)
    );

    // THANH GHI ĐỆM PIPELINE 2: Chốt dữ liệu và tín hiệu giữa Tầng 2 và Tầng 3
    reg [63:0] r_block1_out;
    reg        r_start2;

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            r_block1_out <= 64'd0;
            r_start2     <= 1'b0;
        end else begin
            r_block1_out <= block1_out;   
            r_start2     <= stage2_done; 
        end
    end

    //-------------------------------------------------------
    // TẦNG 3: Khối DES Giải mã cuối (stage3 - Decrypt)
    //-------------------------------------------------------
    wire [63:0] block2_out;   
    wire        stage3_done;

    des_decrypt stage3 (
        .clock        (clock),
        .rst          (rst),
        .start        (r_start2), 
        .ciphertext   (r_block1_out),
        .key          (k0),
        .plaintext_out(block2_out),
        .done         (stage3_done)
    );

    //-------------------------------------------------------
    // ĐĂNG KÝ NGÕ RA HỆ THỐNG (OUTPUT STAGE)
    //-------------------------------------------------------
    always @(posedge clock or posedge rst) begin
        if (rst) begin
            data_out <= 64'd0;
            done     <= 1'b0;
        end else begin
            done <= stage3_done; 
            if (stage3_done) begin
                data_out <= block2_out;
            end
        end
    end

endmodule