
module ring_xnor_new(start, clk_s);
(* keep = "true" *) input start;
(* dont_touch = "yes" *)
output clk_s;
(* dont_touch = "yes" *)
wire X_1;  //synthesis keep
(* dont_touch = "yes" *)
wire X_2;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_3;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_4;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_5;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_6;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_7;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_8;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_9;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_10;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_11;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_12;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_13;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_14;  //* synthesis keep */
(* dont_touch = "yes" *)
wire X_15;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_16;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_17;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_18;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_19;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_20;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_21;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_22;  //* synthesis keep */
// (* dont_touch = "yes" *)
// wire X_23;  //* synthesis keep */
(* dont_touch = "yes" *)
assign clk_s = X_7;

LUT6 ro0 (.O (X_1), .I0 (X_15), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (start),.I5 (1'b1));
LUT6 ro1 (.O (X_2), .I0 (X_1), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro2 (.O (X_3), .I0 (X_2), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro3 (.O (X_4), .I0 (X_3), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro4 (.O (X_5), .I0 (X_4), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro5 (.O (X_6), .I0 (X_5), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro6 (.O (X_7), .I0 (X_6), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro7 (.O (X_8), .I0 (X_7), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro8 (.O (X_9), .I0 (X_8), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro9 (.O (X_10), .I0 (X_9), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro10 (.O (X_11), .I0 (X_10), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro11 (.O (X_12), .I0 (X_11), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro12 (.O (X_13), .I0 (X_12), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro13 (.O (X_14), .I0 (X_13), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
LUT6 ro14 (.O (X_15), .I0 (X_14), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro15 (.O (X_16), .I0 (X_15), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro16 (.O (X_17), .I0 (X_16), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro17 (.O (X_18), .I0 (X_17), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro18 (.O (X_19), .I0 (X_18), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro19 (.O (X_20), .I0 (X_19), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro20 (.O (X_21), .I0 (X_20), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro21 (.O (X_22), .I0 (X_21), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));
// LUT6 ro22 (.O (X_23), .I0 (X_22), .I1 (1'b0), .I2 (1'b0), .I3 (1'b0),.I4 (1'b1),.I5 (1'b1));

endmodule