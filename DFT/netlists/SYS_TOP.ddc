/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Oct 10 16:42:59 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module serializer_IN_width8_test_1 ( p_data, ser_en, clk, rst, data_valid, 
        busy, ser_done, ser_data, test_si, test_so, test_se );
  input [7:0] p_data;
  input ser_en, clk, rst, data_valid, busy, test_si, test_se;
  output ser_done, ser_data, test_so;
  wire   N23, N24, N25, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n12, n13, n14, n35, n38,
         n39;
  wire   [7:1] DATA_V;
  wire   [2:0] ser_count;
  assign test_so = n35;

  SDFFRQX2M \DATA_V_reg[0]  ( .D(n27), .SI(test_si), .SE(n39), .CK(clk), .RN(
        rst), .Q(ser_data) );
  SDFFRQX2M \DATA_V_reg[6]  ( .D(n29), .SI(DATA_V[5]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[6]) );
  SDFFRQX2M \DATA_V_reg[5]  ( .D(n30), .SI(DATA_V[4]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[5]) );
  SDFFRQX2M \DATA_V_reg[4]  ( .D(n31), .SI(DATA_V[3]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[4]) );
  SDFFRQX2M \DATA_V_reg[3]  ( .D(n32), .SI(DATA_V[2]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[3]) );
  SDFFRQX2M \DATA_V_reg[2]  ( .D(n33), .SI(DATA_V[1]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[2]) );
  SDFFRQX2M \DATA_V_reg[1]  ( .D(n34), .SI(ser_data), .SE(n39), .CK(clk), .RN(
        rst), .Q(DATA_V[1]) );
  SDFFRQX2M \DATA_V_reg[7]  ( .D(n28), .SI(DATA_V[6]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(DATA_V[7]) );
  SDFFRQX2M \ser_count_reg[1]  ( .D(N24), .SI(ser_count[0]), .SE(n39), .CK(clk), .RN(rst), .Q(ser_count[1]) );
  SDFFRQX2M \ser_count_reg[2]  ( .D(N25), .SI(n14), .SE(n39), .CK(clk), .RN(
        rst), .Q(ser_count[2]) );
  SDFFRQX2M \ser_count_reg[0]  ( .D(N23), .SI(DATA_V[7]), .SE(n39), .CK(clk), 
        .RN(rst), .Q(ser_count[0]) );
  NOR2X2M U14 ( .A(n13), .B(n12), .Y(n17) );
  NOR2X2M U15 ( .A(n12), .B(n17), .Y(n15) );
  INVX2M U16 ( .A(ser_en), .Y(n13) );
  OAI2BB1X2M U17 ( .A0N(ser_data), .A1N(n15), .B0(n16), .Y(n27) );
  AOI22X1M U18 ( .A0(DATA_V[1]), .A1(n17), .B0(p_data[0]), .B1(n12), .Y(n16)
         );
  OAI2BB1X2M U19 ( .A0N(DATA_V[1]), .A1N(n15), .B0(n24), .Y(n34) );
  AOI22X1M U20 ( .A0(DATA_V[2]), .A1(n17), .B0(p_data[1]), .B1(n12), .Y(n24)
         );
  OAI2BB1X2M U21 ( .A0N(n15), .A1N(DATA_V[2]), .B0(n23), .Y(n33) );
  AOI22X1M U22 ( .A0(DATA_V[3]), .A1(n17), .B0(p_data[2]), .B1(n12), .Y(n23)
         );
  OAI2BB1X2M U23 ( .A0N(n15), .A1N(DATA_V[3]), .B0(n22), .Y(n32) );
  AOI22X1M U24 ( .A0(DATA_V[4]), .A1(n17), .B0(p_data[3]), .B1(n12), .Y(n22)
         );
  OAI2BB1X2M U25 ( .A0N(n15), .A1N(DATA_V[4]), .B0(n21), .Y(n31) );
  AOI22X1M U26 ( .A0(DATA_V[5]), .A1(n17), .B0(p_data[4]), .B1(n12), .Y(n21)
         );
  OAI2BB1X2M U27 ( .A0N(n15), .A1N(DATA_V[5]), .B0(n20), .Y(n30) );
  AOI22X1M U28 ( .A0(DATA_V[6]), .A1(n17), .B0(p_data[5]), .B1(n12), .Y(n20)
         );
  OAI2BB1X2M U29 ( .A0N(n15), .A1N(DATA_V[6]), .B0(n19), .Y(n29) );
  AOI22X1M U30 ( .A0(DATA_V[7]), .A1(n17), .B0(p_data[6]), .B1(n12), .Y(n19)
         );
  AO22X1M U31 ( .A0(n15), .A1(DATA_V[7]), .B0(p_data[7]), .B1(n12), .Y(n28) );
  AND3X2M U32 ( .A(ser_count[0]), .B(ser_count[2]), .C(ser_count[1]), .Y(
        ser_done) );
  OAI2BB2X1M U33 ( .B0(n25), .B1(n13), .A0N(ser_count[2]), .A1N(N23), .Y(N25)
         );
  AOI32X1M U34 ( .A0(ser_count[0]), .A1(n35), .A2(ser_count[1]), .B0(
        ser_count[2]), .B1(n14), .Y(n25) );
  INVX2M U35 ( .A(ser_count[2]), .Y(n35) );
  NOR2X2M U36 ( .A(n13), .B(ser_count[0]), .Y(N23) );
  BUFX2M U37 ( .A(n18), .Y(n12) );
  NOR2BX2M U38 ( .AN(data_valid), .B(busy), .Y(n18) );
  NOR2X2M U39 ( .A(n26), .B(n13), .Y(N24) );
  CLKXOR2X2M U40 ( .A(ser_count[0]), .B(n14), .Y(n26) );
  INVX2M U41 ( .A(ser_count[1]), .Y(n14) );
  INVXLM U42 ( .A(test_se), .Y(n38) );
  INVXLM U43 ( .A(n38), .Y(n39) );
endmodule


module parity_calc_IN_width8_test_1 ( clk, rst, p_data, par_typ, par_en, 
        data_valid, busy, par_bit, test_si, test_so, test_se );
  input [7:0] p_data;
  input clk, rst, par_typ, par_en, data_valid, busy, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n3, n4, n5, n6, n7, n9, n11, n13, n15, n17, n19, n21, n23, n25,
         n2;
  wire   [7:0] reg_data;
  assign test_so = reg_data[7];

  SDFFRQX2M par_bit_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_bit) );
  SDFFRQX2M \reg_data_reg[5]  ( .D(n21), .SI(reg_data[4]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[5]) );
  SDFFRQX2M \reg_data_reg[1]  ( .D(n13), .SI(reg_data[0]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[1]) );
  SDFFRQX2M \reg_data_reg[4]  ( .D(n19), .SI(reg_data[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[4]) );
  SDFFRQX2M \reg_data_reg[0]  ( .D(n11), .SI(par_bit), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(reg_data[0]) );
  SDFFRQX2M \reg_data_reg[2]  ( .D(n15), .SI(reg_data[1]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[2]) );
  SDFFRQX2M \reg_data_reg[3]  ( .D(n17), .SI(reg_data[2]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[3]) );
  SDFFRQX2M \reg_data_reg[6]  ( .D(n23), .SI(reg_data[5]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[6]) );
  SDFFRQX2M \reg_data_reg[7]  ( .D(n25), .SI(reg_data[6]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_data[7]) );
  NOR2BX2M U2 ( .AN(data_valid), .B(busy), .Y(n7) );
  XNOR2X2M U3 ( .A(reg_data[2]), .B(reg_data[3]), .Y(n5) );
  XOR3XLM U4 ( .A(reg_data[5]), .B(reg_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(reg_data[7]), .B(reg_data[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n9) );
  INVX2M U7 ( .A(par_en), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U9 ( .A(reg_data[1]), .B(reg_data[0]), .C(n5), .Y(n4) );
  AO2B2X2M U10 ( .B0(p_data[0]), .B1(n7), .A0(reg_data[0]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U11 ( .B0(p_data[1]), .B1(n7), .A0(reg_data[1]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U12 ( .B0(p_data[2]), .B1(n7), .A0(reg_data[2]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U13 ( .B0(p_data[3]), .B1(n7), .A0(reg_data[3]), .A1N(n7), .Y(n17)
         );
  AO2B2X2M U14 ( .B0(p_data[4]), .B1(n7), .A0(reg_data[4]), .A1N(n7), .Y(n19)
         );
  AO2B2X2M U15 ( .B0(p_data[5]), .B1(n7), .A0(reg_data[5]), .A1N(n7), .Y(n21)
         );
  AO2B2X2M U16 ( .B0(p_data[6]), .B1(n7), .A0(reg_data[6]), .A1N(n7), .Y(n23)
         );
  AO2B2X2M U17 ( .B0(p_data[7]), .B1(n7), .A0(reg_data[7]), .A1N(n7), .Y(n25)
         );
endmodule


module FSM_test_1 ( clk, rst, data_valid, par_en, ser_done, ser_en, mux_sel, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, busy, test_so;
  wire   busy_c, n8, n9, n10, n11, n12, n13, n5, n6, n7;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(busy) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n7), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(busy), .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  INVX2M U7 ( .A(n10), .Y(n5) );
  OAI21X2M U8 ( .A0(current_state[1]), .A1(n6), .B0(n13), .Y(n10) );
  NAND2X2M U9 ( .A(current_state[1]), .B(n6), .Y(n13) );
  NOR3X2M U10 ( .A(n8), .B(ser_done), .C(current_state[2]), .Y(ser_en) );
  NAND2X2M U11 ( .A(n5), .B(current_state[0]), .Y(n8) );
  INVX2M U12 ( .A(current_state[0]), .Y(n6) );
  NOR3X2M U13 ( .A(n7), .B(current_state[2]), .C(n9), .Y(next_state[2]) );
  AOI2B1X1M U14 ( .A1N(par_en), .A0(ser_done), .B0(n6), .Y(n9) );
  OAI21X2M U15 ( .A0(current_state[2]), .A1(n6), .B0(n13), .Y(busy_c) );
  AOI21X2M U16 ( .A0(n5), .A1(n8), .B0(current_state[2]), .Y(next_state[1]) );
  AOI21X2M U17 ( .A0(n11), .A1(n12), .B0(current_state[2]), .Y(next_state[0])
         );
  OAI21X2M U18 ( .A0(current_state[0]), .A1(data_valid), .B0(n7), .Y(n12) );
  NAND2BX2M U19 ( .AN(ser_done), .B(current_state[0]), .Y(n11) );
  INVX2M U20 ( .A(current_state[1]), .Y(n7) );
  OAI2B2X1M U21 ( .A1N(current_state[2]), .A0(n13), .B0(current_state[2]), 
        .B1(n10), .Y(mux_sel[0]) );
  OAI21X2M U22 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n13), .Y(
        mux_sel[1]) );
endmodule


module MUX_test_1 ( clk, rst, mux_sel, par_bit, ser_data, TX_OUT, test_si, 
        test_se );
  input [1:0] mux_sel;
  input clk, rst, par_bit, ser_data, test_si, test_se;
  output TX_OUT;
  wire   OUT, n2;

  SDFFSQX2M TX_OUT_reg ( .D(OUT), .SI(test_si), .SE(test_se), .CK(clk), .SN(
        rst), .Q(TX_OUT) );
  OAI2BB1X2M U5 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n2), .Y(OUT) );
  OAI21X2M U6 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n2) );
endmodule


module UART_TX_IN_width8_test_1 ( p_data, clk, rst, data_valid, par_en, 
        par_typ, TX_OUT, busy, test_si, test_se );
  input [7:0] p_data;
  input clk, rst, data_valid, par_en, par_typ, test_si, test_se;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2, n3, n4, n5;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  serializer_IN_width8_test_1 serializer_unit ( .p_data(p_data), .ser_en(
        ser_en), .clk(clk), .rst(n1), .data_valid(data_valid), .busy(busy), 
        .ser_done(ser_done), .ser_data(ser_data), .test_si(n4), .test_so(n3), 
        .test_se(test_se) );
  parity_calc_IN_width8_test_1 parity_calc_unit ( .clk(clk), .rst(n1), 
        .p_data(p_data), .par_typ(par_typ), .par_en(par_en), .data_valid(
        data_valid), .busy(busy), .par_bit(par_bit), .test_si(n5), .test_so(n4), .test_se(test_se) );
  FSM_test_1 FSM_unit ( .clk(clk), .rst(n1), .data_valid(data_valid), .par_en(
        par_en), .ser_done(ser_done), .ser_en(ser_en), .mux_sel(mux_sel), 
        .busy(busy), .test_si(test_si), .test_so(n5), .test_se(test_se) );
  MUX_test_1 MUX_unit ( .clk(clk), .rst(n1), .mux_sel(mux_sel), .par_bit(
        par_bit), .ser_data(ser_data), .TX_OUT(TX_OUT), .test_si(n3), 
        .test_se(test_se) );
endmodule


module data_sampling_prescale_width6_test_1 ( clk, rst, RX_IN, dat_samp_en, 
        prescale, edge_cnt, sampled_bit, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit;
  wire   sample_1, sample_2, sample_3, N5, N6, N7, N8, N9, N12, N13, N14, N15,
         N16, N17, n11, n13, n18, n19, n21, n23, n25, n29, n30, n31,
         \sub_23/carry[4] , \sub_23/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n12, n14, n15, n16, n17, n20, n22, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49;
  assign N5 = prescale[1];

  SDFFSQX2M sample_3_reg ( .D(n29), .SI(sample_2), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(sample_3) );
  SDFFSQX2M sample_1_reg ( .D(n31), .SI(test_si), .SE(test_se), .CK(clk), .SN(
        rst), .Q(sample_1) );
  SDFFSQX2M sample_2_reg ( .D(n30), .SI(sample_1), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(sample_2) );
  SDFFSQX2M sampled_bit_reg ( .D(n25), .SI(sample_3), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(sampled_bit) );
  OR4X1M U3 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n1) );
  OR4X1M U4 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(n2) );
  OR4X1M U5 ( .A(n17), .B(n16), .C(n15), .D(n14), .Y(n3) );
  NOR2X2M U6 ( .A(prescale[5]), .B(\sub_23/carry[4] ), .Y(n4) );
  OAI22X1M U7 ( .A0(n18), .A1(n2), .B0(n21), .B1(n48), .Y(n30) );
  NOR2X2M U8 ( .A(n46), .B(n2), .Y(n21) );
  OAI22X1M U9 ( .A0(n18), .A1(n3), .B0(n23), .B1(n47), .Y(n31) );
  NOR2X2M U10 ( .A(n46), .B(n3), .Y(n23) );
  OAI22X1M U11 ( .A0(n1), .A1(n18), .B0(n19), .B1(n49), .Y(n29) );
  NOR2X2M U12 ( .A(n46), .B(n1), .Y(n19) );
  INVX2M U13 ( .A(dat_samp_en), .Y(n46) );
  NAND2X2M U14 ( .A(RX_IN), .B(dat_samp_en), .Y(n18) );
  OAI2BB2X1M U15 ( .B0(n11), .B1(n46), .A0N(sampled_bit), .A1N(n46), .Y(n25)
         );
  AOI21X2M U16 ( .A0(sample_2), .A1(sample_1), .B0(n13), .Y(n11) );
  AOI21X2M U17 ( .A0(n48), .A1(n47), .B0(n49), .Y(n13) );
  OR2X2M U18 ( .A(prescale[2]), .B(N5), .Y(n5) );
  INVX2M U19 ( .A(prescale[2]), .Y(N6) );
  INVX2M U20 ( .A(sample_2), .Y(n48) );
  INVX2M U21 ( .A(sample_1), .Y(n47) );
  INVX2M U22 ( .A(sample_3), .Y(n49) );
  XNOR2X1M U23 ( .A(\sub_23/carry[4] ), .B(prescale[5]), .Y(N9) );
  OR2X1M U24 ( .A(prescale[4]), .B(\sub_23/carry[3] ), .Y(\sub_23/carry[4] )
         );
  XNOR2X1M U29 ( .A(\sub_23/carry[3] ), .B(prescale[4]), .Y(N8) );
  OR2X1M U30 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_23/carry[3] ) );
  XNOR2X1M U31 ( .A(prescale[2]), .B(prescale[3]), .Y(N7) );
  CLKINVX1M U32 ( .A(N5), .Y(N12) );
  OAI2BB1X1M U33 ( .A0N(N5), .A1N(prescale[2]), .B0(n5), .Y(N13) );
  OR2X1M U34 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U35 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N14) );
  XNOR2X1M U36 ( .A(prescale[4]), .B(n6), .Y(N15) );
  NOR3X1M U37 ( .A(prescale[4]), .B(prescale[5]), .C(n6), .Y(N17) );
  OAI21X1M U38 ( .A0(prescale[4]), .A1(n6), .B0(prescale[5]), .Y(n7) );
  NAND2BX1M U39 ( .AN(N17), .B(n7), .Y(N16) );
  NOR2BX1M U40 ( .AN(edge_cnt[0]), .B(N5), .Y(n8) );
  OAI2B2X1M U41 ( .A1N(N6), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n12) );
  NOR2BX1M U42 ( .AN(N5), .B(edge_cnt[0]), .Y(n9) );
  OAI2B2X1M U43 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N6), .B1(n9), .Y(n10) );
  NAND4BBX1M U44 ( .AN(n4), .BN(edge_cnt[5]), .C(n12), .D(n10), .Y(n17) );
  CLKXOR2X2M U45 ( .A(N9), .B(edge_cnt[4]), .Y(n16) );
  CLKXOR2X2M U46 ( .A(N7), .B(edge_cnt[2]), .Y(n15) );
  CLKXOR2X2M U47 ( .A(N8), .B(edge_cnt[3]), .Y(n14) );
  NOR2BX1M U48 ( .AN(edge_cnt[0]), .B(N12), .Y(n20) );
  OAI2B2X1M U49 ( .A1N(N13), .A0(n20), .B0(edge_cnt[1]), .B1(n20), .Y(n33) );
  NOR2BX1M U50 ( .AN(N12), .B(edge_cnt[0]), .Y(n22) );
  OAI2B2X1M U51 ( .A1N(edge_cnt[1]), .A0(n22), .B0(N13), .B1(n22), .Y(n32) );
  NAND4BBX1M U52 ( .AN(N17), .BN(edge_cnt[5]), .C(n33), .D(n32), .Y(n37) );
  CLKXOR2X2M U53 ( .A(N16), .B(edge_cnt[4]), .Y(n36) );
  CLKXOR2X2M U54 ( .A(N14), .B(edge_cnt[2]), .Y(n35) );
  CLKXOR2X2M U55 ( .A(N15), .B(edge_cnt[3]), .Y(n34) );
  NOR2BX1M U56 ( .AN(edge_cnt[0]), .B(N5), .Y(n38) );
  OAI2B2X1M U57 ( .A1N(prescale[2]), .A0(n38), .B0(edge_cnt[1]), .B1(n38), .Y(
        n41) );
  NOR2BX1M U58 ( .AN(N5), .B(edge_cnt[0]), .Y(n39) );
  OAI2B2X1M U59 ( .A1N(edge_cnt[1]), .A0(n39), .B0(prescale[2]), .B1(n39), .Y(
        n40) );
  NAND3BX1M U60 ( .AN(edge_cnt[5]), .B(n41), .C(n40), .Y(n45) );
  CLKXOR2X2M U61 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n44) );
  CLKXOR2X2M U62 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n43) );
  CLKXOR2X2M U63 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n42) );
endmodule


module edge_bit_counter_prescale_width6_bit_cnt_width4_test_1 ( cnt_enable, 
        clk, rst, prescale, bit_cnt, edge_cnt, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input cnt_enable, clk, rst, test_si, test_se;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N20, N21, N22, N23, N30, N31, N32,
         N33, N34, N35, n18, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, \add_27/carry[5] , \add_27/carry[4] , \add_27/carry[3] ,
         \add_27/carry[2] , n2, n3, n4, n15, n16, n17, n19, n20, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n45, n46;

  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N35), .SI(edge_cnt[4]), .SE(n46), .CK(clk), 
        .RN(rst), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N34), .SI(edge_cnt[3]), .SE(n46), .CK(clk), 
        .RN(rst), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N33), .SI(edge_cnt[2]), .SE(n46), .CK(clk), 
        .RN(rst), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N32), .SI(edge_cnt[1]), .SE(n46), .CK(clk), 
        .RN(rst), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N31), .SI(edge_cnt[0]), .SE(n46), .CK(clk), 
        .RN(rst), .Q(edge_cnt[1]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N30), .SI(n42), .SE(n46), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n28), .SI(n18), .SE(n46), .CK(clk), .RN(rst), 
        .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n30), .SI(n40), .SE(n46), .CK(clk), .RN(rst), 
        .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n31), .SI(test_si), .SE(n46), .CK(clk), .RN(
        rst), .Q(bit_cnt[0]) );
  SDFFRX1M \bit_cnt_reg[2]  ( .D(n29), .SI(n41), .SE(n46), .CK(clk), .RN(rst), 
        .Q(bit_cnt[2]), .QN(n18) );
  NAND2BX2M U7 ( .AN(N11), .B(cnt_enable), .Y(n22) );
  NAND2X2M U15 ( .A(cnt_enable), .B(N11), .Y(n25) );
  NOR2BX2M U16 ( .AN(N20), .B(n22), .Y(N31) );
  NOR2BX2M U17 ( .AN(N21), .B(n22), .Y(N32) );
  NOR2BX2M U18 ( .AN(N22), .B(n22), .Y(N33) );
  NOR2BX2M U19 ( .AN(N23), .B(n22), .Y(N34) );
  OAI32X1M U20 ( .A0(n25), .A1(bit_cnt[1]), .A2(n40), .B0(n38), .B1(n41), .Y(
        n30) );
  INVX2M U21 ( .A(n27), .Y(n38) );
  OAI32X1M U22 ( .A0(n24), .A1(n41), .A2(n25), .B0(n26), .B1(n18), .Y(n29) );
  NAND2X2M U23 ( .A(bit_cnt[0]), .B(n18), .Y(n24) );
  AOI2BB1X2M U24 ( .A0N(n25), .A1N(bit_cnt[1]), .B0(n27), .Y(n26) );
  OAI21X2M U25 ( .A0(bit_cnt[0]), .A1(n25), .B0(n22), .Y(n27) );
  OR2X2M U26 ( .A(prescale[1]), .B(prescale[0]), .Y(n3) );
  OAI2B2X1M U27 ( .A1N(cnt_enable), .A0(n21), .B0(n42), .B1(n22), .Y(n28) );
  AOI32XLM U28 ( .A0(n23), .A1(n42), .A2(N11), .B0(bit_cnt[3]), .B1(n39), .Y(
        n21) );
  INVX2M U29 ( .A(bit_cnt[3]), .Y(n42) );
  INVX2M U30 ( .A(n23), .Y(n39) );
  OAI22X1M U31 ( .A0(n40), .A1(n22), .B0(bit_cnt[0]), .B1(n25), .Y(n31) );
  NOR2X2M U32 ( .A(n2), .B(n22), .Y(N35) );
  XNOR2X2M U33 ( .A(\add_27/carry[5] ), .B(edge_cnt[5]), .Y(n2) );
  NOR2X2M U34 ( .A(edge_cnt[0]), .B(n22), .Y(N30) );
  NOR3X2M U35 ( .A(n41), .B(n40), .C(n18), .Y(n23) );
  INVX2M U36 ( .A(bit_cnt[0]), .Y(n40) );
  INVX2M U37 ( .A(bit_cnt[1]), .Y(n41) );
  ADDHX1M U38 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_27/carry[2] ), .S(
        N20) );
  ADDHX1M U39 ( .A(edge_cnt[2]), .B(\add_27/carry[2] ), .CO(\add_27/carry[3] ), 
        .S(N21) );
  ADDHX1M U40 ( .A(edge_cnt[3]), .B(\add_27/carry[3] ), .CO(\add_27/carry[4] ), 
        .S(N22) );
  ADDHX1M U41 ( .A(edge_cnt[4]), .B(\add_27/carry[4] ), .CO(\add_27/carry[5] ), 
        .S(N23) );
  CLKINVX1M U42 ( .A(prescale[0]), .Y(N4) );
  OAI2BB1X1M U43 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n3), .Y(N5) );
  OR2X1M U44 ( .A(n3), .B(prescale[2]), .Y(n4) );
  OAI2BB1X1M U45 ( .A0N(n3), .A1N(prescale[2]), .B0(n4), .Y(N6) );
  OR2X1M U46 ( .A(n4), .B(prescale[3]), .Y(n15) );
  OAI2BB1X1M U47 ( .A0N(n4), .A1N(prescale[3]), .B0(n15), .Y(N7) );
  OR2X1M U48 ( .A(n15), .B(prescale[4]), .Y(n16) );
  OAI2BB1X1M U49 ( .A0N(n15), .A1N(prescale[4]), .B0(n16), .Y(N8) );
  NOR2X1M U50 ( .A(n16), .B(prescale[5]), .Y(N10) );
  AO21XLM U51 ( .A0(n16), .A1(prescale[5]), .B0(N10), .Y(N9) );
  NOR2BX1M U52 ( .AN(N4), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U53 ( .A1N(edge_cnt[1]), .A0(n17), .B0(N5), .B1(n17), .Y(n33) );
  XNOR2X1M U54 ( .A(N9), .B(edge_cnt[5]), .Y(n32) );
  NOR2BX1M U55 ( .AN(edge_cnt[0]), .B(N4), .Y(n19) );
  OAI2B2X1M U56 ( .A1N(N5), .A0(n19), .B0(edge_cnt[1]), .B1(n19), .Y(n20) );
  NAND4BX1M U57 ( .AN(N10), .B(n33), .C(n32), .D(n20), .Y(n37) );
  CLKXOR2X2M U58 ( .A(N8), .B(edge_cnt[4]), .Y(n36) );
  CLKXOR2X2M U59 ( .A(N6), .B(edge_cnt[2]), .Y(n35) );
  CLKXOR2X2M U60 ( .A(N7), .B(edge_cnt[3]), .Y(n34) );
  NOR4X1M U61 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N11) );
  INVXLM U62 ( .A(test_se), .Y(n45) );
  INVXLM U63 ( .A(n45), .Y(n46) );
