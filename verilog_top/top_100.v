
module top_100 #(
    // 100000
    parameter ms_limit = 1000
)
(
    input  wire clk, reset,
    output wire tx
);

    wire [31:0] Q;
    reg  [8:0] r_reg;
    wire [8:0] r_next;
    wire tick;
    reg send=1'b0;
    reg tx_start;
    reg [2:0] state_reg, state_next;
    wire tx_done_tick;
    reg [7:0] tx_d_next, tx_d_reg;
    wire [200:0] clk_in;
    reg [200:0] ro_mode;
    reg clk_out;


    ring_xor_new ro0 (.start(ro_mode[2]), .clk_s(clk_in[2]));
    ring_xor_new ro1 (.start(ro_mode[4]), .clk_s(clk_in[4]));
    ring_xor_new ro2 (.start(ro_mode[6]), .clk_s(clk_in[6]));
    ring_xor_new ro3 (.start(ro_mode[8]), .clk_s(clk_in[8]));
    ring_xor_new ro4 (.start(ro_mode[10]), .clk_s(clk_in[10]));
    ring_xor_new ro5 (.start(ro_mode[12]), .clk_s(clk_in[12]));
    ring_xor_new ro6 (.start(ro_mode[14]), .clk_s(clk_in[14]));
    ring_xor_new ro7 (.start(ro_mode[16]), .clk_s(clk_in[16]));
    ring_xor_new ro8 (.start(ro_mode[18]), .clk_s(clk_in[18]));
    ring_xor_new ro9 (.start(ro_mode[20]), .clk_s(clk_in[20]));
    ring_xor_new ro10 (.start(ro_mode[22]), .clk_s(clk_in[22]));
    ring_xor_new ro11 (.start(ro_mode[24]), .clk_s(clk_in[24]));
    ring_xor_new ro12 (.start(ro_mode[26]), .clk_s(clk_in[26]));
    ring_xor_new ro13 (.start(ro_mode[28]), .clk_s(clk_in[28]));
    ring_xor_new ro14 (.start(ro_mode[30]), .clk_s(clk_in[30]));
    ring_xor_new ro15 (.start(ro_mode[32]), .clk_s(clk_in[32]));
    ring_xor_new ro16 (.start(ro_mode[34]), .clk_s(clk_in[34]));
    ring_xor_new ro17 (.start(ro_mode[36]), .clk_s(clk_in[36]));
    ring_xor_new ro18 (.start(ro_mode[38]), .clk_s(clk_in[38]));
    ring_xor_new ro19 (.start(ro_mode[40]), .clk_s(clk_in[40]));
    ring_xor_new ro20 (.start(ro_mode[42]), .clk_s(clk_in[42]));
    ring_xor_new ro21 (.start(ro_mode[44]), .clk_s(clk_in[44]));
    ring_xor_new ro22 (.start(ro_mode[46]), .clk_s(clk_in[46]));
    ring_xor_new ro23 (.start(ro_mode[48]), .clk_s(clk_in[48]));
    ring_xor_new ro24 (.start(ro_mode[50]), .clk_s(clk_in[50]));
    ring_xor_new ro25 (.start(ro_mode[52]), .clk_s(clk_in[52]));
    ring_xor_new ro26 (.start(ro_mode[54]), .clk_s(clk_in[54]));
    ring_xor_new ro27 (.start(ro_mode[56]), .clk_s(clk_in[56]));
    ring_xor_new ro28 (.start(ro_mode[58]), .clk_s(clk_in[58]));
    ring_xor_new ro29 (.start(ro_mode[60]), .clk_s(clk_in[60]));
    ring_xor_new ro30 (.start(ro_mode[62]), .clk_s(clk_in[62]));
    ring_xor_new ro31 (.start(ro_mode[64]), .clk_s(clk_in[64]));
    ring_xor_new ro32 (.start(ro_mode[66]), .clk_s(clk_in[66]));
    ring_xor_new ro33 (.start(ro_mode[68]), .clk_s(clk_in[68]));
    ring_xor_new ro34 (.start(ro_mode[70]), .clk_s(clk_in[70]));
    ring_xor_new ro35 (.start(ro_mode[72]), .clk_s(clk_in[72]));
    ring_xor_new ro36 (.start(ro_mode[74]), .clk_s(clk_in[74]));
    ring_xor_new ro37 (.start(ro_mode[76]), .clk_s(clk_in[76]));
    ring_xor_new ro38 (.start(ro_mode[78]), .clk_s(clk_in[78]));
    ring_xor_new ro39 (.start(ro_mode[80]), .clk_s(clk_in[80]));
    ring_xor_new ro40 (.start(ro_mode[82]), .clk_s(clk_in[82]));
    ring_xor_new ro41 (.start(ro_mode[84]), .clk_s(clk_in[84]));
    ring_xor_new ro42 (.start(ro_mode[86]), .clk_s(clk_in[86]));
    ring_xor_new ro43 (.start(ro_mode[88]), .clk_s(clk_in[88]));
    ring_xor_new ro44 (.start(ro_mode[90]), .clk_s(clk_in[90]));
    ring_xor_new ro45 (.start(ro_mode[92]), .clk_s(clk_in[92]));
    ring_xor_new ro46 (.start(ro_mode[94]), .clk_s(clk_in[94]));
    ring_xor_new ro47 (.start(ro_mode[96]), .clk_s(clk_in[96]));
    ring_xor_new ro48 (.start(ro_mode[98]), .clk_s(clk_in[98]));
    ring_xor_new ro49 (.start(ro_mode[100]), .clk_s(clk_in[100]));
    ring_xor_new ro50 (.start(ro_mode[102]), .clk_s(clk_in[102]));
    ring_xor_new ro51 (.start(ro_mode[104]), .clk_s(clk_in[104]));
    ring_xor_new ro52 (.start(ro_mode[106]), .clk_s(clk_in[106]));
    ring_xor_new ro53 (.start(ro_mode[108]), .clk_s(clk_in[108]));
    ring_xor_new ro54 (.start(ro_mode[110]), .clk_s(clk_in[110]));
    ring_xor_new ro55 (.start(ro_mode[112]), .clk_s(clk_in[112]));
    ring_xor_new ro56 (.start(ro_mode[114]), .clk_s(clk_in[114]));
    ring_xor_new ro57 (.start(ro_mode[116]), .clk_s(clk_in[116]));
    ring_xor_new ro58 (.start(ro_mode[118]), .clk_s(clk_in[118]));
    ring_xor_new ro59 (.start(ro_mode[120]), .clk_s(clk_in[120]));
    ring_xor_new ro60 (.start(ro_mode[122]), .clk_s(clk_in[122]));
    ring_xor_new ro61 (.start(ro_mode[124]), .clk_s(clk_in[124]));
    ring_xor_new ro62 (.start(ro_mode[126]), .clk_s(clk_in[126]));
    ring_xor_new ro63 (.start(ro_mode[128]), .clk_s(clk_in[128]));
    ring_xor_new ro64 (.start(ro_mode[130]), .clk_s(clk_in[130]));
    ring_xor_new ro65 (.start(ro_mode[132]), .clk_s(clk_in[132]));
    ring_xor_new ro66 (.start(ro_mode[134]), .clk_s(clk_in[134]));
    ring_xor_new ro67 (.start(ro_mode[136]), .clk_s(clk_in[136]));
    ring_xor_new ro68 (.start(ro_mode[138]), .clk_s(clk_in[138]));
    ring_xor_new ro69 (.start(ro_mode[140]), .clk_s(clk_in[140]));
    ring_xor_new ro70 (.start(ro_mode[142]), .clk_s(clk_in[142]));
    ring_xor_new ro71 (.start(ro_mode[144]), .clk_s(clk_in[144]));
    ring_xor_new ro72 (.start(ro_mode[146]), .clk_s(clk_in[146]));
    ring_xor_new ro73 (.start(ro_mode[148]), .clk_s(clk_in[148]));
    ring_xor_new ro74 (.start(ro_mode[150]), .clk_s(clk_in[150]));
    ring_xor_new ro75 (.start(ro_mode[152]), .clk_s(clk_in[152]));
    ring_xor_new ro76 (.start(ro_mode[154]), .clk_s(clk_in[154]));
    ring_xor_new ro77 (.start(ro_mode[156]), .clk_s(clk_in[156]));
    ring_xor_new ro78 (.start(ro_mode[158]), .clk_s(clk_in[158]));
    ring_xor_new ro79 (.start(ro_mode[160]), .clk_s(clk_in[160]));
    ring_xor_new ro80 (.start(ro_mode[162]), .clk_s(clk_in[162]));
    ring_xor_new ro81 (.start(ro_mode[164]), .clk_s(clk_in[164]));
    ring_xor_new ro82 (.start(ro_mode[166]), .clk_s(clk_in[166]));
    ring_xor_new ro83 (.start(ro_mode[168]), .clk_s(clk_in[168]));
    ring_xor_new ro84 (.start(ro_mode[170]), .clk_s(clk_in[170]));
    ring_xor_new ro85 (.start(ro_mode[172]), .clk_s(clk_in[172]));
    ring_xor_new ro86 (.start(ro_mode[174]), .clk_s(clk_in[174]));
    ring_xor_new ro87 (.start(ro_mode[176]), .clk_s(clk_in[176]));
    ring_xor_new ro88 (.start(ro_mode[178]), .clk_s(clk_in[178]));
    ring_xor_new ro89 (.start(ro_mode[180]), .clk_s(clk_in[180]));
    ring_xor_new ro90 (.start(ro_mode[182]), .clk_s(clk_in[182]));
    ring_xor_new ro91 (.start(ro_mode[184]), .clk_s(clk_in[184]));
    ring_xor_new ro92 (.start(ro_mode[186]), .clk_s(clk_in[186]));
    ring_xor_new ro93 (.start(ro_mode[188]), .clk_s(clk_in[188]));
    ring_xor_new ro94 (.start(ro_mode[190]), .clk_s(clk_in[190]));
    ring_xor_new ro95 (.start(ro_mode[192]), .clk_s(clk_in[192]));
    ring_xor_new ro96 (.start(ro_mode[194]), .clk_s(clk_in[194]));
    ring_xor_new ro97 (.start(ro_mode[196]), .clk_s(clk_in[196]));
    ring_xor_new ro98 (.start(ro_mode[198]), .clk_s(clk_in[198]));
    ring_xor_new ro99 (.start(ro_mode[200]), .clk_s(clk_in[200]));

    // ms_pulse
    integer count = 0;
    wire ms_pulse = count == ms_limit-1;
    always @(posedge clk) begin
        if (ms_pulse)
            count <= 0;
        else
            count <= count+1;
    end

    // reset counter tick
    // fsa
    integer count1 = 0;
    // 2_0000_0000
    wire fsa = count1 == 2_0000_00-1 && ms_pulse;
    always @(posedge clk) begin
        if (fsa)
            count1 <= 0;
        else
            count1 <= count1+1;
    end

    // start transport using UART
    // serx
    // -1_0000_0000
    // 2_0000_0000
    integer count2 = -1_0000_00;
    wire serx = count2 == 2_0000_00-1 && ms_pulse;
    always @(posedge clk) begin
        if (serx)
            count2 <= 0;
        else
            count2 <= count2+1;
    end

    // change RO tick
    // sec_pulse
    integer ms_count = 0;
    wire sec_pulse = ms_count == 1_000-1 && ms_pulse;
    always @(posedge clk) begin
        if (ms_pulse) begin
            if (sec_pulse)
                ms_count <= 0;
            else
                ms_count <= ms_count+1;
        end
    end


    reg [12:0] sec_count = 0;
    always @(posedge clk) begin
        if (sec_pulse)
            sec_count <= sec_count+1;
    end


    always @( sec_count) begin
        if(sec_count % 2 == 0) begin
            if(sec_count < 202)begin
                ro_mode[sec_count] <= 1'b1;
                clk_out <= clk_in[sec_count];
            end
        end
        else begin
            if(sec_count >= 202) begin
                send <= 1'b0;
            end
            else begin
                ro_mode[sec_count-1] <= 1'b0;
                send <= 1'b1;
            end
        end
    end

    counter counter(.clk(clk_out), .rst(fsa), .c1000(Q));

    always @(posedge reset, posedge clk) begin
        if(reset)
            tx_d_reg <= 8'b00000000;
        else
            tx_d_reg <= tx_d_next;
    end

    // FSM states
    localparam [2:0] idle = 3'b000, transmit_d3  = 3'b001, transmit_d2  = 3'b010, transmit_d1  = 3'b011, transmit_d0  = 3'b100;

    always @(posedge reset, posedge clk) begin
        if(reset)
            state_reg <= idle;
        else
            state_reg <= state_next;
    end

    always @* begin
        // defaults
        state_next = state_reg;
        tx_d_next  = 8'b00000000;
        tx_start   = 1'b0;
        case(state_reg)
            idle:
            begin
                if(serx) begin
                    if(send == 1'b1) begin
                        tx_d_next  = Q[31:24];
                        state_next = transmit_d3;
                    end
                end
            end

            transmit_d3:
            begin
                tx_start = 1'b1;
                if(tx_done_tick) begin
                    tx_d_next  = Q[23:16];
                    state_next = transmit_d2;
                end
            end

            transmit_d2:
            begin
                tx_start = 1'b1;
                if(tx_done_tick) begin
                    tx_d_next  =Q[15:8];
                    state_next = transmit_d1;
                end
            end

            transmit_d1:
            begin
                tx_start = 1'b1;
                if(tx_done_tick) begin
                    tx_d_next  = Q[7:0];
                    state_next = transmit_d0;
                end
            end

            transmit_d0:
            begin
                tx_start = 1'b1;
                if(tx_done_tick)
                    state_next = idle;
            end
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset)
            r_reg <= 0;
        else
            r_reg <= r_next;
    end

    assign r_next = r_reg == 326 ? 0 : r_reg + 1;
    assign tick = r_reg == 326 ? 1 : 0;

    uart_tx uart_tx_unit (.clk(clk), .reset(reset), .tx_start(tx_start), .baud_tick(tick), .tx_data(tx_d_reg), .tx_done_tick(tx_done_tick), .tx(tx));

endmodule
