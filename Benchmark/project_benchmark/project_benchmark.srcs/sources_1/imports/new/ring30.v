module ring30(start, clk_s);
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
//(* dont_touch = "yes" *)
//wire X_8;  //synthesis keep*/ 
//(* dont_touch = "yes" *)
//wire X_9;  //synthesis keep*/ 
//(* dont_touch = "yes" *)
//wire X_10; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_11; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_12; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_13; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_14; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_15; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_16; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_17; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_18; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_19; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_20; //* synthesis keep */
//(* dont_touch = "yes" *)
//wire X_21; //
//(* dont_touch = "yes" *)
wire X_22; //* synthesis keep */
wire X_23; //* synthesis keep */
wire X_24; //* synthesis keep */
wire X_25;
wire X_26; //* synthesis keep */
wire X_27; //* synthesis keep */
wire X_28; //* synthesis keep */
wire X_29; //* synthesis keep */
wire X_30; //* synthesis keep */
wire X_31; 
wire X_32; //* synthesis keep */
wire X_33; //* synthesis keep */
wire X_34; //* synthesis keep */
wire X_35;
(* dont_touch = "yes" *)
assign clk_s = X_4;
NAND2 NA (.I0(start), .I1(X_7), .O(X_1));
INV x_2 (.I(X_1), .O(X_2));
INV x_3 (.I(X_2), .O(X_3));
INV x_4 (.I(X_3), .O(X_4));
INV x_5 (.I(X_4), .O(X_5));
INV x_6 (.I(X_5), .O(X_6));
INV x_7 (.I(X_6), .O(X_7));
endmodule