endmodule


module deserializer_DATA_WIDTH8_bit_cnt_width4_test_1 ( clk, rst, deser_en, 
        sampled_bit, bit_cnt, P_DATA, test_se );
  input [3:0] bit_cnt;
  output [7:0] P_DATA;
  input clk, rst, deser_en, sampled_bit, test_se;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n1, n2, n3;

  SDFFRQX2M \P_DATA_reg[5]  ( .D(n35), .SI(P_DATA[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n31), .SI(P_DATA[0]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n34), .SI(P_DATA[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n30), .SI(sampled_bit), .SE(test_se), .CK(clk), .RN(rst), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n37), .SI(P_DATA[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n33), .SI(P_DATA[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n36), .SI(P_DATA[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n32), .SI(P_DATA[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(P_DATA[2]) );
  AND2X2M U11 ( .A(n27), .B(deser_en), .Y(n20) );
  NOR3X2M U12 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n29) );
  XNOR2X2M U13 ( .A(n29), .B(bit_cnt[3]), .Y(n27) );
  OAI2BB2X1M U14 ( .B0(n3), .B1(n22), .A0N(P_DATA[3]), .A1N(n22), .Y(n33) );
  NAND3X2M U15 ( .A(n1), .B(n2), .C(n23), .Y(n22) );
  OAI2BB2X1M U16 ( .B0(n3), .B1(n19), .A0N(P_DATA[1]), .A1N(n19), .Y(n31) );
  NAND3X2M U17 ( .A(n17), .B(n1), .C(n20), .Y(n19) );
  OAI2BB2X1M U18 ( .B0(n3), .B1(n21), .A0N(P_DATA[2]), .A1N(n21), .Y(n32) );
  NAND3X2M U19 ( .A(n17), .B(bit_cnt[0]), .C(n20), .Y(n21) );
  OAI2BB2X1M U20 ( .B0(n3), .B1(n24), .A0N(P_DATA[4]), .A1N(n24), .Y(n34) );
  NAND3X2M U21 ( .A(bit_cnt[0]), .B(n2), .C(n23), .Y(n24) );
  OAI2BB2X1M U22 ( .B0(n3), .B1(n25), .A0N(P_DATA[5]), .A1N(n25), .Y(n35) );
  NAND3X2M U23 ( .A(bit_cnt[1]), .B(n1), .C(n23), .Y(n25) );
  OAI2BB2X1M U24 ( .B0(n3), .B1(n26), .A0N(P_DATA[6]), .A1N(n26), .Y(n36) );
  NAND3X2M U25 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(n23), .Y(n26) );
  AND2X2M U26 ( .A(bit_cnt[2]), .B(n20), .Y(n23) );
  NOR2X2M U27 ( .A(n2), .B(bit_cnt[2]), .Y(n17) );
  INVX2M U28 ( .A(bit_cnt[0]), .Y(n1) );
  OAI2BB2X1M U29 ( .B0(n16), .B1(n3), .A0N(P_DATA[0]), .A1N(n16), .Y(n30) );
  NAND4BX1M U30 ( .AN(n17), .B(deser_en), .C(bit_cnt[0]), .D(n18), .Y(n16) );
  NOR2X2M U31 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .Y(n18) );
  INVX2M U32 ( .A(sampled_bit), .Y(n3) );
  INVX2M U33 ( .A(bit_cnt[1]), .Y(n2) );
  OAI2BB2X1M U34 ( .B0(n3), .B1(n28), .A0N(P_DATA[7]), .A1N(n28), .Y(n37) );
  NAND3X2M U35 ( .A(n29), .B(deser_en), .C(n27), .Y(n28) );
endmodule


module parity_check_DATA_WIDTH8_test_1 ( clk, rst, P_DATA, par_chk_en, 
        sampled_bit, PAR_TYP, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input clk, rst, par_chk_en, sampled_bit, PAR_TYP, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_err) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  INVX2M U7 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XNOR2X2M U9 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
endmodule


module stop_check_test_1 ( clk, rst, stp_chk_en, sampled_bit, stp_err, test_si, 
        test_se );
  input clk, rst, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module start_check_test_1 ( clk, rst, RX_IN, strt_chk_en, strt_glitch, test_si, 
        test_se );
  input clk, rst, RX_IN, strt_chk_en, test_si, test_se;
  output strt_glitch;
  wire   N4;

  SDFFRQX2M strt_glitch_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(strt_glitch) );
  AND2X2M U4 ( .A(strt_chk_en), .B(RX_IN), .Y(N4) );
endmodule


module UART_RX_FSM_DATA_WIDTH8_bit_cnt_width4_test_1 ( clk, rst, RX_IN, PAR_EN, 
        par_err, stp_err, strt_glitch, bit_cnt, dat_samp_en, cnt_enable, 
        deser_en, par_chk_en, stp_chk_en, strt_chk_en, data_valid, test_si, 
        test_so, test_se );
  input [3:0] bit_cnt;
  input clk, rst, RX_IN, PAR_EN, par_err, stp_err, strt_glitch, test_si,
         test_se;
  output dat_samp_en, cnt_enable, deser_en, par_chk_en, stp_chk_en,
         strt_chk_en, data_valid, test_so;
  wire   N46, N51, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n1, n2, n3, n4, n9, n10, n11, n12,
         n13, n14;
  wire   [2:0] current_state;
  assign test_so = current_state[2];
  assign N46 = PAR_EN;

  SDFFRQX2M \current_state_reg[1]  ( .D(n34), .SI(n9), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n33), .SI(n12), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n35), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(current_state[0]) );
  OAI211X2M U4 ( .A0(N51), .A1(n31), .B0(n30), .C0(n26), .Y(cnt_enable) );
  INVX2M U5 ( .A(N51), .Y(n13) );
  AOI22X1M U8 ( .A0(n13), .A1(stp_chk_en), .B0(n10), .B1(n29), .Y(n25) );
  OAI221X1M U9 ( .A0(RX_IN), .A1(n27), .B0(n4), .B1(n9), .C0(n24), .Y(n35) );
  AOI32X1M U10 ( .A0(n12), .A1(n11), .A2(n9), .B0(stp_chk_en), .B1(N51), .Y(
        n27) );
  INVX2M U11 ( .A(n22), .Y(n4) );
  OAI2BB1X2M U12 ( .A0N(n18), .A1N(deser_en), .B0(n25), .Y(n22) );
  OAI21X2M U13 ( .A0(n23), .A1(n12), .B0(n24), .Y(n34) );
  AND2X2M U14 ( .A(n25), .B(n26), .Y(n23) );
  NOR2X2M U15 ( .A(par_chk_en), .B(deser_en), .Y(n26) );
  INVX2M U16 ( .A(n19), .Y(deser_en) );
  INVX2M U17 ( .A(n31), .Y(stp_chk_en) );
  INVX2M U18 ( .A(n30), .Y(n10) );
  AND3X2M U19 ( .A(n1), .B(n2), .C(bit_cnt[1]), .Y(N51) );
  XNOR2X2M U20 ( .A(N46), .B(bit_cnt[0]), .Y(n1) );
  AND2X2M U21 ( .A(n3), .B(bit_cnt[3]), .Y(n2) );
  NOR3X2M U22 ( .A(n17), .B(current_state[0]), .C(RX_IN), .Y(strt_chk_en) );
  AOI32XLM U23 ( .A0(current_state[1]), .A1(N51), .A2(current_state[2]), .B0(
        n12), .B1(n11), .Y(n17) );
  OAI31X1M U24 ( .A0(n18), .A1(N46), .A2(n19), .B0(n20), .Y(n33) );
  AOI32X1M U25 ( .A0(par_chk_en), .A1(bit_cnt[3]), .A2(n21), .B0(
        current_state[2]), .B1(n22), .Y(n20) );
  NOR3BX2M U26 ( .AN(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n21) );
  NOR4X1M U27 ( .A(stp_err), .B(par_err), .C(n13), .D(n31), .Y(data_valid) );
  INVX2M U28 ( .A(bit_cnt[2]), .Y(n3) );
  NOR3BX2M U29 ( .AN(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n28) );
  NOR3X2M U30 ( .A(current_state[0]), .B(current_state[2]), .C(n12), .Y(
        par_chk_en) );
  OAI211X2M U31 ( .A0(n32), .A1(n30), .B0(n31), .C0(n26), .Y(dat_samp_en) );
  NOR2X2M U32 ( .A(n29), .B(strt_glitch), .Y(n32) );
  NAND4BX1M U33 ( .AN(strt_glitch), .B(n10), .C(n28), .D(n14), .Y(n24) );
  NAND3X2M U34 ( .A(current_state[1]), .B(n9), .C(current_state[2]), .Y(n31)
         );
  AOI21X2M U35 ( .A0(n14), .A1(n28), .B0(strt_glitch), .Y(n29) );
  NAND2X2M U36 ( .A(n28), .B(bit_cnt[3]), .Y(n18) );
  NAND3X2M U37 ( .A(current_state[1]), .B(n11), .C(current_state[0]), .Y(n19)
         );
  NAND3X2M U38 ( .A(n12), .B(n11), .C(current_state[0]), .Y(n30) );
  INVX2M U39 ( .A(current_state[1]), .Y(n12) );
  INVX2M U40 ( .A(current_state[2]), .Y(n11) );
  INVX2M U41 ( .A(current_state[0]), .Y(n9) );
  INVX2M U42 ( .A(bit_cnt[3]), .Y(n14) );
endmodule


module UART_RX_prescale_width6_DATA_WIDTH8_test_1 ( clk, rst, RX_IN, PAR_TYP, 
        PAR_EN, prescale, P_DATA, data_valid, stp_err, par_err, test_si, 
        test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_TYP, PAR_EN, test_si, test_se;
  output data_valid, stp_err, par_err;
  wire   dat_samp_en, sampled_bit, cnt_enable, deser_en, par_chk_en,
         stp_chk_en, strt_chk_en, strt_glitch, n1, n2, n3;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
  data_sampling_prescale_width6_test_1 data_sampling_unit ( .clk(clk), .rst(n1), .RX_IN(RX_IN), .dat_samp_en(dat_samp_en), .prescale(prescale), .edge_cnt(
        edge_cnt), .sampled_bit(sampled_bit), .test_si(n3), .test_se(test_se)
         );
  edge_bit_counter_prescale_width6_bit_cnt_width4_test_1 edge_bit_counter_unit ( 
        .cnt_enable(cnt_enable), .clk(clk), .rst(n1), .prescale(prescale), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), .test_si(P_DATA[7]), .test_se(
        test_se) );
  deserializer_DATA_WIDTH8_bit_cnt_width4_test_1 deserialize_unit ( .clk(clk), 
        .rst(n1), .deser_en(deser_en), .sampled_bit(sampled_bit), .bit_cnt(
        bit_cnt), .P_DATA(P_DATA), .test_se(test_se) );
  parity_check_DATA_WIDTH8_test_1 parity_check_unit ( .clk(clk), .rst(n1), 
        .P_DATA(P_DATA), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), 
        .PAR_TYP(PAR_TYP), .par_err(par_err), .test_si(edge_cnt[5]), .test_se(
        test_se) );
  stop_check_test_1 stop_check_unit ( .clk(clk), .rst(n1), .stp_chk_en(
        stp_chk_en), .sampled_bit(sampled_bit), .stp_err(stp_err), .test_si(
        strt_glitch), .test_se(test_se) );
  start_check_test_1 start_check_unit ( .clk(clk), .rst(n1), .RX_IN(RX_IN), 
        .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch), .test_si(par_err), .test_se(test_se) );
  UART_RX_FSM_DATA_WIDTH8_bit_cnt_width4_test_1 UART_RX_FSM_unit ( .clk(clk), 
        .rst(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), .par_err(par_err), .stp_err(
        stp_err), .strt_glitch(strt_glitch), .bit_cnt(bit_cnt), .dat_samp_en(
        dat_samp_en), .cnt_enable(cnt_enable), .deser_en(deser_en), 
        .par_chk_en(par_chk_en), .stp_chk_en(stp_chk_en), .strt_chk_en(
        strt_chk_en), .data_valid(data_valid), .test_si(test_si), .test_so(n3), 
        .test_se(test_se) );
endmodule


module UART_IN_width8_DATA_WIDTH8_test_1 ( TX_CLK, RST, TX_IN_P, TX_IN_V, 
        TX_OUT_S, TX_OUT_V, PAR_EN, PAR_TYP, RX_CLK, RX_IN_S, prescale, 
        RX_OUT_P, RX_OUT_V, stp_err, par_err, test_si, test_se );
  input [7:0] TX_IN_P;
  input [5:0] prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, RST, TX_IN_V, PAR_EN, PAR_TYP, RX_CLK, RX_IN_S, test_si,
         test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, stp_err, par_err;
  wire   n1, n2;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_IN_width8_test_1 UART_TX_U0 ( .p_data(TX_IN_P), .clk(TX_CLK), .rst(
        n1), .data_valid(TX_IN_V), .par_en(PAR_EN), .par_typ(PAR_TYP), 
        .TX_OUT(TX_OUT_S), .busy(TX_OUT_V), .test_si(stp_err), .test_se(
        test_se) );
  UART_RX_prescale_width6_DATA_WIDTH8_test_1 UART_RX_U0 ( .clk(RX_CLK), .rst(
        n1), .RX_IN(RX_IN_S), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .prescale(
        prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .stp_err(stp_err), 
        .par_err(par_err), .test_si(test_si), .test_se(test_se) );
endmodule


module CLKDIV_MUX_DATA_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NOR4X1M U11 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NOR3X2M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U13 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND4BX1M U14 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U15 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  OAI211X2M U16 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U17 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U19 ( .A(IN[2]), .Y(n15) );
  INVX2M U20 ( .A(IN[5]), .Y(n14) );
  NAND3X2M U21 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[0]), .Y(n17) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module Clock_Divider_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clock_Divider_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N3, div_clk_reg, flag, N9, N10, N11, N12, N13, N14, N15, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N33, N34, N35, N36, N37, N38,
         N39, N40, N42, N43, N44, N45, N46, N47, N48, N49, n27, n28, n29, n30,
         n31, n32, n33, n34, \sub_19/carry[7] , \sub_19/carry[6] ,
         \sub_19/carry[5] , \sub_19/carry[4] , \sub_19/carry[3] ,
         \sub_19/carry[2] , \sub_19/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n24, n25, n26, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;
  wire   [7:0] half_togg_p1;
  wire   [7:0] counter;
  assign test_so = flag;

  SDFFRQX2M div_clk_reg_reg ( .D(n34), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk_reg) );
  SDFFRQX2M flag_reg ( .D(n33), .SI(div_clk_reg), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[7]  ( .D(N49), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N42), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N48), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N47), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N46), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N45), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N44), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N43), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  NAND3X2M U5 ( .A(n28), .B(n30), .C(n64), .Y(n31) );
  OR2X2M U6 ( .A(half_togg_p1[1]), .B(half_togg_p1[0]), .Y(n24) );
  NOR2BX2M U7 ( .AN(N34), .B(n31), .Y(N43) );
  NOR2BX2M U8 ( .AN(N35), .B(n31), .Y(N44) );
  NOR2BX2M U9 ( .AN(N36), .B(n31), .Y(N45) );
  NOR2BX2M U10 ( .AN(N37), .B(n31), .Y(N46) );
  NOR2BX2M U14 ( .AN(N38), .B(n31), .Y(N47) );
  NOR2BX2M U20 ( .AN(N39), .B(n31), .Y(N48) );
  INVX2M U21 ( .A(n27), .Y(n64) );
  OAI32X1M U22 ( .A0(n27), .A1(n63), .A2(n65), .B0(flag), .B1(n28), .Y(n33) );
  INVX2M U23 ( .A(n28), .Y(n63) );
  NAND3X2M U24 ( .A(n64), .B(n32), .C(i_div_ratio[0]), .Y(n28) );
  AO22X1M U25 ( .A0(N15), .A1(flag), .B0(N27), .B1(n65), .Y(n32) );
  NOR2BX2M U26 ( .AN(N40), .B(n31), .Y(N49) );
  NOR2BX2M U27 ( .AN(N33), .B(n31), .Y(N42) );
  CLKXOR2X2M U28 ( .A(n29), .B(div_clk_reg), .Y(n34) );
  NAND2X2M U29 ( .A(n30), .B(n28), .Y(n29) );
  ADDFX2M U30 ( .A(i_div_ratio[1]), .B(n8), .CI(\sub_19/carry[1] ), .CO(
        \sub_19/carry[2] ), .S(half_togg_p1[1]) );
  INVX2M U31 ( .A(i_div_ratio[2]), .Y(n8) );
  ADDFX2M U32 ( .A(i_div_ratio[6]), .B(n13), .CI(\sub_19/carry[6] ), .CO(
        \sub_19/carry[7] ), .S(half_togg_p1[6]) );
  INVX2M U33 ( .A(i_div_ratio[7]), .Y(n13) );
  ADDFX2M U34 ( .A(i_div_ratio[2]), .B(n9), .CI(\sub_19/carry[2] ), .CO(
        \sub_19/carry[3] ), .S(half_togg_p1[2]) );
  INVX2M U35 ( .A(i_div_ratio[3]), .Y(n9) );
  ADDFX2M U36 ( .A(i_div_ratio[3]), .B(n10), .CI(\sub_19/carry[3] ), .CO(
        \sub_19/carry[4] ), .S(half_togg_p1[3]) );
  INVX2M U37 ( .A(i_div_ratio[4]), .Y(n10) );
  ADDFX2M U38 ( .A(i_div_ratio[4]), .B(n11), .CI(\sub_19/carry[4] ), .CO(
        \sub_19/carry[5] ), .S(half_togg_p1[4]) );
  INVX2M U39 ( .A(i_div_ratio[5]), .Y(n11) );
  ADDFX2M U40 ( .A(i_div_ratio[5]), .B(n12), .CI(\sub_19/carry[5] ), .CO(
        \sub_19/carry[6] ), .S(half_togg_p1[5]) );
  INVX2M U41 ( .A(i_div_ratio[6]), .Y(n12) );
  INVX2M U42 ( .A(i_div_ratio[1]), .Y(n7) );
  NAND3BX2M U43 ( .AN(i_div_ratio[0]), .B(N15), .C(n64), .Y(n30) );
  OR2X2M U44 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AOI21BX2M U45 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  NAND2X2M U46 ( .A(i_clk_en), .B(N3), .Y(n27) );
  INVX2M U47 ( .A(counter[0]), .Y(n49) );
  INVX2M U48 ( .A(flag), .Y(n65) );
  MX2X2M U49 ( .A(i_ref_clk), .B(div_clk_reg), .S0(n64), .Y(o_div_clk) );
  XNOR2X1M U50 ( .A(i_div_ratio[7]), .B(\sub_19/carry[7] ), .Y(half_togg_p1[7]) );
  OR2X1M U51 ( .A(n7), .B(i_div_ratio[0]), .Y(\sub_19/carry[1] ) );
  XNOR2X1M U52 ( .A(i_div_ratio[0]), .B(n7), .Y(half_togg_p1[0]) );
  OR2X1M U53 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U54 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U55 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U56 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U57 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U58 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U59 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U60 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U61 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U62 ( .AN(N14), .B(n6), .Y(N13) );
  CLKINVX1M U63 ( .A(half_togg_p1[0]), .Y(N18) );
  OAI2BB1X1M U64 ( .A0N(half_togg_p1[0]), .A1N(half_togg_p1[1]), .B0(n24), .Y(
        N19) );
  OR2X1M U65 ( .A(n24), .B(half_togg_p1[2]), .Y(n25) );
  OAI2BB1X1M U66 ( .A0N(n24), .A1N(half_togg_p1[2]), .B0(n25), .Y(N20) );
  OR2X1M U67 ( .A(n25), .B(half_togg_p1[3]), .Y(n26) );
  OAI2BB1X1M U68 ( .A0N(n25), .A1N(half_togg_p1[3]), .B0(n26), .Y(N21) );
  OR2X1M U69 ( .A(n26), .B(half_togg_p1[4]), .Y(n35) );
  OAI2BB1X1M U70 ( .A0N(n26), .A1N(half_togg_p1[4]), .B0(n35), .Y(N22) );
  OR2X1M U71 ( .A(n35), .B(half_togg_p1[5]), .Y(n36) );
  OAI2BB1X1M U72 ( .A0N(n35), .A1N(half_togg_p1[5]), .B0(n36), .Y(N23) );
  OR2X1M U73 ( .A(n36), .B(half_togg_p1[6]), .Y(n37) );
  OAI2BB1X1M U74 ( .A0N(n36), .A1N(half_togg_p1[6]), .B0(n37), .Y(N24) );
  NOR2X1M U75 ( .A(n37), .B(half_togg_p1[7]), .Y(N26) );
  AO21XLM U76 ( .A0(n37), .A1(half_togg_p1[7]), .B0(N26), .Y(N25) );
  XNOR2X1M U77 ( .A(N9), .B(counter[2]), .Y(n48) );
  NOR2X1M U78 ( .A(n49), .B(n7), .Y(n38) );
  OAI22X1M U79 ( .A0(counter[1]), .A1(n38), .B0(n38), .B1(n1), .Y(n47) );
  CLKNAND2X2M U80 ( .A(n7), .B(n49), .Y(n39) );
  AOI22X1M U81 ( .A0(n39), .A1(n1), .B0(n39), .B1(counter[1]), .Y(n40) );
  NOR3X1M U82 ( .A(n40), .B(N14), .C(counter[7]), .Y(n46) );
  CLKXOR2X2M U83 ( .A(N10), .B(counter[3]), .Y(n44) );
  CLKXOR2X2M U84 ( .A(N11), .B(counter[4]), .Y(n43) );
  CLKXOR2X2M U85 ( .A(N12), .B(counter[5]), .Y(n42) );
  CLKXOR2X2M U86 ( .A(N13), .B(counter[6]), .Y(n41) );
  NOR4X1M U87 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n45) );
  AND4X1M U88 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(N15) );
  OR4X1M U89 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n50) );
  OR4X1M U90 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n50), .Y(N3) );
  XNOR2X1M U91 ( .A(N24), .B(counter[6]), .Y(n54) );
  XNOR2X1M U92 ( .A(N23), .B(counter[5]), .Y(n53) );
  XNOR2X1M U93 ( .A(N22), .B(counter[4]), .Y(n52) );
  XNOR2X1M U94 ( .A(N21), .B(counter[3]), .Y(n51) );
  NAND4X1M U95 ( .A(n54), .B(n53), .C(n52), .D(n51), .Y(n62) );
  NOR2BX1M U96 ( .AN(N18), .B(counter[0]), .Y(n55) );
  OAI2B2X1M U97 ( .A1N(counter[1]), .A0(n55), .B0(N19), .B1(n55), .Y(n58) );
  NOR2BX1M U98 ( .AN(counter[0]), .B(N18), .Y(n56) );
  OAI2B2X1M U99 ( .A1N(N19), .A0(n56), .B0(counter[1]), .B1(n56), .Y(n57) );
  NAND3BX1M U100 ( .AN(N26), .B(n58), .C(n57), .Y(n61) );
  CLKXOR2X2M U101 ( .A(N25), .B(counter[7]), .Y(n60) );
  CLKXOR2X2M U102 ( .A(N20), .B(counter[2]), .Y(n59) );
  NOR4X1M U103 ( .A(n62), .B(n61), .C(n60), .D(n59), .Y(N27) );
  Clock_Divider_0_DW01_inc_0 add_34 ( .A(counter), .SUM({N40, N39, N38, N37, 
        N36, N35, N34, N33}) );
