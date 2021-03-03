
module uart_tx
(
    input wire clk, reset,
    input wire tx_start, baud_tick,
    input wire [7:0] tx_data,
    output reg tx_done_tick,
    output wire tx
);

localparam [1:0] idle  = 2'b00, start = 2'b01, data  = 2'b10, stop  = 2'b11;

reg [1:0] state_reg, state_next;
reg [4:0] baud_reg, baud_next;
reg [4:0] n_reg, n_next;
reg [7:0] d_reg, d_next;
reg tx_reg, tx_next;

always @(posedge clk, posedge reset) begin
    if (reset)
    begin
        state_reg <= idle;
        baud_reg  <= 0;
        n_reg     <= 0;
        d_reg     <= 0;
        tx_reg    <= 1'b1;
    end
    else
    begin
        state_reg <= state_next;
        baud_reg  <= baud_next;
        n_reg     <= n_next;
        d_reg     <= d_next;
        tx_reg    <= tx_next;
    end
end

always @* begin
    state_next   = state_reg;
    tx_done_tick = 1'b0;
    baud_next    = baud_reg;
    n_next       = n_reg;
    d_next       = d_reg;
    tx_next      = tx_reg;

    case (state_reg)
        idle:
        begin
            tx_next = 1'b1;
            if (tx_start) begin
                state_next = start;
                baud_next  = 0;
                d_next     = tx_data;
            end
        end

        start:
        begin
            tx_next = 1'b0;
            if(baud_tick)
                baud_next = baud_reg + 1;
            else if(baud_reg == 16) begin
                state_next = data;
                baud_next  = 0;
                n_next     = 0;
            end
        end

        data:
        begin
            tx_next = d_reg[0];
            if(baud_tick)
                baud_next = baud_reg + 1;
            else if(baud_reg == 16) begin
                d_next    = d_reg >> 1;
                baud_next = 0;
                n_next    = n_reg + 1;
            end
            else if(n_reg == 8)
                state_next = stop;
        end

        stop:
        begin
            tx_next = 1'b1;
            if(baud_tick)
                baud_next = baud_reg + 1;
            else if(baud_reg == 16) begin
                state_next = idle;
                tx_done_tick = 1'b1;
            end
        end
    endcase
end

assign tx = tx_reg;

endmodule
