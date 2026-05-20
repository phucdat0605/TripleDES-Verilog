module tripleDES_pipeline (
    input          clock,
    input          rst,
    input          start,           
    input   [63:0] key0,
    input   [63:0] key1,
    input   [63:0] key2,
    input   [63:0] plaintext_in,   
    
    output  [63:0] ciphertext_out, 
    output  [63:0] recovered_out,  
    output         done_all         
);

    wire [63:0] internal_cipher;  
    wire        encrypt_done;     

    //-------------------------------------------------------
    // PIPELINE REGISTERS (Thanh ghi đệm giữa Encrypt và Decrypt)
    //-------------------------------------------------------
    reg [63:0] pipe_cipher_reg;
    reg        pipe_start_reg;

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            pipe_cipher_reg <= 64'd0;
            pipe_start_reg  <= 1'b0;
        end else begin
            pipe_cipher_reg <= internal_cipher; 
            pipe_start_reg  <= encrypt_done;    
        end
    end

    // Khối mã hóa Triple DES 
    tdes_encrypt_pipeline encrypt1 (
        .clock       (clock),
        .rst         (rst),
        .start       (start),          
        .key0        (key0),
        .key1        (key1),
        .key2        (key2),
        .input_data  (plaintext_in),   
        .output_data (internal_cipher),
        .done        (encrypt_done)    
    );

    tdes_decrypt_pipeline decrypt1 (
        .clock        (clock),
        .rst          (rst),
        .start        (pipe_start_reg),   // Lấy xung start đã được đồng bộ qua 1 clock
        .key0         (key0),
        .key1         (key1),
        .key2         (key2),
        .data_in      (pipe_cipher_reg),  // Lấy dữ liệu đã được chốt ổn định từ thanh ghi
        .data_out     (recovered_out),  
        .done         (done_all)        
    );
    assign ciphertext_out = pipe_cipher_reg;

endmodule