endmodule


module Clock_Divider_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Clock_Divider_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N3, div_clk_reg, flag, N9, N10, N11, N12, N13, N14, N15, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N33, N34, N35, N36, N37, N38,
         N39, N40, N42, N43, N44, N45, N46, N47, N48, N49, \sub_19/carry[7] ,
         \sub_19/carry[6] , \sub_19/carry[5] , \sub_19/carry[4] ,
         \sub_19/carry[3] , \sub_19/carry[2] , \sub_19/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n24, n25, n26, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73;
  wire   [7:0] half_togg_p1;
  wire   [7:0] counter;
  assign test_so = flag;

  SDFFRQX2M div_clk_reg_reg ( .D(n66), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk_reg) );
  SDFFRQX2M flag_reg ( .D(n67), .SI(div_clk_reg), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[7]  ( .D(N49), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N42), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N48), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N47), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N46), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N45), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N44), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N43), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  OR2X2M U5 ( .A(half_togg_p1[1]), .B(half_togg_p1[0]), .Y(n24) );
  NAND3X2M U6 ( .A(n72), .B(n70), .C(n65), .Y(n69) );
  NOR2BX2M U7 ( .AN(N34), .B(n69), .Y(N43) );
  NOR2BX2M U8 ( .AN(N35), .B(n69), .Y(N44) );
  NOR2BX2M U9 ( .AN(N36), .B(n69), .Y(N45) );
  NOR2BX2M U10 ( .AN(N37), .B(n69), .Y(N46) );
  NOR2BX2M U14 ( .AN(N38), .B(n69), .Y(N47) );
  NOR2BX2M U20 ( .AN(N39), .B(n69), .Y(N48) );
  ADDFX2M U21 ( .A(i_div_ratio[1]), .B(n13), .CI(\sub_19/carry[1] ), .CO(
        \sub_19/carry[2] ), .S(half_togg_p1[1]) );
  INVX2M U22 ( .A(i_div_ratio[2]), .Y(n13) );
  INVX2M U23 ( .A(i_div_ratio[1]), .Y(n12) );
  ADDFX2M U24 ( .A(i_div_ratio[2]), .B(n11), .CI(\sub_19/carry[2] ), .CO(
        \sub_19/carry[3] ), .S(half_togg_p1[2]) );
  INVX2M U25 ( .A(i_div_ratio[3]), .Y(n11) );
  NAND3BX2M U26 ( .AN(i_div_ratio[0]), .B(N15), .C(n65), .Y(n70) );
  OR2X2M U27 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AOI21BX2M U28 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  INVX2M U29 ( .A(n73), .Y(n65) );
  OAI32X1M U30 ( .A0(n73), .A1(n63), .A2(n64), .B0(flag), .B1(n72), .Y(n67) );
  INVX2M U31 ( .A(n72), .Y(n63) );
  NAND3X2M U32 ( .A(n65), .B(n68), .C(i_div_ratio[0]), .Y(n72) );
  AO22X1M U33 ( .A0(N15), .A1(flag), .B0(N27), .B1(n64), .Y(n68) );
  NOR2BX2M U34 ( .AN(N40), .B(n69), .Y(N49) );
  NOR2BX2M U35 ( .AN(N33), .B(n69), .Y(N42) );
  ADDFX2M U36 ( .A(i_div_ratio[4]), .B(n9), .CI(\sub_19/carry[4] ), .CO(
        \sub_19/carry[5] ), .S(half_togg_p1[4]) );
  INVX2M U37 ( .A(i_div_ratio[5]), .Y(n9) );
  ADDFX2M U38 ( .A(i_div_ratio[5]), .B(n8), .CI(\sub_19/carry[5] ), .CO(
        \sub_19/carry[6] ), .S(half_togg_p1[5]) );
  INVX2M U39 ( .A(i_div_ratio[6]), .Y(n8) );
  ADDFX2M U40 ( .A(i_div_ratio[3]), .B(n10), .CI(\sub_19/carry[3] ), .CO(
        \sub_19/carry[4] ), .S(half_togg_p1[3]) );
  INVX2M U41 ( .A(i_div_ratio[4]), .Y(n10) );
  ADDFX2M U42 ( .A(i_div_ratio[6]), .B(n7), .CI(\sub_19/carry[6] ), .CO(
        \sub_19/carry[7] ), .S(half_togg_p1[6]) );
  INVX2M U43 ( .A(i_div_ratio[7]), .Y(n7) );
  CLKXOR2X2M U44 ( .A(n71), .B(div_clk_reg), .Y(n66) );
  NAND2X2M U45 ( .A(n70), .B(n72), .Y(n71) );
  NAND2X2M U46 ( .A(i_clk_en), .B(N3), .Y(n73) );
  INVX2M U47 ( .A(counter[0]), .Y(n49) );
  INVX2M U48 ( .A(flag), .Y(n64) );
  MX2X2M U49 ( .A(i_ref_clk), .B(div_clk_reg), .S0(n65), .Y(o_div_clk) );
  XNOR2X1M U50 ( .A(i_div_ratio[7]), .B(\sub_19/carry[7] ), .Y(half_togg_p1[7]) );
  OR2X1M U51 ( .A(n12), .B(i_div_ratio[0]), .Y(\sub_19/carry[1] ) );
  XNOR2X1M U52 ( .A(i_div_ratio[0]), .B(n12), .Y(half_togg_p1[0]) );
  OR2X1M U53 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U54 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U55 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U56 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U57 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U58 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U59 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U60 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U61 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U62 ( .AN(N14), .B(n6), .Y(N13) );
  CLKINVX1M U63 ( .A(half_togg_p1[0]), .Y(N18) );
  OAI2BB1X1M U64 ( .A0N(half_togg_p1[0]), .A1N(half_togg_p1[1]), .B0(n24), .Y(
        N19) );
  OR2X1M U65 ( .A(n24), .B(half_togg_p1[2]), .Y(n25) );
  OAI2BB1X1M U66 ( .A0N(n24), .A1N(half_togg_p1[2]), .B0(n25), .Y(N20) );
  OR2X1M U67 ( .A(n25), .B(half_togg_p1[3]), .Y(n26) );
  OAI2BB1X1M U68 ( .A0N(n25), .A1N(half_togg_p1[3]), .B0(n26), .Y(N21) );
  OR2X1M U69 ( .A(n26), .B(half_togg_p1[4]), .Y(n35) );
  OAI2BB1X1M U70 ( .A0N(n26), .A1N(half_togg_p1[4]), .B0(n35), .Y(N22) );
  OR2X1M U71 ( .A(n35), .B(half_togg_p1[5]), .Y(n36) );
  OAI2BB1X1M U72 ( .A0N(n35), .A1N(half_togg_p1[5]), .B0(n36), .Y(N23) );
  OR2X1M U73 ( .A(n36), .B(half_togg_p1[6]), .Y(n37) );
  OAI2BB1X1M U74 ( .A0N(n36), .A1N(half_togg_p1[6]), .B0(n37), .Y(N24) );
  NOR2X1M U75 ( .A(n37), .B(half_togg_p1[7]), .Y(N26) );
  AO21XLM U76 ( .A0(n37), .A1(half_togg_p1[7]), .B0(N26), .Y(N25) );
  XNOR2X1M U77 ( .A(N9), .B(counter[2]), .Y(n48) );
  NOR2X1M U78 ( .A(n49), .B(n12), .Y(n38) );
  OAI22X1M U79 ( .A0(counter[1]), .A1(n38), .B0(n38), .B1(n1), .Y(n47) );
  CLKNAND2X2M U80 ( .A(n12), .B(n49), .Y(n39) );
  AOI22X1M U81 ( .A0(n39), .A1(n1), .B0(n39), .B1(counter[1]), .Y(n40) );
  NOR3X1M U82 ( .A(n40), .B(N14), .C(counter[7]), .Y(n46) );
  CLKXOR2X2M U83 ( .A(N10), .B(counter[3]), .Y(n44) );
  CLKXOR2X2M U84 ( .A(N11), .B(counter[4]), .Y(n43) );
  CLKXOR2X2M U85 ( .A(N12), .B(counter[5]), .Y(n42) );
  CLKXOR2X2M U86 ( .A(N13), .B(counter[6]), .Y(n41) );
  NOR4X1M U87 ( .A(n44), .B(n43), .C(n42), .D(n41), .Y(n45) );
  AND4X1M U88 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(N15) );
  OR4X1M U89 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n50) );
  OR4X1M U90 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n50), .Y(N3) );
  XNOR2X1M U91 ( .A(N24), .B(counter[6]), .Y(n54) );
  XNOR2X1M U92 ( .A(N23), .B(counter[5]), .Y(n53) );
  XNOR2X1M U93 ( .A(N22), .B(counter[4]), .Y(n52) );
  XNOR2X1M U94 ( .A(N21), .B(counter[3]), .Y(n51) );
  NAND4X1M U95 ( .A(n54), .B(n53), .C(n52), .D(n51), .Y(n62) );
  NOR2BX1M U96 ( .AN(N18), .B(counter[0]), .Y(n55) );
  OAI2B2X1M U97 ( .A1N(counter[1]), .A0(n55), .B0(N19), .B1(n55), .Y(n58) );
  NOR2BX1M U98 ( .AN(counter[0]), .B(N18), .Y(n56) );
  OAI2B2X1M U99 ( .A1N(N19), .A0(n56), .B0(counter[1]), .B1(n56), .Y(n57) );
  NAND3BX1M U100 ( .AN(N26), .B(n58), .C(n57), .Y(n61) );
  CLKXOR2X2M U101 ( .A(N25), .B(counter[7]), .Y(n60) );
  CLKXOR2X2M U102 ( .A(N20), .B(counter[2]), .Y(n59) );
  NOR4X1M U103 ( .A(n62), .B(n61), .C(n60), .D(n59), .Y(N27) );
  Clock_Divider_1_DW01_inc_0 add_34 ( .A(counter), .SUM({N40, N39, N38, N37, 
        N36, N35, N34, N33}) );
endmodule


