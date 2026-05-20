module des_encrypt (
    input         clock,
    input         rst,     
    input         start,   
    input  [63:0] plaintext,
    input  [63:0] key,
    output reg [63:0] dectext,
    output reg        done   
);
//-----------IP----------
    wire [63:0] ip_out;
    IP ip1 (.plaintext(plaintext), .ip_out(ip_out));
    wire [31:0] plainleft  = ip_out[63:32];
    wire [31:0] plainright = ip_out[31:0];
//-----------PC1---------
    wire [27:0] C0, D0;
    pc1 u_pc1 (.key64(key), .C0(C0), .D0(D0));
//--------Key Rotation------------
    function [27:0] rotl28;
        input [27:0] x;
        input [1:0]  sh;
        begin
            rotl28 = (sh == 2'd1) ? {x[26:0], x[27]} : {x[25:0], x[27:26]};
        end
    endfunction

// Vòng 1, 2, 9, 16 dịch 1 bit. Các vòng còn lại dịch 2 bit.
    wire [27:0] C1  = rotl28(C0 , 2'd1);
    wire [27:0] D1  = rotl28(D0 , 2'd1);
    wire [27:0] C2  = rotl28(C1 , 2'd1);
    wire [27:0] D2  = rotl28(D1 , 2'd1);
    
    wire [27:0] C3  = rotl28(C2 , 2'd2);
    wire [27:0] D3  = rotl28(D2 , 2'd2);
    wire [27:0] C4  = rotl28(C3 , 2'd2);
    wire [27:0] D4  = rotl28(D3 , 2'd2);
    wire [27:0] C5  = rotl28(C4 , 2'd2);
    wire [27:0] D5  = rotl28(D4 , 2'd2);
    wire [27:0] C6  = rotl28(C5 , 2'd2);
    wire [27:0] D6  = rotl28(D5 , 2'd2);
    wire [27:0] C7  = rotl28(C6 , 2'd2);
    wire [27:0] D7  = rotl28(D6 , 2'd2);
    wire [27:0] C8  = rotl28(C7 , 2'd2);
    wire [27:0] D8  = rotl28(D7 , 2'd2);
    
    wire [27:0] C9  = rotl28(C8 , 2'd1);
    wire [27:0] D9  = rotl28(D8 , 2'd1);
    
    wire [27:0] C10 = rotl28(C9 , 2'd2);
    wire [27:0] D10 = rotl28(D9 , 2'd2);
    wire [27:0] C11 = rotl28(C10, 2'd2);
    wire [27:0] D11 = rotl28(D10, 2'd2);
    wire [27:0] C12 = rotl28(C11, 2'd2);
    wire [27:0] D12 = rotl28(D11, 2'd2);
    wire [27:0] C13 = rotl28(C12, 2'd2);
    wire [27:0] D13 = rotl28(D12, 2'd2);
    wire [27:0] C14 = rotl28(C13, 2'd2);
    wire [27:0] D14 = rotl28(D13, 2'd2);
    wire [27:0] C15 = rotl28(C14, 2'd2);
    wire [27:0] D15 = rotl28(D14, 2'd2);
    
    wire [27:0] C16 = rotl28(C15, 2'd1);
    wire [27:0] D16 = rotl28(D15, 2'd1);

    wire [47:0] K1 ,K2 ,K3 ,K4 ,K5 ,K6 ,K7 ,K8 ,
                K9 ,K10,K11,K12,K13,K14,K15,K16;
//-----------------PC2--------------------------
    pc2 p2_01(.cd56({C1 ,D1 }), .k48(K1 ));
    pc2 p2_02(.cd56({C2 ,D2 }), .k48(K2 ));
    pc2 p2_03(.cd56({C3 ,D3 }), .k48(K3 ));
    pc2 p2_04(.cd56({C4 ,D4 }), .k48(K4 ));
    pc2 p2_05(.cd56({C5 ,D5 }), .k48(K5 ));
    pc2 p2_06(.cd56({C6 ,D6 }), .k48(K6 ));
    pc2 p2_07(.cd56({C7 ,D7 }), .k48(K7 ));
    pc2 p2_08(.cd56({C8 ,D8 }), .k48(K8 ));
    pc2 p2_09(.cd56({C9 ,D9 }), .k48(K9 ));
    pc2 p2_10(.cd56({C10,D10}), .k48(K10));
    pc2 p2_11(.cd56({C11,D11}), .k48(K11));
    pc2 p2_12(.cd56({C12,D12}), .k48(K12));
    pc2 p2_13(.cd56({C13,D13}), .k48(K13));
    pc2 p2_14(.cd56({C14,D14}), .k48(K14));
    pc2 p2_15(.cd56({C15,D15}), .k48(K15));
    pc2 p2_16(.cd56({C16,D16}), .k48(K16));

    // ----------------- FSM ---------------------
    localparam IDLE=5'd0, R1=5'd1, R2=5'd2, R3=5'd3, R4=5'd4,
               R5=5'd5, R6=5'd6, R7=5'd7, R8=5'd8, R9=5'd9,
               R10=5'd10, R11=5'd11, R12=5'd12, R13=5'd13, R14=5'd14,
               R15=5'd15, R16=5'd16, DONE=5'd17;

    reg  [4:0] state, nstate;

    reg [31:0] l_next, r_next;

    wire [31:0] inL = (state==IDLE || state==R1) ? plainleft  : l_next;
    wire [31:0] inR = (state==IDLE || state==R1) ? plainright : r_next;

    wire [47:0] subk_sel =
        (state==R1 ) ? K1  :
        (state==R2 ) ? K2  :
        (state==R3 ) ? K3  :
        (state==R4 ) ? K4  :
        (state==R5 ) ? K5  :
        (state==R6 ) ? K6  :
        (state==R7 ) ? K7  :
        (state==R8 ) ? K8  :
        (state==R9 ) ? K9  :
        (state==R10) ? K10 :
        (state==R11) ? K11 :
        (state==R12) ? K12 :
        (state==R13) ? K13 :
        (state==R14) ? K14 :
        (state==R15) ? K15 :
        (state==R16) ? K16 : 48'h0;

    wire [31:0] f_out;
    f_funct f1 (.R(inR), .K(subk_sel), .F(f_out));

    always @* begin
        case (state)
            IDLE: nstate = (start ? R1 : IDLE);
            R1  : nstate = R2;   R2  : nstate = R3;
            R3  : nstate = R4;   R4  : nstate = R5;
            R5  : nstate = R6;   R6  : nstate = R7;
            R7  : nstate = R8;   R8  : nstate = R9;
            R9  : nstate = R10;  R10 : nstate = R11;
            R11 : nstate = R12;  R12 : nstate = R13;
            R13 : nstate = R14;  R14 : nstate = R15;
            R15 : nstate = R16;  R16 : nstate = DONE;
            DONE: nstate = (start ? DONE : IDLE);
            default: nstate = IDLE;
        endcase
    end

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            done  <= 1'b0;
        end else begin
            state <= nstate;
            done  <= (state == DONE);
        end
    end

    wire [63:0] pre_fp = {r_next, l_next};  
    wire [63:0] fp_out;
    IP_1 uIP_1 (.in64(pre_fp), .out64(fp_out));

    always @(posedge clock or posedge rst) begin
        if (rst) begin
            l_next  <= 32'd0;
            r_next  <= 32'd0;
            dectext <= 64'd0;
        end else begin
            case (state)
                R1,R2,R3,R4,R5,R6,R7,R8,
                R9,R10,R11,R12,R13,R14,R15,R16: begin
                    l_next <= inR;
                    r_next <= inL ^ f_out;
                end
                DONE: begin
                    dectext <= fp_out;
                end
                default: ; 
            endcase
        end
    end

endmodule
