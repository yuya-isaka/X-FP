`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 04:32:18 PM
// Design Name: 
// Module Name: lfsr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module lfsr
#(
  parameter ms_limit = 100000_0
)
(clk,reseed,out);
    input reseed,clk;
    //input[31:0] seed;  

    output[15:0] out;

    reg[15:0] r;
    reg [15:0] seed=15'd100;
    //Tapsequence[32,3,2,0] 
    integer count = 0;
    reg CK;
            wire ms_pulse = count == ms_limit-1;
            always @(posedge clk)
                if (ms_pulse) begin
                   count <= 0;
                   CK <= ~CK; end
                else
                  count <= count+1;
    always @(posedge clk)begin
        if(reseed)
            r=seed;
        else begin
            r=(r>>1)|(r[3]^r[2]^r[1]^1'b1)<<15;
        end
    end

    assign out=r;
endmodule

/*
module lfsr    (
out             ,  // Output of the counter
enable          ,  // Enable  for counter
clk             ,  // clock input
data,
reset              // reset input
);

//----------Output Ports--------------
output [7:0] out;
//------------Input Ports--------------
input [7:0] data;
input enable, clk, reset;
//------------Internal Variables--------
reg [7:0] out;
wire        linear_feedback;

//-------------Code Starts Here-------
assign linear_feedback = !(out[7] ^ out[3]);

always @(posedge clk)
if (reset) begin // active high reset
  out <= 8'b0 ;
end else if (enable) begin
  out <= {out[6],out[5],
          out[4],out[3],
          out[2],out[1],
          out[0], linear_feedback};
end 

endmodule // End Of Module counter */