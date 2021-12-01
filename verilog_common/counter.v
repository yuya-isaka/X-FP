
module counter (
    clk,
    rst,
    c1000
);

input clk, rst;
output c1000;
reg [31:0] c1000;
reg state;

always@(posedge clk or posedge rst) begin
    if(rst == 1'b1) begin
        c1000 <= 32'b0;
        state <= 1'b0;
    end
    else begin
        if(state == 1'b0) begin
            c1000 <= 32'b0;
            state <= 1'b1;
        end
        else begin
            c1000 <= c1000 + 1'b1;
        end
    end
end

endmodule








