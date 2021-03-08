module ring1(start, rst, clk_s);
input start; 
input rst;
output clk_s;
wire X_1; //synthesis keep 
wire X_2; //* synthesis keep */
wire X_3; //* synthesis keep */
wire X_4; //* synthesis keep */
wire X_5; //* synthesis keep */
wire X_6; //* synthesis keep */
wire X_7; //* synthesis keep */
wire clk_s_DUMMY;
assign clk_s = clk_s_DUMMY;
NAND2 NA (.I0(start), .I1(clk_s_DUMMY), .O(X_1));
//INV X_2 (.I(X_1), .O(X_2));
//INV X_3 (.I(X_2), .O(X_3));
//INV X_4 (.I(X_3), .O(X_4));
//INV X_5 (.I(X_4), .O(X_5));
NOR2 XO1 (.I0(X_1), .I1(rst), .O(X_2));
NOR2 XO2 (.I0(X_2), .I1(rst), .O(X_3));//INV X_6 (.I(X_5), .O(X_6));
NOR2 XO (.I0(X_3), .I1(rst), .O(X_4));
NOR2 NO (.I0(X_4), .I1(rst), .O(clk_s_DUMMY));
endmodule