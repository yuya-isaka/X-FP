// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.1 (win64) Build 1215546 Mon Apr 27 19:22:08 MDT 2015
// Date        : Mon Jun 11 16:33:56 2018
// Host        : LAPTOP-IQMQIOPV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               H:/Benchmark/project_benchmark/project_benchmark.sim/sim_1/synth/func/s9234_func_synth.v
// Design      : lfsr
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NUM_BITS = "32" *) 
(* NotValidForBitStream *)
module lfsr
   (i_Clk,
    i_Enable,
    i_Seed_DV,
    i_Seed_Data,
    o_LFSR_Data,
    o_LFSR_Done);
  input i_Clk;
  input i_Enable;
  input i_Seed_DV;
  input [31:0]i_Seed_Data;
  output [31:0]o_LFSR_Data;
  output o_LFSR_Done;

  wire i_Clk;
  wire i_Clk_IBUF;
  wire i_Clk_IBUF_BUFG;
  wire i_Enable;
  wire i_Enable_IBUF;
  wire i_Seed_DV;
  wire i_Seed_DV_IBUF;
  wire [31:0]i_Seed_Data;
  wire [31:0]i_Seed_Data_IBUF;
  wire [31:0]o_LFSR_Data;
  wire [31:0]o_LFSR_Data_OBUF;
  wire o_LFSR_Done;
  wire o_LFSR_Done_OBUF;
  wire o_LFSR_Done_OBUF_inst_i_10_n_0;
  wire o_LFSR_Done_OBUF_inst_i_11_n_0;
  wire o_LFSR_Done_OBUF_inst_i_12_n_0;
  wire o_LFSR_Done_OBUF_inst_i_13_n_0;
  wire o_LFSR_Done_OBUF_inst_i_14_n_0;
  wire o_LFSR_Done_OBUF_inst_i_1_n_2;
  wire o_LFSR_Done_OBUF_inst_i_1_n_3;
  wire o_LFSR_Done_OBUF_inst_i_2_n_0;
  wire o_LFSR_Done_OBUF_inst_i_2_n_1;
  wire o_LFSR_Done_OBUF_inst_i_2_n_2;
  wire o_LFSR_Done_OBUF_inst_i_2_n_3;
  wire o_LFSR_Done_OBUF_inst_i_3_n_0;
  wire o_LFSR_Done_OBUF_inst_i_4_n_0;
  wire o_LFSR_Done_OBUF_inst_i_5_n_0;
  wire o_LFSR_Done_OBUF_inst_i_6_n_0;
  wire o_LFSR_Done_OBUF_inst_i_6_n_1;
  wire o_LFSR_Done_OBUF_inst_i_6_n_2;
  wire o_LFSR_Done_OBUF_inst_i_6_n_3;
  wire o_LFSR_Done_OBUF_inst_i_7_n_0;
  wire o_LFSR_Done_OBUF_inst_i_8_n_0;
  wire o_LFSR_Done_OBUF_inst_i_9_n_0;
  wire [31:0]p_0_in;
  wire [3:3]NLW_o_LFSR_Done_OBUF_inst_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_o_LFSR_Done_OBUF_inst_i_1_O_UNCONNECTED;
  wire [3:0]NLW_o_LFSR_Done_OBUF_inst_i_2_O_UNCONNECTED;
  wire [3:0]NLW_o_LFSR_Done_OBUF_inst_i_6_O_UNCONNECTED;

  BUFG i_Clk_IBUF_BUFG_inst
       (.I(i_Clk_IBUF),
        .O(i_Clk_IBUF_BUFG));
  IBUF i_Clk_IBUF_inst
       (.I(i_Clk),
        .O(i_Clk_IBUF));
  IBUF i_Enable_IBUF_inst
       (.I(i_Enable),
        .O(i_Enable_IBUF));
  IBUF i_Seed_DV_IBUF_inst
       (.I(i_Seed_DV),
        .O(i_Seed_DV_IBUF));
  IBUF \i_Seed_Data_IBUF[0]_inst 
       (.I(i_Seed_Data[0]),
        .O(i_Seed_Data_IBUF[0]));
  IBUF \i_Seed_Data_IBUF[10]_inst 
       (.I(i_Seed_Data[10]),
        .O(i_Seed_Data_IBUF[10]));
  IBUF \i_Seed_Data_IBUF[11]_inst 
       (.I(i_Seed_Data[11]),
        .O(i_Seed_Data_IBUF[11]));
  IBUF \i_Seed_Data_IBUF[12]_inst 
       (.I(i_Seed_Data[12]),
        .O(i_Seed_Data_IBUF[12]));
  IBUF \i_Seed_Data_IBUF[13]_inst 
       (.I(i_Seed_Data[13]),
        .O(i_Seed_Data_IBUF[13]));
  IBUF \i_Seed_Data_IBUF[14]_inst 
       (.I(i_Seed_Data[14]),
        .O(i_Seed_Data_IBUF[14]));
  IBUF \i_Seed_Data_IBUF[15]_inst 
       (.I(i_Seed_Data[15]),
        .O(i_Seed_Data_IBUF[15]));
  IBUF \i_Seed_Data_IBUF[16]_inst 
       (.I(i_Seed_Data[16]),
        .O(i_Seed_Data_IBUF[16]));
  IBUF \i_Seed_Data_IBUF[17]_inst 
       (.I(i_Seed_Data[17]),
        .O(i_Seed_Data_IBUF[17]));
  IBUF \i_Seed_Data_IBUF[18]_inst 
       (.I(i_Seed_Data[18]),
        .O(i_Seed_Data_IBUF[18]));
  IBUF \i_Seed_Data_IBUF[19]_inst 
       (.I(i_Seed_Data[19]),
        .O(i_Seed_Data_IBUF[19]));
  IBUF \i_Seed_Data_IBUF[1]_inst 
       (.I(i_Seed_Data[1]),
        .O(i_Seed_Data_IBUF[1]));
  IBUF \i_Seed_Data_IBUF[20]_inst 
       (.I(i_Seed_Data[20]),
        .O(i_Seed_Data_IBUF[20]));
  IBUF \i_Seed_Data_IBUF[21]_inst 
       (.I(i_Seed_Data[21]),
        .O(i_Seed_Data_IBUF[21]));
  IBUF \i_Seed_Data_IBUF[22]_inst 
       (.I(i_Seed_Data[22]),
        .O(i_Seed_Data_IBUF[22]));
  IBUF \i_Seed_Data_IBUF[23]_inst 
       (.I(i_Seed_Data[23]),
        .O(i_Seed_Data_IBUF[23]));
  IBUF \i_Seed_Data_IBUF[24]_inst 
       (.I(i_Seed_Data[24]),
        .O(i_Seed_Data_IBUF[24]));
  IBUF \i_Seed_Data_IBUF[25]_inst 
       (.I(i_Seed_Data[25]),
        .O(i_Seed_Data_IBUF[25]));
  IBUF \i_Seed_Data_IBUF[26]_inst 
       (.I(i_Seed_Data[26]),
        .O(i_Seed_Data_IBUF[26]));
  IBUF \i_Seed_Data_IBUF[27]_inst 
       (.I(i_Seed_Data[27]),
        .O(i_Seed_Data_IBUF[27]));
  IBUF \i_Seed_Data_IBUF[28]_inst 
       (.I(i_Seed_Data[28]),
        .O(i_Seed_Data_IBUF[28]));
  IBUF \i_Seed_Data_IBUF[29]_inst 
       (.I(i_Seed_Data[29]),
        .O(i_Seed_Data_IBUF[29]));
  IBUF \i_Seed_Data_IBUF[2]_inst 
       (.I(i_Seed_Data[2]),
        .O(i_Seed_Data_IBUF[2]));
  IBUF \i_Seed_Data_IBUF[30]_inst 
       (.I(i_Seed_Data[30]),
        .O(i_Seed_Data_IBUF[30]));
  IBUF \i_Seed_Data_IBUF[31]_inst 
       (.I(i_Seed_Data[31]),
        .O(i_Seed_Data_IBUF[31]));
  IBUF \i_Seed_Data_IBUF[3]_inst 
       (.I(i_Seed_Data[3]),
        .O(i_Seed_Data_IBUF[3]));
  IBUF \i_Seed_Data_IBUF[4]_inst 
       (.I(i_Seed_Data[4]),
        .O(i_Seed_Data_IBUF[4]));
  IBUF \i_Seed_Data_IBUF[5]_inst 
       (.I(i_Seed_Data[5]),
        .O(i_Seed_Data_IBUF[5]));
  IBUF \i_Seed_Data_IBUF[6]_inst 
       (.I(i_Seed_Data[6]),
        .O(i_Seed_Data_IBUF[6]));
  IBUF \i_Seed_Data_IBUF[7]_inst 
       (.I(i_Seed_Data[7]),
        .O(i_Seed_Data_IBUF[7]));
  IBUF \i_Seed_Data_IBUF[8]_inst 
       (.I(i_Seed_Data[8]),
        .O(i_Seed_Data_IBUF[8]));
  IBUF \i_Seed_Data_IBUF[9]_inst 
       (.I(i_Seed_Data[9]),
        .O(i_Seed_Data_IBUF[9]));
  OBUF \o_LFSR_Data_OBUF[0]_inst 
       (.I(o_LFSR_Data_OBUF[0]),
        .O(o_LFSR_Data[0]));
  OBUF \o_LFSR_Data_OBUF[10]_inst 
       (.I(o_LFSR_Data_OBUF[10]),
        .O(o_LFSR_Data[10]));
  OBUF \o_LFSR_Data_OBUF[11]_inst 
       (.I(o_LFSR_Data_OBUF[11]),
        .O(o_LFSR_Data[11]));
  OBUF \o_LFSR_Data_OBUF[12]_inst 
       (.I(o_LFSR_Data_OBUF[12]),
        .O(o_LFSR_Data[12]));
  OBUF \o_LFSR_Data_OBUF[13]_inst 
       (.I(o_LFSR_Data_OBUF[13]),
        .O(o_LFSR_Data[13]));
  OBUF \o_LFSR_Data_OBUF[14]_inst 
       (.I(o_LFSR_Data_OBUF[14]),
        .O(o_LFSR_Data[14]));
  OBUF \o_LFSR_Data_OBUF[15]_inst 
       (.I(o_LFSR_Data_OBUF[15]),
        .O(o_LFSR_Data[15]));
  OBUF \o_LFSR_Data_OBUF[16]_inst 
       (.I(o_LFSR_Data_OBUF[16]),
        .O(o_LFSR_Data[16]));
  OBUF \o_LFSR_Data_OBUF[17]_inst 
       (.I(o_LFSR_Data_OBUF[17]),
        .O(o_LFSR_Data[17]));
  OBUF \o_LFSR_Data_OBUF[18]_inst 
       (.I(o_LFSR_Data_OBUF[18]),
        .O(o_LFSR_Data[18]));
  OBUF \o_LFSR_Data_OBUF[19]_inst 
       (.I(o_LFSR_Data_OBUF[19]),
        .O(o_LFSR_Data[19]));
  OBUF \o_LFSR_Data_OBUF[1]_inst 
       (.I(o_LFSR_Data_OBUF[1]),
        .O(o_LFSR_Data[1]));
  OBUF \o_LFSR_Data_OBUF[20]_inst 
       (.I(o_LFSR_Data_OBUF[20]),
        .O(o_LFSR_Data[20]));
  OBUF \o_LFSR_Data_OBUF[21]_inst 
       (.I(o_LFSR_Data_OBUF[21]),
        .O(o_LFSR_Data[21]));
  OBUF \o_LFSR_Data_OBUF[22]_inst 
       (.I(o_LFSR_Data_OBUF[22]),
        .O(o_LFSR_Data[22]));
  OBUF \o_LFSR_Data_OBUF[23]_inst 
       (.I(o_LFSR_Data_OBUF[23]),
        .O(o_LFSR_Data[23]));
  OBUF \o_LFSR_Data_OBUF[24]_inst 
       (.I(o_LFSR_Data_OBUF[24]),
        .O(o_LFSR_Data[24]));
  OBUF \o_LFSR_Data_OBUF[25]_inst 
       (.I(o_LFSR_Data_OBUF[25]),
        .O(o_LFSR_Data[25]));
  OBUF \o_LFSR_Data_OBUF[26]_inst 
       (.I(o_LFSR_Data_OBUF[26]),
        .O(o_LFSR_Data[26]));
  OBUF \o_LFSR_Data_OBUF[27]_inst 
       (.I(o_LFSR_Data_OBUF[27]),
        .O(o_LFSR_Data[27]));
  OBUF \o_LFSR_Data_OBUF[28]_inst 
       (.I(o_LFSR_Data_OBUF[28]),
        .O(o_LFSR_Data[28]));
  OBUF \o_LFSR_Data_OBUF[29]_inst 
       (.I(o_LFSR_Data_OBUF[29]),
        .O(o_LFSR_Data[29]));
  OBUF \o_LFSR_Data_OBUF[2]_inst 
       (.I(o_LFSR_Data_OBUF[2]),
        .O(o_LFSR_Data[2]));
  OBUF \o_LFSR_Data_OBUF[30]_inst 
       (.I(o_LFSR_Data_OBUF[30]),
        .O(o_LFSR_Data[30]));
  OBUF \o_LFSR_Data_OBUF[31]_inst 
       (.I(o_LFSR_Data_OBUF[31]),
        .O(o_LFSR_Data[31]));
  OBUF \o_LFSR_Data_OBUF[3]_inst 
       (.I(o_LFSR_Data_OBUF[3]),
        .O(o_LFSR_Data[3]));
  OBUF \o_LFSR_Data_OBUF[4]_inst 
       (.I(o_LFSR_Data_OBUF[4]),
        .O(o_LFSR_Data[4]));
  OBUF \o_LFSR_Data_OBUF[5]_inst 
       (.I(o_LFSR_Data_OBUF[5]),
        .O(o_LFSR_Data[5]));
  OBUF \o_LFSR_Data_OBUF[6]_inst 
       (.I(o_LFSR_Data_OBUF[6]),
        .O(o_LFSR_Data[6]));
  OBUF \o_LFSR_Data_OBUF[7]_inst 
       (.I(o_LFSR_Data_OBUF[7]),
        .O(o_LFSR_Data[7]));
  OBUF \o_LFSR_Data_OBUF[8]_inst 
       (.I(o_LFSR_Data_OBUF[8]),
        .O(o_LFSR_Data[8]));
  OBUF \o_LFSR_Data_OBUF[9]_inst 
       (.I(o_LFSR_Data_OBUF[9]),
        .O(o_LFSR_Data[9]));
  OBUF o_LFSR_Done_OBUF_inst
       (.I(o_LFSR_Done_OBUF),
        .O(o_LFSR_Done));
  CARRY4 o_LFSR_Done_OBUF_inst_i_1
       (.CI(o_LFSR_Done_OBUF_inst_i_2_n_0),
        .CO({NLW_o_LFSR_Done_OBUF_inst_i_1_CO_UNCONNECTED[3],o_LFSR_Done_OBUF,o_LFSR_Done_OBUF_inst_i_1_n_2,o_LFSR_Done_OBUF_inst_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_LFSR_Done_OBUF_inst_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,o_LFSR_Done_OBUF_inst_i_3_n_0,o_LFSR_Done_OBUF_inst_i_4_n_0,o_LFSR_Done_OBUF_inst_i_5_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_10
       (.I0(o_LFSR_Data_OBUF[12]),
        .I1(i_Seed_Data_IBUF[12]),
        .I2(o_LFSR_Data_OBUF[14]),
        .I3(i_Seed_Data_IBUF[14]),
        .I4(o_LFSR_Data_OBUF[13]),
        .I5(i_Seed_Data_IBUF[13]),
        .O(o_LFSR_Done_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_11
       (.I0(o_LFSR_Data_OBUF[9]),
        .I1(i_Seed_Data_IBUF[9]),
        .I2(o_LFSR_Data_OBUF[11]),
        .I3(i_Seed_Data_IBUF[11]),
        .I4(o_LFSR_Data_OBUF[10]),
        .I5(i_Seed_Data_IBUF[10]),
        .O(o_LFSR_Done_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_12
       (.I0(o_LFSR_Data_OBUF[6]),
        .I1(i_Seed_Data_IBUF[6]),
        .I2(o_LFSR_Data_OBUF[8]),
        .I3(i_Seed_Data_IBUF[8]),
        .I4(o_LFSR_Data_OBUF[7]),
        .I5(i_Seed_Data_IBUF[7]),
        .O(o_LFSR_Done_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_13
       (.I0(o_LFSR_Data_OBUF[3]),
        .I1(i_Seed_Data_IBUF[3]),
        .I2(o_LFSR_Data_OBUF[5]),
        .I3(i_Seed_Data_IBUF[5]),
        .I4(o_LFSR_Data_OBUF[4]),
        .I5(i_Seed_Data_IBUF[4]),
        .O(o_LFSR_Done_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_14
       (.I0(o_LFSR_Data_OBUF[0]),
        .I1(i_Seed_Data_IBUF[0]),
        .I2(o_LFSR_Data_OBUF[2]),
        .I3(i_Seed_Data_IBUF[2]),
        .I4(o_LFSR_Data_OBUF[1]),
        .I5(i_Seed_Data_IBUF[1]),
        .O(o_LFSR_Done_OBUF_inst_i_14_n_0));
  CARRY4 o_LFSR_Done_OBUF_inst_i_2
       (.CI(o_LFSR_Done_OBUF_inst_i_6_n_0),
        .CO({o_LFSR_Done_OBUF_inst_i_2_n_0,o_LFSR_Done_OBUF_inst_i_2_n_1,o_LFSR_Done_OBUF_inst_i_2_n_2,o_LFSR_Done_OBUF_inst_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_LFSR_Done_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({o_LFSR_Done_OBUF_inst_i_7_n_0,o_LFSR_Done_OBUF_inst_i_8_n_0,o_LFSR_Done_OBUF_inst_i_9_n_0,o_LFSR_Done_OBUF_inst_i_10_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    o_LFSR_Done_OBUF_inst_i_3
       (.I0(o_LFSR_Data_OBUF[30]),
        .I1(i_Seed_Data_IBUF[30]),
        .I2(o_LFSR_Data_OBUF[31]),
        .I3(i_Seed_Data_IBUF[31]),
        .O(o_LFSR_Done_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_4
       (.I0(o_LFSR_Data_OBUF[27]),
        .I1(i_Seed_Data_IBUF[27]),
        .I2(o_LFSR_Data_OBUF[29]),
        .I3(i_Seed_Data_IBUF[29]),
        .I4(o_LFSR_Data_OBUF[28]),
        .I5(i_Seed_Data_IBUF[28]),
        .O(o_LFSR_Done_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_5
       (.I0(o_LFSR_Data_OBUF[24]),
        .I1(i_Seed_Data_IBUF[24]),
        .I2(o_LFSR_Data_OBUF[26]),
        .I3(i_Seed_Data_IBUF[26]),
        .I4(o_LFSR_Data_OBUF[25]),
        .I5(i_Seed_Data_IBUF[25]),
        .O(o_LFSR_Done_OBUF_inst_i_5_n_0));
  CARRY4 o_LFSR_Done_OBUF_inst_i_6
       (.CI(1'b0),
        .CO({o_LFSR_Done_OBUF_inst_i_6_n_0,o_LFSR_Done_OBUF_inst_i_6_n_1,o_LFSR_Done_OBUF_inst_i_6_n_2,o_LFSR_Done_OBUF_inst_i_6_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_o_LFSR_Done_OBUF_inst_i_6_O_UNCONNECTED[3:0]),
        .S({o_LFSR_Done_OBUF_inst_i_11_n_0,o_LFSR_Done_OBUF_inst_i_12_n_0,o_LFSR_Done_OBUF_inst_i_13_n_0,o_LFSR_Done_OBUF_inst_i_14_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_7
       (.I0(o_LFSR_Data_OBUF[21]),
        .I1(i_Seed_Data_IBUF[21]),
        .I2(o_LFSR_Data_OBUF[23]),
        .I3(i_Seed_Data_IBUF[23]),
        .I4(o_LFSR_Data_OBUF[22]),
        .I5(i_Seed_Data_IBUF[22]),
        .O(o_LFSR_Done_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_8
       (.I0(o_LFSR_Data_OBUF[18]),
        .I1(i_Seed_Data_IBUF[18]),
        .I2(o_LFSR_Data_OBUF[20]),
        .I3(i_Seed_Data_IBUF[20]),
        .I4(o_LFSR_Data_OBUF[19]),
        .I5(i_Seed_Data_IBUF[19]),
        .O(o_LFSR_Done_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    o_LFSR_Done_OBUF_inst_i_9
       (.I0(o_LFSR_Data_OBUF[15]),
        .I1(i_Seed_Data_IBUF[15]),
        .I2(o_LFSR_Data_OBUF[17]),
        .I3(i_Seed_Data_IBUF[17]),
        .I4(o_LFSR_Data_OBUF[16]),
        .I5(i_Seed_Data_IBUF[16]),
        .O(o_LFSR_Done_OBUF_inst_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[10]_i_1 
       (.I0(i_Seed_Data_IBUF[9]),
        .I1(o_LFSR_Data_OBUF[8]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[11]_i_1 
       (.I0(i_Seed_Data_IBUF[10]),
        .I1(o_LFSR_Data_OBUF[9]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[12]_i_1 
       (.I0(i_Seed_Data_IBUF[11]),
        .I1(o_LFSR_Data_OBUF[10]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[13]_i_1 
       (.I0(i_Seed_Data_IBUF[12]),
        .I1(o_LFSR_Data_OBUF[11]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[14]_i_1 
       (.I0(i_Seed_Data_IBUF[13]),
        .I1(o_LFSR_Data_OBUF[12]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[15]_i_1 
       (.I0(i_Seed_Data_IBUF[14]),
        .I1(o_LFSR_Data_OBUF[13]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[16]_i_1 
       (.I0(i_Seed_Data_IBUF[15]),
        .I1(o_LFSR_Data_OBUF[14]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[17]_i_1 
       (.I0(i_Seed_Data_IBUF[16]),
        .I1(o_LFSR_Data_OBUF[15]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[18]_i_1 
       (.I0(i_Seed_Data_IBUF[17]),
        .I1(o_LFSR_Data_OBUF[16]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[19]_i_1 
       (.I0(i_Seed_Data_IBUF[18]),
        .I1(o_LFSR_Data_OBUF[17]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hAAAAAAAAC33C3CC3)) 
    \r_LFSR[1]_i_1 
       (.I0(i_Seed_Data_IBUF[0]),
        .I1(o_LFSR_Data_OBUF[0]),
        .I2(o_LFSR_Data_OBUF[31]),
        .I3(o_LFSR_Data_OBUF[21]),
        .I4(o_LFSR_Data_OBUF[1]),
        .I5(i_Seed_DV_IBUF),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[20]_i_1 
       (.I0(i_Seed_Data_IBUF[19]),
        .I1(o_LFSR_Data_OBUF[18]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[21]_i_1 
       (.I0(i_Seed_Data_IBUF[20]),
        .I1(o_LFSR_Data_OBUF[19]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[22]_i_1 
       (.I0(i_Seed_Data_IBUF[21]),
        .I1(o_LFSR_Data_OBUF[20]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[23]_i_1 
       (.I0(i_Seed_Data_IBUF[22]),
        .I1(o_LFSR_Data_OBUF[21]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[24]_i_1 
       (.I0(i_Seed_Data_IBUF[23]),
        .I1(o_LFSR_Data_OBUF[22]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[25]_i_1 
       (.I0(i_Seed_Data_IBUF[24]),
        .I1(o_LFSR_Data_OBUF[23]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[26]_i_1 
       (.I0(i_Seed_Data_IBUF[25]),
        .I1(o_LFSR_Data_OBUF[24]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[27]_i_1 
       (.I0(i_Seed_Data_IBUF[26]),
        .I1(o_LFSR_Data_OBUF[25]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[28]_i_1 
       (.I0(i_Seed_Data_IBUF[27]),
        .I1(o_LFSR_Data_OBUF[26]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[29]_i_1 
       (.I0(i_Seed_Data_IBUF[28]),
        .I1(o_LFSR_Data_OBUF[27]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[2]_i_1 
       (.I0(i_Seed_Data_IBUF[1]),
        .I1(o_LFSR_Data_OBUF[0]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[30]_i_1 
       (.I0(i_Seed_Data_IBUF[29]),
        .I1(o_LFSR_Data_OBUF[28]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[31]_i_1 
       (.I0(i_Seed_Data_IBUF[30]),
        .I1(o_LFSR_Data_OBUF[29]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[32]_i_1 
       (.I0(i_Seed_Data_IBUF[31]),
        .I1(o_LFSR_Data_OBUF[30]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[3]_i_1 
       (.I0(i_Seed_Data_IBUF[2]),
        .I1(o_LFSR_Data_OBUF[1]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[4]_i_1 
       (.I0(i_Seed_Data_IBUF[3]),
        .I1(o_LFSR_Data_OBUF[2]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[5]_i_1 
       (.I0(i_Seed_Data_IBUF[4]),
        .I1(o_LFSR_Data_OBUF[3]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[6]_i_1 
       (.I0(i_Seed_Data_IBUF[5]),
        .I1(o_LFSR_Data_OBUF[4]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[7]_i_1 
       (.I0(i_Seed_Data_IBUF[6]),
        .I1(o_LFSR_Data_OBUF[5]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[8]_i_1 
       (.I0(i_Seed_Data_IBUF[7]),
        .I1(o_LFSR_Data_OBUF[6]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \r_LFSR[9]_i_1 
       (.I0(i_Seed_Data_IBUF[8]),
        .I1(o_LFSR_Data_OBUF[7]),
        .I2(i_Seed_DV_IBUF),
        .O(p_0_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[10] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[9]),
        .Q(o_LFSR_Data_OBUF[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[11] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[10]),
        .Q(o_LFSR_Data_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[12] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[11]),
        .Q(o_LFSR_Data_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[13] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[12]),
        .Q(o_LFSR_Data_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[14] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[13]),
        .Q(o_LFSR_Data_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[15] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[14]),
        .Q(o_LFSR_Data_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[16] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[15]),
        .Q(o_LFSR_Data_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[17] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[16]),
        .Q(o_LFSR_Data_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[18] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[17]),
        .Q(o_LFSR_Data_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[19] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[18]),
        .Q(o_LFSR_Data_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[1] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[0]),
        .Q(o_LFSR_Data_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[20] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[19]),
        .Q(o_LFSR_Data_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[21] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[20]),
        .Q(o_LFSR_Data_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[22] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[21]),
        .Q(o_LFSR_Data_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[23] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[22]),
        .Q(o_LFSR_Data_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[24] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[23]),
        .Q(o_LFSR_Data_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[25] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[24]),
        .Q(o_LFSR_Data_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[26] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[25]),
        .Q(o_LFSR_Data_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[27] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[26]),
        .Q(o_LFSR_Data_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[28] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[27]),
        .Q(o_LFSR_Data_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[29] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[28]),
        .Q(o_LFSR_Data_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[2] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[1]),
        .Q(o_LFSR_Data_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[30] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[29]),
        .Q(o_LFSR_Data_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[31] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[30]),
        .Q(o_LFSR_Data_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[32] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[31]),
        .Q(o_LFSR_Data_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[3] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[2]),
        .Q(o_LFSR_Data_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[4] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[3]),
        .Q(o_LFSR_Data_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[5] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[4]),
        .Q(o_LFSR_Data_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[6] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[5]),
        .Q(o_LFSR_Data_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[7] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[6]),
        .Q(o_LFSR_Data_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[8] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[7]),
        .Q(o_LFSR_Data_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_LFSR_reg[9] 
       (.C(i_Clk_IBUF_BUFG),
        .CE(i_Enable_IBUF),
        .D(p_0_in[8]),
        .Q(o_LFSR_Data_OBUF[8]),
        .R(1'b0));
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
