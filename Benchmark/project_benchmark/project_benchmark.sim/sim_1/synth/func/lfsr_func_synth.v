// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Tue Jun 12 15:32:23 2018
// Host        : LAPTOP-IQMQIOPV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               H:/Benchmark/project_benchmark/project_benchmark.sim/sim_1/synth/func/lfsr_func_synth.v
// Design      : lfsr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module lfsr
   (clk,
    reseed,
    out);
  input clk;
  input reseed;
  output [31:0]out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]out;
  wire [15:0]out_OBUF;
  wire \r[15]_i_1_n_0 ;
  wire reseed;
  wire reseed_IBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[10]_inst 
       (.I(out_OBUF[10]),
        .O(out[10]));
  OBUF \out_OBUF[11]_inst 
       (.I(out_OBUF[11]),
        .O(out[11]));
  OBUF \out_OBUF[12]_inst 
       (.I(out_OBUF[12]),
        .O(out[12]));
  OBUF \out_OBUF[13]_inst 
       (.I(out_OBUF[13]),
        .O(out[13]));
  OBUF \out_OBUF[14]_inst 
       (.I(out_OBUF[14]),
        .O(out[14]));
  OBUF \out_OBUF[15]_inst 
       (.I(out_OBUF[15]),
        .O(out[15]));
  OBUF \out_OBUF[16]_inst 
       (.I(1'b0),
        .O(out[16]));
  OBUF \out_OBUF[17]_inst 
       (.I(1'b0),
        .O(out[17]));
  OBUF \out_OBUF[18]_inst 
       (.I(1'b0),
        .O(out[18]));
  OBUF \out_OBUF[19]_inst 
       (.I(1'b0),
        .O(out[19]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[20]_inst 
       (.I(1'b0),
        .O(out[20]));
  OBUF \out_OBUF[21]_inst 
       (.I(1'b0),
        .O(out[21]));
  OBUF \out_OBUF[22]_inst 
       (.I(1'b0),
        .O(out[22]));
  OBUF \out_OBUF[23]_inst 
       (.I(1'b0),
        .O(out[23]));
  OBUF \out_OBUF[24]_inst 
       (.I(1'b0),
        .O(out[24]));
  OBUF \out_OBUF[25]_inst 
       (.I(1'b0),
        .O(out[25]));
  OBUF \out_OBUF[26]_inst 
       (.I(1'b0),
        .O(out[26]));
  OBUF \out_OBUF[27]_inst 
       (.I(1'b0),
        .O(out[27]));
  OBUF \out_OBUF[28]_inst 
       (.I(1'b0),
        .O(out[28]));
  OBUF \out_OBUF[29]_inst 
       (.I(1'b0),
        .O(out[29]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[30]_inst 
       (.I(1'b0),
        .O(out[30]));
  OBUF \out_OBUF[31]_inst 
       (.I(1'b0),
        .O(out[31]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  OBUF \out_OBUF[8]_inst 
       (.I(out_OBUF[8]),
        .O(out[8]));
  OBUF \out_OBUF[9]_inst 
       (.I(out_OBUF[9]),
        .O(out[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \r[15]_i_1 
       (.I0(out_OBUF[1]),
        .I1(out_OBUF[2]),
        .O(\r[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[1]),
        .Q(out_OBUF[0]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[11]),
        .Q(out_OBUF[10]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[12]),
        .Q(out_OBUF[11]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[13]),
        .Q(out_OBUF[12]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[14]),
        .Q(out_OBUF[13]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[15]),
        .Q(out_OBUF[14]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\r[15]_i_1_n_0 ),
        .Q(out_OBUF[15]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[2]),
        .Q(out_OBUF[1]),
        .R(reseed_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[3]),
        .Q(out_OBUF[2]),
        .S(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[4]),
        .Q(out_OBUF[3]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[5]),
        .Q(out_OBUF[4]),
        .R(reseed_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[6]),
        .Q(out_OBUF[5]),
        .S(reseed_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[7]),
        .Q(out_OBUF[6]),
        .S(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[8]),
        .Q(out_OBUF[7]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[9]),
        .Q(out_OBUF[8]),
        .R(reseed_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_OBUF[10]),
        .Q(out_OBUF[9]),
        .R(reseed_IBUF));
  IBUF reseed_IBUF_inst
       (.I(reseed),
        .O(reseed_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