module RST_SYNC_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \reg_sync[0] ;

  SDFFRQX2M \reg_sync_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\reg_sync[0] ) );
  SDFFRQX1M \reg_sync_reg[1]  ( .D(\reg_sync[0] ), .SI(\reg_sync[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \reg_sync[0] ;

  SDFFRQX2M \reg_sync_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\reg_sync[0] ) );
  SDFFRQX1M \reg_sync_reg[1]  ( .D(\reg_sync[0] ), .SI(\reg_sync[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_BUS_WIDTH8_test_1 ( CLK, RST, bus_enable, unsync_bus, 
        sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   enable_flop, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] reg_sync;

  SDFFRQX2M enable_flop_reg ( .D(reg_sync[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \reg_sync_reg[1]  ( .D(reg_sync[0]), .SI(reg_sync[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(reg_sync[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(reg_sync[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \reg_sync_reg[0]  ( .D(bus_enable), .SI(enable_pulse), .SE(test_se), .CK(CLK), .RN(RST), .Q(reg_sync[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(reg_sync[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module SYS_CTRL_WIDTH8_ADDR4_test_1 ( CLK, RST, RX_P_DATA, RX_D_VLD, ALU_OUT, 
        OUT_Valid, ALU_FUN, EN, WrEn, RdEn, address, WrData, RdData, 
        RdData_Valid, WR_DATA, Winc, FIFO_Full, CLK_EN, clk_div_en, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  output [3:0] address;
  output [7:0] WrData;
  input [7:0] RdData;
  output [7:0] WR_DATA;
  input CLK, RST, RX_D_VLD, OUT_Valid, RdData_Valid, FIFO_Full, test_si1,
         test_se;
  output EN, WrEn, RdEn, Winc, CLK_EN, clk_div_en, test_so2, test_so1;
  wire   \store_frames[0][6] , \store_frames[0][5] , \store_frames[0][4] ,
         \store_frames[0][2] , \store_frames[0][1] , \store_frames[0][0] , n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n57, n64, n80, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n60, n61, n62, n63, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n191, n192, n193, n194, n195, n196,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219;
  wire   [2:0] current_state;
  wire   [2:0] frame_cnt;
  assign test_so1 = \store_frames[0][5] ;

  SDFFRX1M \store_frames_reg[3][2]  ( .D(n158), .SI(n199), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n198), .QN(n36) );
  SDFFRX1M \store_frames_reg[3][1]  ( .D(n159), .SI(n200), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n199), .QN(n37) );
  SDFFRX1M \store_frames_reg[3][0]  ( .D(n160), .SI(n201), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n200), .QN(n38) );
  SDFFRX1M \store_frames_reg[2][7]  ( .D(n161), .SI(n202), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n201), .QN(n39) );
  SDFFRX1M \store_frames_reg[2][6]  ( .D(n162), .SI(n203), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n202), .QN(n40) );
  SDFFRX1M \store_frames_reg[2][5]  ( .D(n163), .SI(n204), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n203), .QN(n41) );
  SDFFRX1M \store_frames_reg[2][4]  ( .D(n164), .SI(n205), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n204), .QN(n42) );
  SDFFRX1M \store_frames_reg[2][3]  ( .D(n165), .SI(n206), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n205), .QN(n43) );
  SDFFRX1M \store_frames_reg[2][2]  ( .D(n166), .SI(n207), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n206), .QN(n44) );
  SDFFRX1M \store_frames_reg[2][1]  ( .D(n167), .SI(n208), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n207), .QN(n45) );
  SDFFRX1M \store_frames_reg[2][0]  ( .D(n168), .SI(n209), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n208), .QN(n46) );
  SDFFRX1M \store_frames_reg[1][7]  ( .D(n169), .SI(n210), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n209), .QN(n47) );
  SDFFRX1M \store_frames_reg[1][6]  ( .D(n170), .SI(n211), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n210), .QN(n48) );
  SDFFRX1M \store_frames_reg[1][5]  ( .D(n171), .SI(n212), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n211), .QN(n49) );
  SDFFRX1M \store_frames_reg[1][4]  ( .D(n172), .SI(n213), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n212), .QN(n50) );
  SDFFRX1M \store_frames_reg[1][3]  ( .D(n173), .SI(n214), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n213), .QN(n51) );
  SDFFRX1M \store_frames_reg[1][2]  ( .D(n174), .SI(n215), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n214), .QN(n52) );
  SDFFRQX2M \frame_cnt_reg[1]  ( .D(n187), .SI(n70), .SE(test_se), .CK(CLK), 
        .RN(n61), .Q(frame_cnt[1]) );
  SDFFRX1M \store_frames_reg[1][0]  ( .D(n176), .SI(n217), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n216), .QN(n54) );
  SDFFRX1M \store_frames_reg[1][1]  ( .D(n175), .SI(n216), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n215), .QN(n53) );
  SDFFRQX2M \frame_cnt_reg[0]  ( .D(n190), .SI(n79), .SE(test_se), .CK(CLK), 
        .RN(n61), .Q(frame_cnt[0]) );
  SDFFRQX2M \store_frames_reg[0][0]  ( .D(n186), .SI(n219), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(\store_frames[0][0] ) );
  SDFFRQX2M \store_frames_reg[0][4]  ( .D(n182), .SI(n218), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(\store_frames[0][4] ) );
  SDFFRX1M \store_frames_reg[0][3]  ( .D(n183), .SI(n87), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n218), .QN(n64) );
  SDFFRX1M \store_frames_reg[0][7]  ( .D(n179), .SI(n84), .SE(test_se), .CK(
        CLK), .RN(n61), .Q(n217), .QN(n57) );
  SDFFRQX2M \store_frames_reg[0][6]  ( .D(n180), .SI(test_si1), .SE(test_se), 
        .CK(CLK), .RN(n61), .Q(\store_frames[0][6] ) );
  SDFFRQX2M \store_frames_reg[0][5]  ( .D(n181), .SI(\store_frames[0][4] ), 
        .SE(test_se), .CK(CLK), .RN(n61), .Q(\store_frames[0][5] ) );
  SDFFRQX2M \store_frames_reg[0][2]  ( .D(n184), .SI(\store_frames[0][1] ), 
        .SE(test_se), .CK(CLK), .RN(n61), .Q(\store_frames[0][2] ) );
  SDFFRQX2M \store_frames_reg[0][1]  ( .D(n185), .SI(\store_frames[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(n61), .Q(\store_frames[0][1] ) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n178), .SI(n81), .SE(test_se), .CK(CLK), .RN(n61), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(n188), .SI(n77), .SE(test_se), .CK(CLK), .RN(n61), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n177), .SI(RdData[7]), .SE(test_se), 
        .CK(CLK), .RN(n61), .Q(current_state[0]) );
  SDFFRX1M \frame_cnt_reg[2]  ( .D(n189), .SI(frame_cnt[1]), .SE(test_se), 
        .CK(CLK), .RN(n61), .Q(n219), .QN(n80) );
  SDFFRX1M \store_frames_reg[3][3]  ( .D(n157), .SI(n198), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(test_so2), .QN(n35) );
  NOR3BX2M U39 ( .AN(n156), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n117) );
  NOR3BX2M U40 ( .AN(n140), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n104) );
  NOR3X2M U42 ( .A(current_state[0]), .B(current_state[2]), .C(n77), .Y(n113)
         );
  NOR2X2M U43 ( .A(n136), .B(n52), .Y(address[2]) );
  OAI22X1M U44 ( .A0(n36), .A1(n154), .B0(n52), .B1(n155), .Y(ALU_FUN[2]) );
  OAI22X1M U45 ( .A0(n37), .A1(n154), .B0(n53), .B1(n155), .Y(ALU_FUN[1]) );
  OAI22X1M U46 ( .A0(n38), .A1(n154), .B0(n54), .B1(n155), .Y(ALU_FUN[0]) );
  INVX2M U47 ( .A(n141), .Y(RdEn) );
  NAND2X2M U48 ( .A(n137), .B(n85), .Y(n141) );
  NAND2X2M U49 ( .A(n138), .B(n60), .Y(WrEn) );
  NOR2BX2M U50 ( .AN(n153), .B(n126), .Y(n144) );
  INVX2M U51 ( .A(n126), .Y(n82) );
  INVX2M U52 ( .A(n97), .Y(n63) );
  NAND2X2M U53 ( .A(n137), .B(n82), .Y(n142) );
  INVX2M U54 ( .A(n108), .Y(n83) );
  INVX2M U55 ( .A(n62), .Y(n61) );
  AOI21BX2M U56 ( .A0(n104), .A1(n137), .B0N(n141), .Y(n136) );
  AOI21BX2M U57 ( .A0(n104), .A1(n137), .B0N(n115), .Y(n138) );
  NOR2X2M U58 ( .A(n117), .B(n119), .Y(n126) );
  NAND2X2M U59 ( .A(n117), .B(n74), .Y(n103) );
  OAI22X1M U60 ( .A0(n63), .A1(n77), .B0(n109), .B1(n97), .Y(n178) );
  AOI211X2M U61 ( .A0(n74), .A1(n67), .B0(n110), .C0(n111), .Y(n109) );
  INVX2M U62 ( .A(n116), .Y(n67) );
  OAI211X2M U63 ( .A0(n112), .A1(n114), .B0(n115), .C0(n102), .Y(n110) );
  OAI22X1M U64 ( .A0(n63), .A1(n81), .B0(n96), .B1(n97), .Y(n177) );
  AOI221XLM U65 ( .A0(n98), .A1(n79), .B0(n78), .B1(n82), .C0(n99), .Y(n96) );
  OAI211X2M U66 ( .A0(n100), .A1(n101), .B0(n102), .C0(n103), .Y(n99) );
  AOI221XLM U67 ( .A0(n104), .A1(n105), .B0(n106), .B1(n107), .C0(n108), .Y(
        n100) );
  NOR2X2M U68 ( .A(n112), .B(n104), .Y(n108) );
  AND2X2M U69 ( .A(n133), .B(n113), .Y(n137) );
  NAND2X2M U70 ( .A(n126), .B(n120), .Y(n112) );
  BUFX2M U71 ( .A(n139), .Y(n60) );
  NAND3BX2M U72 ( .AN(n103), .B(n133), .C(n118), .Y(n139) );
  INVX2M U73 ( .A(n120), .Y(n85) );
  AO22X1M U74 ( .A0(n112), .A1(n113), .B0(n113), .B1(n108), .Y(n111) );
  AOI222X1M U75 ( .A0(n72), .A1(n104), .B0(n106), .B1(n68), .C0(n117), .C1(
        n118), .Y(n116) );
  OAI221X1M U76 ( .A0(n129), .A1(n141), .B0(n130), .B1(n142), .C0(n102), .Y(
        Winc) );
  NOR2BX2M U77 ( .AN(n153), .B(n120), .Y(n145) );
  OAI22X1M U78 ( .A0(n63), .A1(n79), .B0(n123), .B1(n97), .Y(n188) );
  AOI211X2M U79 ( .A0(n113), .A1(n83), .B0(n124), .C0(n75), .Y(n123) );
  INVX2M U80 ( .A(n102), .Y(n75) );
  OR2X2M U81 ( .A(n125), .B(n78), .Y(n124) );
  NAND2X2M U82 ( .A(n127), .B(n128), .Y(n97) );
  AOI33X2M U83 ( .A0(n89), .A1(n79), .A2(n98), .B0(n113), .B1(n129), .B2(n85), 
        .Y(n128) );
  AOI31X2M U84 ( .A0(n82), .A1(n130), .A2(n76), .B0(n131), .Y(n127) );
  INVX2M U85 ( .A(n132), .Y(n76) );
  NOR2X2M U86 ( .A(n113), .B(n78), .Y(n132) );
  AOI21X2M U87 ( .A0(n132), .A1(n101), .B0(n133), .Y(n131) );
  NAND2BX2M U88 ( .AN(n119), .B(n120), .Y(n106) );
  INVX2M U89 ( .A(n114), .Y(n78) );
  INVX2M U90 ( .A(n105), .Y(n72) );
  INVX2M U91 ( .A(n107), .Y(n68) );
  INVX2M U92 ( .A(n101), .Y(n74) );
  NOR3X2M U93 ( .A(n79), .B(n81), .C(n77), .Y(n125) );
  OAI22X1M U94 ( .A0(n195), .A1(n121), .B0(n69), .B1(n88), .Y(n185) );
  OAI22X1M U95 ( .A0(n194), .A1(n121), .B0(n69), .B1(n87), .Y(n184) );
  OAI22X1M U96 ( .A0(n191), .A1(n121), .B0(n69), .B1(n86), .Y(n181) );
  OAI22X1M U97 ( .A0(n91), .A1(n121), .B0(n69), .B1(n84), .Y(n180) );
  INVX2M U98 ( .A(n94), .Y(n73) );
  INVX2M U99 ( .A(n93), .Y(n66) );
  INVX2M U100 ( .A(n121), .Y(n69) );
  NOR2BX2M U101 ( .AN(n133), .B(n114), .Y(n153) );
  INVX2M U102 ( .A(n92), .Y(n71) );
  NAND2X2M U103 ( .A(n137), .B(n117), .Y(n154) );
  NAND2X2M U104 ( .A(n119), .B(n137), .Y(n155) );
  INVX2M U105 ( .A(RST), .Y(n62) );
  NOR2X4M U106 ( .A(n136), .B(n51), .Y(address[3]) );
  OAI22X1M U107 ( .A0(n138), .A1(n46), .B0(n54), .B1(n60), .Y(WrData[0]) );
  OAI22X1M U108 ( .A0(n138), .A1(n42), .B0(n50), .B1(n60), .Y(WrData[4]) );
  OAI22X1M U109 ( .A0(n138), .A1(n41), .B0(n49), .B1(n60), .Y(WrData[5]) );
  OAI22X1M U110 ( .A0(n138), .A1(n40), .B0(n48), .B1(n60), .Y(WrData[6]) );
  OAI22X1M U111 ( .A0(n138), .A1(n39), .B0(n47), .B1(n60), .Y(WrData[7]) );
  OAI22X1M U112 ( .A0(n138), .A1(n45), .B0(n53), .B1(n60), .Y(WrData[1]) );
  OAI22X1M U113 ( .A0(n138), .A1(n44), .B0(n52), .B1(n60), .Y(WrData[2]) );
  OAI22X1M U114 ( .A0(n138), .A1(n43), .B0(n51), .B1(n60), .Y(WrData[3]) );
  NOR4X1M U115 ( .A(n86), .B(n88), .C(\store_frames[0][2] ), .D(
        \store_frames[0][6] ), .Y(n140) );
  NOR4X1M U116 ( .A(n84), .B(n87), .C(\store_frames[0][1] ), .D(
        \store_frames[0][5] ), .Y(n156) );
  NAND3X2M U117 ( .A(\store_frames[0][0] ), .B(n140), .C(\store_frames[0][4] ), 
        .Y(n120) );
  NOR2X2M U118 ( .A(n57), .B(n64), .Y(n133) );
  INVX2M U119 ( .A(current_state[1]), .Y(n77) );
  INVX2M U120 ( .A(\store_frames[0][1] ), .Y(n88) );
  INVX2M U121 ( .A(\store_frames[0][2] ), .Y(n87) );
  INVX2M U122 ( .A(\store_frames[0][5] ), .Y(n86) );
  INVX2M U123 ( .A(\store_frames[0][6] ), .Y(n84) );
  NOR2X2M U124 ( .A(n136), .B(n53), .Y(address[1]) );
  OAI21X2M U125 ( .A0(n136), .A1(n54), .B0(n115), .Y(address[0]) );
  NOR3X2M U126 ( .A(frame_cnt[0]), .B(frame_cnt[1]), .C(n80), .Y(n118) );
  AND3X2M U127 ( .A(n156), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n119) );
  NAND3X2M U128 ( .A(current_state[2]), .B(n81), .C(current_state[1]), .Y(n114) );
  NAND3X2M U129 ( .A(n70), .B(n80), .C(frame_cnt[1]), .Y(n107) );
  NAND3X2M U130 ( .A(frame_cnt[0]), .B(n80), .C(frame_cnt[1]), .Y(n105) );
  NAND3X2M U131 ( .A(n77), .B(n79), .C(current_state[0]), .Y(n101) );
  NAND3X2M U132 ( .A(current_state[0]), .B(n79), .C(current_state[1]), .Y(n115) );
  OAI2BB1X2M U133 ( .A0N(ALU_OUT[8]), .A1N(n125), .B0(n152), .Y(WR_DATA[0]) );
  AOI22X1M U134 ( .A0(ALU_OUT[0]), .A1(n144), .B0(RdData[0]), .B1(n145), .Y(
        n152) );
  OAI2BB1X2M U135 ( .A0N(ALU_OUT[9]), .A1N(n125), .B0(n151), .Y(WR_DATA[1]) );
  AOI22X1M U136 ( .A0(ALU_OUT[1]), .A1(n144), .B0(RdData[1]), .B1(n145), .Y(
        n151) );
  OAI2BB1X2M U137 ( .A0N(ALU_OUT[10]), .A1N(n125), .B0(n150), .Y(WR_DATA[2])
         );
  AOI22X1M U138 ( .A0(ALU_OUT[2]), .A1(n144), .B0(RdData[2]), .B1(n145), .Y(
        n150) );
  OAI2BB1X2M U139 ( .A0N(ALU_OUT[11]), .A1N(n125), .B0(n149), .Y(WR_DATA[3])
         );
  AOI22X1M U140 ( .A0(ALU_OUT[3]), .A1(n144), .B0(RdData[3]), .B1(n145), .Y(
        n149) );
  OAI2BB1X2M U141 ( .A0N(ALU_OUT[12]), .A1N(n125), .B0(n148), .Y(WR_DATA[4])
         );
  AOI22X1M U142 ( .A0(ALU_OUT[4]), .A1(n144), .B0(RdData[4]), .B1(n145), .Y(
        n148) );
  OAI2BB1X2M U143 ( .A0N(ALU_OUT[13]), .A1N(n125), .B0(n147), .Y(WR_DATA[5])
         );
  AOI22X1M U144 ( .A0(ALU_OUT[5]), .A1(n144), .B0(RdData[5]), .B1(n145), .Y(
        n147) );
  OAI2BB1X2M U145 ( .A0N(ALU_OUT[14]), .A1N(n125), .B0(n146), .Y(WR_DATA[6])
         );
  AOI22X1M U146 ( .A0(ALU_OUT[6]), .A1(n144), .B0(RdData[6]), .B1(n145), .Y(
        n146) );
  OAI2BB1X2M U147 ( .A0N(ALU_OUT[15]), .A1N(n125), .B0(n143), .Y(WR_DATA[7])
         );
  AOI22X1M U148 ( .A0(ALU_OUT[7]), .A1(n144), .B0(RdData[7]), .B1(n145), .Y(
        n143) );
  INVX2M U149 ( .A(current_state[2]), .Y(n79) );
  INVX2M U150 ( .A(current_state[0]), .Y(n81) );
  INVX2M U151 ( .A(frame_cnt[0]), .Y(n70) );
  NAND3X2M U152 ( .A(n70), .B(n80), .C(n95), .Y(n121) );
  NAND3X2M U153 ( .A(frame_cnt[0]), .B(n80), .C(n95), .Y(n94) );
  NOR2X2M U154 ( .A(n89), .B(frame_cnt[1]), .Y(n95) );
  NAND2X2M U155 ( .A(n68), .B(RX_D_VLD), .Y(n93) );
  OAI21X2M U156 ( .A0(frame_cnt[0]), .A1(n89), .B0(n135), .Y(n122) );
  OAI22X1M U157 ( .A0(n70), .A1(n135), .B0(frame_cnt[0]), .B1(n89), .Y(n190)
         );
  OAI22X1M U158 ( .A0(n195), .A1(n94), .B0(n73), .B1(n53), .Y(n175) );
  OAI22X1M U159 ( .A0(n194), .A1(n94), .B0(n73), .B1(n52), .Y(n174) );
  OAI22X1M U160 ( .A0(n193), .A1(n94), .B0(n73), .B1(n51), .Y(n173) );
  OAI22X1M U161 ( .A0(n92), .A1(n196), .B0(n71), .B1(n38), .Y(n160) );
  OAI22X1M U162 ( .A0(n92), .A1(n195), .B0(n71), .B1(n37), .Y(n159) );
  OAI22X1M U163 ( .A0(n92), .A1(n194), .B0(n71), .B1(n36), .Y(n158) );
  OAI22X1M U164 ( .A0(n92), .A1(n193), .B0(n71), .B1(n35), .Y(n157) );
  OAI22X1M U165 ( .A0(n196), .A1(n93), .B0(n66), .B1(n46), .Y(n168) );
  OAI22X1M U166 ( .A0(n195), .A1(n93), .B0(n66), .B1(n45), .Y(n167) );
  OAI22X1M U167 ( .A0(n194), .A1(n93), .B0(n66), .B1(n44), .Y(n166) );
  OAI22X1M U168 ( .A0(n193), .A1(n93), .B0(n66), .B1(n43), .Y(n165) );
  OAI22X1M U169 ( .A0(n93), .A1(n192), .B0(n66), .B1(n42), .Y(n164) );
  OAI22X1M U170 ( .A0(n93), .A1(n191), .B0(n66), .B1(n41), .Y(n163) );
  OAI22X1M U171 ( .A0(n93), .A1(n91), .B0(n66), .B1(n40), .Y(n162) );
  OAI22X1M U172 ( .A0(n93), .A1(n90), .B0(n66), .B1(n39), .Y(n161) );
  OAI22X1M U173 ( .A0(n192), .A1(n94), .B0(n73), .B1(n50), .Y(n172) );
  OAI22X1M U174 ( .A0(n191), .A1(n94), .B0(n73), .B1(n49), .Y(n171) );
  OAI22X1M U175 ( .A0(n91), .A1(n94), .B0(n73), .B1(n48), .Y(n170) );
  OAI22X1M U176 ( .A0(n90), .A1(n94), .B0(n73), .B1(n47), .Y(n169) );
  OAI22X1M U177 ( .A0(n193), .A1(n121), .B0(n69), .B1(n64), .Y(n183) );
  OAI22X1M U178 ( .A0(n90), .A1(n121), .B0(n69), .B1(n57), .Y(n179) );
  OAI22X1M U179 ( .A0(n196), .A1(n94), .B0(n73), .B1(n54), .Y(n176) );
  NAND2X2M U180 ( .A(RX_D_VLD), .B(n72), .Y(n92) );
  NAND3X2M U181 ( .A(current_state[0]), .B(n77), .C(current_state[2]), .Y(n102) );
  OAI2BB2X1M U182 ( .B0(n196), .B1(n121), .A0N(n121), .A1N(
        \store_frames[0][0] ), .Y(n186) );
  OAI2BB2X1M U183 ( .B0(n192), .B1(n121), .A0N(n121), .A1N(
        \store_frames[0][4] ), .Y(n182) );
  NOR2X2M U184 ( .A(current_state[0]), .B(current_state[1]), .Y(n98) );
  OAI21X2M U185 ( .A0(n134), .A1(n80), .B0(n92), .Y(n189) );
  NOR2X2M U186 ( .A(n95), .B(n122), .Y(n134) );
  INVX2M U187 ( .A(RX_D_VLD), .Y(n89) );
  AO21XLM U188 ( .A0(current_state[2]), .A1(n98), .B0(RX_D_VLD), .Y(n135) );
  INVX2M U189 ( .A(RX_P_DATA[1]), .Y(n195) );
  INVX2M U190 ( .A(RX_P_DATA[2]), .Y(n194) );
  INVX2M U191 ( .A(RX_P_DATA[3]), .Y(n193) );
  INVX2M U192 ( .A(RX_P_DATA[0]), .Y(n196) );
  INVX2M U193 ( .A(FIFO_Full), .Y(n65) );
  NAND2X2M U194 ( .A(RdData_Valid), .B(n65), .Y(n129) );
  NAND2X2M U195 ( .A(OUT_Valid), .B(n65), .Y(n130) );
  INVX2M U196 ( .A(RX_P_DATA[5]), .Y(n191) );
  INVX2M U197 ( .A(RX_P_DATA[6]), .Y(n91) );
  INVX2M U198 ( .A(RX_P_DATA[7]), .Y(n90) );
  INVX2M U199 ( .A(RX_P_DATA[4]), .Y(n192) );
  AO22X1M U200 ( .A0(frame_cnt[0]), .A1(n95), .B0(n122), .B1(frame_cnt[1]), 
        .Y(n187) );
  OAI22X1M U201 ( .A0(n35), .A1(n154), .B0(n51), .B1(n155), .Y(ALU_FUN[3]) );
  BUFX2M U202 ( .A(EN), .Y(CLK_EN) );
  INVX2M U203 ( .A(n142), .Y(EN) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module Register_File_WIDTH8_ADDR4_test_1 ( RST, CLK, WrEn, RdEn, address, 
        WrData, RdData, RdData_Valid, REG0, REG1, REG2, REG3, test_si2, 
        test_si1, test_so1, test_se );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input RST, CLK, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_Valid, test_so1;
  wire   N11, N12, N13, N14, \REG[15][7] , \REG[15][6] , \REG[15][5] ,
         \REG[15][4] , \REG[15][3] , \REG[15][2] , \REG[15][1] , \REG[15][0] ,
         \REG[14][7] , \REG[14][6] , \REG[14][5] , \REG[14][4] , \REG[14][3] ,
         \REG[14][2] , \REG[14][1] , \REG[14][0] , \REG[13][7] , \REG[13][6] ,
         \REG[13][5] , \REG[13][4] , \REG[13][3] , \REG[13][2] , \REG[13][1] ,
         \REG[13][0] , \REG[12][7] , \REG[12][6] , \REG[12][5] , \REG[12][4] ,
         \REG[12][3] , \REG[12][2] , \REG[12][1] , \REG[12][0] , \REG[11][7] ,
         \REG[11][6] , \REG[11][5] , \REG[11][4] , \REG[11][3] , \REG[11][2] ,
         \REG[11][1] , \REG[11][0] , \REG[10][7] , \REG[10][6] , \REG[10][5] ,
         \REG[10][4] , \REG[10][3] , \REG[10][2] , \REG[10][1] , \REG[10][0] ,
         \REG[9][7] , \REG[9][6] , \REG[9][5] , \REG[9][4] , \REG[9][3] ,
         \REG[9][2] , \REG[9][1] , \REG[9][0] , \REG[8][7] , \REG[8][6] ,
         \REG[8][5] , \REG[8][4] , \REG[8][3] , \REG[8][2] , \REG[8][1] ,
         \REG[8][0] , \REG[7][7] , \REG[7][6] , \REG[7][5] , \REG[7][4] ,
         \REG[7][3] , \REG[7][2] , \REG[7][1] , \REG[7][0] , \REG[6][7] ,
         \REG[6][6] , \REG[6][5] , \REG[6][4] , \REG[6][3] , \REG[6][2] ,
         \REG[6][1] , \REG[6][0] , \REG[5][7] , \REG[5][6] , \REG[5][5] ,
         \REG[5][4] , \REG[5][3] , \REG[5][2] , \REG[5][1] , \REG[5][0] ,
         \REG[4][7] , \REG[4][6] , \REG[4][5] , \REG[4][4] , \REG[4][3] ,
         \REG[4][2] , \REG[4][1] , \REG[4][0] , N36, N37, N38, N39, N40, N41,
         N42, N43, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n370,
         n371, n372, n373;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];
  assign test_so1 = \REG[6][5] ;

  SDFFRQX2M \REG_reg[13][7]  ( .D(n298), .SI(\REG[13][6] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\REG[13][7] ) );
  SDFFRQX2M \REG_reg[13][6]  ( .D(n297), .SI(\REG[13][5] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\REG[13][6] ) );
  SDFFRQX2M \REG_reg[13][5]  ( .D(n296), .SI(\REG[13][4] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\REG[13][5] ) );
  SDFFRQX2M \REG_reg[13][4]  ( .D(n295), .SI(\REG[13][3] ), .SE(n373), .CK(CLK), .RN(n350), .Q(\REG[13][4] ) );
  SDFFRQX2M \REG_reg[13][3]  ( .D(n294), .SI(\REG[13][2] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\REG[13][3] ) );
  SDFFRQX2M \REG_reg[13][2]  ( .D(n293), .SI(\REG[13][1] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\REG[13][2] ) );
  SDFFRQX2M \REG_reg[13][1]  ( .D(n292), .SI(\REG[13][0] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\REG[13][1] ) );
  SDFFRQX2M \REG_reg[13][0]  ( .D(n291), .SI(\REG[12][7] ), .SE(n373), .CK(CLK), .RN(n350), .Q(\REG[13][0] ) );
  SDFFRQX2M \REG_reg[9][7]  ( .D(n266), .SI(\REG[9][6] ), .SE(n372), .CK(CLK), 
        .RN(n348), .Q(\REG[9][7] ) );
  SDFFRQX2M \REG_reg[9][6]  ( .D(n265), .SI(\REG[9][5] ), .SE(n371), .CK(CLK), 
        .RN(n348), .Q(\REG[9][6] ) );
  SDFFRQX2M \REG_reg[9][5]  ( .D(n264), .SI(\REG[9][4] ), .SE(n370), .CK(CLK), 
        .RN(n348), .Q(\REG[9][5] ) );
  SDFFRQX2M \REG_reg[9][4]  ( .D(n263), .SI(\REG[9][3] ), .SE(n373), .CK(CLK), 
        .RN(n348), .Q(\REG[9][4] ) );
  SDFFRQX2M \REG_reg[9][3]  ( .D(n262), .SI(\REG[9][2] ), .SE(n372), .CK(CLK), 
        .RN(n348), .Q(\REG[9][3] ) );
  SDFFRQX2M \REG_reg[9][2]  ( .D(n261), .SI(\REG[9][1] ), .SE(n371), .CK(CLK), 
        .RN(n348), .Q(\REG[9][2] ) );
  SDFFRQX2M \REG_reg[9][1]  ( .D(n260), .SI(\REG[9][0] ), .SE(n370), .CK(CLK), 
        .RN(n348), .Q(\REG[9][1] ) );
  SDFFRQX2M \REG_reg[9][0]  ( .D(n259), .SI(\REG[8][7] ), .SE(n373), .CK(CLK), 
        .RN(n347), .Q(\REG[9][0] ) );
  SDFFRQX2M \REG_reg[5][7]  ( .D(n234), .SI(\REG[5][6] ), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(\REG[5][7] ) );
  SDFFRQX2M \REG_reg[5][6]  ( .D(n233), .SI(\REG[5][5] ), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\REG[5][6] ) );
  SDFFRQX2M \REG_reg[5][5]  ( .D(n232), .SI(\REG[5][4] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\REG[5][5] ) );
  SDFFRQX2M \REG_reg[5][4]  ( .D(n231), .SI(\REG[5][3] ), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(\REG[5][4] ) );
  SDFFRQX2M \REG_reg[5][3]  ( .D(n230), .SI(\REG[5][2] ), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(\REG[5][3] ) );
  SDFFRQX2M \REG_reg[5][2]  ( .D(n229), .SI(\REG[5][1] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\REG[5][2] ) );
  SDFFRQX2M \REG_reg[5][1]  ( .D(n228), .SI(\REG[5][0] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\REG[5][1] ) );
  SDFFRQX2M \REG_reg[5][0]  ( .D(n227), .SI(\REG[4][7] ), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(\REG[5][0] ) );
  SDFFRQX2M \REG_reg[15][7]  ( .D(n314), .SI(\REG[15][6] ), .SE(n372), .CK(CLK), .RN(n342), .Q(\REG[15][7] ) );
  SDFFRQX2M \REG_reg[15][6]  ( .D(n313), .SI(\REG[15][5] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\REG[15][6] ) );
  SDFFRQX2M \REG_reg[15][5]  ( .D(n312), .SI(\REG[15][4] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\REG[15][5] ) );
  SDFFRQX2M \REG_reg[15][4]  ( .D(n311), .SI(\REG[15][3] ), .SE(n373), .CK(CLK), .RN(n351), .Q(\REG[15][4] ) );
  SDFFRQX2M \REG_reg[15][3]  ( .D(n310), .SI(\REG[15][2] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\REG[15][3] ) );
  SDFFRQX2M \REG_reg[15][2]  ( .D(n309), .SI(\REG[15][1] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\REG[15][2] ) );
  SDFFRQX2M \REG_reg[15][1]  ( .D(n308), .SI(\REG[15][0] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\REG[15][1] ) );
  SDFFRQX2M \REG_reg[15][0]  ( .D(n307), .SI(\REG[14][7] ), .SE(n373), .CK(CLK), .RN(n351), .Q(\REG[15][0] ) );
  SDFFRQX2M \REG_reg[11][7]  ( .D(n282), .SI(\REG[11][6] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\REG[11][7] ) );
  SDFFRQX2M \REG_reg[11][6]  ( .D(n281), .SI(\REG[11][5] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\REG[11][6] ) );
  SDFFRQX2M \REG_reg[11][5]  ( .D(n280), .SI(\REG[11][4] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\REG[11][5] ) );
  SDFFRQX2M \REG_reg[11][4]  ( .D(n279), .SI(\REG[11][3] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\REG[11][4] ) );
  SDFFRQX2M \REG_reg[11][3]  ( .D(n278), .SI(\REG[11][2] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\REG[11][3] ) );
  SDFFRQX2M \REG_reg[11][2]  ( .D(n277), .SI(\REG[11][1] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\REG[11][2] ) );
  SDFFRQX2M \REG_reg[11][1]  ( .D(n276), .SI(\REG[11][0] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\REG[11][1] ) );
  SDFFRQX2M \REG_reg[11][0]  ( .D(n275), .SI(\REG[10][7] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\REG[11][0] ) );
  SDFFRQX2M \REG_reg[7][7]  ( .D(n250), .SI(\REG[7][6] ), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(\REG[7][7] ) );
  SDFFRQX2M \REG_reg[7][6]  ( .D(n249), .SI(\REG[7][5] ), .SE(n371), .CK(CLK), 
        .RN(n347), .Q(\REG[7][6] ) );
  SDFFRQX2M \REG_reg[7][5]  ( .D(n248), .SI(\REG[7][4] ), .SE(n370), .CK(CLK), 
        .RN(n347), .Q(\REG[7][5] ) );
  SDFFRQX2M \REG_reg[7][4]  ( .D(n247), .SI(\REG[7][3] ), .SE(n373), .CK(CLK), 
        .RN(n347), .Q(\REG[7][4] ) );
  SDFFRQX2M \REG_reg[7][3]  ( .D(n246), .SI(\REG[7][2] ), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(\REG[7][3] ) );
  SDFFRQX2M \REG_reg[7][2]  ( .D(n245), .SI(\REG[7][1] ), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\REG[7][2] ) );
  SDFFRQX2M \REG_reg[7][1]  ( .D(n244), .SI(\REG[7][0] ), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(\REG[7][1] ) );
  SDFFRQX2M \REG_reg[7][0]  ( .D(n243), .SI(\REG[6][7] ), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(\REG[7][0] ) );
  SDFFRQX2M \REG_reg[14][7]  ( .D(n306), .SI(\REG[14][6] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\REG[14][7] ) );
  SDFFRQX2M \REG_reg[14][6]  ( .D(n305), .SI(\REG[14][5] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\REG[14][6] ) );
  SDFFRQX2M \REG_reg[14][5]  ( .D(n304), .SI(\REG[14][4] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\REG[14][5] ) );
  SDFFRQX2M \REG_reg[14][4]  ( .D(n303), .SI(\REG[14][3] ), .SE(n373), .CK(CLK), .RN(n351), .Q(\REG[14][4] ) );
  SDFFRQX2M \REG_reg[14][3]  ( .D(n302), .SI(\REG[14][2] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\REG[14][3] ) );
  SDFFRQX2M \REG_reg[14][2]  ( .D(n301), .SI(\REG[14][1] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\REG[14][2] ) );
  SDFFRQX2M \REG_reg[14][1]  ( .D(n300), .SI(\REG[14][0] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\REG[14][1] ) );
  SDFFRQX2M \REG_reg[14][0]  ( .D(n299), .SI(\REG[13][7] ), .SE(n373), .CK(CLK), .RN(n350), .Q(\REG[14][0] ) );
  SDFFRQX2M \REG_reg[10][7]  ( .D(n274), .SI(\REG[10][6] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\REG[10][7] ) );
  SDFFRQX2M \REG_reg[10][6]  ( .D(n273), .SI(\REG[10][5] ), .SE(n371), .CK(CLK), .RN(n348), .Q(\REG[10][6] ) );
  SDFFRQX2M \REG_reg[10][5]  ( .D(n272), .SI(\REG[10][4] ), .SE(n370), .CK(CLK), .RN(n348), .Q(\REG[10][5] ) );
  SDFFRQX2M \REG_reg[10][4]  ( .D(n271), .SI(\REG[10][3] ), .SE(n373), .CK(CLK), .RN(n348), .Q(\REG[10][4] ) );
  SDFFRQX2M \REG_reg[10][3]  ( .D(n270), .SI(\REG[10][2] ), .SE(n372), .CK(CLK), .RN(n348), .Q(\REG[10][3] ) );
  SDFFRQX2M \REG_reg[10][2]  ( .D(n269), .SI(\REG[10][1] ), .SE(n371), .CK(CLK), .RN(n348), .Q(\REG[10][2] ) );
  SDFFRQX2M \REG_reg[10][1]  ( .D(n268), .SI(\REG[10][0] ), .SE(n370), .CK(CLK), .RN(n348), .Q(\REG[10][1] ) );
  SDFFRQX2M \REG_reg[10][0]  ( .D(n267), .SI(\REG[9][7] ), .SE(n373), .CK(CLK), 
        .RN(n348), .Q(\REG[10][0] ) );
  SDFFRQX2M \REG_reg[6][7]  ( .D(n242), .SI(\REG[6][6] ), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(\REG[6][7] ) );
  SDFFRQX2M \REG_reg[6][6]  ( .D(n241), .SI(test_si2), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\REG[6][6] ) );
  SDFFRQX2M \REG_reg[6][5]  ( .D(n240), .SI(\REG[6][4] ), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(\REG[6][5] ) );
  SDFFRQX2M \REG_reg[6][4]  ( .D(n239), .SI(\REG[6][3] ), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(\REG[6][4] ) );
  SDFFRQX2M \REG_reg[6][3]  ( .D(n238), .SI(\REG[6][2] ), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(\REG[6][3] ) );
  SDFFRQX2M \REG_reg[6][2]  ( .D(n237), .SI(\REG[6][1] ), .SE(n371), .CK(CLK), 
        .RN(n346), .Q(\REG[6][2] ) );
  SDFFRQX2M \REG_reg[6][1]  ( .D(n236), .SI(\REG[6][0] ), .SE(n370), .CK(CLK), 
        .RN(n346), .Q(\REG[6][1] ) );
  SDFFRQX2M \REG_reg[6][0]  ( .D(n235), .SI(\REG[5][7] ), .SE(n373), .CK(CLK), 
        .RN(n346), .Q(\REG[6][0] ) );
  SDFFRQX2M \REG_reg[12][7]  ( .D(n290), .SI(\REG[12][6] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\REG[12][7] ) );
  SDFFRQX2M \REG_reg[12][6]  ( .D(n289), .SI(\REG[12][5] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\REG[12][6] ) );
  SDFFRQX2M \REG_reg[12][5]  ( .D(n288), .SI(\REG[12][4] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\REG[12][5] ) );
  SDFFRQX2M \REG_reg[12][4]  ( .D(n287), .SI(\REG[12][3] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\REG[12][4] ) );
  SDFFRQX2M \REG_reg[12][3]  ( .D(n286), .SI(\REG[12][2] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\REG[12][3] ) );
  SDFFRQX2M \REG_reg[12][2]  ( .D(n285), .SI(\REG[12][1] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\REG[12][2] ) );
  SDFFRQX2M \REG_reg[12][1]  ( .D(n284), .SI(\REG[12][0] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\REG[12][1] ) );
  SDFFRQX2M \REG_reg[12][0]  ( .D(n283), .SI(\REG[11][7] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\REG[12][0] ) );
  SDFFRQX2M \REG_reg[8][7]  ( .D(n258), .SI(\REG[8][6] ), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(\REG[8][7] ) );
  SDFFRQX2M \REG_reg[8][6]  ( .D(n257), .SI(\REG[8][5] ), .SE(n371), .CK(CLK), 
        .RN(n347), .Q(\REG[8][6] ) );
  SDFFRQX2M \REG_reg[8][5]  ( .D(n256), .SI(\REG[8][4] ), .SE(n370), .CK(CLK), 
        .RN(n347), .Q(\REG[8][5] ) );
  SDFFRQX2M \REG_reg[8][4]  ( .D(n255), .SI(\REG[8][3] ), .SE(n373), .CK(CLK), 
        .RN(n347), .Q(\REG[8][4] ) );
  SDFFRQX2M \REG_reg[8][3]  ( .D(n254), .SI(\REG[8][2] ), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(\REG[8][3] ) );
  SDFFRQX2M \REG_reg[8][2]  ( .D(n253), .SI(\REG[8][1] ), .SE(n371), .CK(CLK), 
        .RN(n347), .Q(\REG[8][2] ) );
  SDFFRQX2M \REG_reg[8][1]  ( .D(n252), .SI(\REG[8][0] ), .SE(n370), .CK(CLK), 
        .RN(n347), .Q(\REG[8][1] ) );
  SDFFRQX2M \REG_reg[8][0]  ( .D(n251), .SI(\REG[7][7] ), .SE(n373), .CK(CLK), 
        .RN(n347), .Q(\REG[8][0] ) );
  SDFFRQX2M \REG_reg[4][7]  ( .D(n226), .SI(\REG[4][6] ), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(\REG[4][7] ) );
  SDFFRQX2M \REG_reg[4][6]  ( .D(n225), .SI(\REG[4][5] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\REG[4][6] ) );
  SDFFRQX2M \REG_reg[4][5]  ( .D(n224), .SI(\REG[4][4] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\REG[4][5] ) );
  SDFFRQX2M \REG_reg[4][4]  ( .D(n223), .SI(\REG[4][3] ), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(\REG[4][4] ) );
  SDFFRQX2M \REG_reg[4][3]  ( .D(n222), .SI(\REG[4][2] ), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(\REG[4][3] ) );
  SDFFRQX2M \REG_reg[4][2]  ( .D(n221), .SI(\REG[4][1] ), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(\REG[4][2] ) );
  SDFFRQX2M \REG_reg[4][1]  ( .D(n220), .SI(\REG[4][0] ), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(\REG[4][1] ) );
  SDFFRQX2M \REG_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(n373), .CK(CLK), 
        .RN(n345), .Q(\REG[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n186), .SI(RdData[6]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n185), .SI(RdData[5]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n184), .SI(RdData[4]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n183), .SI(RdData[3]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n182), .SI(RdData[2]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n181), .SI(RdData[1]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n180), .SI(RdData[0]), .SE(n370), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n179), .SI(RdData_Valid), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[0]) );
  SDFFRQX2M \REG_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \REG_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \REG_reg[0][6]  ( .D(n193), .SI(REG0[5]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \REG_reg[0][5]  ( .D(n192), .SI(REG0[4]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \REG_reg[0][4]  ( .D(n191), .SI(REG0[3]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \REG_reg[0][3]  ( .D(n190), .SI(REG0[2]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \REG_reg[0][2]  ( .D(n189), .SI(REG0[1]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \REG_reg[0][1]  ( .D(n188), .SI(REG0[0]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \REG_reg[0][0]  ( .D(n187), .SI(test_si1), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFRQX2M \REG_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n178), .SI(\REG[15][7] ), .SE(n370), .CK(CLK), .RN(n346), .Q(RdData_Valid) );
  SDFFRQX2M \REG_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \REG_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \REG_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \REG_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \REG_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \REG_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \REG_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFSQX2M \REG_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(test_se), .CK(CLK), 
        .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \REG_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFSQX2M \REG_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(n370), .CK(CLK), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \REG_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \REG_reg[3][6]  ( .D(n217), .SI(REG3[5]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \REG_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \REG_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \REG_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \REG_reg[3][1]  ( .D(n212), .SI(REG3[0]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFRQX2M \REG_reg[2][2]  ( .D(n205), .SI(REG2[1]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFRQX2M \REG_reg[2][3]  ( .D(n206), .SI(REG2[2]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  SDFFRQX2M \REG_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFSQX2M \REG_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(n373), .CK(CLK), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \REG_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \REG_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  NOR2X2M U140 ( .A(n341), .B(N13), .Y(n158) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n153) );
  INVX2M U142 ( .A(n337), .Y(n339) );
  INVX2M U143 ( .A(n151), .Y(n365) );
  INVX2M U144 ( .A(n337), .Y(n338) );
  INVX2M U145 ( .A(n335), .Y(n336) );
  NAND2X2M U146 ( .A(RdEn), .B(n366), .Y(n151) );
  NOR2X2M U147 ( .A(n366), .B(RdEn), .Y(n150) );
  BUFX2M U148 ( .A(n340), .Y(n337) );
  BUFX2M U149 ( .A(n341), .Y(n335) );
  NAND2X2M U150 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U151 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U152 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U153 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U154 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U155 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U156 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U157 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U158 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U159 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U160 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U161 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U162 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U163 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U164 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U165 ( .A(n153), .B(n154), .Y(n152) );
  AND2X2M U166 ( .A(n165), .B(n338), .Y(n156) );
  AND2X2M U167 ( .A(n176), .B(n338), .Y(n170) );
  INVX2M U168 ( .A(WrEn), .Y(n366) );
  BUFX2M U169 ( .A(n356), .Y(n343) );
  BUFX2M U170 ( .A(n355), .Y(n344) );
  BUFX2M U171 ( .A(n355), .Y(n345) );
  BUFX2M U172 ( .A(n354), .Y(n346) );
  BUFX2M U173 ( .A(n354), .Y(n347) );
  BUFX2M U174 ( .A(n353), .Y(n348) );
  BUFX2M U175 ( .A(n353), .Y(n349) );
  BUFX2M U176 ( .A(n352), .Y(n350) );
  BUFX2M U177 ( .A(n356), .Y(n342) );
  BUFX2M U178 ( .A(n352), .Y(n351) );
  AND2X2M U179 ( .A(N13), .B(n341), .Y(n161) );
  AND2X2M U180 ( .A(N13), .B(N12), .Y(n164) );
  NOR2BX2M U181 ( .AN(n150), .B(N14), .Y(n165) );
  AND2X2M U182 ( .A(n165), .B(n340), .Y(n154) );
  AND2X2M U183 ( .A(n176), .B(n340), .Y(n168) );
  AND2X2M U184 ( .A(N14), .B(n150), .Y(n176) );
  BUFX2M U185 ( .A(RST), .Y(n355) );
  BUFX2M U186 ( .A(RST), .Y(n354) );
  BUFX2M U187 ( .A(RST), .Y(n353) );
  BUFX2M U188 ( .A(RST), .Y(n352) );
  BUFX2M U189 ( .A(RST), .Y(n356) );
  INVX2M U190 ( .A(WrData[0]), .Y(n357) );
  INVX2M U191 ( .A(WrData[4]), .Y(n361) );
  INVX2M U192 ( .A(WrData[5]), .Y(n362) );
  INVX2M U193 ( .A(WrData[6]), .Y(n363) );
  INVX2M U194 ( .A(WrData[7]), .Y(n364) );
  INVX2M U195 ( .A(WrData[1]), .Y(n358) );
  INVX2M U196 ( .A(WrData[2]), .Y(n359) );
  INVX2M U197 ( .A(WrData[3]), .Y(n360) );
  OAI2BB2X1M U198 ( .B0(n152), .B1(n357), .A0N(REG0[0]), .A1N(n152), .Y(n187)
         );
  OAI2BB2X1M U199 ( .B0(n152), .B1(n358), .A0N(REG0[1]), .A1N(n152), .Y(n188)
         );
  OAI2BB2X1M U200 ( .B0(n152), .B1(n359), .A0N(REG0[2]), .A1N(n152), .Y(n189)
         );
  OAI2BB2X1M U201 ( .B0(n152), .B1(n360), .A0N(REG0[3]), .A1N(n152), .Y(n190)
         );
  OAI2BB2X1M U202 ( .B0(n152), .B1(n361), .A0N(REG0[4]), .A1N(n152), .Y(n191)
         );
  OAI2BB2X1M U203 ( .B0(n152), .B1(n362), .A0N(REG0[5]), .A1N(n152), .Y(n192)
         );
  OAI2BB2X1M U204 ( .B0(n152), .B1(n363), .A0N(REG0[6]), .A1N(n152), .Y(n193)
         );
  OAI2BB2X1M U205 ( .B0(n152), .B1(n364), .A0N(REG0[7]), .A1N(n152), .Y(n194)
         );
  OAI2BB2X1M U206 ( .B0(n358), .B1(n157), .A0N(REG2[1]), .A1N(n157), .Y(n204)
         );
  OAI2BB2X1M U207 ( .B0(n359), .B1(n157), .A0N(REG2[2]), .A1N(n157), .Y(n205)
         );
  OAI2BB2X1M U208 ( .B0(n360), .B1(n157), .A0N(REG2[3]), .A1N(n157), .Y(n206)
         );
  OAI2BB2X1M U209 ( .B0(n361), .B1(n157), .A0N(REG2[4]), .A1N(n157), .Y(n207)
         );
  OAI2BB2X1M U210 ( .B0(n362), .B1(n157), .A0N(REG2[5]), .A1N(n157), .Y(n208)
         );
  OAI2BB2X1M U211 ( .B0(n363), .B1(n157), .A0N(REG2[6]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U212 ( .B0(n357), .B1(n159), .A0N(REG3[0]), .A1N(n159), .Y(n211)
         );
  OAI2BB2X1M U213 ( .B0(n358), .B1(n159), .A0N(REG3[1]), .A1N(n159), .Y(n212)
         );
  OAI2BB2X1M U214 ( .B0(n359), .B1(n159), .A0N(REG3[2]), .A1N(n159), .Y(n213)
         );
  OAI2BB2X1M U215 ( .B0(n360), .B1(n159), .A0N(REG3[3]), .A1N(n159), .Y(n214)
         );
  OAI2BB2X1M U216 ( .B0(n361), .B1(n159), .A0N(REG3[4]), .A1N(n159), .Y(n215)
         );
  OAI2BB2X1M U217 ( .B0(n363), .B1(n159), .A0N(REG3[6]), .A1N(n159), .Y(n217)
         );
  OAI2BB2X1M U218 ( .B0(n364), .B1(n159), .A0N(REG3[7]), .A1N(n159), .Y(n218)
         );
  OAI2BB2X1M U219 ( .B0(n357), .B1(n155), .A0N(REG1[0]), .A1N(n155), .Y(n195)
         );
  OAI2BB2X1M U220 ( .B0(n358), .B1(n155), .A0N(REG1[1]), .A1N(n155), .Y(n196)
         );
  OAI2BB2X1M U221 ( .B0(n359), .B1(n155), .A0N(REG1[2]), .A1N(n155), .Y(n197)
         );
  OAI2BB2X1M U222 ( .B0(n360), .B1(n155), .A0N(REG1[3]), .A1N(n155), .Y(n198)
         );
  OAI2BB2X1M U223 ( .B0(n361), .B1(n155), .A0N(REG1[4]), .A1N(n155), .Y(n199)
         );
  OAI2BB2X1M U224 ( .B0(n362), .B1(n155), .A0N(REG1[5]), .A1N(n155), .Y(n200)
         );
  OAI2BB2X1M U225 ( .B0(n363), .B1(n155), .A0N(REG1[6]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U226 ( .B0(n364), .B1(n155), .A0N(REG1[7]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U227 ( .B0(n357), .B1(n167), .A0N(\REG[8][0] ), .A1N(n167), .Y(
        n251) );
  OAI2BB2X1M U228 ( .B0(n358), .B1(n167), .A0N(\REG[8][1] ), .A1N(n167), .Y(
        n252) );
  OAI2BB2X1M U229 ( .B0(n359), .B1(n167), .A0N(\REG[8][2] ), .A1N(n167), .Y(
        n253) );
  OAI2BB2X1M U230 ( .B0(n360), .B1(n167), .A0N(\REG[8][3] ), .A1N(n167), .Y(
        n254) );
  OAI2BB2X1M U231 ( .B0(n361), .B1(n167), .A0N(\REG[8][4] ), .A1N(n167), .Y(
        n255) );
  OAI2BB2X1M U232 ( .B0(n362), .B1(n167), .A0N(\REG[8][5] ), .A1N(n167), .Y(
        n256) );
  OAI2BB2X1M U233 ( .B0(n363), .B1(n167), .A0N(\REG[8][6] ), .A1N(n167), .Y(
        n257) );
  OAI2BB2X1M U234 ( .B0(n364), .B1(n167), .A0N(\REG[8][7] ), .A1N(n167), .Y(
        n258) );
  OAI2BB2X1M U235 ( .B0(n357), .B1(n169), .A0N(\REG[9][0] ), .A1N(n169), .Y(
        n259) );
  OAI2BB2X1M U236 ( .B0(n358), .B1(n169), .A0N(\REG[9][1] ), .A1N(n169), .Y(
        n260) );
  OAI2BB2X1M U237 ( .B0(n359), .B1(n169), .A0N(\REG[9][2] ), .A1N(n169), .Y(
        n261) );
  OAI2BB2X1M U238 ( .B0(n360), .B1(n169), .A0N(\REG[9][3] ), .A1N(n169), .Y(
        n262) );
  OAI2BB2X1M U239 ( .B0(n361), .B1(n169), .A0N(\REG[9][4] ), .A1N(n169), .Y(
        n263) );
  OAI2BB2X1M U240 ( .B0(n362), .B1(n169), .A0N(\REG[9][5] ), .A1N(n169), .Y(
        n264) );
  OAI2BB2X1M U241 ( .B0(n363), .B1(n169), .A0N(\REG[9][6] ), .A1N(n169), .Y(
        n265) );
  OAI2BB2X1M U242 ( .B0(n364), .B1(n169), .A0N(\REG[9][7] ), .A1N(n169), .Y(
        n266) );
  OAI2BB2X1M U243 ( .B0(n357), .B1(n171), .A0N(\REG[10][0] ), .A1N(n171), .Y(
        n267) );
  OAI2BB2X1M U244 ( .B0(n358), .B1(n171), .A0N(\REG[10][1] ), .A1N(n171), .Y(
        n268) );
  OAI2BB2X1M U245 ( .B0(n359), .B1(n171), .A0N(\REG[10][2] ), .A1N(n171), .Y(
        n269) );
  OAI2BB2X1M U246 ( .B0(n360), .B1(n171), .A0N(\REG[10][3] ), .A1N(n171), .Y(
        n270) );
  OAI2BB2X1M U247 ( .B0(n361), .B1(n171), .A0N(\REG[10][4] ), .A1N(n171), .Y(
        n271) );
  OAI2BB2X1M U248 ( .B0(n362), .B1(n171), .A0N(\REG[10][5] ), .A1N(n171), .Y(
        n272) );
  OAI2BB2X1M U249 ( .B0(n363), .B1(n171), .A0N(\REG[10][6] ), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U250 ( .B0(n364), .B1(n171), .A0N(\REG[10][7] ), .A1N(n171), .Y(
        n274) );
  OAI2BB2X1M U251 ( .B0(n357), .B1(n172), .A0N(\REG[11][0] ), .A1N(n172), .Y(
        n275) );
  OAI2BB2X1M U252 ( .B0(n358), .B1(n172), .A0N(\REG[11][1] ), .A1N(n172), .Y(
        n276) );
  OAI2BB2X1M U253 ( .B0(n359), .B1(n172), .A0N(\REG[11][2] ), .A1N(n172), .Y(
        n277) );
  OAI2BB2X1M U254 ( .B0(n360), .B1(n172), .A0N(\REG[11][3] ), .A1N(n172), .Y(
        n278) );
  OAI2BB2X1M U255 ( .B0(n361), .B1(n172), .A0N(\REG[11][4] ), .A1N(n172), .Y(
        n279) );
  OAI2BB2X1M U256 ( .B0(n362), .B1(n172), .A0N(\REG[11][5] ), .A1N(n172), .Y(
        n280) );
  OAI2BB2X1M U257 ( .B0(n363), .B1(n172), .A0N(\REG[11][6] ), .A1N(n172), .Y(
        n281) );
  OAI2BB2X1M U258 ( .B0(n364), .B1(n172), .A0N(\REG[11][7] ), .A1N(n172), .Y(
        n282) );
  OAI2BB2X1M U259 ( .B0(n357), .B1(n157), .A0N(REG2[0]), .A1N(n157), .Y(n203)
         );
  OAI2BB2X1M U260 ( .B0(n364), .B1(n157), .A0N(REG2[7]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U261 ( .B0(n362), .B1(n159), .A0N(REG3[5]), .A1N(n159), .Y(n216)
         );
  OAI2BB2X1M U262 ( .B0(n357), .B1(n160), .A0N(\REG[4][0] ), .A1N(n160), .Y(
        n219) );
  OAI2BB2X1M U263 ( .B0(n358), .B1(n160), .A0N(\REG[4][1] ), .A1N(n160), .Y(
        n220) );
  OAI2BB2X1M U264 ( .B0(n359), .B1(n160), .A0N(\REG[4][2] ), .A1N(n160), .Y(
        n221) );
  OAI2BB2X1M U265 ( .B0(n360), .B1(n160), .A0N(\REG[4][3] ), .A1N(n160), .Y(
        n222) );
  OAI2BB2X1M U266 ( .B0(n361), .B1(n160), .A0N(\REG[4][4] ), .A1N(n160), .Y(
        n223) );
  OAI2BB2X1M U267 ( .B0(n362), .B1(n160), .A0N(\REG[4][5] ), .A1N(n160), .Y(
        n224) );
  OAI2BB2X1M U268 ( .B0(n363), .B1(n160), .A0N(\REG[4][6] ), .A1N(n160), .Y(
        n225) );
  OAI2BB2X1M U269 ( .B0(n364), .B1(n160), .A0N(\REG[4][7] ), .A1N(n160), .Y(
        n226) );
  OAI2BB2X1M U270 ( .B0(n357), .B1(n162), .A0N(\REG[5][0] ), .A1N(n162), .Y(
        n227) );
  OAI2BB2X1M U271 ( .B0(n358), .B1(n162), .A0N(\REG[5][1] ), .A1N(n162), .Y(
        n228) );
  OAI2BB2X1M U272 ( .B0(n359), .B1(n162), .A0N(\REG[5][2] ), .A1N(n162), .Y(
        n229) );
  OAI2BB2X1M U273 ( .B0(n360), .B1(n162), .A0N(\REG[5][3] ), .A1N(n162), .Y(
        n230) );
  OAI2BB2X1M U274 ( .B0(n361), .B1(n162), .A0N(\REG[5][4] ), .A1N(n162), .Y(
        n231) );
  OAI2BB2X1M U275 ( .B0(n362), .B1(n162), .A0N(\REG[5][5] ), .A1N(n162), .Y(
        n232) );
  OAI2BB2X1M U276 ( .B0(n363), .B1(n162), .A0N(\REG[5][6] ), .A1N(n162), .Y(
        n233) );
  OAI2BB2X1M U277 ( .B0(n364), .B1(n162), .A0N(\REG[5][7] ), .A1N(n162), .Y(
        n234) );
  OAI2BB2X1M U278 ( .B0(n357), .B1(n163), .A0N(\REG[6][0] ), .A1N(n163), .Y(
        n235) );
  OAI2BB2X1M U279 ( .B0(n358), .B1(n163), .A0N(\REG[6][1] ), .A1N(n163), .Y(
        n236) );
  OAI2BB2X1M U280 ( .B0(n359), .B1(n163), .A0N(\REG[6][2] ), .A1N(n163), .Y(
        n237) );
  OAI2BB2X1M U281 ( .B0(n360), .B1(n163), .A0N(\REG[6][3] ), .A1N(n163), .Y(
        n238) );
  OAI2BB2X1M U282 ( .B0(n361), .B1(n163), .A0N(\REG[6][4] ), .A1N(n163), .Y(
        n239) );
  OAI2BB2X1M U283 ( .B0(n362), .B1(n163), .A0N(\REG[6][5] ), .A1N(n163), .Y(
        n240) );
  OAI2BB2X1M U284 ( .B0(n363), .B1(n163), .A0N(\REG[6][6] ), .A1N(n163), .Y(
        n241) );
  OAI2BB2X1M U285 ( .B0(n364), .B1(n163), .A0N(\REG[6][7] ), .A1N(n163), .Y(
        n242) );
  OAI2BB2X1M U286 ( .B0(n357), .B1(n166), .A0N(\REG[7][0] ), .A1N(n166), .Y(
        n243) );
  OAI2BB2X1M U287 ( .B0(n358), .B1(n166), .A0N(\REG[7][1] ), .A1N(n166), .Y(
        n244) );
  OAI2BB2X1M U288 ( .B0(n359), .B1(n166), .A0N(\REG[7][2] ), .A1N(n166), .Y(
        n245) );
  OAI2BB2X1M U289 ( .B0(n360), .B1(n166), .A0N(\REG[7][3] ), .A1N(n166), .Y(
        n246) );
  OAI2BB2X1M U290 ( .B0(n361), .B1(n166), .A0N(\REG[7][4] ), .A1N(n166), .Y(
        n247) );
  OAI2BB2X1M U291 ( .B0(n362), .B1(n166), .A0N(\REG[7][5] ), .A1N(n166), .Y(
        n248) );
  OAI2BB2X1M U292 ( .B0(n363), .B1(n166), .A0N(\REG[7][6] ), .A1N(n166), .Y(
        n249) );
  OAI2BB2X1M U293 ( .B0(n364), .B1(n166), .A0N(\REG[7][7] ), .A1N(n166), .Y(
        n250) );
  OAI2BB2X1M U294 ( .B0(n357), .B1(n173), .A0N(\REG[12][0] ), .A1N(n173), .Y(
        n283) );
  OAI2BB2X1M U295 ( .B0(n358), .B1(n173), .A0N(\REG[12][1] ), .A1N(n173), .Y(
        n284) );
  OAI2BB2X1M U296 ( .B0(n359), .B1(n173), .A0N(\REG[12][2] ), .A1N(n173), .Y(
        n285) );
  OAI2BB2X1M U297 ( .B0(n360), .B1(n173), .A0N(\REG[12][3] ), .A1N(n173), .Y(
        n286) );
  OAI2BB2X1M U298 ( .B0(n361), .B1(n173), .A0N(\REG[12][4] ), .A1N(n173), .Y(
        n287) );
  OAI2BB2X1M U299 ( .B0(n362), .B1(n173), .A0N(\REG[12][5] ), .A1N(n173), .Y(
        n288) );
  OAI2BB2X1M U300 ( .B0(n363), .B1(n173), .A0N(\REG[12][6] ), .A1N(n173), .Y(
        n289) );
  OAI2BB2X1M U301 ( .B0(n364), .B1(n173), .A0N(\REG[12][7] ), .A1N(n173), .Y(
        n290) );
  OAI2BB2X1M U302 ( .B0(n357), .B1(n174), .A0N(\REG[13][0] ), .A1N(n174), .Y(
        n291) );
  OAI2BB2X1M U303 ( .B0(n358), .B1(n174), .A0N(\REG[13][1] ), .A1N(n174), .Y(
        n292) );
  OAI2BB2X1M U304 ( .B0(n359), .B1(n174), .A0N(\REG[13][2] ), .A1N(n174), .Y(
        n293) );
  OAI2BB2X1M U305 ( .B0(n360), .B1(n174), .A0N(\REG[13][3] ), .A1N(n174), .Y(
        n294) );
  OAI2BB2X1M U306 ( .B0(n361), .B1(n174), .A0N(\REG[13][4] ), .A1N(n174), .Y(
        n295) );
  OAI2BB2X1M U307 ( .B0(n362), .B1(n174), .A0N(\REG[13][5] ), .A1N(n174), .Y(
        n296) );
  OAI2BB2X1M U308 ( .B0(n363), .B1(n174), .A0N(\REG[13][6] ), .A1N(n174), .Y(
        n297) );
  OAI2BB2X1M U309 ( .B0(n364), .B1(n174), .A0N(\REG[13][7] ), .A1N(n174), .Y(
        n298) );
  OAI2BB2X1M U310 ( .B0(n357), .B1(n175), .A0N(\REG[14][0] ), .A1N(n175), .Y(
        n299) );
  OAI2BB2X1M U311 ( .B0(n358), .B1(n175), .A0N(\REG[14][1] ), .A1N(n175), .Y(
        n300) );
  OAI2BB2X1M U312 ( .B0(n359), .B1(n175), .A0N(\REG[14][2] ), .A1N(n175), .Y(
        n301) );
  OAI2BB2X1M U313 ( .B0(n360), .B1(n175), .A0N(\REG[14][3] ), .A1N(n175), .Y(
        n302) );
  OAI2BB2X1M U314 ( .B0(n361), .B1(n175), .A0N(\REG[14][4] ), .A1N(n175), .Y(
        n303) );
  OAI2BB2X1M U315 ( .B0(n362), .B1(n175), .A0N(\REG[14][5] ), .A1N(n175), .Y(
        n304) );
  OAI2BB2X1M U316 ( .B0(n363), .B1(n175), .A0N(\REG[14][6] ), .A1N(n175), .Y(
        n305) );
  OAI2BB2X1M U317 ( .B0(n364), .B1(n175), .A0N(\REG[14][7] ), .A1N(n175), .Y(
        n306) );
  OAI2BB2X1M U318 ( .B0(n357), .B1(n177), .A0N(\REG[15][0] ), .A1N(n177), .Y(
        n307) );
  OAI2BB2X1M U319 ( .B0(n358), .B1(n177), .A0N(\REG[15][1] ), .A1N(n177), .Y(
        n308) );
  OAI2BB2X1M U320 ( .B0(n359), .B1(n177), .A0N(\REG[15][2] ), .A1N(n177), .Y(
        n309) );
  OAI2BB2X1M U321 ( .B0(n360), .B1(n177), .A0N(\REG[15][3] ), .A1N(n177), .Y(
        n310) );
  OAI2BB2X1M U322 ( .B0(n361), .B1(n177), .A0N(\REG[15][4] ), .A1N(n177), .Y(
        n311) );
  OAI2BB2X1M U323 ( .B0(n362), .B1(n177), .A0N(\REG[15][5] ), .A1N(n177), .Y(
        n312) );
  OAI2BB2X1M U324 ( .B0(n363), .B1(n177), .A0N(\REG[15][6] ), .A1N(n177), .Y(
        n313) );
  OAI2BB2X1M U325 ( .B0(n364), .B1(n177), .A0N(\REG[15][7] ), .A1N(n177), .Y(
        n314) );
  MX4X1M U326 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(N12), .Y(n145) );
  MX4X1M U327 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N11), 
        .S1(N12), .Y(n330) );
  MX4X1M U328 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(n336), .Y(n149) );
  MX4X1M U329 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(n336), .Y(n318) );
  MX4X1M U330 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N11), 
        .S1(N12), .Y(n326) );
  MX4X1M U331 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n338), 
        .S1(N12), .Y(n141) );
  MX4X1M U332 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N11), 
        .S1(N12), .Y(n334) );
  MX4X1M U333 ( .A(\REG[4][1] ), .B(\REG[5][1] ), .C(\REG[6][1] ), .D(
        \REG[7][1] ), .S0(n339), .S1(N12), .Y(n144) );
  MX4X1M U334 ( .A(\REG[4][4] ), .B(\REG[5][4] ), .C(\REG[6][4] ), .D(
        \REG[7][4] ), .S0(n339), .S1(n336), .Y(n321) );
  MX4X1M U335 ( .A(\REG[12][0] ), .B(\REG[13][0] ), .C(\REG[14][0] ), .D(
        \REG[15][0] ), .S0(n338), .S1(N12), .Y(n138) );
  MX4X1M U336 ( .A(\REG[12][2] ), .B(\REG[13][2] ), .C(\REG[14][2] ), .D(
        \REG[15][2] ), .S0(n339), .S1(n336), .Y(n146) );
  MX4X1M U337 ( .A(\REG[12][3] ), .B(\REG[13][3] ), .C(\REG[14][3] ), .D(
        \REG[15][3] ), .S0(n339), .S1(n336), .Y(n315) );
  MX4X1M U338 ( .A(\REG[12][4] ), .B(\REG[13][4] ), .C(\REG[14][4] ), .D(
        \REG[15][4] ), .S0(n339), .S1(n336), .Y(n319) );
  MX4X1M U339 ( .A(\REG[12][5] ), .B(\REG[13][5] ), .C(\REG[14][5] ), .D(
        \REG[15][5] ), .S0(n338), .S1(N12), .Y(n323) );
  MX4X1M U340 ( .A(\REG[12][6] ), .B(\REG[13][6] ), .C(\REG[14][6] ), .D(
        \REG[15][6] ), .S0(n338), .S1(N12), .Y(n327) );
  MX4X1M U341 ( .A(\REG[12][7] ), .B(\REG[13][7] ), .C(\REG[14][7] ), .D(
        \REG[15][7] ), .S0(n338), .S1(N12), .Y(n331) );
  AO22X1M U342 ( .A0(N43), .A1(n365), .B0(RdData[0]), .B1(n151), .Y(n179) );
  MX4X1M U343 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U344 ( .A(\REG[8][0] ), .B(\REG[9][0] ), .C(\REG[10][0] ), .D(
        \REG[11][0] ), .S0(n338), .S1(N12), .Y(n139) );
  MX4X1M U345 ( .A(\REG[4][0] ), .B(\REG[5][0] ), .C(\REG[6][0] ), .D(
        \REG[7][0] ), .S0(n338), .S1(N12), .Y(n140) );
  AO22X1M U346 ( .A0(N42), .A1(n365), .B0(RdData[1]), .B1(n151), .Y(n180) );
  MX4X1M U347 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U348 ( .A(\REG[8][1] ), .B(\REG[9][1] ), .C(\REG[10][1] ), .D(
        \REG[11][1] ), .S0(n338), .S1(N12), .Y(n143) );
  MX4X1M U349 ( .A(\REG[12][1] ), .B(\REG[13][1] ), .C(\REG[14][1] ), .D(
        \REG[15][1] ), .S0(n338), .S1(n336), .Y(n142) );
  AO22X1M U350 ( .A0(N41), .A1(n365), .B0(RdData[2]), .B1(n151), .Y(n181) );
  MX4X1M U351 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U352 ( .A(\REG[8][2] ), .B(\REG[9][2] ), .C(\REG[10][2] ), .D(
        \REG[11][2] ), .S0(n339), .S1(n336), .Y(n147) );
  MX4X1M U353 ( .A(\REG[4][2] ), .B(\REG[5][2] ), .C(\REG[6][2] ), .D(
        \REG[7][2] ), .S0(n339), .S1(n336), .Y(n148) );
  AO22X1M U354 ( .A0(N40), .A1(n365), .B0(RdData[3]), .B1(n151), .Y(n182) );
  MX4X1M U355 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U356 ( .A(\REG[8][3] ), .B(\REG[9][3] ), .C(\REG[10][3] ), .D(
        \REG[11][3] ), .S0(n339), .S1(n336), .Y(n316) );
  MX4X1M U357 ( .A(\REG[4][3] ), .B(\REG[5][3] ), .C(\REG[6][3] ), .D(
        \REG[7][3] ), .S0(n339), .S1(n336), .Y(n317) );
  AO22X1M U358 ( .A0(N39), .A1(n365), .B0(RdData[4]), .B1(n151), .Y(n183) );
  MX4X1M U359 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U360 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N11), 
        .S1(n336), .Y(n322) );
  MX4X1M U361 ( .A(\REG[8][4] ), .B(\REG[9][4] ), .C(\REG[10][4] ), .D(
        \REG[11][4] ), .S0(n339), .S1(n336), .Y(n320) );
  AO22X1M U362 ( .A0(N38), .A1(n365), .B0(RdData[5]), .B1(n151), .Y(n184) );
  MX4X1M U363 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U364 ( .A(\REG[8][5] ), .B(\REG[9][5] ), .C(\REG[10][5] ), .D(
        \REG[11][5] ), .S0(n338), .S1(N12), .Y(n324) );
  MX4X1M U365 ( .A(\REG[4][5] ), .B(\REG[5][5] ), .C(\REG[6][5] ), .D(
        \REG[7][5] ), .S0(n338), .S1(N12), .Y(n325) );
  AO22X1M U366 ( .A0(N37), .A1(n365), .B0(RdData[6]), .B1(n151), .Y(n185) );
  MX4X1M U367 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U368 ( .A(\REG[8][6] ), .B(\REG[9][6] ), .C(\REG[10][6] ), .D(
        \REG[11][6] ), .S0(N11), .S1(N12), .Y(n328) );
  MX4X1M U369 ( .A(\REG[4][6] ), .B(\REG[5][6] ), .C(\REG[6][6] ), .D(
        \REG[7][6] ), .S0(n338), .S1(N12), .Y(n329) );
  AO22X1M U370 ( .A0(N36), .A1(n365), .B0(RdData[7]), .B1(n151), .Y(n186) );
  MX4X1M U371 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U372 ( .A(\REG[8][7] ), .B(\REG[9][7] ), .C(\REG[10][7] ), .D(
        \REG[11][7] ), .S0(N11), .S1(N12), .Y(n332) );
  MX4X1M U373 ( .A(\REG[4][7] ), .B(\REG[5][7] ), .C(\REG[6][7] ), .D(
        \REG[7][7] ), .S0(n338), .S1(N12), .Y(n333) );
  INVX2M U374 ( .A(N12), .Y(n341) );
  AO21XLM U375 ( .A0(RdData_Valid), .A1(n150), .B0(n365), .Y(n178) );
  INVX2M U376 ( .A(N11), .Y(n340) );
  DLY1X1M U377 ( .A(test_se), .Y(n370) );
  DLY1X1M U378 ( .A(test_se), .Y(n371) );
  DLY1X1M U379 ( .A(test_se), .Y(n372) );
  DLY1X1M U380 ( .A(test_se), .Y(n373) );
endmodule


module CLK_GATE ( CLK, CLK_EN, GATED_CLK );
  input CLK, CLK_EN;
  output GATED_CLK;


  TLATNCAX4M U0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ALU_DATA_WIDTH8_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0
 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_DATA_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_DATA_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DATA_WIDTH8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_DATA_WIDTH8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_DATA_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
endmodule


module ALU_DATA_WIDTH8_test_1 ( CLK, RST, EN, A, B, ALU_FUN, ALU_OUT, 
        OUT_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN, test_si, test_se;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N157, N158, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  INVX2M U23 ( .A(EN), .Y(n157) );
  OAI2BB1X2M U24 ( .A0N(N117), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U25 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U26 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U27 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U28 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U29 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U30 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U31 ( .A0N(n156), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U32 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U33 ( .AN(n123), .B(n153), .Y(n54) );
  NAND2X2M U34 ( .A(EN), .B(n140), .Y(n49) );
  AND2X2M U35 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U36 ( .AN(n52), .B(n157), .Y(n48) );
  AND2X2M U37 ( .A(n123), .B(n122), .Y(n67) );
  INVX2M U38 ( .A(n117), .Y(n153) );
  BUFX2M U39 ( .A(n58), .Y(n30) );
  NOR2X2M U40 ( .A(n124), .B(n153), .Y(n58) );
  INVX2M U41 ( .A(n108), .Y(n154) );
  INVX2M U42 ( .A(n124), .Y(n156) );
  NOR3BX2M U43 ( .AN(n122), .B(n155), .C(ALU_FUN[2]), .Y(n66) );
  INVX2M U44 ( .A(n4), .Y(n139) );
  NOR3X2M U45 ( .A(n153), .B(ALU_FUN[2]), .C(n155), .Y(n52) );
  OAI222X1M U46 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U47 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U48 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  NOR2X2M U49 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND2X2M U50 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U51 ( .A(ALU_FUN[0]), .Y(n152) );
  AND3X2M U52 ( .A(n123), .B(n152), .C(n3), .Y(n63) );
  NAND3X2M U53 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U54 ( .A(ALU_FUN[1]), .Y(n155) );
  NAND3X2M U55 ( .A(n156), .B(n152), .C(n3), .Y(n53) );
  AOI31X2M U56 ( .A0(n92), .A1(n93), .A2(n94), .B0(n157), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U57 ( .A0(N101), .A1(n67), .B0(N92), .B1(n54), .Y(n92) );
  AOI221XLM U58 ( .A0(n8), .A1(n154), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U59 ( .A0(N110), .A1(n52), .B0(n7), .B1(n59), .C0(N126), .C1(n66), 
        .Y(n93) );
  AOI31X2M U60 ( .A0(n86), .A1(n87), .A2(n88), .B0(n157), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U61 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n86) );
  AOI221XLM U62 ( .A0(n9), .A1(n154), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U63 ( .A0(N111), .A1(n52), .B0(n8), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n87) );
  AOI31X2M U64 ( .A0(n80), .A1(n81), .A2(n82), .B0(n157), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U65 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n80) );
  AOI221XLM U66 ( .A0(n154), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U67 ( .A0(N112), .A1(n52), .B0(n9), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n81) );
  AOI31X2M U68 ( .A0(n74), .A1(n75), .A2(n76), .B0(n157), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U69 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n74) );
  AOI221XLM U70 ( .A0(n154), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U71 ( .A0(N113), .A1(n52), .B0(n27), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n75) );
  AOI31X2M U72 ( .A0(n68), .A1(n69), .A2(n70), .B0(n157), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U73 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n68) );
  AOI221XLM U74 ( .A0(n154), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U75 ( .A0(N114), .A1(n52), .B0(n59), .B1(n28), .C0(N130), .C1(n66), 
        .Y(n69) );
  AOI31X2M U76 ( .A0(n55), .A1(n56), .A2(n57), .B0(n157), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U77 ( .A0(N131), .A1(n66), .B0(N115), .B1(n52), .Y(n56) );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n55) );
  AOI221XLM U79 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U80 ( .A0(n110), .A1(n111), .A2(n112), .B0(n157), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U81 ( .A0(N99), .A1(n67), .B0(N90), .B1(n54), .Y(n110) );
  AOI211X2M U82 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U83 ( .A0(N108), .A1(n52), .B0(n5), .B1(n59), .C0(N124), .C1(n66), 
        .Y(n111) );
  AOI31X2M U84 ( .A0(n98), .A1(n99), .A2(n100), .B0(n157), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U85 ( .A0(n7), .A1(n154), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U86 ( .A0(N125), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U87 ( .A0(N91), .A1(n54), .B0(N109), .B1(n52), .C0(N100), .C1(n67), 
        .Y(n98) );
  NOR2X2M U88 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X2M U89 ( .A(n152), .B(n3), .Y(n122) );
  NAND3X2M U90 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  INVX2M U91 ( .A(n109), .Y(n140) );
  AOI211X2M U92 ( .A0(N107), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U93 ( .A0(n50), .A1(n51), .B0(n157), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U94 ( .A0(N98), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U95 ( .B0(N116), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  AND2X2M U96 ( .A(ALU_FUN[2]), .B(n155), .Y(n116) );
  AND4X2M U97 ( .A(N158), .B(n116), .C(n3), .D(n152), .Y(n107) );
  INVX2M U98 ( .A(n6), .Y(n150) );
  INVX2M U99 ( .A(n5), .Y(n151) );
  INVX2M U100 ( .A(n28), .Y(n145) );
  INVX2M U101 ( .A(n29), .Y(n144) );
  INVX2M U102 ( .A(n8), .Y(n148) );
  INVX2M U103 ( .A(n7), .Y(n149) );
  INVX2M U104 ( .A(n27), .Y(n146) );
  INVX2M U105 ( .A(n9), .Y(n147) );
  OAI222X1M U106 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U107 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U108 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U109 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U110 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U111 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U112 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U113 ( .A(B[4]), .Y(n143) );
  AOI221XLM U114 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U115 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U116 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U117 ( .A(B[5]), .Y(n142) );
  AOI221XLM U118 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U119 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U120 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U121 ( .A(B[7]), .Y(n141) );
  AOI221XLM U122 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U123 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U124 ( .A(n31), .Y(n135) );
  OAI2B2X1M U125 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U126 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U127 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U128 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U129 ( .A(n42), .Y(n137) );
  OAI21X2M U130 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U131 ( .A0(N156), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U132 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U133 ( .A(n155), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U134 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U135 ( .A0(N157), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U136 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U137 ( .A(n152), .B(ALU_FUN[2]), .C(n155), .Y(n106) );
  BUFX2M U138 ( .A(A[7]), .Y(n29) );
  BUFX2M U139 ( .A(A[1]), .Y(n6) );
  BUFX2M U140 ( .A(A[0]), .Y(n5) );
  BUFX2M U141 ( .A(A[3]), .Y(n8) );
  BUFX2M U142 ( .A(A[2]), .Y(n7) );
  BUFX2M U143 ( .A(A[5]), .Y(n27) );
  BUFX2M U144 ( .A(A[4]), .Y(n9) );
  BUFX2M U145 ( .A(ALU_FUN[3]), .Y(n3) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N158) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N157) );
  NOR2X1M U178 ( .A(N158), .B(N157), .Y(N156) );
  ALU_DATA_WIDTH8_DW_div_uns_0 div_37 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  ALU_DATA_WIDTH8_DW01_sub_0 sub_31 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, 
        N104, N103, N102, N101, N100, N99}) );
  ALU_DATA_WIDTH8_DW01_add_0 add_28 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, 
        N95, N94, N93, N92, N91, N90}) );
  ALU_DATA_WIDTH8_DW02_mult_0 mult_34 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, in_level, out_pulse, test_si, test_so, 
        test_se );
  input clk, rst, in_level, test_si, test_se;
  output out_pulse, test_so;
  wire   d2, d1;
  assign test_so = d2;

  SDFFRQX2M d1_reg ( .D(in_level), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(d1) );
  SDFFRQX2M d2_reg ( .D(d1), .SI(d1), .SE(test_se), .CK(clk), .RN(rst), .Q(d2)
         );
  NOR2BX2M U5 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module PULSE_GEN_test_0 ( clk, rst, in_level, out_pulse, test_si, test_so, 
        test_se );
  input clk, rst, in_level, test_si, test_se;
  output out_pulse, test_so;
  wire   d2, d1;
  assign test_so = d2;

  SDFFRQX2M d1_reg ( .D(in_level), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(d1) );
  SDFFRQX2M d2_reg ( .D(d1), .SI(d1), .SE(test_se), .CK(clk), .RN(rst), .Q(d2)
         );
  NOR2BX2M U5 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module FIFO_WR_ADDR_WIDTH3_test_1 ( wclk, wrst_n, winc, wq2_rptr, wclken, 
        wfull, waddr, wptr, test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input wclk, wrst_n, winc, test_si, test_se;
  output wclken, wfull;
  wire   \wbin[3] , full_flag, n10, n11, n12, n13, n14, n15, n16;
  wire   [3:0] wbin_next;
  wire   [2:0] wgray_next;

  SDFFRQX2M \wbin_reg[3]  ( .D(wbin_next[3]), .SI(waddr[2]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(\wbin[3] ) );
  SDFFRQX2M \wbin_reg[2]  ( .D(wbin_next[2]), .SI(waddr[1]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M wfull_reg ( .D(full_flag), .SI(\wbin[3] ), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wfull) );
  SDFFRQX2M \wbin_reg[1]  ( .D(wbin_next[1]), .SI(waddr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \wbin_reg[0]  ( .D(wbin_next[0]), .SI(test_si), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(wgray_next[1]), .SI(wptr[0]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(wbin_next[3]), .SI(wptr[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(wgray_next[2]), .SI(wptr[1]), .SE(test_se), 
        .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(wgray_next[0]), .SI(wfull), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[0]) );
  CLKXOR2X2M U12 ( .A(wbin_next[2]), .B(wbin_next[1]), .Y(wgray_next[1]) );
  CLKXOR2X2M U13 ( .A(wbin_next[1]), .B(wbin_next[0]), .Y(wgray_next[0]) );
  CLKXOR2X2M U14 ( .A(wbin_next[3]), .B(wbin_next[2]), .Y(wgray_next[2]) );
  XNOR2X2M U15 ( .A(n14), .B(waddr[1]), .Y(wbin_next[1]) );
  XNOR2X2M U16 ( .A(n16), .B(\wbin[3] ), .Y(wbin_next[3]) );
  NAND2X2M U17 ( .A(n15), .B(waddr[2]), .Y(n16) );
  NOR2BX2M U18 ( .AN(winc), .B(wfull), .Y(wclken) );
  NOR2BX2M U19 ( .AN(waddr[1]), .B(n14), .Y(n15) );
  NOR4X1M U20 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(full_flag) );
  XNOR2X2M U21 ( .A(wbin_next[3]), .B(wq2_rptr[3]), .Y(n10) );
  CLKXOR2X2M U22 ( .A(wq2_rptr[0]), .B(wgray_next[0]), .Y(n12) );
  XNOR2X2M U23 ( .A(wgray_next[2]), .B(wq2_rptr[2]), .Y(n11) );
  NAND2X2M U24 ( .A(waddr[0]), .B(wclken), .Y(n14) );
  CLKXOR2X2M U25 ( .A(n15), .B(waddr[2]), .Y(wbin_next[2]) );
  CLKXOR2X2M U26 ( .A(wq2_rptr[1]), .B(wgray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(wclken), .B(waddr[0]), .Y(wbin_next[0]) );
endmodule


module FIFO_RD_ADDR_WIDTH3_test_1 ( rclk, rrst_n, rinc, rq2_wptr, rclken, 
        rempty, raddr, rptr, test_si2, test_si1, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc, test_si2, test_si1, test_se;
  output rclken, rempty;
  wire   \rbin[3] , empty_flag, n10, n11, n12, n13, n14, n15, n16;
  wire   [3:0] rbin_next;
  wire   [2:0] rgray_next;

  SDFFRQX2M \rbin_reg[3]  ( .D(rbin_next[3]), .SI(raddr[2]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(\rbin[3] ) );
  SDFFRQX2M \rbin_reg[2]  ( .D(rbin_next[2]), .SI(raddr[1]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(raddr[2]) );
  SDFFSQX2M rempty_reg ( .D(empty_flag), .SI(\rbin[3] ), .SE(test_se), .CK(
        rclk), .SN(rrst_n), .Q(rempty) );
  SDFFRQX2M \rbin_reg[0]  ( .D(rbin_next[0]), .SI(test_si1), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rbin_reg[1]  ( .D(rbin_next[1]), .SI(raddr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(rgray_next[1]), .SI(rptr[0]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(rbin_next[3]), .SI(rptr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(rgray_next[2]), .SI(test_si2), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(rgray_next[0]), .SI(rempty), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[0]) );
  CLKXOR2X2M U12 ( .A(rbin_next[2]), .B(rbin_next[1]), .Y(rgray_next[1]) );
  CLKXOR2X2M U13 ( .A(rbin_next[1]), .B(rbin_next[0]), .Y(rgray_next[0]) );
  CLKXOR2X2M U14 ( .A(rbin_next[3]), .B(rbin_next[2]), .Y(rgray_next[2]) );
  XNOR2X2M U15 ( .A(n16), .B(\rbin[3] ), .Y(rbin_next[3]) );
  NAND2X2M U16 ( .A(n15), .B(raddr[2]), .Y(n16) );
  XNOR2X2M U17 ( .A(n14), .B(raddr[1]), .Y(rbin_next[1]) );
  NOR2BX2M U18 ( .AN(rinc), .B(rempty), .Y(rclken) );
  NOR2BX2M U19 ( .AN(raddr[1]), .B(n14), .Y(n15) );
  NOR4X1M U20 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(empty_flag) );
  CLKXOR2X2M U21 ( .A(rq2_wptr[0]), .B(rgray_next[0]), .Y(n12) );
  CLKXOR2X2M U22 ( .A(rq2_wptr[3]), .B(rbin_next[3]), .Y(n11) );
  CLKXOR2X2M U23 ( .A(rq2_wptr[2]), .B(rgray_next[2]), .Y(n10) );
  NAND2X2M U24 ( .A(raddr[0]), .B(rclken), .Y(n14) );
  CLKXOR2X2M U25 ( .A(n15), .B(raddr[2]), .Y(rbin_next[2]) );
  CLKXOR2X2M U26 ( .A(rq2_wptr[1]), .B(rgray_next[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(rclken), .B(raddr[0]), .Y(rbin_next[0]) );
endmodule


module DF_SYNC_ADDR_WIDTH3_test_0 ( clk, rst, d_in, d_out, test_si, test_se );
  input [3:0] d_in;
  output [3:0] d_out;
  input clk, rst, test_si, test_se;

  wire   [3:0] reg_sync1;

  SDFFRQX2M \reg_sync2_reg[3]  ( .D(reg_sync1[3]), .SI(d_out[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[3]) );
  SDFFRQX2M \reg_sync2_reg[2]  ( .D(reg_sync1[2]), .SI(d_out[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[2]) );
  SDFFRQX2M \reg_sync2_reg[1]  ( .D(reg_sync1[1]), .SI(d_out[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[1]) );
  SDFFRQX2M \reg_sync2_reg[0]  ( .D(reg_sync1[0]), .SI(reg_sync1[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(d_out[0]) );
  SDFFRQX2M \reg_sync1_reg[3]  ( .D(d_in[3]), .SI(reg_sync1[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[3]) );
  SDFFRQX2M \reg_sync1_reg[2]  ( .D(d_in[2]), .SI(reg_sync1[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[2]) );
  SDFFRQX2M \reg_sync1_reg[1]  ( .D(d_in[1]), .SI(reg_sync1[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[1]) );
  SDFFRQX2M \reg_sync1_reg[0]  ( .D(d_in[0]), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_sync1[0]) );
endmodule


module DF_SYNC_ADDR_WIDTH3_test_1 ( clk, rst, d_in, d_out, test_se );
  input [3:0] d_in;
  output [3:0] d_out;
  input clk, rst, test_se;

  wire   [3:0] reg_sync1;

  SDFFRQX2M \reg_sync2_reg[3]  ( .D(reg_sync1[3]), .SI(d_out[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[3]) );
  SDFFRQX2M \reg_sync2_reg[2]  ( .D(reg_sync1[2]), .SI(d_out[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[2]) );
  SDFFRQX2M \reg_sync2_reg[1]  ( .D(reg_sync1[1]), .SI(d_out[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(d_out[1]) );
  SDFFRQX2M \reg_sync2_reg[0]  ( .D(reg_sync1[0]), .SI(reg_sync1[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(d_out[0]) );
  SDFFRQX2M \reg_sync1_reg[3]  ( .D(d_in[3]), .SI(reg_sync1[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[3]) );
  SDFFRQX2M \reg_sync1_reg[2]  ( .D(d_in[2]), .SI(reg_sync1[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[2]) );
  SDFFRQX2M \reg_sync1_reg[1]  ( .D(d_in[1]), .SI(reg_sync1[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(reg_sync1[1]) );
  SDFFRQX2M \reg_sync1_reg[0]  ( .D(d_in[0]), .SI(d_in[3]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(reg_sync1[0]) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 ( wclk, wrst_n, wclken, 
        wdata, waddr, rclk, rrst_n, rclken, raddr, rdata, test_si, test_so, 
        test_se );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input wclk, wrst_n, wclken, rclk, rrst_n, rclken, test_si, test_se;
  output test_so;
  wire   N10, N11, N12, \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n181, n182, n183, n184,
         n185;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign test_so = \mem[7][7] ;

  SDFFRQX2M \mem_reg[5][7]  ( .D(n132), .SI(\mem[5][6] ), .SE(n185), .CK(wclk), 
        .RN(n164), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n131), .SI(\mem[5][5] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n130), .SI(\mem[5][4] ), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n129), .SI(\mem[5][3] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n128), .SI(\mem[5][2] ), .SE(n185), .CK(wclk), 
        .RN(n164), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n127), .SI(\mem[5][1] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n126), .SI(\mem[5][0] ), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n125), .SI(\mem[4][7] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n100), .SI(\mem[1][6] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\mem[1][7] ) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n99), .SI(\mem[1][5] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\mem[1][6] ) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n98), .SI(\mem[1][4] ), .SE(n183), .CK(wclk), 
        .RN(n167), .Q(\mem[1][5] ) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n97), .SI(\mem[1][3] ), .SE(n182), .CK(wclk), 
        .RN(n167), .Q(\mem[1][4] ) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n96), .SI(\mem[1][2] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\mem[1][3] ) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n95), .SI(\mem[1][1] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\mem[1][2] ) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n94), .SI(\mem[1][0] ), .SE(n183), .CK(wclk), 
        .RN(n167), .Q(\mem[1][1] ) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n93), .SI(\mem[0][7] ), .SE(n182), .CK(wclk), 
        .RN(n167), .Q(\mem[1][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n148), .SI(\mem[7][6] ), .SE(n185), .CK(wclk), 
        .RN(n163), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n147), .SI(\mem[7][5] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n146), .SI(\mem[7][4] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n145), .SI(\mem[7][3] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n144), .SI(\mem[7][2] ), .SE(n185), .CK(wclk), 
        .RN(n163), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n143), .SI(\mem[7][1] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n142), .SI(\mem[7][0] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n141), .SI(\mem[6][7] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n116), .SI(\mem[3][6] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\mem[3][7] ) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n115), .SI(\mem[3][5] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[3][6] ) );
  SDFFRQX2M \mem_reg[3][5]  ( .D(n114), .SI(\mem[3][4] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[3][5] ) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n113), .SI(\mem[3][3] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[3][4] ) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n112), .SI(\mem[3][2] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\mem[3][3] ) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n111), .SI(\mem[3][1] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\mem[3][2] ) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n110), .SI(\mem[3][0] ), .SE(n183), .CK(wclk), 
        .RN(n166), .Q(\mem[3][1] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n109), .SI(\mem[2][7] ), .SE(n182), .CK(wclk), 
        .RN(n166), .Q(\mem[3][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n140), .SI(\mem[6][6] ), .SE(n185), .CK(wclk), 
        .RN(n163), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n139), .SI(\mem[6][5] ), .SE(n184), .CK(wclk), 
        .RN(n163), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n138), .SI(\mem[6][4] ), .SE(n183), .CK(wclk), 
        .RN(n163), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n137), .SI(\mem[6][3] ), .SE(n182), .CK(wclk), 
        .RN(n163), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n136), .SI(\mem[6][2] ), .SE(n185), .CK(wclk), 
        .RN(n164), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n135), .SI(\mem[6][1] ), .SE(n184), .CK(wclk), 
        .RN(n164), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n134), .SI(\mem[6][0] ), .SE(n183), .CK(wclk), 
        .RN(n164), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n133), .SI(\mem[5][7] ), .SE(n182), .CK(wclk), 
        .RN(n164), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[2][7]  ( .D(n108), .SI(\mem[2][6] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\mem[2][7] ) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n107), .SI(\mem[2][5] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\mem[2][6] ) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n106), .SI(\mem[2][4] ), .SE(n183), .CK(wclk), 
        .RN(n166), .Q(\mem[2][5] ) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n105), .SI(\mem[2][3] ), .SE(n182), .CK(wclk), 
        .RN(n166), .Q(\mem[2][4] ) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n104), .SI(\mem[2][2] ), .SE(n185), .CK(wclk), 
        .RN(n166), .Q(\mem[2][3] ) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n103), .SI(\mem[2][1] ), .SE(n184), .CK(wclk), 
        .RN(n166), .Q(\mem[2][2] ) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n102), .SI(\mem[2][0] ), .SE(n183), .CK(wclk), 
        .RN(n166), .Q(\mem[2][1] ) );
  SDFFRQX2M \mem_reg[2][0]  ( .D(n101), .SI(\mem[1][7] ), .SE(n182), .CK(wclk), 
        .RN(n166), .Q(\mem[2][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n124), .SI(\mem[4][6] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n123), .SI(\mem[4][5] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n122), .SI(\mem[4][4] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n121), .SI(\mem[4][3] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n120), .SI(\mem[4][2] ), .SE(n185), .CK(wclk), 
        .RN(n165), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n119), .SI(\mem[4][1] ), .SE(n184), .CK(wclk), 
        .RN(n165), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n118), .SI(\mem[4][0] ), .SE(n183), .CK(wclk), 
        .RN(n165), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n117), .SI(\mem[3][7] ), .SE(n182), .CK(wclk), 
        .RN(n165), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n92), .SI(\mem[0][6] ), .SE(n185), .CK(wclk), 
        .RN(n167), .Q(\mem[0][7] ) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n91), .SI(\mem[0][5] ), .SE(n184), .CK(wclk), 
        .RN(n167), .Q(\mem[0][6] ) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n90), .SI(\mem[0][4] ), .SE(n183), .CK(wclk), 
        .RN(n167), .Q(\mem[0][5] ) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n89), .SI(\mem[0][3] ), .SE(n182), .CK(wclk), 
        .RN(n167), .Q(\mem[0][4] ) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n88), .SI(\mem[0][2] ), .SE(n185), .CK(wclk), 
        .RN(n168), .Q(\mem[0][3] ) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n87), .SI(\mem[0][1] ), .SE(n184), .CK(wclk), 
        .RN(n168), .Q(\mem[0][2] ) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n86), .SI(\mem[0][0] ), .SE(n183), .CK(wclk), 
        .RN(n168), .Q(\mem[0][1] ) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n85), .SI(test_si), .SE(n182), .CK(wclk), 
        .RN(n168), .Q(\mem[0][0] ) );
  NAND3X2M U66 ( .A(n76), .B(n170), .C(waddr[0]), .Y(n77) );
  NAND3X2M U67 ( .A(n76), .B(n169), .C(waddr[1]), .Y(n78) );
  BUFX2M U68 ( .A(n82), .Y(n159) );
  BUFX2M U69 ( .A(n83), .Y(n158) );
  BUFX2M U70 ( .A(n84), .Y(n157) );
  BUFX2M U71 ( .A(n79), .Y(n160) );
  BUFX2M U72 ( .A(n162), .Y(n167) );
  BUFX2M U73 ( .A(n162), .Y(n166) );
  BUFX2M U74 ( .A(n161), .Y(n165) );
  BUFX2M U75 ( .A(n161), .Y(n164) );
  BUFX2M U76 ( .A(n161), .Y(n163) );
  BUFX2M U77 ( .A(n162), .Y(n168) );
  BUFX2M U78 ( .A(wrst_n), .Y(n162) );
  BUFX2M U79 ( .A(wrst_n), .Y(n161) );
  NAND3X2M U80 ( .A(n169), .B(n170), .C(n81), .Y(n80) );
  NAND3X2M U81 ( .A(n169), .B(n170), .C(n76), .Y(n75) );
  OAI2BB2X1M U82 ( .B0(n75), .B1(n178), .A0N(\mem[0][0] ), .A1N(n75), .Y(n85)
         );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n177), .A0N(\mem[0][1] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n176), .A0N(\mem[0][2] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n175), .A0N(\mem[0][3] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n174), .A0N(\mem[0][4] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n173), .A0N(\mem[0][5] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n172), .A0N(\mem[0][6] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n171), .A0N(\mem[0][7] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U90 ( .B0(n178), .B1(n77), .A0N(\mem[1][0] ), .A1N(n77), .Y(n93)
         );
  OAI2BB2X1M U91 ( .B0(n177), .B1(n77), .A0N(\mem[1][1] ), .A1N(n77), .Y(n94)
         );
  OAI2BB2X1M U92 ( .B0(n176), .B1(n77), .A0N(\mem[1][2] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U93 ( .B0(n175), .B1(n77), .A0N(\mem[1][3] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U94 ( .B0(n174), .B1(n77), .A0N(\mem[1][4] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U95 ( .B0(n173), .B1(n77), .A0N(\mem[1][5] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U96 ( .B0(n172), .B1(n77), .A0N(\mem[1][6] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U97 ( .B0(n171), .B1(n77), .A0N(\mem[1][7] ), .A1N(n77), .Y(n100)
         );
  OAI2BB2X1M U98 ( .B0(n178), .B1(n78), .A0N(\mem[2][0] ), .A1N(n78), .Y(n101)
         );
  OAI2BB2X1M U99 ( .B0(n177), .B1(n78), .A0N(\mem[2][1] ), .A1N(n78), .Y(n102)
         );
  OAI2BB2X1M U100 ( .B0(n176), .B1(n78), .A0N(\mem[2][2] ), .A1N(n78), .Y(n103) );
  OAI2BB2X1M U101 ( .B0(n175), .B1(n78), .A0N(\mem[2][3] ), .A1N(n78), .Y(n104) );
  OAI2BB2X1M U102 ( .B0(n174), .B1(n78), .A0N(\mem[2][4] ), .A1N(n78), .Y(n105) );
  OAI2BB2X1M U103 ( .B0(n173), .B1(n78), .A0N(\mem[2][5] ), .A1N(n78), .Y(n106) );
  OAI2BB2X1M U104 ( .B0(n172), .B1(n78), .A0N(\mem[2][6] ), .A1N(n78), .Y(n107) );
  OAI2BB2X1M U105 ( .B0(n171), .B1(n78), .A0N(\mem[2][7] ), .A1N(n78), .Y(n108) );
  OAI2BB2X1M U106 ( .B0(n178), .B1(n80), .A0N(\mem[4][0] ), .A1N(n80), .Y(n117) );
  OAI2BB2X1M U107 ( .B0(n177), .B1(n80), .A0N(\mem[4][1] ), .A1N(n80), .Y(n118) );
  OAI2BB2X1M U108 ( .B0(n176), .B1(n80), .A0N(\mem[4][2] ), .A1N(n80), .Y(n119) );
  OAI2BB2X1M U109 ( .B0(n175), .B1(n80), .A0N(\mem[4][3] ), .A1N(n80), .Y(n120) );
  OAI2BB2X1M U110 ( .B0(n174), .B1(n80), .A0N(\mem[4][4] ), .A1N(n80), .Y(n121) );
  OAI2BB2X1M U111 ( .B0(n173), .B1(n80), .A0N(\mem[4][5] ), .A1N(n80), .Y(n122) );
  OAI2BB2X1M U112 ( .B0(n172), .B1(n80), .A0N(\mem[4][6] ), .A1N(n80), .Y(n123) );
  OAI2BB2X1M U113 ( .B0(n171), .B1(n80), .A0N(\mem[4][7] ), .A1N(n80), .Y(n124) );
  INVX2M U114 ( .A(wdata[0]), .Y(n178) );
  INVX2M U115 ( .A(wdata[1]), .Y(n177) );
  INVX2M U116 ( .A(wdata[2]), .Y(n176) );
  INVX2M U117 ( .A(wdata[3]), .Y(n175) );
  INVX2M U118 ( .A(wdata[4]), .Y(n174) );
  INVX2M U119 ( .A(wdata[5]), .Y(n173) );
  INVX2M U120 ( .A(wdata[6]), .Y(n172) );
  INVX2M U121 ( .A(wdata[7]), .Y(n171) );
  OAI2BB2X1M U122 ( .B0(n178), .B1(n160), .A0N(\mem[3][0] ), .A1N(n160), .Y(
        n109) );
  OAI2BB2X1M U123 ( .B0(n177), .B1(n160), .A0N(\mem[3][1] ), .A1N(n160), .Y(
        n110) );
  OAI2BB2X1M U124 ( .B0(n176), .B1(n160), .A0N(\mem[3][2] ), .A1N(n160), .Y(
        n111) );
  OAI2BB2X1M U125 ( .B0(n175), .B1(n160), .A0N(\mem[3][3] ), .A1N(n160), .Y(
        n112) );
  OAI2BB2X1M U126 ( .B0(n174), .B1(n160), .A0N(\mem[3][4] ), .A1N(n160), .Y(
        n113) );
  OAI2BB2X1M U127 ( .B0(n173), .B1(n160), .A0N(\mem[3][5] ), .A1N(n160), .Y(
        n114) );
  OAI2BB2X1M U128 ( .B0(n172), .B1(n160), .A0N(\mem[3][6] ), .A1N(n160), .Y(
        n115) );
  OAI2BB2X1M U129 ( .B0(n171), .B1(n160), .A0N(\mem[3][7] ), .A1N(n160), .Y(
        n116) );
  OAI2BB2X1M U130 ( .B0(n178), .B1(n159), .A0N(\mem[5][0] ), .A1N(n159), .Y(
        n125) );
  OAI2BB2X1M U131 ( .B0(n177), .B1(n159), .A0N(\mem[5][1] ), .A1N(n159), .Y(
        n126) );
  OAI2BB2X1M U132 ( .B0(n176), .B1(n159), .A0N(\mem[5][2] ), .A1N(n159), .Y(
        n127) );
  OAI2BB2X1M U133 ( .B0(n175), .B1(n159), .A0N(\mem[5][3] ), .A1N(n159), .Y(
        n128) );
  OAI2BB2X1M U134 ( .B0(n174), .B1(n159), .A0N(\mem[5][4] ), .A1N(n159), .Y(
        n129) );
  OAI2BB2X1M U135 ( .B0(n173), .B1(n159), .A0N(\mem[5][5] ), .A1N(n159), .Y(
        n130) );
  OAI2BB2X1M U136 ( .B0(n172), .B1(n159), .A0N(\mem[5][6] ), .A1N(n159), .Y(
        n131) );
  OAI2BB2X1M U137 ( .B0(n171), .B1(n159), .A0N(\mem[5][7] ), .A1N(n159), .Y(
        n132) );
  OAI2BB2X1M U138 ( .B0(n178), .B1(n158), .A0N(\mem[6][0] ), .A1N(n158), .Y(
        n133) );
  OAI2BB2X1M U139 ( .B0(n177), .B1(n158), .A0N(\mem[6][1] ), .A1N(n158), .Y(
        n134) );
  OAI2BB2X1M U140 ( .B0(n176), .B1(n158), .A0N(\mem[6][2] ), .A1N(n158), .Y(
        n135) );
  OAI2BB2X1M U141 ( .B0(n175), .B1(n158), .A0N(\mem[6][3] ), .A1N(n158), .Y(
        n136) );
  OAI2BB2X1M U142 ( .B0(n174), .B1(n158), .A0N(\mem[6][4] ), .A1N(n158), .Y(
        n137) );
  OAI2BB2X1M U143 ( .B0(n173), .B1(n158), .A0N(\mem[6][5] ), .A1N(n158), .Y(
        n138) );
  OAI2BB2X1M U144 ( .B0(n172), .B1(n158), .A0N(\mem[6][6] ), .A1N(n158), .Y(
        n139) );
  OAI2BB2X1M U145 ( .B0(n171), .B1(n158), .A0N(\mem[6][7] ), .A1N(n158), .Y(
        n140) );
  OAI2BB2X1M U146 ( .B0(n178), .B1(n157), .A0N(\mem[7][0] ), .A1N(n157), .Y(
        n141) );
  OAI2BB2X1M U147 ( .B0(n177), .B1(n157), .A0N(\mem[7][1] ), .A1N(n157), .Y(
        n142) );
  OAI2BB2X1M U148 ( .B0(n176), .B1(n157), .A0N(\mem[7][2] ), .A1N(n157), .Y(
        n143) );
  OAI2BB2X1M U149 ( .B0(n175), .B1(n157), .A0N(\mem[7][3] ), .A1N(n157), .Y(
        n144) );
  OAI2BB2X1M U150 ( .B0(n174), .B1(n157), .A0N(\mem[7][4] ), .A1N(n157), .Y(
        n145) );
  OAI2BB2X1M U151 ( .B0(n173), .B1(n157), .A0N(\mem[7][5] ), .A1N(n157), .Y(
        n146) );
  OAI2BB2X1M U152 ( .B0(n172), .B1(n157), .A0N(\mem[7][6] ), .A1N(n157), .Y(
        n147) );
  OAI2BB2X1M U153 ( .B0(n171), .B1(n157), .A0N(\mem[7][7] ), .A1N(n157), .Y(
        n148) );
  NOR2BX2M U154 ( .AN(wclken), .B(waddr[2]), .Y(n76) );
  INVX2M U155 ( .A(waddr[0]), .Y(n169) );
  INVX2M U156 ( .A(waddr[1]), .Y(n170) );
  AND2X2M U157 ( .A(waddr[2]), .B(wclken), .Y(n81) );
  NAND3X2M U158 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n79) );
  NAND3X2M U159 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n84) );
  NAND3X2M U160 ( .A(waddr[0]), .B(n170), .C(n81), .Y(n82) );
  NAND3X2M U161 ( .A(waddr[1]), .B(n169), .C(n81), .Y(n83) );
  MX2X2M U162 ( .A(n154), .B(n153), .S0(N12), .Y(rdata[7]) );
  MX4X1M U163 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n155), .S1(N11), .Y(n153) );
  MX4X1M U164 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX2X2M U165 ( .A(n66), .B(n65), .S0(N12), .Y(rdata[0]) );
  MX4X1M U166 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n155), .S1(N11), .Y(n65) );
  MX4X1M U167 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n156), .S1(N11), .Y(n66) );
  MX2X2M U168 ( .A(n68), .B(n67), .S0(N12), .Y(rdata[1]) );
  MX4X1M U169 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n155), .S1(N11), .Y(n67) );
  MX4X1M U170 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n156), .S1(N11), .Y(n68) );
  MX2X2M U171 ( .A(n70), .B(n69), .S0(N12), .Y(rdata[2]) );
  MX4X1M U172 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n155), .S1(N11), .Y(n69) );
  MX4X1M U173 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n156), .S1(N11), .Y(n70) );
  MX2X2M U174 ( .A(n72), .B(n71), .S0(N12), .Y(rdata[3]) );
  MX4X1M U175 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n155), .S1(N11), .Y(n71) );
  MX4X1M U176 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n156), .S1(N11), .Y(n72) );
  MX2X2M U177 ( .A(n74), .B(n73), .S0(N12), .Y(rdata[4]) );
  MX4X1M U178 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n155), .S1(N11), .Y(n73) );
  MX4X1M U179 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n156), .S1(N11), .Y(n74) );
  MX2X2M U180 ( .A(n150), .B(n149), .S0(N12), .Y(rdata[5]) );
  MX4X1M U181 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n155), .S1(N11), .Y(n149) );
  MX4X1M U182 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n156), .S1(N11), .Y(n150) );
  MX2X2M U183 ( .A(n152), .B(n151), .S0(N12), .Y(rdata[6]) );
  MX4X1M U184 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n155), .S1(N11), .Y(n151) );
  MX4X1M U185 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n156), .S1(N11), .Y(n152) );
  BUFX2M U186 ( .A(N10), .Y(n156) );
  BUFX2M U187 ( .A(N10), .Y(n155) );
  INVXLM U188 ( .A(test_se), .Y(n181) );
  INVXLM U189 ( .A(n181), .Y(n182) );
  INVXLM U190 ( .A(n181), .Y(n183) );
  INVXLM U191 ( .A(n181), .Y(n184) );
  INVXLM U192 ( .A(n181), .Y(n185) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_test_1 ( W_CLK, W_RST, W_INC, WR_DATA, FULL, 
        R_CLK, R_RST, R_INC, RD_DATA, EMPTY, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   winc_pulse, rinc_pulse, wclken, rclken, n1, n2, n3, n4, n5, n6, n7;
  wire   [3:0] wq2_rptr;
  wire   [2:0] waddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  assign test_so2 = rq2_wptr[3];
  assign test_so1 = rptr[1];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
  PULSE_GEN_test_1 u_winc_gen ( .clk(W_CLK), .rst(n3), .in_level(W_INC), 
        .out_pulse(winc_pulse), .test_si(n6), .test_so(n5), .test_se(test_se)
         );
  PULSE_GEN_test_0 u_rinc_gen ( .clk(R_CLK), .rst(n1), .in_level(R_INC), 
        .out_pulse(rinc_pulse), .test_si(rptr[3]), .test_so(n6), .test_se(
        test_se) );
  FIFO_WR_ADDR_WIDTH3_test_1 u_wr ( .wclk(W_CLK), .wrst_n(n3), .winc(
        winc_pulse), .wq2_rptr(wq2_rptr), .wclken(wclken), .wfull(FULL), 
        .waddr(waddr), .wptr(wptr), .test_si(n5), .test_se(test_se) );
  FIFO_RD_ADDR_WIDTH3_test_1 u_rd ( .rclk(R_CLK), .rrst_n(n1), .rinc(
        rinc_pulse), .rq2_wptr(rq2_wptr), .rclken(rclken), .rempty(EMPTY), 
        .raddr(raddr), .rptr(rptr), .test_si2(test_si2), .test_si1(n7), 
        .test_se(test_se) );
  DF_SYNC_ADDR_WIDTH3_test_0 r2w_DF_SYNC ( .clk(W_CLK), .rst(n3), .d_in(rptr), 
        .d_out(wq2_rptr), .test_si(test_si1), .test_se(test_se) );
  DF_SYNC_ADDR_WIDTH3_test_1 w2r_DF_SYNC ( .clk(R_CLK), .rst(n1), .d_in(wptr), 
        .d_out(rq2_wptr), .test_se(test_se) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3_test_1 u_FIFO_MEM ( .wclk(W_CLK), 
        .wrst_n(n3), .wclken(wclken), .wdata(WR_DATA), .waddr(waddr), .rclk(
        R_CLK), .rrst_n(n1), .rclken(rclken), .raddr(raddr), .rdata(RD_DATA), 
        .test_si(wq2_rptr[3]), .test_so(n7), .test_se(test_se) );
endmodule


module PULSE_GEN_test_2 ( clk, rst, in_level, out_pulse, test_si, test_so, 
        test_se );
  input clk, rst, in_level, test_si, test_se;
  output out_pulse, test_so;
  wire   d2, d1;
  assign test_so = d2;

  SDFFRQX2M d1_reg ( .D(in_level), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(d1) );
  SDFFRQX2M d2_reg ( .D(d1), .SI(d1), .SE(test_se), .CK(clk), .RN(rst), .Q(d2)
         );
  NOR2BX2M U5 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error, scan_clk, scan_rst, test_mode, SE, SI, SO );
  input [3:0] SI;
  output [3:0] SO;
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_SCAN, UART_CLK_SCAN, UART_RX_CLK, RX_CLK_SCAN, UART_TX_CLK,
         TX_CLK_SCAN, RST_SCAN, SYNC_REF_RST, SYNC_REF_RST_SCAN, SYNC_UART_RST,
         SYNC_UART_RST_SCAN, TX_OUTPUT_V, RX_OUTPUT_V, FIFO_EMPTY,
         DATA_SYNC_EN, WR_EN, RD_EN, RDDATA_VALID, ALU_OUT_VALID, ALU_EN,
         Winc_fifo, FIFO_FULL, CLK_GATE_EN, _1_net_, ALU_CLK, R_INC_FIFO, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n18, n19, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;
  wire   [7:0] TX_INPUT_P;
  wire   [7:0] UART_Config;
  wire   [7:0] RX_OUTPUT_P;
  wire   [7:0] RX_CLK_DIV_RATIO;
  wire   [7:0] Div_Ratio;
  wire   [7:0] DATA_SYNC;
  wire   [3:0] ADDRESS;
  wire   [7:0] WRDATA;
  wire   [7:0] RDDATA;
  wire   [15:0] ALU_Out;
  wire   [3:0] ALU_Fun;
  wire   [7:0] WR_DATA_FIFO;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U10 ( .A(n7), .Y(n6) );
  OR2X2M U11 ( .A(CLK_GATE_EN), .B(n2), .Y(_1_net_) );
  BUFX2M U12 ( .A(ADDRESS[1]), .Y(n5) );
  BUFX2M U13 ( .A(ADDRESS[0]), .Y(n4) );
  INVX2M U14 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX4M U15 ( .A(n9), .Y(n8) );
  INVX2M U16 ( .A(SYNC_REF_RST_SCAN), .Y(n9) );
  INVX2M U17 ( .A(SYNC_UART_RST_SCAN), .Y(n7) );
  BUFX2M U18 ( .A(UART_RX_IN), .Y(n3) );
  BUFX2M U19 ( .A(test_mode), .Y(n2) );
  DLY1X1M U26 ( .A(n25), .Y(n24) );
  INVXLM U27 ( .A(n35), .Y(n25) );
  DLY1X1M U28 ( .A(n28), .Y(n26) );
  INVXLM U29 ( .A(n36), .Y(n27) );
  INVXLM U30 ( .A(n27), .Y(n28) );
  INVXLM U31 ( .A(n27), .Y(n29) );
  INVXLM U32 ( .A(n27), .Y(n30) );
  INVXLM U33 ( .A(n38), .Y(n31) );
  INVXLM U34 ( .A(n31), .Y(n32) );
  INVXLM U35 ( .A(n37), .Y(n33) );
  INVXLM U36 ( .A(n33), .Y(n34) );
  INVXLM U37 ( .A(SE), .Y(n35) );
  INVXLM U38 ( .A(n35), .Y(n36) );
  INVXLM U39 ( .A(n35), .Y(n37) );
  INVXLM U40 ( .A(n35), .Y(n38) );
  mux2X1_1 U1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(REF_CLK_SCAN)
         );
  mux2X1_4 U2 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(UART_CLK_SCAN) );
  mux2X1_3 U3 ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        RX_CLK_SCAN) );
  mux2X1_2 U4 ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        TX_CLK_SCAN) );
  mux2X1_0 U5 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(RST_SCAN) );
  mux2X1_6 U6 ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_REF_RST_SCAN) );
  mux2X1_5 U7 ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_UART_RST_SCAN) );
  UART_IN_width8_DATA_WIDTH8_test_1 UART_U0 ( .TX_CLK(TX_CLK_SCAN), .RST(n6), 
        .TX_IN_P(TX_INPUT_P), .TX_IN_V(n1), .TX_OUT_S(SO[0]), .TX_OUT_V(
        TX_OUTPUT_V), .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), 
        .RX_CLK(RX_CLK_SCAN), .RX_IN_S(n3), .prescale(UART_Config[7:2]), 
        .RX_OUT_P(RX_OUTPUT_P), .RX_OUT_V(RX_OUTPUT_V), .stp_err(framing_error), .par_err(parity_error), .test_si(n11), .test_se(n24) );
  CLKDIV_MUX_DATA_WIDTH8 CLKDIV_MUX_U0 ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        RX_CLK_DIV_RATIO[3:0]}) );
  Clock_Divider_test_1 UART_TX_CLK_U0 ( .i_ref_clk(UART_CLK_SCAN), .i_rst_n(n6), .i_clk_en(1'b1), .i_div_ratio(Div_Ratio), .o_div_clk(UART_TX_CLK), .test_si(
        n12), .test_so(n11), .test_se(n30) );
  Clock_Divider_test_0 UART_RX_CLK_U0 ( .i_ref_clk(UART_CLK_SCAN), .i_rst_n(n6), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_CLK_DIV_RATIO[3:0]}), .o_div_clk(UART_RX_CLK), .test_si(n13), .test_so(n12), .test_se(n32) );
  RST_SYNC_test_0 RST_SYNC_1 ( .CLK(REF_CLK_SCAN), .RST(RST_SCAN), .SYNC_RST(
        SYNC_REF_RST), .test_si(n18), .test_se(n32) );
  RST_SYNC_test_1 RST_SYNC_2 ( .CLK(UART_CLK_SCAN), .RST(RST_SCAN), .SYNC_RST(
        SYNC_UART_RST), .test_si(SYNC_REF_RST), .test_se(n29) );
  DATA_SYNC_BUS_WIDTH8_test_1 DATA_SYNC_U0 ( .CLK(REF_CLK_SCAN), .RST(n8), 
        .bus_enable(RX_OUTPUT_V), .unsync_bus(RX_OUTPUT_P), .sync_bus(
        DATA_SYNC), .enable_pulse(DATA_SYNC_EN), .test_si(n19), .test_se(n29)
         );
  SYS_CTRL_WIDTH8_ADDR4_test_1 SYS_CTRL_U0 ( .CLK(REF_CLK_SCAN), .RST(n8), 
        .RX_P_DATA(DATA_SYNC), .RX_D_VLD(DATA_SYNC_EN), .ALU_OUT(ALU_Out), 
        .OUT_Valid(ALU_OUT_VALID), .ALU_FUN(ALU_Fun), .EN(ALU_EN), .WrEn(WR_EN), .RdEn(RD_EN), .address(ADDRESS), .WrData(WRDATA), .RdData(RDDATA), 
        .RdData_Valid(RDDATA_VALID), .WR_DATA(WR_DATA_FIFO), .Winc(Winc_fifo), 
        .FIFO_Full(FIFO_FULL), .CLK_EN(CLK_GATE_EN), .test_si1(SI[0]), 
        .test_so2(n13), .test_so1(SO[1]), .test_se(n26) );
  Register_File_WIDTH8_ADDR4_test_1 Register_File_U0 ( .RST(n8), .CLK(
        REF_CLK_SCAN), .WrEn(WR_EN), .RdEn(RD_EN), .address({ADDRESS[3:2], n5, 
        n4}), .WrData(WRDATA), .RdData(RDDATA), .RdData_Valid(RDDATA_VALID), 
        .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(
        Div_Ratio), .test_si2(SI[1]), .test_si1(SYNC_UART_RST), .test_so1(
        SO[2]), .test_se(SE) );
  CLK_GATE CLK_GATE_U0 ( .CLK(REF_CLK_SCAN), .CLK_EN(_1_net_), .GATED_CLK(
        ALU_CLK) );
  ALU_DATA_WIDTH8_test_1 ALU_U0 ( .CLK(ALU_CLK), .RST(n8), .EN(ALU_EN), .A(
        Operand_A), .B(Operand_B), .ALU_FUN(ALU_Fun), .ALU_OUT(ALU_Out), 
        .OUT_VALID(ALU_OUT_VALID), .test_si(SI[3]), .test_se(n34) );
  ASYNC_FIFO_DATA_WIDTH8_test_1 ASYNC_FIFO_U0 ( .W_CLK(REF_CLK_SCAN), .W_RST(
        n8), .W_INC(Winc_fifo), .WR_DATA(WR_DATA_FIFO), .FULL(FIFO_FULL), 
        .R_CLK(TX_CLK_SCAN), .R_RST(n6), .R_INC(R_INC_FIFO), .RD_DATA(
        TX_INPUT_P), .EMPTY(FIFO_EMPTY), .test_si2(SI[2]), .test_si1(
        ALU_OUT_VALID), .test_so2(n19), .test_so1(SO[3]), .test_se(SE) );
  PULSE_GEN_test_2 PULSE_GEN_U0 ( .clk(TX_CLK_SCAN), .rst(n6), .in_level(
        TX_OUTPUT_V), .out_pulse(R_INC_FIFO), .test_si(DATA_SYNC[7]), 
        .test_so(n18), .test_se(n32) );
  BUFX2M U25 ( .A(SO[0]), .Y(UART_TX_O) );
endmodule

