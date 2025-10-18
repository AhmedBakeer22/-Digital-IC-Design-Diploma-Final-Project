/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep 30 17:42:30 2025
/////////////////////////////////////////////////////////////


module serializer_IN_width8 ( p_data, ser_en, clk, rst, data_valid, busy, 
        ser_done, ser_data );
  input [7:0] p_data;
  input ser_en, clk, rst, data_valid, busy;
  output ser_done, ser_data;
  wire   N23, N24, N25, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n1, n2, n3, n24;
  wire   [7:1] DATA_V;
  wire   [2:0] ser_count;

  DFFRQX2M \DATA_V_reg[0]  ( .D(n16), .CK(clk), .RN(rst), .Q(ser_data) );
  DFFRQX2M \DATA_V_reg[6]  ( .D(n18), .CK(clk), .RN(rst), .Q(DATA_V[6]) );
  DFFRQX2M \DATA_V_reg[5]  ( .D(n19), .CK(clk), .RN(rst), .Q(DATA_V[5]) );
  DFFRQX2M \DATA_V_reg[4]  ( .D(n20), .CK(clk), .RN(rst), .Q(DATA_V[4]) );
  DFFRQX2M \DATA_V_reg[3]  ( .D(n21), .CK(clk), .RN(rst), .Q(DATA_V[3]) );
  DFFRQX2M \DATA_V_reg[2]  ( .D(n22), .CK(clk), .RN(rst), .Q(DATA_V[2]) );
  DFFRQX2M \DATA_V_reg[1]  ( .D(n23), .CK(clk), .RN(rst), .Q(DATA_V[1]) );
  DFFRQX2M \DATA_V_reg[7]  ( .D(n17), .CK(clk), .RN(rst), .Q(DATA_V[7]) );
  DFFRQX2M \ser_count_reg[1]  ( .D(N24), .CK(clk), .RN(rst), .Q(ser_count[1])
         );
  DFFRQX2M \ser_count_reg[2]  ( .D(N25), .CK(clk), .RN(rst), .Q(ser_count[2])
         );
  DFFRQX2M \ser_count_reg[0]  ( .D(N23), .CK(clk), .RN(rst), .Q(ser_count[0])
         );
  NOR2X2M U3 ( .A(n2), .B(n1), .Y(n6) );
  NOR2X2M U4 ( .A(n1), .B(n6), .Y(n4) );
  AND3X2M U5 ( .A(ser_count[0]), .B(ser_count[2]), .C(ser_count[1]), .Y(
        ser_done) );
  OAI2BB2X1M U6 ( .B0(n14), .B1(n2), .A0N(ser_count[2]), .A1N(N23), .Y(N25) );
  AOI32X1M U7 ( .A0(ser_count[0]), .A1(n24), .A2(ser_count[1]), .B0(
        ser_count[2]), .B1(n3), .Y(n14) );
  INVX2M U8 ( .A(ser_count[2]), .Y(n24) );
  INVX2M U9 ( .A(ser_en), .Y(n2) );
  NOR2X2M U10 ( .A(n2), .B(ser_count[0]), .Y(N23) );
  BUFX2M U11 ( .A(n7), .Y(n1) );
  NOR2BX2M U12 ( .AN(data_valid), .B(busy), .Y(n7) );
  NOR2X2M U13 ( .A(n15), .B(n2), .Y(N24) );
  CLKXOR2X2M U14 ( .A(ser_count[0]), .B(n3), .Y(n15) );
  OAI2BB1X2M U15 ( .A0N(ser_data), .A1N(n4), .B0(n5), .Y(n16) );
  AOI22X1M U16 ( .A0(DATA_V[1]), .A1(n6), .B0(p_data[0]), .B1(n1), .Y(n5) );
  OAI2BB1X2M U17 ( .A0N(DATA_V[1]), .A1N(n4), .B0(n13), .Y(n23) );
  AOI22X1M U18 ( .A0(DATA_V[2]), .A1(n6), .B0(p_data[1]), .B1(n1), .Y(n13) );
  OAI2BB1X2M U19 ( .A0N(n4), .A1N(DATA_V[2]), .B0(n12), .Y(n22) );
  AOI22X1M U20 ( .A0(DATA_V[3]), .A1(n6), .B0(p_data[2]), .B1(n1), .Y(n12) );
  OAI2BB1X2M U21 ( .A0N(n4), .A1N(DATA_V[3]), .B0(n11), .Y(n21) );
  AOI22X1M U22 ( .A0(DATA_V[4]), .A1(n6), .B0(p_data[3]), .B1(n1), .Y(n11) );
  OAI2BB1X2M U23 ( .A0N(n4), .A1N(DATA_V[4]), .B0(n10), .Y(n20) );
  AOI22X1M U24 ( .A0(DATA_V[5]), .A1(n6), .B0(p_data[4]), .B1(n1), .Y(n10) );
  OAI2BB1X2M U25 ( .A0N(n4), .A1N(DATA_V[5]), .B0(n9), .Y(n19) );
  AOI22X1M U26 ( .A0(DATA_V[6]), .A1(n6), .B0(p_data[5]), .B1(n1), .Y(n9) );
  OAI2BB1X2M U27 ( .A0N(n4), .A1N(DATA_V[6]), .B0(n8), .Y(n18) );
  AOI22X1M U28 ( .A0(DATA_V[7]), .A1(n6), .B0(p_data[6]), .B1(n1), .Y(n8) );
  AO22X1M U29 ( .A0(n4), .A1(DATA_V[7]), .B0(p_data[7]), .B1(n1), .Y(n17) );
  INVX2M U30 ( .A(ser_count[1]), .Y(n3) );
endmodule


module parity_calc_IN_width8 ( clk, rst, p_data, par_typ, par_en, data_valid, 
        busy, par_bit );
  input [7:0] p_data;
  input clk, rst, par_typ, par_en, data_valid, busy;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n2
;
  wire   [7:0] reg_data;

  DFFRQX2M par_bit_reg ( .D(n8), .CK(clk), .RN(rst), .Q(par_bit) );
  DFFRQX2M \reg_data_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(reg_data[5]) );
  DFFRQX2M \reg_data_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(reg_data[1]) );
  DFFRQX2M \reg_data_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(reg_data[4]) );
  DFFRQX2M \reg_data_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(reg_data[0]) );
  DFFRQX2M \reg_data_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(reg_data[2]) );
  DFFRQX2M \reg_data_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(reg_data[3]) );
  DFFRQX2M \reg_data_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(reg_data[6]) );
  DFFRQX2M \reg_data_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(reg_data[7]) );
  XNOR2X2M U2 ( .A(reg_data[2]), .B(reg_data[3]), .Y(n5) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U4 ( .A(par_en), .Y(n2) );
  XOR3XLM U5 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U6 ( .A(reg_data[1]), .B(reg_data[0]), .C(n5), .Y(n4) );
  XOR3XLM U7 ( .A(reg_data[5]), .B(reg_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U8 ( .A(reg_data[7]), .B(reg_data[6]), .Y(n6) );
  AO2B2X2M U9 ( .B0(p_data[0]), .B1(n7), .A0(reg_data[0]), .A1N(n7), .Y(n9) );
  AO2B2X2M U10 ( .B0(p_data[1]), .B1(n7), .A0(reg_data[1]), .A1N(n7), .Y(n10)
         );
  AO2B2X2M U11 ( .B0(p_data[2]), .B1(n7), .A0(reg_data[2]), .A1N(n7), .Y(n11)
         );
  AO2B2X2M U12 ( .B0(p_data[3]), .B1(n7), .A0(reg_data[3]), .A1N(n7), .Y(n12)
         );
  AO2B2X2M U13 ( .B0(p_data[4]), .B1(n7), .A0(reg_data[4]), .A1N(n7), .Y(n13)
         );
  AO2B2X2M U14 ( .B0(p_data[5]), .B1(n7), .A0(reg_data[5]), .A1N(n7), .Y(n14)
         );
  AO2B2X2M U15 ( .B0(p_data[6]), .B1(n7), .A0(reg_data[6]), .A1N(n7), .Y(n15)
         );
  AO2B2X2M U16 ( .B0(p_data[7]), .B1(n7), .A0(reg_data[7]), .A1N(n7), .Y(n16)
         );
  NOR2BX2M U17 ( .AN(data_valid), .B(busy), .Y(n7) );
endmodule


module FSM ( clk, rst, data_valid, par_en, ser_done, ser_en, mux_sel, busy );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   busy_c, n4, n5, n6, n7, n8, n9, n1, n2, n3;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M busy_reg ( .D(busy_c), .CK(clk), .RN(rst), .Q(busy) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  INVX2M U3 ( .A(n6), .Y(n1) );
  OAI21X2M U4 ( .A0(current_state[1]), .A1(n2), .B0(n9), .Y(n6) );
  NAND2X2M U5 ( .A(current_state[1]), .B(n2), .Y(n9) );
  NOR3X2M U6 ( .A(n4), .B(ser_done), .C(current_state[2]), .Y(ser_en) );
  NAND2X2M U7 ( .A(n1), .B(current_state[0]), .Y(n4) );
  INVX2M U8 ( .A(current_state[0]), .Y(n2) );
  AOI21X2M U9 ( .A0(n1), .A1(n4), .B0(current_state[2]), .Y(next_state[1]) );
  OAI2B2X1M U10 ( .A1N(current_state[2]), .A0(n9), .B0(current_state[2]), .B1(
        n6), .Y(mux_sel[0]) );
  OAI21X2M U11 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n9), .Y(
        mux_sel[1]) );
  NOR3X2M U12 ( .A(n3), .B(current_state[2]), .C(n5), .Y(next_state[2]) );
  AOI2B1X1M U13 ( .A1N(par_en), .A0(ser_done), .B0(n2), .Y(n5) );
  OAI21X2M U14 ( .A0(current_state[2]), .A1(n2), .B0(n9), .Y(busy_c) );
  AOI21X2M U15 ( .A0(n7), .A1(n8), .B0(current_state[2]), .Y(next_state[0]) );
  NAND2BX2M U16 ( .AN(ser_done), .B(current_state[0]), .Y(n7) );
  OAI21X2M U17 ( .A0(current_state[0]), .A1(data_valid), .B0(n3), .Y(n8) );
  INVX2M U18 ( .A(current_state[1]), .Y(n3) );
endmodule


module MUX ( clk, rst, mux_sel, par_bit, ser_data, TX_OUT );
  input [1:0] mux_sel;
  input clk, rst, par_bit, ser_data;
  output TX_OUT;
  wire   OUT, n1;

  DFFSQX2M TX_OUT_reg ( .D(OUT), .CK(clk), .SN(rst), .Q(TX_OUT) );
  OAI2BB1X2M U3 ( .A0N(ser_data), .A1N(mux_sel[0]), .B0(n1), .Y(OUT) );
  OAI21X2M U4 ( .A0(mux_sel[0]), .A1(par_bit), .B0(mux_sel[1]), .Y(n1) );
endmodule


module UART_TX_IN_width8 ( p_data, clk, rst, data_valid, par_en, par_typ, 
        TX_OUT, busy );
  input [7:0] p_data;
  input clk, rst, data_valid, par_en, par_typ;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  serializer_IN_width8 serializer_unit ( .p_data(p_data), .ser_en(ser_en), 
        .clk(clk), .rst(n1), .data_valid(data_valid), .busy(busy), .ser_done(
        ser_done), .ser_data(ser_data) );
  parity_calc_IN_width8 parity_calc_unit ( .clk(clk), .rst(n1), .p_data(p_data), .par_typ(par_typ), .par_en(par_en), .data_valid(data_valid), .busy(busy), 
        .par_bit(par_bit) );
  FSM FSM_unit ( .clk(clk), .rst(n1), .data_valid(data_valid), .par_en(par_en), 
        .ser_done(ser_done), .ser_en(ser_en), .mux_sel(mux_sel), .busy(busy)
         );
  MUX MUX_unit ( .clk(clk), .rst(n1), .mux_sel(mux_sel), .par_bit(par_bit), 
        .ser_data(ser_data), .TX_OUT(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module data_sampling_prescale_width6 ( clk, rst, RX_IN, dat_samp_en, prescale, 
        edge_cnt, sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input clk, rst, RX_IN, dat_samp_en;
  output sampled_bit;
  wire   sample_1, sample_2, sample_3, N5, N6, N7, N8, N9, N12, N13, N14, N15,
         N16, N17, n11, n13, n18, n19, n21, n23, n24, n25, n26, n27,
         \sub_23/carry[4] , \sub_23/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n12, n14, n15, n16, n17, n20, n22, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  assign N5 = prescale[1];

  DFFSQX2M sample_3_reg ( .D(n25), .CK(clk), .SN(rst), .Q(sample_3) );
  DFFSQX2M sample_1_reg ( .D(n27), .CK(clk), .SN(rst), .Q(sample_1) );
  DFFSQX2M sample_2_reg ( .D(n26), .CK(clk), .SN(rst), .Q(sample_2) );
  DFFSQX2M sampled_bit_reg ( .D(n24), .CK(clk), .SN(rst), .Q(sampled_bit) );
  OR4X1M U3 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(n1) );
  OR4X1M U4 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n2) );
  OR4X1M U5 ( .A(n17), .B(n16), .C(n15), .D(n14), .Y(n3) );
  NOR2X2M U6 ( .A(prescale[5]), .B(\sub_23/carry[4] ), .Y(n4) );
  OAI22X1M U7 ( .A0(n18), .A1(n2), .B0(n21), .B1(n44), .Y(n26) );
  NOR2X2M U8 ( .A(n42), .B(n2), .Y(n21) );
  OAI22X1M U9 ( .A0(n18), .A1(n3), .B0(n23), .B1(n43), .Y(n27) );
  NOR2X2M U10 ( .A(n42), .B(n3), .Y(n23) );
  OAI22X1M U11 ( .A0(n1), .A1(n18), .B0(n19), .B1(n45), .Y(n25) );
  NOR2X2M U12 ( .A(n42), .B(n1), .Y(n19) );
  NAND2X2M U13 ( .A(RX_IN), .B(dat_samp_en), .Y(n18) );
  INVX2M U14 ( .A(dat_samp_en), .Y(n42) );
  OAI2BB2X1M U15 ( .B0(n11), .B1(n42), .A0N(sampled_bit), .A1N(n42), .Y(n24)
         );
  AOI21X2M U16 ( .A0(sample_2), .A1(sample_1), .B0(n13), .Y(n11) );
  AOI21X2M U17 ( .A0(n44), .A1(n43), .B0(n45), .Y(n13) );
  INVX2M U18 ( .A(sample_2), .Y(n44) );
  INVX2M U19 ( .A(sample_1), .Y(n43) );
  INVX2M U20 ( .A(sample_3), .Y(n45) );
  OR2X2M U21 ( .A(prescale[2]), .B(N5), .Y(n5) );
  INVX2M U22 ( .A(prescale[2]), .Y(N6) );
  XNOR2X1M U23 ( .A(\sub_23/carry[4] ), .B(prescale[5]), .Y(N9) );
  OR2X1M U24 ( .A(prescale[4]), .B(\sub_23/carry[3] ), .Y(\sub_23/carry[4] )
         );
  XNOR2X1M U25 ( .A(\sub_23/carry[3] ), .B(prescale[4]), .Y(N8) );
  OR2X1M U26 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_23/carry[3] ) );
  XNOR2X1M U27 ( .A(prescale[2]), .B(prescale[3]), .Y(N7) );
  CLKINVX1M U28 ( .A(N5), .Y(N12) );
  OAI2BB1X1M U29 ( .A0N(N5), .A1N(prescale[2]), .B0(n5), .Y(N13) );
  OR2X1M U30 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U31 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N14) );
  XNOR2X1M U32 ( .A(prescale[4]), .B(n6), .Y(N15) );
  NOR3X1M U33 ( .A(prescale[4]), .B(prescale[5]), .C(n6), .Y(N17) );
  OAI21X1M U34 ( .A0(prescale[4]), .A1(n6), .B0(prescale[5]), .Y(n7) );
  NAND2BX1M U35 ( .AN(N17), .B(n7), .Y(N16) );
  NOR2BX1M U36 ( .AN(edge_cnt[0]), .B(N5), .Y(n8) );
  OAI2B2X1M U37 ( .A1N(N6), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n12) );
  NOR2BX1M U38 ( .AN(N5), .B(edge_cnt[0]), .Y(n9) );
  OAI2B2X1M U39 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N6), .B1(n9), .Y(n10) );
  NAND4BBX1M U40 ( .AN(n4), .BN(edge_cnt[5]), .C(n12), .D(n10), .Y(n17) );
  CLKXOR2X2M U41 ( .A(N9), .B(edge_cnt[4]), .Y(n16) );
  CLKXOR2X2M U42 ( .A(N7), .B(edge_cnt[2]), .Y(n15) );
  CLKXOR2X2M U43 ( .A(N8), .B(edge_cnt[3]), .Y(n14) );
  NOR2BX1M U44 ( .AN(edge_cnt[0]), .B(N12), .Y(n20) );
  OAI2B2X1M U45 ( .A1N(N13), .A0(n20), .B0(edge_cnt[1]), .B1(n20), .Y(n29) );
  NOR2BX1M U46 ( .AN(N12), .B(edge_cnt[0]), .Y(n22) );
  OAI2B2X1M U47 ( .A1N(edge_cnt[1]), .A0(n22), .B0(N13), .B1(n22), .Y(n28) );
  NAND4BBX1M U48 ( .AN(N17), .BN(edge_cnt[5]), .C(n29), .D(n28), .Y(n33) );
  CLKXOR2X2M U49 ( .A(N16), .B(edge_cnt[4]), .Y(n32) );
  CLKXOR2X2M U50 ( .A(N14), .B(edge_cnt[2]), .Y(n31) );
  CLKXOR2X2M U51 ( .A(N15), .B(edge_cnt[3]), .Y(n30) );
  NOR2BX1M U52 ( .AN(edge_cnt[0]), .B(N5), .Y(n34) );
  OAI2B2X1M U53 ( .A1N(prescale[2]), .A0(n34), .B0(edge_cnt[1]), .B1(n34), .Y(
        n37) );
  NOR2BX1M U54 ( .AN(N5), .B(edge_cnt[0]), .Y(n35) );
  OAI2B2X1M U55 ( .A1N(edge_cnt[1]), .A0(n35), .B0(prescale[2]), .B1(n35), .Y(
        n36) );
  NAND3BX1M U56 ( .AN(edge_cnt[5]), .B(n37), .C(n36), .Y(n41) );
  CLKXOR2X2M U57 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n40) );
  CLKXOR2X2M U58 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n39) );
  CLKXOR2X2M U59 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n38) );
endmodule


module edge_bit_counter_prescale_width6_bit_cnt_width4 ( cnt_enable, clk, rst, 
        prescale, bit_cnt, edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input cnt_enable, clk, rst;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N20, N21, N22, N23, N30, N31, N32,
         N33, N34, N35, n8, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, \add_27/carry[5] , \add_27/carry[4] , \add_27/carry[3] ,
         \add_27/carry[2] , n1, n2, n3, n4, n5, n6, n7, n9, n10, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31;

  DFFRQX2M \edge_cnt_reg[5]  ( .D(N35), .CK(clk), .RN(rst), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[0]  ( .D(N30), .CK(clk), .RN(rst), .Q(edge_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N34), .CK(clk), .RN(rst), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N33), .CK(clk), .RN(rst), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N32), .CK(clk), .RN(rst), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N31), .CK(clk), .RN(rst), .Q(edge_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[3]  ( .D(n18), .CK(clk), .RN(rst), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[1]  ( .D(n20), .CK(clk), .RN(rst), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n21), .CK(clk), .RN(rst), .Q(bit_cnt[0]) );
  DFFRX1M \bit_cnt_reg[2]  ( .D(n19), .CK(clk), .RN(rst), .Q(bit_cnt[2]), .QN(
        n8) );
  NAND2BX2M U3 ( .AN(N11), .B(cnt_enable), .Y(n12) );
  NAND2X2M U4 ( .A(cnt_enable), .B(N11), .Y(n15) );
  NOR2BX2M U5 ( .AN(N20), .B(n12), .Y(N31) );
  NOR2BX2M U6 ( .AN(N21), .B(n12), .Y(N32) );
  NOR2BX2M U7 ( .AN(N22), .B(n12), .Y(N33) );
  NOR2BX2M U8 ( .AN(N23), .B(n12), .Y(N34) );
  OAI32X1M U9 ( .A0(n15), .A1(bit_cnt[1]), .A2(n29), .B0(n27), .B1(n30), .Y(
        n20) );
  INVX2M U10 ( .A(n17), .Y(n27) );
  OAI32X1M U11 ( .A0(n14), .A1(n30), .A2(n15), .B0(n16), .B1(n8), .Y(n19) );
  NAND2X2M U12 ( .A(bit_cnt[0]), .B(n8), .Y(n14) );
  AOI2BB1X2M U13 ( .A0N(n15), .A1N(bit_cnt[1]), .B0(n17), .Y(n16) );
  OAI21X2M U14 ( .A0(bit_cnt[0]), .A1(n15), .B0(n12), .Y(n17) );
  OAI2B2X1M U15 ( .A1N(cnt_enable), .A0(n11), .B0(n31), .B1(n12), .Y(n18) );
  AOI32XLM U16 ( .A0(n13), .A1(n31), .A2(N11), .B0(bit_cnt[3]), .B1(n28), .Y(
        n11) );
  INVX2M U17 ( .A(bit_cnt[3]), .Y(n31) );
  INVX2M U18 ( .A(n13), .Y(n28) );
  OAI22X1M U19 ( .A0(n29), .A1(n12), .B0(bit_cnt[0]), .B1(n15), .Y(n21) );
  NOR2X2M U20 ( .A(n1), .B(n12), .Y(N35) );
  XNOR2X2M U21 ( .A(\add_27/carry[5] ), .B(edge_cnt[5]), .Y(n1) );
  NOR2X2M U22 ( .A(edge_cnt[0]), .B(n12), .Y(N30) );
  NOR3X2M U23 ( .A(n30), .B(n29), .C(n8), .Y(n13) );
  INVX2M U24 ( .A(bit_cnt[0]), .Y(n29) );
  INVX2M U25 ( .A(bit_cnt[1]), .Y(n30) );
  ADDHX1M U26 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_27/carry[2] ), .S(
        N20) );
  ADDHX1M U27 ( .A(edge_cnt[2]), .B(\add_27/carry[2] ), .CO(\add_27/carry[3] ), 
        .S(N21) );
  ADDHX1M U28 ( .A(edge_cnt[3]), .B(\add_27/carry[3] ), .CO(\add_27/carry[4] ), 
        .S(N22) );
  ADDHX1M U29 ( .A(edge_cnt[4]), .B(\add_27/carry[4] ), .CO(\add_27/carry[5] ), 
        .S(N23) );
  OR2X2M U30 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  CLKINVX1M U31 ( .A(prescale[0]), .Y(N4) );
  OAI2BB1X1M U32 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N5) );
  OR2X1M U33 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U34 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N6) );
  OR2X1M U35 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U36 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N7) );
  OR2X1M U37 ( .A(n4), .B(prescale[4]), .Y(n5) );
  OAI2BB1X1M U38 ( .A0N(n4), .A1N(prescale[4]), .B0(n5), .Y(N8) );
  NOR2X1M U39 ( .A(n5), .B(prescale[5]), .Y(N10) );
  AO21XLM U40 ( .A0(n5), .A1(prescale[5]), .B0(N10), .Y(N9) );
  NOR2BX1M U41 ( .AN(N4), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U42 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N5), .B1(n6), .Y(n22) );
  XNOR2X1M U43 ( .A(N9), .B(edge_cnt[5]), .Y(n10) );
  NOR2BX1M U44 ( .AN(edge_cnt[0]), .B(N4), .Y(n7) );
  OAI2B2X1M U45 ( .A1N(N5), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n9) );
  NAND4BX1M U46 ( .AN(N10), .B(n22), .C(n10), .D(n9), .Y(n26) );
  CLKXOR2X2M U47 ( .A(N8), .B(edge_cnt[4]), .Y(n25) );
  CLKXOR2X2M U48 ( .A(N6), .B(edge_cnt[2]), .Y(n24) );
  CLKXOR2X2M U49 ( .A(N7), .B(edge_cnt[3]), .Y(n23) );
  NOR4X1M U50 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(N11) );
endmodule


module deserializer_DATA_WIDTH8_bit_cnt_width4 ( clk, rst, deser_en, 
        sampled_bit, bit_cnt, P_DATA );
  input [3:0] bit_cnt;
  output [7:0] P_DATA;
  input clk, rst, deser_en, sampled_bit;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n1, n2, n3;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n27), .CK(clk), .RN(rst), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n23), .CK(clk), .RN(rst), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n26), .CK(clk), .RN(rst), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n22), .CK(clk), .RN(rst), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n29), .CK(clk), .RN(rst), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n25), .CK(clk), .RN(rst), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n28), .CK(clk), .RN(rst), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n24), .CK(clk), .RN(rst), .Q(P_DATA[2]) );
  AND2X2M U3 ( .A(n19), .B(deser_en), .Y(n12) );
  NOR3X2M U4 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n21) );
  XNOR2X2M U5 ( .A(n21), .B(bit_cnt[3]), .Y(n19) );
  OAI2BB2X1M U6 ( .B0(n3), .B1(n16), .A0N(P_DATA[4]), .A1N(n16), .Y(n26) );
  NAND3X2M U7 ( .A(bit_cnt[0]), .B(n2), .C(n15), .Y(n16) );
  OAI2BB2X1M U8 ( .B0(n3), .B1(n17), .A0N(P_DATA[5]), .A1N(n17), .Y(n27) );
  NAND3X2M U9 ( .A(bit_cnt[1]), .B(n1), .C(n15), .Y(n17) );
  OAI2BB2X1M U10 ( .B0(n3), .B1(n18), .A0N(P_DATA[6]), .A1N(n18), .Y(n28) );
  NAND3X2M U11 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(n15), .Y(n18) );
  AND2X2M U12 ( .A(bit_cnt[2]), .B(n12), .Y(n15) );
  OAI2BB2X1M U13 ( .B0(n3), .B1(n14), .A0N(P_DATA[3]), .A1N(n14), .Y(n25) );
  NAND3X2M U14 ( .A(n1), .B(n2), .C(n15), .Y(n14) );
  NOR2X2M U15 ( .A(n2), .B(bit_cnt[2]), .Y(n9) );
  INVX2M U16 ( .A(bit_cnt[0]), .Y(n1) );
  OAI2BB2X1M U17 ( .B0(n8), .B1(n3), .A0N(P_DATA[0]), .A1N(n8), .Y(n22) );
  NAND4BX1M U18 ( .AN(n9), .B(deser_en), .C(bit_cnt[0]), .D(n10), .Y(n8) );
  NOR2X2M U19 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .Y(n10) );
  INVX2M U20 ( .A(bit_cnt[1]), .Y(n2) );
  OAI2BB2X1M U21 ( .B0(n3), .B1(n11), .A0N(P_DATA[1]), .A1N(n11), .Y(n23) );
  NAND3X2M U22 ( .A(n9), .B(n1), .C(n12), .Y(n11) );
  OAI2BB2X1M U23 ( .B0(n3), .B1(n13), .A0N(P_DATA[2]), .A1N(n13), .Y(n24) );
  NAND3X2M U24 ( .A(n9), .B(bit_cnt[0]), .C(n12), .Y(n13) );
  OAI2BB2X1M U25 ( .B0(n3), .B1(n20), .A0N(P_DATA[7]), .A1N(n20), .Y(n29) );
  NAND3X2M U26 ( .A(n21), .B(deser_en), .C(n19), .Y(n20) );
  INVX2M U27 ( .A(sampled_bit), .Y(n3) );
endmodule


module parity_check_DATA_WIDTH8 ( clk, rst, P_DATA, par_chk_en, sampled_bit, 
        PAR_TYP, par_err );
  input [7:0] P_DATA;
  input clk, rst, par_chk_en, sampled_bit, PAR_TYP;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(clk), .RN(rst), .Q(par_err) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  INVX2M U7 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XNOR2X2M U9 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
endmodule


module stop_check ( clk, rst, stp_chk_en, sampled_bit, stp_err );
  input clk, rst, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(clk), .RN(rst), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module start_check ( clk, rst, RX_IN, strt_chk_en, strt_glitch );
  input clk, rst, RX_IN, strt_chk_en;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(clk), .RN(rst), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(RX_IN), .Y(N4) );
endmodule


module UART_RX_FSM_DATA_WIDTH8_bit_cnt_width4 ( clk, rst, RX_IN, PAR_EN, 
        par_err, stp_err, strt_glitch, bit_cnt, dat_samp_en, cnt_enable, 
        deser_en, par_chk_en, stp_chk_en, strt_chk_en, data_valid );
  input [3:0] bit_cnt;
  input clk, rst, RX_IN, PAR_EN, par_err, stp_err, strt_glitch;
  output dat_samp_en, cnt_enable, deser_en, par_chk_en, stp_chk_en,
         strt_chk_en, data_valid;
  wire   N46, N51, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n1, n2, n3, n4, n6, n7, n8, n9,
         n10, n11;
  wire   [2:0] current_state;
  assign N46 = PAR_EN;

  DFFRQX2M \current_state_reg[1]  ( .D(n31), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n30), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n32), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  INVX2M U3 ( .A(N51), .Y(n10) );
  OAI221X1M U4 ( .A0(RX_IN), .A1(n24), .B0(n4), .B1(n6), .C0(n21), .Y(n32) );
  AOI32X1M U5 ( .A0(n9), .A1(n8), .A2(n6), .B0(stp_chk_en), .B1(N51), .Y(n24)
         );
  INVX2M U6 ( .A(n19), .Y(n4) );
  OAI211X2M U7 ( .A0(N51), .A1(n28), .B0(n27), .C0(n23), .Y(cnt_enable) );
  AOI22X1M U8 ( .A0(n10), .A1(stp_chk_en), .B0(n7), .B1(n26), .Y(n22) );
  OAI2BB1X2M U9 ( .A0N(n15), .A1N(deser_en), .B0(n22), .Y(n19) );
  OAI21X2M U10 ( .A0(n20), .A1(n9), .B0(n21), .Y(n31) );
  AND2X2M U11 ( .A(n22), .B(n23), .Y(n20) );
  NOR2X2M U12 ( .A(par_chk_en), .B(deser_en), .Y(n23) );
  INVX2M U13 ( .A(n16), .Y(deser_en) );
  INVX2M U14 ( .A(n28), .Y(stp_chk_en) );
  INVX2M U15 ( .A(n27), .Y(n7) );
  AND3X2M U16 ( .A(n1), .B(n2), .C(bit_cnt[1]), .Y(N51) );
  XNOR2X2M U17 ( .A(N46), .B(bit_cnt[0]), .Y(n1) );
  AND2X2M U18 ( .A(n3), .B(bit_cnt[3]), .Y(n2) );
  NOR4X1M U19 ( .A(stp_err), .B(par_err), .C(n10), .D(n28), .Y(data_valid) );
  NOR3X2M U20 ( .A(n14), .B(current_state[0]), .C(RX_IN), .Y(strt_chk_en) );
  AOI32XLM U21 ( .A0(current_state[1]), .A1(N51), .A2(current_state[2]), .B0(
        n9), .B1(n8), .Y(n14) );
  OAI31X1M U22 ( .A0(n15), .A1(N46), .A2(n16), .B0(n17), .Y(n30) );
  AOI32X1M U23 ( .A0(par_chk_en), .A1(bit_cnt[3]), .A2(n18), .B0(
        current_state[2]), .B1(n19), .Y(n17) );
  NOR3BX2M U24 ( .AN(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n18) );
  INVX2M U25 ( .A(bit_cnt[2]), .Y(n3) );
  NOR3BX2M U26 ( .AN(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n25) );
  OAI211X2M U27 ( .A0(n29), .A1(n27), .B0(n28), .C0(n23), .Y(dat_samp_en) );
  NOR2X2M U28 ( .A(n26), .B(strt_glitch), .Y(n29) );
  AOI21X2M U29 ( .A0(n11), .A1(n25), .B0(strt_glitch), .Y(n26) );
  NAND2X2M U30 ( .A(n25), .B(bit_cnt[3]), .Y(n15) );
  NOR3X2M U31 ( .A(current_state[0]), .B(current_state[2]), .C(n9), .Y(
        par_chk_en) );
  NAND4BX1M U32 ( .AN(strt_glitch), .B(n7), .C(n25), .D(n11), .Y(n21) );
  NAND3X2M U33 ( .A(current_state[1]), .B(n6), .C(current_state[2]), .Y(n28)
         );
  NAND3X2M U34 ( .A(current_state[1]), .B(n8), .C(current_state[0]), .Y(n16)
         );
  NAND3X2M U35 ( .A(n9), .B(n8), .C(current_state[0]), .Y(n27) );
  INVX2M U36 ( .A(current_state[1]), .Y(n9) );
  INVX2M U37 ( .A(current_state[2]), .Y(n8) );
  INVX2M U38 ( .A(current_state[0]), .Y(n6) );
  INVX2M U39 ( .A(bit_cnt[3]), .Y(n11) );
endmodule


module UART_RX_prescale_width6_DATA_WIDTH8 ( clk, rst, RX_IN, PAR_TYP, PAR_EN, 
        prescale, P_DATA, data_valid, stp_err, par_err );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input clk, rst, RX_IN, PAR_TYP, PAR_EN;
  output data_valid, stp_err, par_err;
  wire   dat_samp_en, sampled_bit, cnt_enable, deser_en, par_chk_en,
         stp_chk_en, strt_chk_en, strt_glitch, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  data_sampling_prescale_width6 data_sampling_unit ( .clk(clk), .rst(n1), 
        .RX_IN(RX_IN), .dat_samp_en(dat_samp_en), .prescale(prescale), 
        .edge_cnt(edge_cnt), .sampled_bit(sampled_bit) );
  edge_bit_counter_prescale_width6_bit_cnt_width4 edge_bit_counter_unit ( 
        .cnt_enable(cnt_enable), .clk(clk), .rst(n1), .prescale(prescale), 
        .bit_cnt(bit_cnt), .edge_cnt(edge_cnt) );
  deserializer_DATA_WIDTH8_bit_cnt_width4 deserialize_unit ( .clk(clk), .rst(
        n1), .deser_en(deser_en), .sampled_bit(sampled_bit), .bit_cnt(bit_cnt), 
        .P_DATA(P_DATA) );
  parity_check_DATA_WIDTH8 parity_check_unit ( .clk(clk), .rst(n1), .P_DATA(
        P_DATA), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), .PAR_TYP(
        PAR_TYP), .par_err(par_err) );
  stop_check stop_check_unit ( .clk(clk), .rst(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(stp_err) );
  start_check start_check_unit ( .clk(clk), .rst(n1), .RX_IN(RX_IN), 
        .strt_chk_en(strt_chk_en), .strt_glitch(strt_glitch) );
  UART_RX_FSM_DATA_WIDTH8_bit_cnt_width4 UART_RX_FSM_unit ( .clk(clk), .rst(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), .par_err(par_err), .stp_err(stp_err), 
        .strt_glitch(strt_glitch), .bit_cnt(bit_cnt), .dat_samp_en(dat_samp_en), .cnt_enable(cnt_enable), .deser_en(deser_en), .par_chk_en(par_chk_en), 
        .stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), .data_valid(
        data_valid) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst), .Y(n2) );
endmodule


module UART_IN_width8_DATA_WIDTH8 ( TX_CLK, RST, TX_IN_P, TX_IN_V, TX_OUT_S, 
        TX_OUT_V, PAR_EN, PAR_TYP, RX_CLK, RX_IN_S, prescale, RX_OUT_P, 
        RX_OUT_V, stp_err, par_err );
  input [7:0] TX_IN_P;
  input [5:0] prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, RST, TX_IN_V, PAR_EN, PAR_TYP, RX_CLK, RX_IN_S;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, stp_err, par_err;
  wire   n1, n2;

  UART_TX_IN_width8 UART_TX_U0 ( .p_data(TX_IN_P), .clk(TX_CLK), .rst(n1), 
        .data_valid(TX_IN_V), .par_en(PAR_EN), .par_typ(PAR_TYP), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V) );
  UART_RX_prescale_width6_DATA_WIDTH8 UART_RX_U0 ( .clk(RX_CLK), .rst(n1), 
        .RX_IN(RX_IN_S), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .prescale(
        prescale), .P_DATA(RX_OUT_P), .data_valid(RX_OUT_V), .stp_err(stp_err), 
        .par_err(par_err) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module CLKDIV_MUX_DATA_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NOR3X2M U11 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U12 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND4BX1M U13 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U14 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR4X1M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[1]), .Y(n16) );
  INVX2M U22 ( .A(IN[0]), .Y(n17) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
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


module Clock_Divider_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N3, div_clk_reg, flag, N7, N9, N10, N11, N12, N13, N14, N15, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N33, N34, N35, N36, N37, N38,
         N39, N40, N42, N43, N44, N45, N46, N47, N48, N49, n17, n18, n19, n20,
         n21, n22, n23, n24, \sub_19/carry[7] , \sub_19/carry[6] ,
         \sub_19/carry[5] , \sub_19/carry[4] , \sub_19/carry[3] ,
         \sub_19/carry[2] , \sub_19/carry[1] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [7:0] half_togg_p1;
  wire   [7:0] counter;

  Clock_Divider_0_DW01_inc_0 add_34 ( .A(counter), .SUM({N40, N39, N38, N37, 
        N36, N35, N34, N33}) );
  DFFRQX2M div_clk_reg_reg ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M flag_reg ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk_reg), .S0(n53), .Y(o_div_clk) );
  NAND3X2M U4 ( .A(n18), .B(n20), .C(n53), .Y(n21) );
  NOR2BX2M U5 ( .AN(N34), .B(n21), .Y(N43) );
  NOR2BX2M U6 ( .AN(N35), .B(n21), .Y(N44) );
  NOR2BX2M U7 ( .AN(N36), .B(n21), .Y(N45) );
  NOR2BX2M U8 ( .AN(N37), .B(n21), .Y(N46) );
  NOR2BX2M U9 ( .AN(N38), .B(n21), .Y(N47) );
  NOR2BX2M U10 ( .AN(N39), .B(n21), .Y(N48) );
  OR2X2M U11 ( .A(half_togg_p1[1]), .B(half_togg_p1[0]), .Y(n13) );
  INVX2M U12 ( .A(n17), .Y(n53) );
  OAI32X1M U13 ( .A0(n17), .A1(n52), .A2(n54), .B0(flag), .B1(n18), .Y(n23) );
  INVX2M U14 ( .A(n18), .Y(n52) );
  NAND3BX2M U15 ( .AN(i_div_ratio[0]), .B(N15), .C(n53), .Y(n20) );
  NAND3X2M U16 ( .A(n53), .B(n22), .C(i_div_ratio[0]), .Y(n18) );
  AO22X1M U17 ( .A0(N15), .A1(flag), .B0(N27), .B1(n54), .Y(n22) );
  NOR2BX2M U18 ( .AN(N40), .B(n21), .Y(N49) );
  NOR2BX2M U19 ( .AN(N33), .B(n21), .Y(N42) );
  CLKXOR2X2M U20 ( .A(n19), .B(div_clk_reg), .Y(n24) );
  NAND2X2M U21 ( .A(n20), .B(n18), .Y(n19) );
  INVX2M U22 ( .A(flag), .Y(n54) );
  INVX2M U23 ( .A(counter[0]), .Y(n38) );
  NAND2X2M U24 ( .A(i_clk_en), .B(N3), .Y(n17) );
  OR2X2M U25 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  ADDFX2M U26 ( .A(i_div_ratio[1]), .B(n7), .CI(\sub_19/carry[1] ), .CO(
        \sub_19/carry[2] ), .S(half_togg_p1[1]) );
  INVX2M U27 ( .A(i_div_ratio[2]), .Y(n7) );
  ADDFX2M U28 ( .A(i_div_ratio[2]), .B(n8), .CI(\sub_19/carry[2] ), .CO(
        \sub_19/carry[3] ), .S(half_togg_p1[2]) );
  INVX2M U29 ( .A(i_div_ratio[3]), .Y(n8) );
  ADDFX2M U30 ( .A(i_div_ratio[3]), .B(n9), .CI(\sub_19/carry[3] ), .CO(
        \sub_19/carry[4] ), .S(half_togg_p1[3]) );
  INVX2M U31 ( .A(i_div_ratio[4]), .Y(n9) );
  ADDFX2M U32 ( .A(i_div_ratio[4]), .B(n10), .CI(\sub_19/carry[4] ), .CO(
        \sub_19/carry[5] ), .S(half_togg_p1[4]) );
  INVX2M U33 ( .A(i_div_ratio[5]), .Y(n10) );
  ADDFX2M U34 ( .A(i_div_ratio[5]), .B(n11), .CI(\sub_19/carry[5] ), .CO(
        \sub_19/carry[6] ), .S(half_togg_p1[5]) );
  INVX2M U35 ( .A(i_div_ratio[6]), .Y(n11) );
  ADDFX2M U36 ( .A(i_div_ratio[6]), .B(n12), .CI(\sub_19/carry[6] ), .CO(
        \sub_19/carry[7] ), .S(half_togg_p1[6]) );
  INVX2M U37 ( .A(i_div_ratio[7]), .Y(n12) );
  AOI21BX2M U38 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  XNOR2X1M U39 ( .A(i_div_ratio[7]), .B(\sub_19/carry[7] ), .Y(half_togg_p1[7]) );
  OR2X1M U40 ( .A(N7), .B(i_div_ratio[0]), .Y(\sub_19/carry[1] ) );
  XNOR2X1M U41 ( .A(i_div_ratio[0]), .B(N7), .Y(half_togg_p1[0]) );
  CLKINVX1M U42 ( .A(i_div_ratio[1]), .Y(N7) );
  OR2X1M U43 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U45 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U47 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U48 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U50 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U51 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U52 ( .AN(N14), .B(n6), .Y(N13) );
  CLKINVX1M U53 ( .A(half_togg_p1[0]), .Y(N18) );
  OAI2BB1X1M U54 ( .A0N(half_togg_p1[0]), .A1N(half_togg_p1[1]), .B0(n13), .Y(
        N19) );
  OR2X1M U55 ( .A(n13), .B(half_togg_p1[2]), .Y(n14) );
  OAI2BB1X1M U56 ( .A0N(n13), .A1N(half_togg_p1[2]), .B0(n14), .Y(N20) );
  OR2X1M U57 ( .A(n14), .B(half_togg_p1[3]), .Y(n15) );
  OAI2BB1X1M U58 ( .A0N(n14), .A1N(half_togg_p1[3]), .B0(n15), .Y(N21) );
  OR2X1M U59 ( .A(n15), .B(half_togg_p1[4]), .Y(n16) );
  OAI2BB1X1M U60 ( .A0N(n15), .A1N(half_togg_p1[4]), .B0(n16), .Y(N22) );
  OR2X1M U61 ( .A(n16), .B(half_togg_p1[5]), .Y(n25) );
  OAI2BB1X1M U62 ( .A0N(n16), .A1N(half_togg_p1[5]), .B0(n25), .Y(N23) );
  OR2X1M U63 ( .A(n25), .B(half_togg_p1[6]), .Y(n26) );
  OAI2BB1X1M U64 ( .A0N(n25), .A1N(half_togg_p1[6]), .B0(n26), .Y(N24) );
  NOR2X1M U65 ( .A(n26), .B(half_togg_p1[7]), .Y(N26) );
  AO21XLM U66 ( .A0(n26), .A1(half_togg_p1[7]), .B0(N26), .Y(N25) );
  XNOR2X1M U67 ( .A(N9), .B(counter[2]), .Y(n37) );
  NOR2X1M U68 ( .A(n38), .B(N7), .Y(n27) );
  OAI22X1M U69 ( .A0(counter[1]), .A1(n27), .B0(n27), .B1(n1), .Y(n36) );
  CLKNAND2X2M U70 ( .A(N7), .B(n38), .Y(n28) );
  AOI22X1M U71 ( .A0(n28), .A1(n1), .B0(n28), .B1(counter[1]), .Y(n29) );
  NOR3X1M U72 ( .A(n29), .B(N14), .C(counter[7]), .Y(n35) );
  CLKXOR2X2M U73 ( .A(N10), .B(counter[3]), .Y(n33) );
  CLKXOR2X2M U74 ( .A(N11), .B(counter[4]), .Y(n32) );
  CLKXOR2X2M U75 ( .A(N12), .B(counter[5]), .Y(n31) );
  CLKXOR2X2M U76 ( .A(N13), .B(counter[6]), .Y(n30) );
  NOR4X1M U77 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n34) );
  AND4X1M U78 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N15) );
  OR4X1M U79 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n39) );
  OR4X1M U80 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n39), .Y(N3) );
  XNOR2X1M U81 ( .A(N24), .B(counter[6]), .Y(n43) );
  XNOR2X1M U82 ( .A(N23), .B(counter[5]), .Y(n42) );
  XNOR2X1M U83 ( .A(N22), .B(counter[4]), .Y(n41) );
  XNOR2X1M U84 ( .A(N21), .B(counter[3]), .Y(n40) );
  NAND4X1M U85 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(n51) );
  NOR2BX1M U86 ( .AN(N18), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U87 ( .A1N(counter[1]), .A0(n44), .B0(N19), .B1(n44), .Y(n47) );
  NOR2BX1M U88 ( .AN(counter[0]), .B(N18), .Y(n45) );
  OAI2B2X1M U89 ( .A1N(N19), .A0(n45), .B0(counter[1]), .B1(n45), .Y(n46) );
  NAND3BX1M U90 ( .AN(N26), .B(n47), .C(n46), .Y(n50) );
  CLKXOR2X2M U91 ( .A(N25), .B(counter[7]), .Y(n49) );
  CLKXOR2X2M U92 ( .A(N20), .B(counter[2]), .Y(n48) );
  NOR4X1M U93 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(N27) );
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


module Clock_Divider_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk
 );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N3, div_clk_reg, flag, N7, N9, N10, N11, N12, N13, N14, N15, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N33, N34, N35, N36, N37, N38,
         N39, N40, N42, N43, N44, N45, N46, N47, N48, N49, \sub_19/carry[7] ,
         \sub_19/carry[6] , \sub_19/carry[5] , \sub_19/carry[4] ,
         \sub_19/carry[3] , \sub_19/carry[2] , \sub_19/carry[1] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62;
  wire   [7:0] half_togg_p1;
  wire   [7:0] counter;

  Clock_Divider_1_DW01_inc_0 add_34 ( .A(counter), .SUM({N40, N39, N38, N37, 
        N36, N35, N34, N33}) );
  DFFRQX2M div_clk_reg_reg ( .D(n55), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N49), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M flag_reg ( .D(n56), .CK(i_ref_clk), .RN(i_rst_n), .Q(flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[6]  ( .D(N48), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[5]  ( .D(N47), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(N46), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(N45), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(N44), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  OR2X2M U3 ( .A(half_togg_p1[1]), .B(half_togg_p1[0]), .Y(n13) );
  MX2X2M U4 ( .A(i_ref_clk), .B(div_clk_reg), .S0(n54), .Y(o_div_clk) );
  NAND3X2M U5 ( .A(n61), .B(n59), .C(n54), .Y(n58) );
  NAND3BX2M U6 ( .AN(i_div_ratio[0]), .B(N15), .C(n54), .Y(n59) );
  NOR2BX2M U7 ( .AN(N34), .B(n58), .Y(N43) );
  NOR2BX2M U8 ( .AN(N35), .B(n58), .Y(N44) );
  NOR2BX2M U9 ( .AN(N36), .B(n58), .Y(N45) );
  NOR2BX2M U10 ( .AN(N37), .B(n58), .Y(N46) );
  NOR2BX2M U11 ( .AN(N38), .B(n58), .Y(N47) );
  NOR2BX2M U12 ( .AN(N39), .B(n58), .Y(N48) );
  OR2X2M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  ADDFX2M U14 ( .A(i_div_ratio[1]), .B(n12), .CI(\sub_19/carry[1] ), .CO(
        \sub_19/carry[2] ), .S(half_togg_p1[1]) );
  INVX2M U15 ( .A(i_div_ratio[2]), .Y(n12) );
  ADDFX2M U16 ( .A(i_div_ratio[2]), .B(n11), .CI(\sub_19/carry[2] ), .CO(
        \sub_19/carry[3] ), .S(half_togg_p1[2]) );
  INVX2M U17 ( .A(i_div_ratio[3]), .Y(n11) );
  INVX2M U18 ( .A(n62), .Y(n54) );
  AOI21BX2M U19 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  OAI32X1M U20 ( .A0(n62), .A1(n52), .A2(n53), .B0(flag), .B1(n61), .Y(n56) );
  INVX2M U21 ( .A(n61), .Y(n52) );
  NAND3X2M U22 ( .A(n54), .B(n57), .C(i_div_ratio[0]), .Y(n61) );
  AO22X1M U23 ( .A0(N15), .A1(flag), .B0(N27), .B1(n53), .Y(n57) );
  NOR2BX2M U24 ( .AN(N40), .B(n58), .Y(N49) );
  NOR2BX2M U25 ( .AN(N33), .B(n58), .Y(N42) );
  INVX2M U26 ( .A(flag), .Y(n53) );
  CLKXOR2X2M U27 ( .A(n60), .B(div_clk_reg), .Y(n55) );
  NAND2X2M U28 ( .A(n59), .B(n61), .Y(n60) );
  INVX2M U29 ( .A(counter[0]), .Y(n38) );
  NAND2X2M U30 ( .A(i_clk_en), .B(N3), .Y(n62) );
  ADDFX2M U31 ( .A(i_div_ratio[3]), .B(n10), .CI(\sub_19/carry[3] ), .CO(
        \sub_19/carry[4] ), .S(half_togg_p1[3]) );
  INVX2M U32 ( .A(i_div_ratio[4]), .Y(n10) );
  ADDFX2M U33 ( .A(i_div_ratio[4]), .B(n9), .CI(\sub_19/carry[4] ), .CO(
        \sub_19/carry[5] ), .S(half_togg_p1[4]) );
  INVX2M U34 ( .A(i_div_ratio[5]), .Y(n9) );
  ADDFX2M U35 ( .A(i_div_ratio[5]), .B(n8), .CI(\sub_19/carry[5] ), .CO(
        \sub_19/carry[6] ), .S(half_togg_p1[5]) );
  INVX2M U36 ( .A(i_div_ratio[6]), .Y(n8) );
  ADDFX2M U37 ( .A(i_div_ratio[6]), .B(n7), .CI(\sub_19/carry[6] ), .CO(
        \sub_19/carry[7] ), .S(half_togg_p1[6]) );
  INVX2M U38 ( .A(i_div_ratio[7]), .Y(n7) );
  XNOR2X1M U39 ( .A(i_div_ratio[7]), .B(\sub_19/carry[7] ), .Y(half_togg_p1[7]) );
  OR2X1M U40 ( .A(N7), .B(i_div_ratio[0]), .Y(\sub_19/carry[1] ) );
  XNOR2X1M U41 ( .A(i_div_ratio[0]), .B(N7), .Y(half_togg_p1[0]) );
  CLKINVX1M U42 ( .A(i_div_ratio[1]), .Y(N7) );
  OR2X1M U43 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U45 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U47 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U48 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U49 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U50 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U51 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U52 ( .AN(N14), .B(n6), .Y(N13) );
  CLKINVX1M U53 ( .A(half_togg_p1[0]), .Y(N18) );
  OAI2BB1X1M U54 ( .A0N(half_togg_p1[0]), .A1N(half_togg_p1[1]), .B0(n13), .Y(
        N19) );
  OR2X1M U55 ( .A(n13), .B(half_togg_p1[2]), .Y(n14) );
  OAI2BB1X1M U56 ( .A0N(n13), .A1N(half_togg_p1[2]), .B0(n14), .Y(N20) );
  OR2X1M U57 ( .A(n14), .B(half_togg_p1[3]), .Y(n15) );
  OAI2BB1X1M U58 ( .A0N(n14), .A1N(half_togg_p1[3]), .B0(n15), .Y(N21) );
  OR2X1M U59 ( .A(n15), .B(half_togg_p1[4]), .Y(n16) );
  OAI2BB1X1M U60 ( .A0N(n15), .A1N(half_togg_p1[4]), .B0(n16), .Y(N22) );
  OR2X1M U61 ( .A(n16), .B(half_togg_p1[5]), .Y(n25) );
  OAI2BB1X1M U62 ( .A0N(n16), .A1N(half_togg_p1[5]), .B0(n25), .Y(N23) );
  OR2X1M U63 ( .A(n25), .B(half_togg_p1[6]), .Y(n26) );
  OAI2BB1X1M U64 ( .A0N(n25), .A1N(half_togg_p1[6]), .B0(n26), .Y(N24) );
  NOR2X1M U65 ( .A(n26), .B(half_togg_p1[7]), .Y(N26) );
  AO21XLM U66 ( .A0(n26), .A1(half_togg_p1[7]), .B0(N26), .Y(N25) );
  XNOR2X1M U67 ( .A(N9), .B(counter[2]), .Y(n37) );
  NOR2X1M U68 ( .A(n38), .B(N7), .Y(n27) );
  OAI22X1M U69 ( .A0(counter[1]), .A1(n27), .B0(n27), .B1(n1), .Y(n36) );
  CLKNAND2X2M U70 ( .A(N7), .B(n38), .Y(n28) );
  AOI22X1M U71 ( .A0(n28), .A1(n1), .B0(n28), .B1(counter[1]), .Y(n29) );
  NOR3X1M U72 ( .A(n29), .B(N14), .C(counter[7]), .Y(n35) );
  CLKXOR2X2M U73 ( .A(N10), .B(counter[3]), .Y(n33) );
  CLKXOR2X2M U74 ( .A(N11), .B(counter[4]), .Y(n32) );
  CLKXOR2X2M U75 ( .A(N12), .B(counter[5]), .Y(n31) );
  CLKXOR2X2M U76 ( .A(N13), .B(counter[6]), .Y(n30) );
  NOR4X1M U77 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(n34) );
  AND4X1M U78 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(N15) );
  OR4X1M U79 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[7]), .D(
        i_div_ratio[6]), .Y(n39) );
  OR4X1M U80 ( .A(i_div_ratio[3]), .B(i_div_ratio[2]), .C(i_div_ratio[1]), .D(
        n39), .Y(N3) );
  XNOR2X1M U81 ( .A(N24), .B(counter[6]), .Y(n43) );
  XNOR2X1M U82 ( .A(N23), .B(counter[5]), .Y(n42) );
  XNOR2X1M U83 ( .A(N22), .B(counter[4]), .Y(n41) );
  XNOR2X1M U84 ( .A(N21), .B(counter[3]), .Y(n40) );
  NAND4X1M U85 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(n51) );
  NOR2BX1M U86 ( .AN(N18), .B(counter[0]), .Y(n44) );
  OAI2B2X1M U87 ( .A1N(counter[1]), .A0(n44), .B0(N19), .B1(n44), .Y(n47) );
  NOR2BX1M U88 ( .AN(counter[0]), .B(N18), .Y(n45) );
  OAI2B2X1M U89 ( .A1N(N19), .A0(n45), .B0(counter[1]), .B1(n45), .Y(n46) );
  NAND3BX1M U90 ( .AN(N26), .B(n47), .C(n46), .Y(n50) );
  CLKXOR2X2M U91 ( .A(N25), .B(counter[7]), .Y(n49) );
  CLKXOR2X2M U92 ( .A(N20), .B(counter[2]), .Y(n48) );
  NOR4X1M U93 ( .A(n51), .B(n50), .C(n49), .D(n48), .Y(N27) );
endmodule


module RST_SYNC_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \reg_sync[0] ;

  DFFRQX2M \reg_sync_reg[1]  ( .D(\reg_sync[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \reg_sync_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\reg_sync[0] )
         );
endmodule


module RST_SYNC_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \reg_sync[0] ;

  DFFRQX2M \reg_sync_reg[1]  ( .D(\reg_sync[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \reg_sync_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\reg_sync[0] )
         );
endmodule


module DATA_SYNC_BUS_WIDTH8 ( CLK, RST, bus_enable, unsync_bus, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] reg_sync;

  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M enable_flop_reg ( .D(reg_sync[1]), .CK(CLK), .RN(RST), .Q(
        enable_flop) );
  DFFRQX2M \reg_sync_reg[1]  ( .D(reg_sync[0]), .CK(CLK), .RN(RST), .Q(
        reg_sync[1]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \reg_sync_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        reg_sync[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(reg_sync[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module SYS_CTRL_WIDTH8_ADDR4 ( CLK, RST, RX_P_DATA, RX_D_VLD, ALU_OUT, 
        OUT_Valid, ALU_FUN, EN, WrEn, RdEn, address, WrData, RdData, 
        RdData_Valid, WR_DATA, Winc, FIFO_Full, CLK_EN, clk_div_en );
  input [7:0] RX_P_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  output [3:0] address;
  output [7:0] WrData;
  input [7:0] RdData;
  output [7:0] WR_DATA;
  input CLK, RST, RX_D_VLD, OUT_Valid, RdData_Valid, FIFO_Full;
  output EN, WrEn, RdEn, Winc, CLK_EN, clk_div_en;
  wire   \store_frames[0][6] , \store_frames[0][5] , \store_frames[0][4] ,
         \store_frames[0][2] , \store_frames[0][1] , \store_frames[0][0] , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n23, n30, n46, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n25, n26, n27, n28, n29,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n157,
         n158, n159;
  wire   [2:0] current_state;
  wire   [2:0] frame_cnt;

  DFFRX1M \store_frames_reg[2][7]  ( .D(n127), .CK(CLK), .RN(RST), .QN(n5) );
  DFFRX1M \store_frames_reg[2][6]  ( .D(n128), .CK(CLK), .RN(RST), .QN(n6) );
  DFFRX1M \store_frames_reg[2][5]  ( .D(n129), .CK(CLK), .RN(RST), .QN(n7) );
  DFFRX1M \store_frames_reg[2][4]  ( .D(n130), .CK(CLK), .RN(RST), .QN(n8) );
  DFFRX1M \store_frames_reg[2][3]  ( .D(n131), .CK(CLK), .RN(RST), .QN(n9) );
  DFFRX1M \store_frames_reg[2][2]  ( .D(n132), .CK(CLK), .RN(RST), .QN(n10) );
  DFFRX1M \store_frames_reg[2][1]  ( .D(n133), .CK(CLK), .RN(RST), .QN(n11) );
  DFFRX1M \store_frames_reg[2][0]  ( .D(n134), .CK(CLK), .RN(RST), .QN(n12) );
  DFFRX1M \store_frames_reg[1][7]  ( .D(n135), .CK(CLK), .RN(RST), .QN(n13) );
  DFFRX1M \store_frames_reg[1][6]  ( .D(n136), .CK(CLK), .RN(RST), .QN(n14) );
  DFFRX1M \store_frames_reg[1][5]  ( .D(n137), .CK(CLK), .RN(RST), .QN(n15) );
  DFFRX1M \store_frames_reg[1][4]  ( .D(n138), .CK(CLK), .RN(RST), .QN(n16) );
  DFFRX1M \store_frames_reg[3][3]  ( .D(n123), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRX1M \store_frames_reg[3][2]  ( .D(n124), .CK(CLK), .RN(RST), .QN(n2) );
  DFFRX1M \store_frames_reg[3][1]  ( .D(n125), .CK(CLK), .RN(RST), .QN(n3) );
  DFFRX1M \store_frames_reg[3][0]  ( .D(n126), .CK(CLK), .RN(RST), .QN(n4) );
  DFFRQX2M \frame_cnt_reg[1]  ( .D(n153), .CK(CLK), .RN(RST), .Q(frame_cnt[1])
         );
  DFFRX1M \store_frames_reg[1][0]  ( .D(n142), .CK(CLK), .RN(RST), .QN(n20) );
  DFFRQX2M \frame_cnt_reg[0]  ( .D(n156), .CK(CLK), .RN(RST), .Q(frame_cnt[0])
         );
  DFFRX1M \store_frames_reg[1][3]  ( .D(n139), .CK(CLK), .RN(RST), .QN(n17) );
  DFFRX1M \store_frames_reg[1][2]  ( .D(n140), .CK(CLK), .RN(RST), .QN(n18) );
  DFFRX1M \store_frames_reg[1][1]  ( .D(n141), .CK(CLK), .RN(RST), .QN(n19) );
  DFFRQX2M \store_frames_reg[0][0]  ( .D(n152), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][0] ) );
  DFFRQX2M \store_frames_reg[0][4]  ( .D(n148), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][4] ) );
  DFFRQX2M \store_frames_reg[0][6]  ( .D(n146), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][6] ) );
  DFFRQX2M \store_frames_reg[0][5]  ( .D(n147), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][5] ) );
  DFFRQX2M \store_frames_reg[0][1]  ( .D(n151), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][1] ) );
  DFFRX1M \store_frames_reg[0][3]  ( .D(n149), .CK(CLK), .RN(RST), .QN(n30) );
  DFFRX1M \store_frames_reg[0][7]  ( .D(n145), .CK(CLK), .RN(RST), .QN(n23) );
  DFFRQX2M \current_state_reg[1]  ( .D(n144), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(n154), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(n143), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \store_frames_reg[0][2]  ( .D(n150), .CK(CLK), .RN(RST), .Q(
        \store_frames[0][2] ) );
  DFFRX1M \frame_cnt_reg[2]  ( .D(n155), .CK(CLK), .RN(RST), .QN(n46) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  NOR3BX2M U5 ( .AN(n122), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n83) );
  NOR3BX2M U6 ( .AN(n106), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n70) );
  NOR3X2M U7 ( .A(current_state[0]), .B(current_state[2]), .C(n40), .Y(n79) );
  NOR2X2M U8 ( .A(n102), .B(n18), .Y(address[2]) );
  OAI22X1M U9 ( .A0(n2), .A1(n120), .B0(n18), .B1(n121), .Y(ALU_FUN[2]) );
  OAI22X1M U10 ( .A0(n3), .A1(n120), .B0(n19), .B1(n121), .Y(ALU_FUN[1]) );
  OAI22X1M U11 ( .A0(n4), .A1(n120), .B0(n20), .B1(n121), .Y(ALU_FUN[0]) );
  INVX2M U12 ( .A(n107), .Y(RdEn) );
  NAND2X2M U13 ( .A(n103), .B(n48), .Y(n107) );
  NAND2X2M U14 ( .A(n104), .B(n25), .Y(WrEn) );
  NOR2BX2M U15 ( .AN(n119), .B(n92), .Y(n110) );
  INVX2M U16 ( .A(n92), .Y(n44) );
  INVX2M U17 ( .A(n63), .Y(n26) );
  NAND2X2M U18 ( .A(n103), .B(n44), .Y(n108) );
  INVX2M U19 ( .A(n74), .Y(n45) );
  INVX2M U20 ( .A(n98), .Y(n39) );
  NAND2X2M U21 ( .A(n103), .B(n83), .Y(n120) );
  AOI21BX2M U22 ( .A0(n70), .A1(n103), .B0N(n107), .Y(n102) );
  AOI21BX2M U23 ( .A0(n70), .A1(n103), .B0N(n81), .Y(n104) );
  NOR2X2M U24 ( .A(n83), .B(n85), .Y(n92) );
  NAND2X2M U25 ( .A(n83), .B(n37), .Y(n69) );
  OAI22X1M U26 ( .A0(n26), .A1(n43), .B0(n62), .B1(n63), .Y(n143) );
  AOI221XLM U27 ( .A0(n64), .A1(n42), .B0(n41), .B1(n44), .C0(n65), .Y(n62) );
  OAI211X2M U28 ( .A0(n66), .A1(n67), .B0(n68), .C0(n69), .Y(n65) );
  AOI221XLM U29 ( .A0(n70), .A1(n71), .B0(n72), .B1(n73), .C0(n74), .Y(n66) );
  NOR2X2M U30 ( .A(n78), .B(n70), .Y(n74) );
  AND2X2M U31 ( .A(n99), .B(n79), .Y(n103) );
  NAND2X2M U32 ( .A(n85), .B(n103), .Y(n121) );
  NAND2X2M U33 ( .A(n92), .B(n86), .Y(n78) );
  BUFX2M U34 ( .A(n105), .Y(n25) );
  NAND3BX2M U35 ( .AN(n69), .B(n99), .C(n84), .Y(n105) );
  INVX2M U36 ( .A(n86), .Y(n48) );
  AOI222X1M U37 ( .A0(n35), .A1(n70), .B0(n72), .B1(n31), .C0(n83), .C1(n84), 
        .Y(n82) );
  OAI22X1M U38 ( .A0(n26), .A1(n40), .B0(n75), .B1(n63), .Y(n144) );
  AOI211X2M U39 ( .A0(n37), .A1(n29), .B0(n76), .C0(n77), .Y(n75) );
  INVX2M U40 ( .A(n82), .Y(n29) );
  OAI211X2M U41 ( .A0(n78), .A1(n80), .B0(n81), .C0(n68), .Y(n76) );
  OAI221X1M U42 ( .A0(n95), .A1(n107), .B0(n96), .B1(n108), .C0(n68), .Y(Winc)
         );
  NOR2BX2M U43 ( .AN(n119), .B(n86), .Y(n111) );
  OAI22X1M U44 ( .A0(n26), .A1(n42), .B0(n89), .B1(n63), .Y(n154) );
  AOI211X2M U45 ( .A0(n79), .A1(n45), .B0(n90), .C0(n38), .Y(n89) );
  INVX2M U46 ( .A(n68), .Y(n38) );
  OR2X2M U47 ( .A(n91), .B(n41), .Y(n90) );
  NAND2X2M U48 ( .A(n93), .B(n94), .Y(n63) );
  AOI33X2M U49 ( .A0(n52), .A1(n42), .A2(n64), .B0(n79), .B1(n95), .B2(n48), 
        .Y(n94) );
  AOI31X2M U50 ( .A0(n44), .A1(n96), .A2(n39), .B0(n97), .Y(n93) );
  AOI21X2M U51 ( .A0(n98), .A1(n67), .B0(n99), .Y(n97) );
  NOR2X2M U52 ( .A(n79), .B(n41), .Y(n98) );
  NAND2BX2M U53 ( .AN(n85), .B(n86), .Y(n72) );
  INVX2M U54 ( .A(n80), .Y(n41) );
  INVX2M U55 ( .A(n71), .Y(n35) );
  INVX2M U56 ( .A(n73), .Y(n31) );
  INVX2M U57 ( .A(n67), .Y(n37) );
  AO22X1M U58 ( .A0(n78), .A1(n79), .B0(n79), .B1(n74), .Y(n77) );
  NOR3X2M U59 ( .A(n42), .B(n43), .C(n40), .Y(n91) );
  OAI22X1M U60 ( .A0(n158), .A1(n87), .B0(n32), .B1(n51), .Y(n151) );
  OAI22X1M U61 ( .A0(n157), .A1(n87), .B0(n32), .B1(n50), .Y(n150) );
  OAI22X1M U62 ( .A0(n55), .A1(n87), .B0(n32), .B1(n49), .Y(n147) );
  OAI22X1M U63 ( .A0(n54), .A1(n87), .B0(n32), .B1(n47), .Y(n146) );
  INVX2M U64 ( .A(n60), .Y(n36) );
  INVX2M U65 ( .A(n59), .Y(n28) );
  INVX2M U66 ( .A(n87), .Y(n32) );
  NOR2BX2M U67 ( .AN(n99), .B(n80), .Y(n119) );
  INVX2M U68 ( .A(n58), .Y(n34) );
  NOR4X1M U69 ( .A(n47), .B(n50), .C(\store_frames[0][1] ), .D(
        \store_frames[0][5] ), .Y(n122) );
  INVX2M U70 ( .A(\store_frames[0][2] ), .Y(n50) );
  NOR2X4M U71 ( .A(n102), .B(n17), .Y(address[3]) );
  OAI22X1M U72 ( .A0(n104), .A1(n7), .B0(n15), .B1(n25), .Y(WrData[5]) );
  OAI22X1M U73 ( .A0(n104), .A1(n5), .B0(n13), .B1(n25), .Y(WrData[7]) );
  OAI22X1M U74 ( .A0(n104), .A1(n12), .B0(n20), .B1(n25), .Y(WrData[0]) );
  OAI22X1M U75 ( .A0(n104), .A1(n11), .B0(n19), .B1(n25), .Y(WrData[1]) );
  OAI22X1M U76 ( .A0(n104), .A1(n10), .B0(n18), .B1(n25), .Y(WrData[2]) );
  OAI22X1M U77 ( .A0(n104), .A1(n9), .B0(n17), .B1(n25), .Y(WrData[3]) );
  OAI22X1M U78 ( .A0(n104), .A1(n8), .B0(n16), .B1(n25), .Y(WrData[4]) );
  OAI22X1M U79 ( .A0(n104), .A1(n6), .B0(n14), .B1(n25), .Y(WrData[6]) );
  NOR4X1M U80 ( .A(n49), .B(n51), .C(\store_frames[0][2] ), .D(
        \store_frames[0][6] ), .Y(n106) );
  NAND3X2M U81 ( .A(\store_frames[0][0] ), .B(n106), .C(\store_frames[0][4] ), 
        .Y(n86) );
  NOR2X2M U82 ( .A(n23), .B(n30), .Y(n99) );
  AND3X2M U83 ( .A(n122), .B(\store_frames[0][0] ), .C(\store_frames[0][4] ), 
        .Y(n85) );
  INVX2M U84 ( .A(current_state[1]), .Y(n40) );
  OAI22X1M U85 ( .A0(n1), .A1(n120), .B0(n17), .B1(n121), .Y(ALU_FUN[3]) );
  INVX2M U86 ( .A(\store_frames[0][1] ), .Y(n51) );
  INVX2M U87 ( .A(\store_frames[0][5] ), .Y(n49) );
  INVX2M U88 ( .A(\store_frames[0][6] ), .Y(n47) );
  NOR2X2M U89 ( .A(n102), .B(n19), .Y(address[1]) );
  OAI21X2M U90 ( .A0(n102), .A1(n20), .B0(n81), .Y(address[0]) );
  NOR3X2M U91 ( .A(frame_cnt[0]), .B(frame_cnt[1]), .C(n46), .Y(n84) );
  NAND3X2M U92 ( .A(current_state[2]), .B(n43), .C(current_state[1]), .Y(n80)
         );
  NAND3X2M U93 ( .A(n33), .B(n46), .C(frame_cnt[1]), .Y(n73) );
  NAND3X2M U94 ( .A(frame_cnt[0]), .B(n46), .C(frame_cnt[1]), .Y(n71) );
  NAND3X2M U95 ( .A(n40), .B(n42), .C(current_state[0]), .Y(n67) );
  NAND3X2M U96 ( .A(current_state[0]), .B(n42), .C(current_state[1]), .Y(n81)
         );
  OAI2BB1X2M U97 ( .A0N(ALU_OUT[8]), .A1N(n91), .B0(n118), .Y(WR_DATA[0]) );
  AOI22X1M U98 ( .A0(ALU_OUT[0]), .A1(n110), .B0(RdData[0]), .B1(n111), .Y(
        n118) );
  OAI2BB1X2M U99 ( .A0N(ALU_OUT[9]), .A1N(n91), .B0(n117), .Y(WR_DATA[1]) );
  AOI22X1M U100 ( .A0(ALU_OUT[1]), .A1(n110), .B0(RdData[1]), .B1(n111), .Y(
        n117) );
  OAI2BB1X2M U101 ( .A0N(ALU_OUT[10]), .A1N(n91), .B0(n116), .Y(WR_DATA[2]) );
  AOI22X1M U102 ( .A0(ALU_OUT[2]), .A1(n110), .B0(RdData[2]), .B1(n111), .Y(
        n116) );
  OAI2BB1X2M U103 ( .A0N(ALU_OUT[11]), .A1N(n91), .B0(n115), .Y(WR_DATA[3]) );
  AOI22X1M U104 ( .A0(ALU_OUT[3]), .A1(n110), .B0(RdData[3]), .B1(n111), .Y(
        n115) );
  OAI2BB1X2M U105 ( .A0N(ALU_OUT[12]), .A1N(n91), .B0(n114), .Y(WR_DATA[4]) );
  AOI22X1M U106 ( .A0(ALU_OUT[4]), .A1(n110), .B0(RdData[4]), .B1(n111), .Y(
        n114) );
  OAI2BB1X2M U107 ( .A0N(ALU_OUT[13]), .A1N(n91), .B0(n113), .Y(WR_DATA[5]) );
  AOI22X1M U108 ( .A0(ALU_OUT[5]), .A1(n110), .B0(RdData[5]), .B1(n111), .Y(
        n113) );
  OAI2BB1X2M U109 ( .A0N(ALU_OUT[14]), .A1N(n91), .B0(n112), .Y(WR_DATA[6]) );
  AOI22X1M U110 ( .A0(ALU_OUT[6]), .A1(n110), .B0(RdData[6]), .B1(n111), .Y(
        n112) );
  OAI2BB1X2M U111 ( .A0N(ALU_OUT[15]), .A1N(n91), .B0(n109), .Y(WR_DATA[7]) );
  AOI22X1M U112 ( .A0(ALU_OUT[7]), .A1(n110), .B0(RdData[7]), .B1(n111), .Y(
        n109) );
  INVX2M U113 ( .A(current_state[2]), .Y(n42) );
  INVX2M U114 ( .A(current_state[0]), .Y(n43) );
  INVX2M U115 ( .A(frame_cnt[0]), .Y(n33) );
  NAND3X2M U116 ( .A(n33), .B(n46), .C(n61), .Y(n87) );
  NAND3X2M U117 ( .A(frame_cnt[0]), .B(n46), .C(n61), .Y(n60) );
  NOR2X2M U118 ( .A(n52), .B(frame_cnt[1]), .Y(n61) );
  NAND2X2M U119 ( .A(n31), .B(RX_D_VLD), .Y(n59) );
  OAI21X2M U120 ( .A0(frame_cnt[0]), .A1(n52), .B0(n101), .Y(n88) );
  OAI22X1M U121 ( .A0(n33), .A1(n101), .B0(frame_cnt[0]), .B1(n52), .Y(n156)
         );
  OAI22X1M U122 ( .A0(n158), .A1(n60), .B0(n36), .B1(n19), .Y(n141) );
  OAI22X1M U123 ( .A0(n157), .A1(n60), .B0(n36), .B1(n18), .Y(n140) );
  OAI22X1M U124 ( .A0(n57), .A1(n60), .B0(n36), .B1(n17), .Y(n139) );
  OAI22X1M U125 ( .A0(n159), .A1(n60), .B0(n36), .B1(n20), .Y(n142) );
  OAI22X1M U126 ( .A0(n57), .A1(n87), .B0(n32), .B1(n30), .Y(n149) );
  OAI22X1M U127 ( .A0(n53), .A1(n87), .B0(n32), .B1(n23), .Y(n145) );
  OAI22X1M U128 ( .A0(n58), .A1(n159), .B0(n34), .B1(n4), .Y(n126) );
  OAI22X1M U129 ( .A0(n58), .A1(n158), .B0(n34), .B1(n3), .Y(n125) );
  OAI22X1M U130 ( .A0(n58), .A1(n157), .B0(n34), .B1(n2), .Y(n124) );
  OAI22X1M U131 ( .A0(n58), .A1(n57), .B0(n34), .B1(n1), .Y(n123) );
  OAI22X1M U132 ( .A0(n159), .A1(n59), .B0(n28), .B1(n12), .Y(n134) );
  OAI22X1M U133 ( .A0(n158), .A1(n59), .B0(n28), .B1(n11), .Y(n133) );
  OAI22X1M U134 ( .A0(n157), .A1(n59), .B0(n28), .B1(n10), .Y(n132) );
  OAI22X1M U135 ( .A0(n57), .A1(n59), .B0(n28), .B1(n9), .Y(n131) );
  OAI22X1M U136 ( .A0(n59), .A1(n56), .B0(n28), .B1(n8), .Y(n130) );
  OAI22X1M U137 ( .A0(n59), .A1(n55), .B0(n28), .B1(n7), .Y(n129) );
  OAI22X1M U138 ( .A0(n59), .A1(n54), .B0(n28), .B1(n6), .Y(n128) );
  OAI22X1M U139 ( .A0(n59), .A1(n53), .B0(n28), .B1(n5), .Y(n127) );
  OAI22X1M U140 ( .A0(n56), .A1(n60), .B0(n36), .B1(n16), .Y(n138) );
  OAI22X1M U141 ( .A0(n55), .A1(n60), .B0(n36), .B1(n15), .Y(n137) );
  OAI22X1M U142 ( .A0(n54), .A1(n60), .B0(n36), .B1(n14), .Y(n136) );
  OAI22X1M U143 ( .A0(n53), .A1(n60), .B0(n36), .B1(n13), .Y(n135) );
  NAND2X2M U144 ( .A(RX_D_VLD), .B(n35), .Y(n58) );
  NAND3X2M U145 ( .A(current_state[0]), .B(n40), .C(current_state[2]), .Y(n68)
         );
  OAI2BB2X1M U146 ( .B0(n159), .B1(n87), .A0N(n87), .A1N(\store_frames[0][0] ), 
        .Y(n152) );
  OAI2BB2X1M U147 ( .B0(n56), .B1(n87), .A0N(n87), .A1N(\store_frames[0][4] ), 
        .Y(n148) );
  OAI21X2M U148 ( .A0(n100), .A1(n46), .B0(n58), .Y(n155) );
  NOR2X2M U149 ( .A(n61), .B(n88), .Y(n100) );
  NOR2X2M U150 ( .A(current_state[0]), .B(current_state[1]), .Y(n64) );
  INVX2M U151 ( .A(RX_D_VLD), .Y(n52) );
  AO21XLM U152 ( .A0(current_state[2]), .A1(n64), .B0(RX_D_VLD), .Y(n101) );
  INVX2M U153 ( .A(RX_P_DATA[1]), .Y(n158) );
  INVX2M U154 ( .A(RX_P_DATA[2]), .Y(n157) );
  INVX2M U155 ( .A(RX_P_DATA[3]), .Y(n57) );
  INVX2M U156 ( .A(RX_P_DATA[0]), .Y(n159) );
  INVX2M U157 ( .A(FIFO_Full), .Y(n27) );
  NAND2X2M U158 ( .A(RdData_Valid), .B(n27), .Y(n95) );
  NAND2X2M U159 ( .A(OUT_Valid), .B(n27), .Y(n96) );
  AO22X1M U160 ( .A0(frame_cnt[0]), .A1(n61), .B0(n88), .B1(frame_cnt[1]), .Y(
        n153) );
  INVX2M U161 ( .A(RX_P_DATA[5]), .Y(n55) );
  INVX2M U162 ( .A(RX_P_DATA[6]), .Y(n54) );
  INVX2M U163 ( .A(RX_P_DATA[7]), .Y(n53) );
  INVX2M U164 ( .A(RX_P_DATA[4]), .Y(n56) );
  BUFX2M U165 ( .A(EN), .Y(CLK_EN) );
  INVX2M U166 ( .A(n108), .Y(EN) );
endmodule


module Register_File_WIDTH8_ADDR4 ( RST, CLK, WrEn, RdEn, address, WrData, 
        RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input RST, CLK, WrEn, RdEn;
  output RdData_Valid;
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
         N42, N43, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];

  DFFRQX2M \REG_reg[13][7]  ( .D(n161), .CK(CLK), .RN(n213), .Q(\REG[13][7] )
         );
  DFFRQX2M \REG_reg[13][6]  ( .D(n160), .CK(CLK), .RN(n213), .Q(\REG[13][6] )
         );
  DFFRQX2M \REG_reg[13][5]  ( .D(n159), .CK(CLK), .RN(n212), .Q(\REG[13][5] )
         );
  DFFRQX2M \REG_reg[13][4]  ( .D(n158), .CK(CLK), .RN(n212), .Q(\REG[13][4] )
         );
  DFFRQX2M \REG_reg[13][3]  ( .D(n157), .CK(CLK), .RN(n212), .Q(\REG[13][3] )
         );
  DFFRQX2M \REG_reg[13][2]  ( .D(n156), .CK(CLK), .RN(n212), .Q(\REG[13][2] )
         );
  DFFRQX2M \REG_reg[13][1]  ( .D(n155), .CK(CLK), .RN(n212), .Q(\REG[13][1] )
         );
  DFFRQX2M \REG_reg[13][0]  ( .D(n154), .CK(CLK), .RN(n212), .Q(\REG[13][0] )
         );
  DFFRQX2M \REG_reg[9][7]  ( .D(n129), .CK(CLK), .RN(n210), .Q(\REG[9][7] ) );
  DFFRQX2M \REG_reg[9][6]  ( .D(n128), .CK(CLK), .RN(n210), .Q(\REG[9][6] ) );
  DFFRQX2M \REG_reg[9][5]  ( .D(n127), .CK(CLK), .RN(n210), .Q(\REG[9][5] ) );
  DFFRQX2M \REG_reg[9][4]  ( .D(n126), .CK(CLK), .RN(n210), .Q(\REG[9][4] ) );
  DFFRQX2M \REG_reg[9][3]  ( .D(n125), .CK(CLK), .RN(n210), .Q(\REG[9][3] ) );
  DFFRQX2M \REG_reg[9][2]  ( .D(n124), .CK(CLK), .RN(n210), .Q(\REG[9][2] ) );
  DFFRQX2M \REG_reg[9][1]  ( .D(n123), .CK(CLK), .RN(n210), .Q(\REG[9][1] ) );
  DFFRQX2M \REG_reg[9][0]  ( .D(n122), .CK(CLK), .RN(n210), .Q(\REG[9][0] ) );
  DFFRQX2M \REG_reg[5][7]  ( .D(n97), .CK(CLK), .RN(n208), .Q(\REG[5][7] ) );
  DFFRQX2M \REG_reg[5][6]  ( .D(n96), .CK(CLK), .RN(n208), .Q(\REG[5][6] ) );
  DFFRQX2M \REG_reg[5][5]  ( .D(n95), .CK(CLK), .RN(n208), .Q(\REG[5][5] ) );
  DFFRQX2M \REG_reg[5][4]  ( .D(n94), .CK(CLK), .RN(n208), .Q(\REG[5][4] ) );
  DFFRQX2M \REG_reg[5][3]  ( .D(n93), .CK(CLK), .RN(n208), .Q(\REG[5][3] ) );
  DFFRQX2M \REG_reg[5][2]  ( .D(n92), .CK(CLK), .RN(n208), .Q(\REG[5][2] ) );
  DFFRQX2M \REG_reg[5][1]  ( .D(n91), .CK(CLK), .RN(n208), .Q(\REG[5][1] ) );
  DFFRQX2M \REG_reg[5][0]  ( .D(n90), .CK(CLK), .RN(n208), .Q(\REG[5][0] ) );
  DFFRQX2M \REG_reg[15][7]  ( .D(n177), .CK(CLK), .RN(n205), .Q(\REG[15][7] )
         );
  DFFRQX2M \REG_reg[15][6]  ( .D(n176), .CK(CLK), .RN(n214), .Q(\REG[15][6] )
         );
  DFFRQX2M \REG_reg[15][5]  ( .D(n175), .CK(CLK), .RN(n214), .Q(\REG[15][5] )
         );
  DFFRQX2M \REG_reg[15][4]  ( .D(n174), .CK(CLK), .RN(n213), .Q(\REG[15][4] )
         );
  DFFRQX2M \REG_reg[15][3]  ( .D(n173), .CK(CLK), .RN(n213), .Q(\REG[15][3] )
         );
  DFFRQX2M \REG_reg[15][2]  ( .D(n172), .CK(CLK), .RN(n213), .Q(\REG[15][2] )
         );
  DFFRQX2M \REG_reg[15][1]  ( .D(n171), .CK(CLK), .RN(n213), .Q(\REG[15][1] )
         );
  DFFRQX2M \REG_reg[15][0]  ( .D(n170), .CK(CLK), .RN(n213), .Q(\REG[15][0] )
         );
  DFFRQX2M \REG_reg[11][7]  ( .D(n145), .CK(CLK), .RN(n212), .Q(\REG[11][7] )
         );
  DFFRQX2M \REG_reg[11][6]  ( .D(n144), .CK(CLK), .RN(n211), .Q(\REG[11][6] )
         );
  DFFRQX2M \REG_reg[11][5]  ( .D(n143), .CK(CLK), .RN(n211), .Q(\REG[11][5] )
         );
  DFFRQX2M \REG_reg[11][4]  ( .D(n142), .CK(CLK), .RN(n211), .Q(\REG[11][4] )
         );
  DFFRQX2M \REG_reg[11][3]  ( .D(n141), .CK(CLK), .RN(n211), .Q(\REG[11][3] )
         );
  DFFRQX2M \REG_reg[11][2]  ( .D(n140), .CK(CLK), .RN(n211), .Q(\REG[11][2] )
         );
  DFFRQX2M \REG_reg[11][1]  ( .D(n139), .CK(CLK), .RN(n211), .Q(\REG[11][1] )
         );
  DFFRQX2M \REG_reg[11][0]  ( .D(n138), .CK(CLK), .RN(n211), .Q(\REG[11][0] )
         );
  DFFRQX2M \REG_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n209), .Q(\REG[7][7] ) );
  DFFRQX2M \REG_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n209), .Q(\REG[7][6] ) );
  DFFRQX2M \REG_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n209), .Q(\REG[7][5] ) );
  DFFRQX2M \REG_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n209), .Q(\REG[7][4] ) );
  DFFRQX2M \REG_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n209), .Q(\REG[7][3] ) );
  DFFRQX2M \REG_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n209), .Q(\REG[7][2] ) );
  DFFRQX2M \REG_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n209), .Q(\REG[7][1] ) );
  DFFRQX2M \REG_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n209), .Q(\REG[7][0] ) );
  DFFRQX2M \REG_reg[14][7]  ( .D(n169), .CK(CLK), .RN(n213), .Q(\REG[14][7] )
         );
  DFFRQX2M \REG_reg[14][6]  ( .D(n168), .CK(CLK), .RN(n213), .Q(\REG[14][6] )
         );
  DFFRQX2M \REG_reg[14][5]  ( .D(n167), .CK(CLK), .RN(n213), .Q(\REG[14][5] )
         );
  DFFRQX2M \REG_reg[14][4]  ( .D(n166), .CK(CLK), .RN(n213), .Q(\REG[14][4] )
         );
  DFFRQX2M \REG_reg[14][3]  ( .D(n165), .CK(CLK), .RN(n213), .Q(\REG[14][3] )
         );
  DFFRQX2M \REG_reg[14][2]  ( .D(n164), .CK(CLK), .RN(n213), .Q(\REG[14][2] )
         );
  DFFRQX2M \REG_reg[14][1]  ( .D(n163), .CK(CLK), .RN(n213), .Q(\REG[14][1] )
         );
  DFFRQX2M \REG_reg[14][0]  ( .D(n162), .CK(CLK), .RN(n213), .Q(\REG[14][0] )
         );
  DFFRQX2M \REG_reg[10][7]  ( .D(n137), .CK(CLK), .RN(n211), .Q(\REG[10][7] )
         );
  DFFRQX2M \REG_reg[10][6]  ( .D(n136), .CK(CLK), .RN(n211), .Q(\REG[10][6] )
         );
  DFFRQX2M \REG_reg[10][5]  ( .D(n135), .CK(CLK), .RN(n211), .Q(\REG[10][5] )
         );
  DFFRQX2M \REG_reg[10][4]  ( .D(n134), .CK(CLK), .RN(n211), .Q(\REG[10][4] )
         );
  DFFRQX2M \REG_reg[10][3]  ( .D(n133), .CK(CLK), .RN(n211), .Q(\REG[10][3] )
         );
  DFFRQX2M \REG_reg[10][2]  ( .D(n132), .CK(CLK), .RN(n211), .Q(\REG[10][2] )
         );
  DFFRQX2M \REG_reg[10][1]  ( .D(n131), .CK(CLK), .RN(n211), .Q(\REG[10][1] )
         );
  DFFRQX2M \REG_reg[10][0]  ( .D(n130), .CK(CLK), .RN(n211), .Q(\REG[10][0] )
         );
  DFFRQX2M \REG_reg[6][7]  ( .D(n105), .CK(CLK), .RN(n209), .Q(\REG[6][7] ) );
  DFFRQX2M \REG_reg[6][6]  ( .D(n104), .CK(CLK), .RN(n209), .Q(\REG[6][6] ) );
  DFFRQX2M \REG_reg[6][5]  ( .D(n103), .CK(CLK), .RN(n209), .Q(\REG[6][5] ) );
  DFFRQX2M \REG_reg[6][4]  ( .D(n102), .CK(CLK), .RN(n209), .Q(\REG[6][4] ) );
  DFFRQX2M \REG_reg[6][3]  ( .D(n101), .CK(CLK), .RN(n209), .Q(\REG[6][3] ) );
  DFFRQX2M \REG_reg[6][2]  ( .D(n100), .CK(CLK), .RN(n208), .Q(\REG[6][2] ) );
  DFFRQX2M \REG_reg[6][1]  ( .D(n99), .CK(CLK), .RN(n208), .Q(\REG[6][1] ) );
  DFFRQX2M \REG_reg[6][0]  ( .D(n98), .CK(CLK), .RN(n208), .Q(\REG[6][0] ) );
  DFFRQX2M \REG_reg[12][7]  ( .D(n153), .CK(CLK), .RN(n212), .Q(\REG[12][7] )
         );
  DFFRQX2M \REG_reg[12][6]  ( .D(n152), .CK(CLK), .RN(n212), .Q(\REG[12][6] )
         );
  DFFRQX2M \REG_reg[12][5]  ( .D(n151), .CK(CLK), .RN(n212), .Q(\REG[12][5] )
         );
  DFFRQX2M \REG_reg[12][4]  ( .D(n150), .CK(CLK), .RN(n212), .Q(\REG[12][4] )
         );
  DFFRQX2M \REG_reg[12][3]  ( .D(n149), .CK(CLK), .RN(n212), .Q(\REG[12][3] )
         );
  DFFRQX2M \REG_reg[12][2]  ( .D(n148), .CK(CLK), .RN(n212), .Q(\REG[12][2] )
         );
  DFFRQX2M \REG_reg[12][1]  ( .D(n147), .CK(CLK), .RN(n212), .Q(\REG[12][1] )
         );
  DFFRQX2M \REG_reg[12][0]  ( .D(n146), .CK(CLK), .RN(n212), .Q(\REG[12][0] )
         );
  DFFRQX2M \REG_reg[8][7]  ( .D(n121), .CK(CLK), .RN(n210), .Q(\REG[8][7] ) );
  DFFRQX2M \REG_reg[8][6]  ( .D(n120), .CK(CLK), .RN(n210), .Q(\REG[8][6] ) );
  DFFRQX2M \REG_reg[8][5]  ( .D(n119), .CK(CLK), .RN(n210), .Q(\REG[8][5] ) );
  DFFRQX2M \REG_reg[8][4]  ( .D(n118), .CK(CLK), .RN(n210), .Q(\REG[8][4] ) );
  DFFRQX2M \REG_reg[8][3]  ( .D(n117), .CK(CLK), .RN(n210), .Q(\REG[8][3] ) );
  DFFRQX2M \REG_reg[8][2]  ( .D(n116), .CK(CLK), .RN(n210), .Q(\REG[8][2] ) );
  DFFRQX2M \REG_reg[8][1]  ( .D(n115), .CK(CLK), .RN(n210), .Q(\REG[8][1] ) );
  DFFRQX2M \REG_reg[8][0]  ( .D(n114), .CK(CLK), .RN(n209), .Q(\REG[8][0] ) );
  DFFRQX2M \REG_reg[4][7]  ( .D(n89), .CK(CLK), .RN(n208), .Q(\REG[4][7] ) );
  DFFRQX2M \REG_reg[4][6]  ( .D(n88), .CK(CLK), .RN(n208), .Q(\REG[4][6] ) );
  DFFRQX2M \REG_reg[4][5]  ( .D(n87), .CK(CLK), .RN(n208), .Q(\REG[4][5] ) );
  DFFRQX2M \REG_reg[4][4]  ( .D(n86), .CK(CLK), .RN(n208), .Q(\REG[4][4] ) );
  DFFRQX2M \REG_reg[4][3]  ( .D(n85), .CK(CLK), .RN(n207), .Q(\REG[4][3] ) );
  DFFRQX2M \REG_reg[4][2]  ( .D(n84), .CK(CLK), .RN(n207), .Q(\REG[4][2] ) );
  DFFRQX2M \REG_reg[4][1]  ( .D(n83), .CK(CLK), .RN(n207), .Q(\REG[4][1] ) );
  DFFRQX2M \REG_reg[4][0]  ( .D(n82), .CK(CLK), .RN(n207), .Q(\REG[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n49), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n45), .CK(CLK), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n42), .CK(CLK), .RN(n205), .Q(RdData[0]) );
  DFFRQX2M \REG_reg[2][1]  ( .D(n67), .CK(CLK), .RN(n206), .Q(REG2[1]) );
  DFFRQX2M RdData_Valid_reg ( .D(n41), .CK(CLK), .RN(n209), .Q(RdData_Valid)
         );
  DFFRQX2M \REG_reg[3][0]  ( .D(n74), .CK(CLK), .RN(n207), .Q(REG3[0]) );
  DFFRQX2M \REG_reg[3][7]  ( .D(n81), .CK(CLK), .RN(n207), .Q(REG3[7]) );
  DFFSQX2M \REG_reg[3][5]  ( .D(n79), .CK(CLK), .SN(n205), .Q(REG3[5]) );
  DFFRQX2M \REG_reg[3][2]  ( .D(n76), .CK(CLK), .RN(n207), .Q(REG3[2]) );
  DFFRQX2M \REG_reg[3][3]  ( .D(n77), .CK(CLK), .RN(n207), .Q(REG3[3]) );
  DFFRQX2M \REG_reg[3][4]  ( .D(n78), .CK(CLK), .RN(n207), .Q(REG3[4]) );
  DFFRQX2M \REG_reg[3][6]  ( .D(n80), .CK(CLK), .RN(n207), .Q(REG3[6]) );
  DFFRQX2M \REG_reg[3][1]  ( .D(n75), .CK(CLK), .RN(n207), .Q(REG3[1]) );
  DFFRQX2M \REG_reg[2][4]  ( .D(n70), .CK(CLK), .RN(n207), .Q(REG2[4]) );
  DFFRQX2M \REG_reg[2][2]  ( .D(n68), .CK(CLK), .RN(n207), .Q(REG2[2]) );
  DFFSQX2M \REG_reg[2][7]  ( .D(n73), .CK(CLK), .SN(n205), .Q(REG2[7]) );
  DFFRQX2M \REG_reg[2][5]  ( .D(n71), .CK(CLK), .RN(n207), .Q(REG2[5]) );
  DFFRQX2M \REG_reg[2][3]  ( .D(n69), .CK(CLK), .RN(n206), .Q(REG2[3]) );
  DFFRQX2M \REG_reg[2][6]  ( .D(n72), .CK(CLK), .RN(n207), .Q(REG2[6]) );
  DFFSQX2M \REG_reg[2][0]  ( .D(n66), .CK(CLK), .SN(n205), .Q(REG2[0]) );
  DFFRQX2M \REG_reg[0][1]  ( .D(n51), .CK(CLK), .RN(n205), .Q(REG0[1]) );
  DFFRQX2M \REG_reg[0][0]  ( .D(n50), .CK(CLK), .RN(n205), .Q(REG0[0]) );
  DFFRQX2M \REG_reg[0][2]  ( .D(n52), .CK(CLK), .RN(n205), .Q(REG0[2]) );
  DFFRQX2M \REG_reg[0][3]  ( .D(n53), .CK(CLK), .RN(n206), .Q(REG0[3]) );
  DFFRQX2M \REG_reg[0][4]  ( .D(n54), .CK(CLK), .RN(n206), .Q(REG0[4]) );
  DFFRQX2M \REG_reg[0][5]  ( .D(n55), .CK(CLK), .RN(n206), .Q(REG0[5]) );
  DFFRQX2M \REG_reg[0][6]  ( .D(n56), .CK(CLK), .RN(n206), .Q(REG0[6]) );
  DFFRQX2M \REG_reg[1][6]  ( .D(n64), .CK(CLK), .RN(n206), .Q(REG1[6]) );
  DFFRQX2M \REG_reg[0][7]  ( .D(n57), .CK(CLK), .RN(n206), .Q(REG0[7]) );
  DFFRQX2M \REG_reg[1][1]  ( .D(n59), .CK(CLK), .RN(n206), .Q(REG1[1]) );
  DFFRQX2M \REG_reg[1][5]  ( .D(n63), .CK(CLK), .RN(n206), .Q(REG1[5]) );
  DFFRQX2M \REG_reg[1][4]  ( .D(n62), .CK(CLK), .RN(n206), .Q(REG1[4]) );
  DFFRQX2M \REG_reg[1][7]  ( .D(n65), .CK(CLK), .RN(n206), .Q(REG1[7]) );
  DFFRQX2M \REG_reg[1][3]  ( .D(n61), .CK(CLK), .RN(n206), .Q(REG1[3]) );
  DFFRQX2M \REG_reg[1][2]  ( .D(n60), .CK(CLK), .RN(n206), .Q(REG1[2]) );
  DFFRQX2M \REG_reg[1][0]  ( .D(n58), .CK(CLK), .RN(n206), .Q(REG1[0]) );
  NOR2X2M U3 ( .A(n204), .B(N13), .Y(n21) );
  NOR2X2M U4 ( .A(n199), .B(N13), .Y(n16) );
  INVX2M U5 ( .A(n200), .Y(n201) );
  INVX2M U6 ( .A(n14), .Y(n228) );
  INVX2M U7 ( .A(n198), .Y(n199) );
  NAND2X2M U8 ( .A(RdEn), .B(n229), .Y(n14) );
  NOR2X2M U9 ( .A(n229), .B(RdEn), .Y(n13) );
  INVX2M U10 ( .A(n200), .Y(n202) );
  BUFX2M U11 ( .A(n203), .Y(n200) );
  BUFX2M U12 ( .A(n204), .Y(n198) );
  NAND2X2M U13 ( .A(n21), .B(n17), .Y(n20) );
  NAND2X2M U14 ( .A(n21), .B(n19), .Y(n22) );
  NAND2X2M U15 ( .A(n24), .B(n17), .Y(n23) );
  NAND2X2M U16 ( .A(n24), .B(n19), .Y(n25) );
  NAND2X2M U17 ( .A(n27), .B(n17), .Y(n26) );
  NAND2X2M U18 ( .A(n27), .B(n19), .Y(n29) );
  NAND2X2M U19 ( .A(n31), .B(n24), .Y(n36) );
  NAND2X2M U20 ( .A(n33), .B(n24), .Y(n37) );
  NAND2X2M U21 ( .A(n31), .B(n27), .Y(n38) );
  NAND2X2M U22 ( .A(n33), .B(n27), .Y(n40) );
  NAND2X2M U23 ( .A(n19), .B(n16), .Y(n18) );
  NAND2X2M U24 ( .A(n31), .B(n16), .Y(n30) );
  NAND2X2M U25 ( .A(n33), .B(n16), .Y(n32) );
  NAND2X2M U26 ( .A(n31), .B(n21), .Y(n34) );
  NAND2X2M U27 ( .A(n33), .B(n21), .Y(n35) );
  NAND2X2M U28 ( .A(n16), .B(n17), .Y(n15) );
  AND2X2M U29 ( .A(n28), .B(N11), .Y(n19) );
  AND2X2M U30 ( .A(n39), .B(N11), .Y(n33) );
  INVX2M U31 ( .A(WrEn), .Y(n229) );
  BUFX2M U32 ( .A(n219), .Y(n205) );
  BUFX2M U33 ( .A(n219), .Y(n206) );
  BUFX2M U34 ( .A(n218), .Y(n207) );
  BUFX2M U35 ( .A(n218), .Y(n208) );
  BUFX2M U36 ( .A(n217), .Y(n209) );
  BUFX2M U37 ( .A(n217), .Y(n210) );
  BUFX2M U38 ( .A(n216), .Y(n211) );
  BUFX2M U39 ( .A(n216), .Y(n212) );
  BUFX2M U40 ( .A(n215), .Y(n213) );
  BUFX2M U41 ( .A(n215), .Y(n214) );
  NOR2BX2M U42 ( .AN(n13), .B(N14), .Y(n28) );
  AND2X2M U43 ( .A(n28), .B(n203), .Y(n17) );
  AND2X2M U44 ( .A(n39), .B(n203), .Y(n31) );
  AND2X2M U45 ( .A(N14), .B(n13), .Y(n39) );
  AND2X2M U46 ( .A(N13), .B(n204), .Y(n24) );
  AND2X2M U47 ( .A(N13), .B(n199), .Y(n27) );
  BUFX2M U48 ( .A(RST), .Y(n218) );
  BUFX2M U49 ( .A(RST), .Y(n217) );
  BUFX2M U50 ( .A(RST), .Y(n216) );
  BUFX2M U51 ( .A(RST), .Y(n215) );
  BUFX2M U52 ( .A(RST), .Y(n219) );
  INVX2M U53 ( .A(WrData[5]), .Y(n225) );
  INVX2M U54 ( .A(WrData[7]), .Y(n227) );
  INVX2M U55 ( .A(WrData[0]), .Y(n220) );
  INVX2M U56 ( .A(WrData[1]), .Y(n221) );
  INVX2M U57 ( .A(WrData[2]), .Y(n222) );
  INVX2M U58 ( .A(WrData[3]), .Y(n223) );
  INVX2M U59 ( .A(WrData[4]), .Y(n224) );
  INVX2M U60 ( .A(WrData[6]), .Y(n226) );
  OAI2BB2X1M U61 ( .B0(n15), .B1(n220), .A0N(REG0[0]), .A1N(n15), .Y(n50) );
  OAI2BB2X1M U62 ( .B0(n15), .B1(n221), .A0N(REG0[1]), .A1N(n15), .Y(n51) );
  OAI2BB2X1M U63 ( .B0(n15), .B1(n222), .A0N(REG0[2]), .A1N(n15), .Y(n52) );
  OAI2BB2X1M U64 ( .B0(n15), .B1(n223), .A0N(REG0[3]), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U65 ( .B0(n15), .B1(n224), .A0N(REG0[4]), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U66 ( .B0(n15), .B1(n225), .A0N(REG0[5]), .A1N(n15), .Y(n55) );
  OAI2BB2X1M U67 ( .B0(n15), .B1(n226), .A0N(REG0[6]), .A1N(n15), .Y(n56) );
  OAI2BB2X1M U68 ( .B0(n15), .B1(n227), .A0N(REG0[7]), .A1N(n15), .Y(n57) );
  OAI2BB2X1M U69 ( .B0(n221), .B1(n20), .A0N(REG2[1]), .A1N(n20), .Y(n67) );
  OAI2BB2X1M U70 ( .B0(n222), .B1(n20), .A0N(REG2[2]), .A1N(n20), .Y(n68) );
  OAI2BB2X1M U71 ( .B0(n223), .B1(n20), .A0N(REG2[3]), .A1N(n20), .Y(n69) );
  OAI2BB2X1M U72 ( .B0(n224), .B1(n20), .A0N(REG2[4]), .A1N(n20), .Y(n70) );
  OAI2BB2X1M U73 ( .B0(n225), .B1(n20), .A0N(REG2[5]), .A1N(n20), .Y(n71) );
  OAI2BB2X1M U74 ( .B0(n226), .B1(n20), .A0N(REG2[6]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U75 ( .B0(n220), .B1(n22), .A0N(REG3[0]), .A1N(n22), .Y(n74) );
  OAI2BB2X1M U76 ( .B0(n221), .B1(n22), .A0N(REG3[1]), .A1N(n22), .Y(n75) );
  OAI2BB2X1M U77 ( .B0(n222), .B1(n22), .A0N(REG3[2]), .A1N(n22), .Y(n76) );
  OAI2BB2X1M U78 ( .B0(n223), .B1(n22), .A0N(REG3[3]), .A1N(n22), .Y(n77) );
  OAI2BB2X1M U79 ( .B0(n224), .B1(n22), .A0N(REG3[4]), .A1N(n22), .Y(n78) );
  OAI2BB2X1M U80 ( .B0(n226), .B1(n22), .A0N(REG3[6]), .A1N(n22), .Y(n80) );
  OAI2BB2X1M U81 ( .B0(n227), .B1(n22), .A0N(REG3[7]), .A1N(n22), .Y(n81) );
  OAI2BB2X1M U82 ( .B0(n220), .B1(n18), .A0N(REG1[0]), .A1N(n18), .Y(n58) );
  OAI2BB2X1M U83 ( .B0(n221), .B1(n18), .A0N(REG1[1]), .A1N(n18), .Y(n59) );
  OAI2BB2X1M U84 ( .B0(n222), .B1(n18), .A0N(REG1[2]), .A1N(n18), .Y(n60) );
  OAI2BB2X1M U85 ( .B0(n223), .B1(n18), .A0N(REG1[3]), .A1N(n18), .Y(n61) );
  OAI2BB2X1M U86 ( .B0(n224), .B1(n18), .A0N(REG1[4]), .A1N(n18), .Y(n62) );
  OAI2BB2X1M U87 ( .B0(n225), .B1(n18), .A0N(REG1[5]), .A1N(n18), .Y(n63) );
  OAI2BB2X1M U88 ( .B0(n226), .B1(n18), .A0N(REG1[6]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U89 ( .B0(n227), .B1(n18), .A0N(REG1[7]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U90 ( .B0(n220), .B1(n30), .A0N(\REG[8][0] ), .A1N(n30), .Y(n114)
         );
  OAI2BB2X1M U91 ( .B0(n221), .B1(n30), .A0N(\REG[8][1] ), .A1N(n30), .Y(n115)
         );
  OAI2BB2X1M U92 ( .B0(n222), .B1(n30), .A0N(\REG[8][2] ), .A1N(n30), .Y(n116)
         );
  OAI2BB2X1M U93 ( .B0(n223), .B1(n30), .A0N(\REG[8][3] ), .A1N(n30), .Y(n117)
         );
  OAI2BB2X1M U94 ( .B0(n224), .B1(n30), .A0N(\REG[8][4] ), .A1N(n30), .Y(n118)
         );
  OAI2BB2X1M U95 ( .B0(n225), .B1(n30), .A0N(\REG[8][5] ), .A1N(n30), .Y(n119)
         );
  OAI2BB2X1M U96 ( .B0(n226), .B1(n30), .A0N(\REG[8][6] ), .A1N(n30), .Y(n120)
         );
  OAI2BB2X1M U97 ( .B0(n227), .B1(n30), .A0N(\REG[8][7] ), .A1N(n30), .Y(n121)
         );
  OAI2BB2X1M U98 ( .B0(n220), .B1(n32), .A0N(\REG[9][0] ), .A1N(n32), .Y(n122)
         );
  OAI2BB2X1M U99 ( .B0(n221), .B1(n32), .A0N(\REG[9][1] ), .A1N(n32), .Y(n123)
         );
  OAI2BB2X1M U100 ( .B0(n222), .B1(n32), .A0N(\REG[9][2] ), .A1N(n32), .Y(n124) );
  OAI2BB2X1M U101 ( .B0(n223), .B1(n32), .A0N(\REG[9][3] ), .A1N(n32), .Y(n125) );
  OAI2BB2X1M U102 ( .B0(n224), .B1(n32), .A0N(\REG[9][4] ), .A1N(n32), .Y(n126) );
  OAI2BB2X1M U103 ( .B0(n225), .B1(n32), .A0N(\REG[9][5] ), .A1N(n32), .Y(n127) );
  OAI2BB2X1M U104 ( .B0(n226), .B1(n32), .A0N(\REG[9][6] ), .A1N(n32), .Y(n128) );
  OAI2BB2X1M U105 ( .B0(n227), .B1(n32), .A0N(\REG[9][7] ), .A1N(n32), .Y(n129) );
  OAI2BB2X1M U106 ( .B0(n220), .B1(n34), .A0N(\REG[10][0] ), .A1N(n34), .Y(
        n130) );
  OAI2BB2X1M U107 ( .B0(n221), .B1(n34), .A0N(\REG[10][1] ), .A1N(n34), .Y(
        n131) );
  OAI2BB2X1M U108 ( .B0(n222), .B1(n34), .A0N(\REG[10][2] ), .A1N(n34), .Y(
        n132) );
  OAI2BB2X1M U109 ( .B0(n223), .B1(n34), .A0N(\REG[10][3] ), .A1N(n34), .Y(
        n133) );
  OAI2BB2X1M U110 ( .B0(n224), .B1(n34), .A0N(\REG[10][4] ), .A1N(n34), .Y(
        n134) );
  OAI2BB2X1M U111 ( .B0(n225), .B1(n34), .A0N(\REG[10][5] ), .A1N(n34), .Y(
        n135) );
  OAI2BB2X1M U112 ( .B0(n226), .B1(n34), .A0N(\REG[10][6] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U113 ( .B0(n227), .B1(n34), .A0N(\REG[10][7] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U114 ( .B0(n220), .B1(n35), .A0N(\REG[11][0] ), .A1N(n35), .Y(
        n138) );
  OAI2BB2X1M U115 ( .B0(n221), .B1(n35), .A0N(\REG[11][1] ), .A1N(n35), .Y(
        n139) );
  OAI2BB2X1M U116 ( .B0(n222), .B1(n35), .A0N(\REG[11][2] ), .A1N(n35), .Y(
        n140) );
  OAI2BB2X1M U117 ( .B0(n223), .B1(n35), .A0N(\REG[11][3] ), .A1N(n35), .Y(
        n141) );
  OAI2BB2X1M U118 ( .B0(n224), .B1(n35), .A0N(\REG[11][4] ), .A1N(n35), .Y(
        n142) );
  OAI2BB2X1M U119 ( .B0(n225), .B1(n35), .A0N(\REG[11][5] ), .A1N(n35), .Y(
        n143) );
  OAI2BB2X1M U120 ( .B0(n226), .B1(n35), .A0N(\REG[11][6] ), .A1N(n35), .Y(
        n144) );
  OAI2BB2X1M U121 ( .B0(n227), .B1(n35), .A0N(\REG[11][7] ), .A1N(n35), .Y(
        n145) );
  OAI2BB2X1M U122 ( .B0(n220), .B1(n23), .A0N(\REG[4][0] ), .A1N(n23), .Y(n82)
         );
  OAI2BB2X1M U123 ( .B0(n221), .B1(n23), .A0N(\REG[4][1] ), .A1N(n23), .Y(n83)
         );
  OAI2BB2X1M U124 ( .B0(n222), .B1(n23), .A0N(\REG[4][2] ), .A1N(n23), .Y(n84)
         );
  OAI2BB2X1M U125 ( .B0(n223), .B1(n23), .A0N(\REG[4][3] ), .A1N(n23), .Y(n85)
         );
  OAI2BB2X1M U126 ( .B0(n224), .B1(n23), .A0N(\REG[4][4] ), .A1N(n23), .Y(n86)
         );
  OAI2BB2X1M U127 ( .B0(n225), .B1(n23), .A0N(\REG[4][5] ), .A1N(n23), .Y(n87)
         );
  OAI2BB2X1M U128 ( .B0(n226), .B1(n23), .A0N(\REG[4][6] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U129 ( .B0(n227), .B1(n23), .A0N(\REG[4][7] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U130 ( .B0(n220), .B1(n25), .A0N(\REG[5][0] ), .A1N(n25), .Y(n90)
         );
  OAI2BB2X1M U131 ( .B0(n221), .B1(n25), .A0N(\REG[5][1] ), .A1N(n25), .Y(n91)
         );
  OAI2BB2X1M U132 ( .B0(n222), .B1(n25), .A0N(\REG[5][2] ), .A1N(n25), .Y(n92)
         );
  OAI2BB2X1M U133 ( .B0(n223), .B1(n25), .A0N(\REG[5][3] ), .A1N(n25), .Y(n93)
         );
  OAI2BB2X1M U134 ( .B0(n224), .B1(n25), .A0N(\REG[5][4] ), .A1N(n25), .Y(n94)
         );
  OAI2BB2X1M U135 ( .B0(n225), .B1(n25), .A0N(\REG[5][5] ), .A1N(n25), .Y(n95)
         );
  OAI2BB2X1M U136 ( .B0(n226), .B1(n25), .A0N(\REG[5][6] ), .A1N(n25), .Y(n96)
         );
  OAI2BB2X1M U137 ( .B0(n227), .B1(n25), .A0N(\REG[5][7] ), .A1N(n25), .Y(n97)
         );
  OAI2BB2X1M U138 ( .B0(n220), .B1(n26), .A0N(\REG[6][0] ), .A1N(n26), .Y(n98)
         );
  OAI2BB2X1M U139 ( .B0(n221), .B1(n26), .A0N(\REG[6][1] ), .A1N(n26), .Y(n99)
         );
  OAI2BB2X1M U140 ( .B0(n222), .B1(n26), .A0N(\REG[6][2] ), .A1N(n26), .Y(n100) );
  OAI2BB2X1M U141 ( .B0(n223), .B1(n26), .A0N(\REG[6][3] ), .A1N(n26), .Y(n101) );
  OAI2BB2X1M U142 ( .B0(n224), .B1(n26), .A0N(\REG[6][4] ), .A1N(n26), .Y(n102) );
  OAI2BB2X1M U143 ( .B0(n225), .B1(n26), .A0N(\REG[6][5] ), .A1N(n26), .Y(n103) );
  OAI2BB2X1M U144 ( .B0(n226), .B1(n26), .A0N(\REG[6][6] ), .A1N(n26), .Y(n104) );
  OAI2BB2X1M U145 ( .B0(n227), .B1(n26), .A0N(\REG[6][7] ), .A1N(n26), .Y(n105) );
  OAI2BB2X1M U146 ( .B0(n220), .B1(n29), .A0N(\REG[7][0] ), .A1N(n29), .Y(n106) );
  OAI2BB2X1M U147 ( .B0(n221), .B1(n29), .A0N(\REG[7][1] ), .A1N(n29), .Y(n107) );
  OAI2BB2X1M U148 ( .B0(n222), .B1(n29), .A0N(\REG[7][2] ), .A1N(n29), .Y(n108) );
  OAI2BB2X1M U149 ( .B0(n223), .B1(n29), .A0N(\REG[7][3] ), .A1N(n29), .Y(n109) );
  OAI2BB2X1M U150 ( .B0(n224), .B1(n29), .A0N(\REG[7][4] ), .A1N(n29), .Y(n110) );
  OAI2BB2X1M U151 ( .B0(n225), .B1(n29), .A0N(\REG[7][5] ), .A1N(n29), .Y(n111) );
  OAI2BB2X1M U152 ( .B0(n226), .B1(n29), .A0N(\REG[7][6] ), .A1N(n29), .Y(n112) );
  OAI2BB2X1M U153 ( .B0(n227), .B1(n29), .A0N(\REG[7][7] ), .A1N(n29), .Y(n113) );
  OAI2BB2X1M U154 ( .B0(n220), .B1(n36), .A0N(\REG[12][0] ), .A1N(n36), .Y(
        n146) );
  OAI2BB2X1M U155 ( .B0(n221), .B1(n36), .A0N(\REG[12][1] ), .A1N(n36), .Y(
        n147) );
  OAI2BB2X1M U156 ( .B0(n222), .B1(n36), .A0N(\REG[12][2] ), .A1N(n36), .Y(
        n148) );
  OAI2BB2X1M U157 ( .B0(n223), .B1(n36), .A0N(\REG[12][3] ), .A1N(n36), .Y(
        n149) );
  OAI2BB2X1M U158 ( .B0(n224), .B1(n36), .A0N(\REG[12][4] ), .A1N(n36), .Y(
        n150) );
  OAI2BB2X1M U159 ( .B0(n225), .B1(n36), .A0N(\REG[12][5] ), .A1N(n36), .Y(
        n151) );
  OAI2BB2X1M U160 ( .B0(n226), .B1(n36), .A0N(\REG[12][6] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U161 ( .B0(n227), .B1(n36), .A0N(\REG[12][7] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U162 ( .B0(n220), .B1(n37), .A0N(\REG[13][0] ), .A1N(n37), .Y(
        n154) );
  OAI2BB2X1M U163 ( .B0(n221), .B1(n37), .A0N(\REG[13][1] ), .A1N(n37), .Y(
        n155) );
  OAI2BB2X1M U164 ( .B0(n222), .B1(n37), .A0N(\REG[13][2] ), .A1N(n37), .Y(
        n156) );
  OAI2BB2X1M U165 ( .B0(n223), .B1(n37), .A0N(\REG[13][3] ), .A1N(n37), .Y(
        n157) );
  OAI2BB2X1M U166 ( .B0(n224), .B1(n37), .A0N(\REG[13][4] ), .A1N(n37), .Y(
        n158) );
  OAI2BB2X1M U167 ( .B0(n225), .B1(n37), .A0N(\REG[13][5] ), .A1N(n37), .Y(
        n159) );
  OAI2BB2X1M U168 ( .B0(n226), .B1(n37), .A0N(\REG[13][6] ), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U169 ( .B0(n227), .B1(n37), .A0N(\REG[13][7] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U170 ( .B0(n220), .B1(n38), .A0N(\REG[14][0] ), .A1N(n38), .Y(
        n162) );
  OAI2BB2X1M U171 ( .B0(n221), .B1(n38), .A0N(\REG[14][1] ), .A1N(n38), .Y(
        n163) );
  OAI2BB2X1M U172 ( .B0(n222), .B1(n38), .A0N(\REG[14][2] ), .A1N(n38), .Y(
        n164) );
  OAI2BB2X1M U173 ( .B0(n223), .B1(n38), .A0N(\REG[14][3] ), .A1N(n38), .Y(
        n165) );
  OAI2BB2X1M U174 ( .B0(n224), .B1(n38), .A0N(\REG[14][4] ), .A1N(n38), .Y(
        n166) );
  OAI2BB2X1M U175 ( .B0(n225), .B1(n38), .A0N(\REG[14][5] ), .A1N(n38), .Y(
        n167) );
  OAI2BB2X1M U176 ( .B0(n226), .B1(n38), .A0N(\REG[14][6] ), .A1N(n38), .Y(
        n168) );
  OAI2BB2X1M U177 ( .B0(n227), .B1(n38), .A0N(\REG[14][7] ), .A1N(n38), .Y(
        n169) );
  OAI2BB2X1M U178 ( .B0(n220), .B1(n40), .A0N(\REG[15][0] ), .A1N(n40), .Y(
        n170) );
  OAI2BB2X1M U179 ( .B0(n221), .B1(n40), .A0N(\REG[15][1] ), .A1N(n40), .Y(
        n171) );
  OAI2BB2X1M U180 ( .B0(n222), .B1(n40), .A0N(\REG[15][2] ), .A1N(n40), .Y(
        n172) );
  OAI2BB2X1M U181 ( .B0(n223), .B1(n40), .A0N(\REG[15][3] ), .A1N(n40), .Y(
        n173) );
  OAI2BB2X1M U182 ( .B0(n224), .B1(n40), .A0N(\REG[15][4] ), .A1N(n40), .Y(
        n174) );
  OAI2BB2X1M U183 ( .B0(n225), .B1(n40), .A0N(\REG[15][5] ), .A1N(n40), .Y(
        n175) );
  OAI2BB2X1M U184 ( .B0(n226), .B1(n40), .A0N(\REG[15][6] ), .A1N(n40), .Y(
        n176) );
  OAI2BB2X1M U185 ( .B0(n227), .B1(n40), .A0N(\REG[15][7] ), .A1N(n40), .Y(
        n177) );
  OAI2BB2X1M U186 ( .B0(n220), .B1(n20), .A0N(REG2[0]), .A1N(n20), .Y(n66) );
  OAI2BB2X1M U187 ( .B0(n227), .B1(n20), .A0N(REG2[7]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U188 ( .B0(n225), .B1(n22), .A0N(REG3[5]), .A1N(n22), .Y(n79) );
  AO22X1M U189 ( .A0(N42), .A1(n228), .B0(RdData[1]), .B1(n14), .Y(n43) );
  MX4X1M U190 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U191 ( .A(\REG[8][1] ), .B(\REG[9][1] ), .C(\REG[10][1] ), .D(
        \REG[11][1] ), .S0(N11), .S1(n199), .Y(n6) );
  MX4X1M U192 ( .A(\REG[12][1] ), .B(\REG[13][1] ), .C(\REG[14][1] ), .D(
        \REG[15][1] ), .S0(n201), .S1(n199), .Y(n5) );
  AO22X1M U193 ( .A0(N38), .A1(n228), .B0(RdData[5]), .B1(n14), .Y(n47) );
  MX4X1M U194 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U195 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U196 ( .A(\REG[8][5] ), .B(\REG[9][5] ), .C(\REG[10][5] ), .D(
        \REG[11][5] ), .S0(n202), .S1(N12), .Y(n187) );
  AO22X1M U197 ( .A0(N37), .A1(n228), .B0(RdData[6]), .B1(n14), .Y(n48) );
  MX4X1M U198 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U199 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U200 ( .A(\REG[8][6] ), .B(\REG[9][6] ), .C(\REG[10][6] ), .D(
        \REG[11][6] ), .S0(n202), .S1(N12), .Y(n191) );
  AO22X1M U201 ( .A0(N36), .A1(n228), .B0(RdData[7]), .B1(n14), .Y(n49) );
  MX4X1M U202 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U203 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U204 ( .A(\REG[8][7] ), .B(\REG[9][7] ), .C(\REG[10][7] ), .D(
        \REG[11][7] ), .S0(n202), .S1(N12), .Y(n195) );
  MX4X1M U205 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(n199), .Y(n8) );
  MX4X1M U206 ( .A(\REG[4][0] ), .B(\REG[5][0] ), .C(\REG[6][0] ), .D(
        \REG[7][0] ), .S0(N11), .S1(n199), .Y(n3) );
  MX4X1M U207 ( .A(\REG[4][1] ), .B(\REG[5][1] ), .C(\REG[6][1] ), .D(
        \REG[7][1] ), .S0(n201), .S1(n199), .Y(n7) );
  MX4X1M U208 ( .A(\REG[4][2] ), .B(\REG[5][2] ), .C(\REG[6][2] ), .D(
        \REG[7][2] ), .S0(n201), .S1(N12), .Y(n11) );
  MX4X1M U209 ( .A(\REG[4][3] ), .B(\REG[5][3] ), .C(\REG[6][3] ), .D(
        \REG[7][3] ), .S0(n201), .S1(N12), .Y(n180) );
  MX4X1M U210 ( .A(\REG[4][4] ), .B(\REG[5][4] ), .C(\REG[6][4] ), .D(
        \REG[7][4] ), .S0(n201), .S1(N12), .Y(n184) );
  MX4X1M U211 ( .A(\REG[4][5] ), .B(\REG[5][5] ), .C(\REG[6][5] ), .D(
        \REG[7][5] ), .S0(n202), .S1(N12), .Y(n188) );
  MX4X1M U212 ( .A(\REG[4][6] ), .B(\REG[5][6] ), .C(\REG[6][6] ), .D(
        \REG[7][6] ), .S0(n202), .S1(N12), .Y(n192) );
  MX4X1M U213 ( .A(\REG[4][7] ), .B(\REG[5][7] ), .C(\REG[6][7] ), .D(
        \REG[7][7] ), .S0(n202), .S1(N12), .Y(n196) );
  MX4X1M U214 ( .A(\REG[12][0] ), .B(\REG[13][0] ), .C(\REG[14][0] ), .D(
        \REG[15][0] ), .S0(n202), .S1(n199), .Y(n1) );
  MX4X1M U215 ( .A(\REG[12][2] ), .B(\REG[13][2] ), .C(\REG[14][2] ), .D(
        \REG[15][2] ), .S0(n201), .S1(n199), .Y(n9) );
  MX4X1M U216 ( .A(\REG[12][3] ), .B(\REG[13][3] ), .C(\REG[14][3] ), .D(
        \REG[15][3] ), .S0(n201), .S1(n199), .Y(n178) );
  MX4X1M U217 ( .A(\REG[12][4] ), .B(\REG[13][4] ), .C(\REG[14][4] ), .D(
        \REG[15][4] ), .S0(n201), .S1(N12), .Y(n182) );
  MX4X1M U218 ( .A(\REG[12][5] ), .B(\REG[13][5] ), .C(\REG[14][5] ), .D(
        \REG[15][5] ), .S0(n202), .S1(n199), .Y(n186) );
  MX4X1M U219 ( .A(\REG[12][6] ), .B(\REG[13][6] ), .C(\REG[14][6] ), .D(
        \REG[15][6] ), .S0(n202), .S1(n199), .Y(n190) );
  MX4X1M U220 ( .A(\REG[12][7] ), .B(\REG[13][7] ), .C(\REG[14][7] ), .D(
        \REG[15][7] ), .S0(n202), .S1(n199), .Y(n194) );
  AO22X1M U221 ( .A0(N43), .A1(n228), .B0(RdData[0]), .B1(n14), .Y(n42) );
  MX4X1M U222 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U223 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n199), .Y(n4) );
  MX4X1M U224 ( .A(\REG[8][0] ), .B(\REG[9][0] ), .C(\REG[10][0] ), .D(
        \REG[11][0] ), .S0(N11), .S1(n199), .Y(n2) );
  AO22X1M U225 ( .A0(N41), .A1(n228), .B0(RdData[2]), .B1(n14), .Y(n44) );
  MX4X1M U226 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U227 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(N12), .Y(n12) );
  MX4X1M U228 ( .A(\REG[8][2] ), .B(\REG[9][2] ), .C(\REG[10][2] ), .D(
        \REG[11][2] ), .S0(n201), .S1(N12), .Y(n10) );
  AO22X1M U229 ( .A0(N40), .A1(n228), .B0(RdData[3]), .B1(n14), .Y(n45) );
  MX4X1M U230 ( .A(n181), .B(n179), .C(n180), .D(n178), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U231 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(N12), .Y(n181) );
  MX4X1M U232 ( .A(\REG[8][3] ), .B(\REG[9][3] ), .C(\REG[10][3] ), .D(
        \REG[11][3] ), .S0(n201), .S1(N12), .Y(n179) );
  AO22X1M U233 ( .A0(N39), .A1(n228), .B0(RdData[4]), .B1(n14), .Y(n46) );
  MX4X1M U234 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U235 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(N12), .Y(n185) );
  MX4X1M U236 ( .A(\REG[8][4] ), .B(\REG[9][4] ), .C(\REG[10][4] ), .D(
        \REG[11][4] ), .S0(n201), .S1(N12), .Y(n183) );
  INVX2M U237 ( .A(N12), .Y(n204) );
  INVX2M U238 ( .A(N11), .Y(n203) );
  AO21XLM U239 ( .A0(RdData_Valid), .A1(n13), .B0(n228), .Y(n41) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
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
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n18), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n18), .Y(n5) );
  NAND2X2M U15 ( .A(n5), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n7) );
  NAND2X2M U17 ( .A(n5), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U18 ( .A(a[2]), .Y(n8) );
  NAND2X2M U19 ( .A(n5), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U20 ( .A(a[1]), .Y(n9) );
  NAND2X2M U21 ( .A(n5), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U22 ( .A(a[0]), .Y(n10) );
  NAND2X2M U23 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U24 ( .A(a[6]), .Y(n2) );
  INVX2M U25 ( .A(n18), .Y(n1) );
  XNOR2X2M U26 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
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
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  INVX2M U8 ( .A(B[1]), .Y(n8) );
  NAND2X2M U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_DATA_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , 
        \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n14, n13, n15, n11, n12, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n6), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n19) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[6]), .Y(n25) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[3]), .Y(n36) );
  INVX2M U41 ( .A(A[2]), .Y(n37) );
  INVX2M U42 ( .A(A[4]), .Y(n35) );
  INVX2M U43 ( .A(A[7]), .Y(n32) );
  INVX2M U44 ( .A(A[6]), .Y(n33) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[3]), .Y(n28) );
  INVX2M U47 ( .A(B[7]), .Y(n24) );
  INVX2M U48 ( .A(B[4]), .Y(n27) );
  INVX2M U49 ( .A(B[5]), .Y(n26) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
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
endmodule


module ALU_DATA_WIDTH8 ( CLK, RST, EN, A, B, ALU_FUN, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N156, N157, N158, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140;
  wire   [15:0] ALU_OUT_Comb;

  ALU_DATA_WIDTH8_DW_div_uns_0 div_37 ( .a({n12, n11, n10, n9, n8, n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N131, N130, N129, N128, N127, N126, N125, 
        N124}) );
  ALU_DATA_WIDTH8_DW01_sub_0 sub_31 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N107, N106, N105, 
        N104, N103, N102, N101, N100, N99}) );
  ALU_DATA_WIDTH8_DW01_add_0 add_28 ( .A({1'b0, n12, n11, n10, n9, n8, n7, n6, 
        n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N98, N97, N96, 
        N95, N94, N93, N92, N91, N90}) );
  ALU_DATA_WIDTH8_DW02_mult_0 mult_34 ( .A({n12, n11, n10, n9, n8, n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  NOR3BX2M U3 ( .AN(n105), .B(n138), .C(ALU_FUN[2]), .Y(n49) );
  NOR3X2M U4 ( .A(n136), .B(ALU_FUN[2]), .C(n138), .Y(n35) );
  BUFX2M U7 ( .A(A[6]), .Y(n11) );
  INVX2M U8 ( .A(EN), .Y(n140) );
  OAI2BB1X2M U9 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U10 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U11 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U12 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U13 ( .A0N(N117), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U14 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U15 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U16 ( .A0N(n100), .A1N(n99), .B0(n101), .Y(n48) );
  OAI2BB1X2M U17 ( .A0N(n139), .A1N(n105), .B0(n101), .Y(n47) );
  NOR2BX2M U18 ( .AN(n106), .B(n136), .Y(n37) );
  NAND2X2M U19 ( .A(EN), .B(n123), .Y(n32) );
  AND2X2M U20 ( .A(n99), .B(n105), .Y(n42) );
  NOR2BX2M U21 ( .AN(n35), .B(n140), .Y(n31) );
  AND2X2M U22 ( .A(n106), .B(n105), .Y(n50) );
  INVX2M U23 ( .A(n100), .Y(n136) );
  BUFX2M U24 ( .A(n41), .Y(n13) );
  NOR2X2M U25 ( .A(n107), .B(n136), .Y(n41) );
  INVX2M U26 ( .A(n91), .Y(n137) );
  INVX2M U27 ( .A(n107), .Y(n139) );
  AOI31X2M U28 ( .A0(n93), .A1(n94), .A2(n95), .B0(n140), .Y(ALU_OUT_Comb[0])
         );
  AOI22X1M U29 ( .A0(N99), .A1(n50), .B0(N90), .B1(n37), .Y(n93) );
  AOI211X2M U30 ( .A0(n13), .A1(n134), .B0(n96), .C0(n97), .Y(n95) );
  AOI222X1M U31 ( .A0(N108), .A1(n35), .B0(n5), .B1(n42), .C0(N124), .C1(n49), 
        .Y(n94) );
  AOI31X2M U32 ( .A0(n81), .A1(n82), .A2(n83), .B0(n140), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U33 ( .A0(N91), .A1(n37), .B0(N109), .B1(n35), .C0(N100), .C1(n50), 
        .Y(n81) );
  AOI211X2M U34 ( .A0(n7), .A1(n137), .B0(n84), .C0(n85), .Y(n83) );
  AOI222X1M U35 ( .A0(N125), .A1(n49), .B0(n13), .B1(n133), .C0(n6), .C1(n42), 
        .Y(n82) );
  AOI31X2M U36 ( .A0(n75), .A1(n76), .A2(n77), .B0(n140), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U37 ( .A0(N101), .A1(n50), .B0(N92), .B1(n37), .Y(n75) );
  AOI221XLM U38 ( .A0(n8), .A1(n137), .B0(n13), .B1(n132), .C0(n78), .Y(n77)
         );
  AOI222X1M U39 ( .A0(N110), .A1(n35), .B0(n7), .B1(n42), .C0(N126), .C1(n49), 
        .Y(n76) );
  AOI31X2M U40 ( .A0(n69), .A1(n70), .A2(n71), .B0(n140), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U41 ( .A0(N102), .A1(n50), .B0(N93), .B1(n37), .Y(n69) );
  AOI221XLM U42 ( .A0(n9), .A1(n137), .B0(n13), .B1(n131), .C0(n72), .Y(n71)
         );
  AOI222X1M U43 ( .A0(N111), .A1(n35), .B0(n8), .B1(n42), .C0(N127), .C1(n49), 
        .Y(n70) );
  AOI31X2M U44 ( .A0(n63), .A1(n64), .A2(n65), .B0(n140), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U45 ( .A0(N103), .A1(n50), .B0(N94), .B1(n37), .Y(n63) );
  AOI221XLM U46 ( .A0(n137), .A1(n10), .B0(n13), .B1(n130), .C0(n66), .Y(n65)
         );
  AOI222X1M U47 ( .A0(N112), .A1(n35), .B0(n9), .B1(n42), .C0(N128), .C1(n49), 
        .Y(n64) );
  OAI222X1M U48 ( .A0(n55), .A1(n122), .B0(n4), .B1(n56), .C0(n36), .C1(n129), 
        .Y(n54) );
  AOI221XLM U49 ( .A0(n11), .A1(n46), .B0(n47), .B1(n128), .C0(n13), .Y(n56)
         );
  AOI221XLM U50 ( .A0(n46), .A1(n128), .B0(n11), .B1(n48), .C0(n42), .Y(n55)
         );
  INVX2M U51 ( .A(ALU_FUN[1]), .Y(n138) );
  AOI31X2M U52 ( .A0(n57), .A1(n58), .A2(n59), .B0(n140), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U53 ( .A0(N104), .A1(n50), .B0(N95), .B1(n37), .Y(n57) );
  AOI221XLM U54 ( .A0(n137), .A1(n11), .B0(n13), .B1(n129), .C0(n60), .Y(n59)
         );
  AOI222X1M U55 ( .A0(N113), .A1(n35), .B0(n10), .B1(n42), .C0(N129), .C1(n49), 
        .Y(n58) );
  AOI31X2M U56 ( .A0(n51), .A1(n52), .A2(n53), .B0(n140), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U57 ( .A0(N105), .A1(n50), .B0(N96), .B1(n37), .Y(n51) );
  AOI221XLM U58 ( .A0(n137), .A1(n12), .B0(n13), .B1(n128), .C0(n54), .Y(n53)
         );
  AOI222X1M U59 ( .A0(N114), .A1(n35), .B0(n42), .B1(n11), .C0(N130), .C1(n49), 
        .Y(n52) );
  AOI31X2M U60 ( .A0(n38), .A1(n39), .A2(n40), .B0(n140), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U61 ( .A0(N106), .A1(n50), .B0(N97), .B1(n37), .Y(n38) );
  AOI221XLM U62 ( .A0(n13), .A1(n127), .B0(n42), .B1(n12), .C0(n43), .Y(n40)
         );
  AOI22X1M U63 ( .A0(N131), .A1(n49), .B0(N115), .B1(n35), .Y(n39) );
  AOI21X2M U64 ( .A0(n33), .A1(n34), .B0(n140), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U65 ( .A0(N98), .A1(n37), .B0(n123), .Y(n33) );
  AOI2BB2XLM U66 ( .B0(N116), .B1(n35), .A0N(n127), .A1N(n36), .Y(n34) );
  AND2X2M U67 ( .A(ALU_FUN[2]), .B(n138), .Y(n99) );
  NOR2X2M U68 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND2X2M U69 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n107) );
  INVX2M U70 ( .A(n4), .Y(n122) );
  INVX2M U71 ( .A(ALU_FUN[0]), .Y(n135) );
  AND3X2M U72 ( .A(n106), .B(n135), .C(n3), .Y(n46) );
  NAND3X2M U73 ( .A(n3), .B(ALU_FUN[0]), .C(n99), .Y(n91) );
  NAND3X2M U74 ( .A(n139), .B(n135), .C(n3), .Y(n36) );
  NOR2X2M U75 ( .A(n3), .B(ALU_FUN[0]), .Y(n100) );
  NOR2X2M U76 ( .A(n135), .B(n3), .Y(n105) );
  NAND3X2M U77 ( .A(n106), .B(ALU_FUN[0]), .C(n3), .Y(n101) );
  INVX2M U78 ( .A(n92), .Y(n123) );
  AOI211X2M U79 ( .A0(N107), .A1(n50), .B0(n13), .C0(n47), .Y(n92) );
  AND4X2M U80 ( .A(N158), .B(n99), .C(n3), .D(n135), .Y(n90) );
  INVX2M U81 ( .A(n6), .Y(n133) );
  INVX2M U82 ( .A(n5), .Y(n134) );
  INVX2M U83 ( .A(n11), .Y(n128) );
  INVX2M U84 ( .A(n12), .Y(n127) );
  INVX2M U85 ( .A(n8), .Y(n131) );
  INVX2M U86 ( .A(n7), .Y(n132) );
  INVX2M U87 ( .A(n10), .Y(n129) );
  INVX2M U88 ( .A(n9), .Y(n130) );
  BUFX2M U89 ( .A(A[7]), .Y(n12) );
  BUFX2M U90 ( .A(B[6]), .Y(n4) );
  BUFX2M U91 ( .A(A[5]), .Y(n10) );
  BUFX2M U92 ( .A(A[4]), .Y(n9) );
  BUFX2M U93 ( .A(A[3]), .Y(n8) );
  BUFX2M U94 ( .A(A[2]), .Y(n7) );
  BUFX2M U95 ( .A(A[1]), .Y(n6) );
  BUFX2M U96 ( .A(A[0]), .Y(n5) );
  OAI2B2X1M U97 ( .A1N(B[0]), .A0(n98), .B0(n91), .B1(n133), .Y(n97) );
  AOI221XLM U98 ( .A0(n46), .A1(n134), .B0(n5), .B1(n48), .C0(n42), .Y(n98) );
  OAI2B2X1M U99 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n134), .Y(n85) );
  AOI221XLM U100 ( .A0(n46), .A1(n133), .B0(n6), .B1(n48), .C0(n42), .Y(n86)
         );
  OAI222X1M U101 ( .A0(n79), .A1(n119), .B0(B[2]), .B1(n80), .C0(n36), .C1(
        n133), .Y(n78) );
  AOI221XLM U102 ( .A0(n7), .A1(n46), .B0(n47), .B1(n132), .C0(n13), .Y(n80)
         );
  AOI221XLM U103 ( .A0(n46), .A1(n132), .B0(n7), .B1(n48), .C0(n42), .Y(n79)
         );
  OAI222X1M U104 ( .A0(n73), .A1(n121), .B0(B[3]), .B1(n74), .C0(n36), .C1(
        n132), .Y(n72) );
  AOI221XLM U105 ( .A0(n8), .A1(n46), .B0(n47), .B1(n131), .C0(n13), .Y(n74)
         );
  AOI221XLM U106 ( .A0(n46), .A1(n131), .B0(n8), .B1(n48), .C0(n42), .Y(n73)
         );
  OAI222X1M U107 ( .A0(n67), .A1(n126), .B0(B[4]), .B1(n68), .C0(n36), .C1(
        n131), .Y(n66) );
  INVX2M U108 ( .A(B[4]), .Y(n126) );
  AOI221XLM U109 ( .A0(n9), .A1(n46), .B0(n47), .B1(n130), .C0(n13), .Y(n68)
         );
  AOI221XLM U110 ( .A0(n46), .A1(n130), .B0(n9), .B1(n48), .C0(n42), .Y(n67)
         );
  OAI222X1M U111 ( .A0(n61), .A1(n125), .B0(B[5]), .B1(n62), .C0(n36), .C1(
        n130), .Y(n60) );
  INVX2M U112 ( .A(B[5]), .Y(n125) );
  AOI221XLM U113 ( .A0(n10), .A1(n46), .B0(n47), .B1(n129), .C0(n13), .Y(n62)
         );
  AOI221XLM U114 ( .A0(n46), .A1(n129), .B0(n10), .B1(n48), .C0(n42), .Y(n61)
         );
  OAI222X1M U115 ( .A0(n44), .A1(n124), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n128), .Y(n43) );
  INVX2M U116 ( .A(B[7]), .Y(n124) );
  AOI221XLM U117 ( .A0(n46), .A1(n12), .B0(n47), .B1(n127), .C0(n13), .Y(n45)
         );
  AOI221XLM U118 ( .A0(n46), .A1(n127), .B0(n12), .B1(n48), .C0(n42), .Y(n44)
         );
  INVX2M U119 ( .A(n25), .Y(n120) );
  INVX2M U120 ( .A(n14), .Y(n118) );
  OAI21X2M U121 ( .A0(B[0]), .A1(n102), .B0(n103), .Y(n96) );
  AOI31X2M U122 ( .A0(N156), .A1(n3), .A2(n104), .B0(n90), .Y(n103) );
  AOI221XLM U123 ( .A0(n5), .A1(n46), .B0(n47), .B1(n134), .C0(n13), .Y(n102)
         );
  NOR3X2M U124 ( .A(n138), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  OAI21X2M U125 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  AOI31X2M U126 ( .A0(N157), .A1(n3), .A2(n89), .B0(n90), .Y(n88) );
  AOI221XLM U127 ( .A0(n6), .A1(n46), .B0(n47), .B1(n133), .C0(n13), .Y(n87)
         );
  NOR3X2M U128 ( .A(n135), .B(ALU_FUN[2]), .C(n138), .Y(n89) );
  BUFX2M U129 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U130 ( .A(B[0]), .Y(n117) );
  INVX2M U131 ( .A(B[2]), .Y(n119) );
  INVX2M U132 ( .A(B[3]), .Y(n121) );
  NOR2X1M U133 ( .A(n127), .B(B[7]), .Y(n113) );
  NAND2BX1M U134 ( .AN(B[4]), .B(n9), .Y(n29) );
  NAND2BX1M U135 ( .AN(n9), .B(B[4]), .Y(n18) );
  CLKNAND2X2M U136 ( .A(n29), .B(n18), .Y(n108) );
  NOR2X1M U137 ( .A(n121), .B(n8), .Y(n26) );
  NOR2X1M U138 ( .A(n119), .B(n7), .Y(n17) );
  NOR2X1M U139 ( .A(n117), .B(n5), .Y(n14) );
  CLKNAND2X2M U140 ( .A(n7), .B(n119), .Y(n28) );
  NAND2BX1M U141 ( .AN(n17), .B(n28), .Y(n23) );
  AOI21X1M U142 ( .A0(n14), .A1(n133), .B0(B[1]), .Y(n15) );
  AOI211X1M U143 ( .A0(n6), .A1(n118), .B0(n23), .C0(n15), .Y(n16) );
  CLKNAND2X2M U144 ( .A(n8), .B(n121), .Y(n27) );
  OAI31X1M U145 ( .A0(n26), .A1(n17), .A2(n16), .B0(n27), .Y(n19) );
  NAND2BX1M U146 ( .AN(n10), .B(B[5]), .Y(n111) );
  OAI211X1M U147 ( .A0(n108), .A1(n19), .B0(n18), .C0(n111), .Y(n20) );
  NAND2BX1M U148 ( .AN(B[5]), .B(n10), .Y(n30) );
  XNOR2X1M U149 ( .A(n11), .B(n4), .Y(n110) );
  AOI32X1M U150 ( .A0(n20), .A1(n30), .A2(n110), .B0(n4), .B1(n128), .Y(n21)
         );
  CLKNAND2X2M U151 ( .A(B[7]), .B(n127), .Y(n114) );
  OAI21X1M U152 ( .A0(n113), .A1(n21), .B0(n114), .Y(N158) );
  CLKNAND2X2M U153 ( .A(n5), .B(n117), .Y(n24) );
  OA21X1M U154 ( .A0(n24), .A1(n133), .B0(B[1]), .Y(n22) );
  AOI211X1M U155 ( .A0(n24), .A1(n133), .B0(n23), .C0(n22), .Y(n25) );
  AOI31X1M U156 ( .A0(n120), .A1(n28), .A2(n27), .B0(n26), .Y(n109) );
  OAI2B11X1M U157 ( .A1N(n109), .A0(n108), .B0(n30), .C0(n29), .Y(n112) );
  AOI32X1M U158 ( .A0(n112), .A1(n111), .A2(n110), .B0(n11), .B1(n122), .Y(
        n115) );
  AOI2B1X1M U159 ( .A1N(n115), .A0(n114), .B0(n113), .Y(n116) );
  CLKINVX1M U160 ( .A(n116), .Y(N157) );
  NOR2X1M U161 ( .A(N158), .B(N157), .Y(N156) );
endmodule


module PULSE_GEN_2 ( clk, rst, in_level, out_pulse );
  input clk, rst, in_level;
  output out_pulse;
  wire   d2, d1;

  DFFRQX2M d1_reg ( .D(in_level), .CK(clk), .RN(rst), .Q(d1) );
  DFFRQX2M d2_reg ( .D(d1), .CK(clk), .RN(rst), .Q(d2) );
  NOR2BX2M U3 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module PULSE_GEN_1 ( clk, rst, in_level, out_pulse );
  input clk, rst, in_level;
  output out_pulse;
  wire   d2, d1;

  DFFRQX2M d2_reg ( .D(d1), .CK(clk), .RN(rst), .Q(d2) );
  DFFRQX2M d1_reg ( .D(in_level), .CK(clk), .RN(rst), .Q(d1) );
  NOR2BX2M U3 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module FIFO_WR_ADDR_WIDTH3 ( wclk, wrst_n, winc, wq2_rptr, wclken, wfull, 
        waddr, wptr );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input wclk, wrst_n, winc;
  output wclken, wfull;
  wire   \wbin[3] , full_flag, n1, n2, n3, n4, n5, n6, n7;
  wire   [3:0] wbin_next;
  wire   [2:0] wgray_next;

  DFFRQX2M \wbin_reg[3]  ( .D(wbin_next[3]), .CK(wclk), .RN(wrst_n), .Q(
        \wbin[3] ) );
  DFFRQX2M \wbin_reg[2]  ( .D(wbin_next[2]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[2]) );
  DFFRQX2M wfull_reg ( .D(full_flag), .CK(wclk), .RN(wrst_n), .Q(wfull) );
  DFFRQX2M \wbin_reg[1]  ( .D(wbin_next[1]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[1]) );
  DFFRQX2M \wbin_reg[0]  ( .D(wbin_next[0]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[0]) );
  DFFRQX2M \wptr_reg[3]  ( .D(wbin_next[3]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[3]) );
  DFFRQX2M \wptr_reg[1]  ( .D(wgray_next[1]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[1]) );
  DFFRQX2M \wptr_reg[2]  ( .D(wgray_next[2]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[2]) );
  DFFRQX2M \wptr_reg[0]  ( .D(wgray_next[0]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[0]) );
  CLKXOR2X2M U3 ( .A(wbin_next[2]), .B(wbin_next[1]), .Y(wgray_next[1]) );
  CLKXOR2X2M U4 ( .A(wbin_next[1]), .B(wbin_next[0]), .Y(wgray_next[0]) );
  CLKXOR2X2M U5 ( .A(wbin_next[3]), .B(wbin_next[2]), .Y(wgray_next[2]) );
  XNOR2X2M U6 ( .A(n5), .B(waddr[1]), .Y(wbin_next[1]) );
  XNOR2X2M U7 ( .A(n7), .B(\wbin[3] ), .Y(wbin_next[3]) );
  NAND2X2M U8 ( .A(n6), .B(waddr[2]), .Y(n7) );
  NOR2BX2M U9 ( .AN(winc), .B(wfull), .Y(wclken) );
  NOR2BX2M U10 ( .AN(waddr[1]), .B(n5), .Y(n6) );
  NOR4X1M U11 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(full_flag) );
  XNOR2X2M U12 ( .A(wbin_next[3]), .B(wq2_rptr[3]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(wq2_rptr[0]), .B(wgray_next[0]), .Y(n3) );
  XNOR2X2M U14 ( .A(wgray_next[2]), .B(wq2_rptr[2]), .Y(n2) );
  NAND2X2M U15 ( .A(waddr[0]), .B(wclken), .Y(n5) );
  CLKXOR2X2M U16 ( .A(n6), .B(waddr[2]), .Y(wbin_next[2]) );
  CLKXOR2X2M U17 ( .A(wq2_rptr[1]), .B(wgray_next[1]), .Y(n4) );
  CLKXOR2X2M U18 ( .A(wclken), .B(waddr[0]), .Y(wbin_next[0]) );
endmodule


module FIFO_RD_ADDR_WIDTH3 ( rclk, rrst_n, rinc, rq2_wptr, rclken, rempty, 
        raddr, rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc;
  output rclken, rempty;
  wire   \rbin[3] , empty_flag, n1, n2, n3, n4, n5, n6, n7;
  wire   [3:0] rbin_next;
  wire   [2:0] rgray_next;

  DFFRQX2M \rbin_reg[3]  ( .D(rbin_next[3]), .CK(rclk), .RN(rrst_n), .Q(
        \rbin[3] ) );
  DFFSQX2M rempty_reg ( .D(empty_flag), .CK(rclk), .SN(rrst_n), .Q(rempty) );
  DFFRQX2M \rbin_reg[0]  ( .D(rbin_next[0]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[0]) );
  DFFRQX2M \rbin_reg[2]  ( .D(rbin_next[2]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[2]) );
  DFFRQX2M \rbin_reg[1]  ( .D(rbin_next[1]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[1]) );
  DFFRQX2M \rptr_reg[3]  ( .D(rbin_next[3]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[3]) );
  DFFRQX2M \rptr_reg[1]  ( .D(rgray_next[1]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[1]) );
  DFFRQX2M \rptr_reg[2]  ( .D(rgray_next[2]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[2]) );
  DFFRQX2M \rptr_reg[0]  ( .D(rgray_next[0]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[0]) );
  CLKXOR2X2M U3 ( .A(rbin_next[2]), .B(rbin_next[1]), .Y(rgray_next[1]) );
  CLKXOR2X2M U4 ( .A(rbin_next[1]), .B(rbin_next[0]), .Y(rgray_next[0]) );
  CLKXOR2X2M U5 ( .A(rbin_next[3]), .B(rbin_next[2]), .Y(rgray_next[2]) );
  NOR2BX2M U6 ( .AN(rinc), .B(rempty), .Y(rclken) );
  NOR2BX2M U7 ( .AN(raddr[1]), .B(n5), .Y(n6) );
  NOR4X1M U8 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(empty_flag) );
  CLKXOR2X2M U9 ( .A(rq2_wptr[3]), .B(rbin_next[3]), .Y(n2) );
  CLKXOR2X2M U10 ( .A(rq2_wptr[0]), .B(rgray_next[0]), .Y(n3) );
  CLKXOR2X2M U11 ( .A(rq2_wptr[2]), .B(rgray_next[2]), .Y(n1) );
  NAND2X2M U12 ( .A(raddr[0]), .B(rclken), .Y(n5) );
  CLKXOR2X2M U13 ( .A(n6), .B(raddr[2]), .Y(rbin_next[2]) );
  CLKXOR2X2M U14 ( .A(rq2_wptr[1]), .B(rgray_next[1]), .Y(n4) );
  XNOR2X2M U15 ( .A(n7), .B(\rbin[3] ), .Y(rbin_next[3]) );
  NAND2X2M U16 ( .A(n6), .B(raddr[2]), .Y(n7) );
  XNOR2X2M U17 ( .A(n5), .B(raddr[1]), .Y(rbin_next[1]) );
  CLKXOR2X2M U18 ( .A(rclken), .B(raddr[0]), .Y(rbin_next[0]) );
endmodule


module DF_SYNC_ADDR_WIDTH3_0 ( clk, rst, d_in, d_out );
  input [3:0] d_in;
  output [3:0] d_out;
  input clk, rst;

  wire   [3:0] reg_sync1;

  DFFRQX2M \reg_sync2_reg[3]  ( .D(reg_sync1[3]), .CK(clk), .RN(rst), .Q(
        d_out[3]) );
  DFFRQX2M \reg_sync2_reg[2]  ( .D(reg_sync1[2]), .CK(clk), .RN(rst), .Q(
        d_out[2]) );
  DFFRQX2M \reg_sync2_reg[1]  ( .D(reg_sync1[1]), .CK(clk), .RN(rst), .Q(
        d_out[1]) );
  DFFRQX2M \reg_sync2_reg[0]  ( .D(reg_sync1[0]), .CK(clk), .RN(rst), .Q(
        d_out[0]) );
  DFFRQX2M \reg_sync1_reg[3]  ( .D(d_in[3]), .CK(clk), .RN(rst), .Q(
        reg_sync1[3]) );
  DFFRQX2M \reg_sync1_reg[2]  ( .D(d_in[2]), .CK(clk), .RN(rst), .Q(
        reg_sync1[2]) );
  DFFRQX2M \reg_sync1_reg[1]  ( .D(d_in[1]), .CK(clk), .RN(rst), .Q(
        reg_sync1[1]) );
  DFFRQX2M \reg_sync1_reg[0]  ( .D(d_in[0]), .CK(clk), .RN(rst), .Q(
        reg_sync1[0]) );
endmodule


module DF_SYNC_ADDR_WIDTH3_1 ( clk, rst, d_in, d_out );
  input [3:0] d_in;
  output [3:0] d_out;
  input clk, rst;

  wire   [3:0] reg_sync1;

  DFFRQX2M \reg_sync2_reg[3]  ( .D(reg_sync1[3]), .CK(clk), .RN(rst), .Q(
        d_out[3]) );
  DFFRQX2M \reg_sync2_reg[2]  ( .D(reg_sync1[2]), .CK(clk), .RN(rst), .Q(
        d_out[2]) );
  DFFRQX2M \reg_sync2_reg[1]  ( .D(reg_sync1[1]), .CK(clk), .RN(rst), .Q(
        d_out[1]) );
  DFFRQX2M \reg_sync2_reg[0]  ( .D(reg_sync1[0]), .CK(clk), .RN(rst), .Q(
        d_out[0]) );
  DFFRQX2M \reg_sync1_reg[3]  ( .D(d_in[3]), .CK(clk), .RN(rst), .Q(
        reg_sync1[3]) );
  DFFRQX2M \reg_sync1_reg[2]  ( .D(d_in[2]), .CK(clk), .RN(rst), .Q(
        reg_sync1[2]) );
  DFFRQX2M \reg_sync1_reg[1]  ( .D(d_in[1]), .CK(clk), .RN(rst), .Q(
        reg_sync1[1]) );
  DFFRQX2M \reg_sync1_reg[0]  ( .D(d_in[0]), .CK(clk), .RN(rst), .Q(
        reg_sync1[0]) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3 ( wclk, wrst_n, wclken, wdata, 
        waddr, rclk, rrst_n, rclken, raddr, rdata );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input wclk, wrst_n, wclken, rclk, rrst_n, rclken;
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
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \mem_reg[5][7]  ( .D(n68), .CK(wclk), .RN(n99), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n67), .CK(wclk), .RN(n99), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n66), .CK(wclk), .RN(n99), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n65), .CK(wclk), .RN(n99), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n64), .CK(wclk), .RN(n99), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n63), .CK(wclk), .RN(n99), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n62), .CK(wclk), .RN(n99), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n61), .CK(wclk), .RN(n99), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[1][7]  ( .D(n36), .CK(wclk), .RN(n101), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n35), .CK(wclk), .RN(n101), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n34), .CK(wclk), .RN(n101), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n33), .CK(wclk), .RN(n101), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n32), .CK(wclk), .RN(n102), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n31), .CK(wclk), .RN(n102), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n30), .CK(wclk), .RN(n102), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n29), .CK(wclk), .RN(n102), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n84), .CK(wclk), .RN(n98), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n83), .CK(wclk), .RN(n98), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n82), .CK(wclk), .RN(n98), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n81), .CK(wclk), .RN(n98), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n80), .CK(wclk), .RN(n98), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n79), .CK(wclk), .RN(n98), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n78), .CK(wclk), .RN(n98), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n77), .CK(wclk), .RN(n98), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n52), .CK(wclk), .RN(n100), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n51), .CK(wclk), .RN(n100), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n50), .CK(wclk), .RN(n100), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n49), .CK(wclk), .RN(n100), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n48), .CK(wclk), .RN(n100), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n47), .CK(wclk), .RN(n100), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n46), .CK(wclk), .RN(n100), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n45), .CK(wclk), .RN(n101), .Q(\mem[3][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n76), .CK(wclk), .RN(n98), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n75), .CK(wclk), .RN(n98), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n74), .CK(wclk), .RN(n98), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n73), .CK(wclk), .RN(n98), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n72), .CK(wclk), .RN(n98), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n71), .CK(wclk), .RN(n99), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n70), .CK(wclk), .RN(n99), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n69), .CK(wclk), .RN(n99), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n44), .CK(wclk), .RN(n101), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n43), .CK(wclk), .RN(n101), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n42), .CK(wclk), .RN(n101), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n41), .CK(wclk), .RN(n101), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n40), .CK(wclk), .RN(n101), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n39), .CK(wclk), .RN(n101), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n38), .CK(wclk), .RN(n101), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n37), .CK(wclk), .RN(n101), .Q(\mem[2][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n60), .CK(wclk), .RN(n99), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n59), .CK(wclk), .RN(n99), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n58), .CK(wclk), .RN(n100), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n57), .CK(wclk), .RN(n100), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n56), .CK(wclk), .RN(n100), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n55), .CK(wclk), .RN(n100), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n54), .CK(wclk), .RN(n100), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n53), .CK(wclk), .RN(n100), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n28), .CK(wclk), .RN(n102), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n27), .CK(wclk), .RN(n102), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n26), .CK(wclk), .RN(n102), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n25), .CK(wclk), .RN(n102), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n24), .CK(wclk), .RN(n102), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n23), .CK(wclk), .RN(n102), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n22), .CK(wclk), .RN(n102), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n21), .CK(wclk), .RN(n102), .Q(\mem[0][0] ) );
  NAND3X2M U2 ( .A(n12), .B(n104), .C(waddr[0]), .Y(n13) );
  NAND3X2M U3 ( .A(n12), .B(n103), .C(waddr[1]), .Y(n14) );
  BUFX2M U4 ( .A(n15), .Y(n95) );
  NAND3X2M U5 ( .A(waddr[1]), .B(n103), .C(n17), .Y(n19) );
  BUFX2M U6 ( .A(n18), .Y(n94) );
  BUFX2M U7 ( .A(n20), .Y(n93) );
  BUFX2M U8 ( .A(n96), .Y(n100) );
  BUFX2M U9 ( .A(n96), .Y(n99) );
  BUFX2M U10 ( .A(n96), .Y(n98) );
  BUFX2M U11 ( .A(n97), .Y(n101) );
  BUFX2M U12 ( .A(n97), .Y(n102) );
  BUFX2M U13 ( .A(wrst_n), .Y(n96) );
  BUFX2M U14 ( .A(wrst_n), .Y(n97) );
  NAND3X2M U15 ( .A(n103), .B(n104), .C(n17), .Y(n16) );
  NAND3X2M U16 ( .A(n103), .B(n104), .C(n12), .Y(n11) );
  OAI2BB2X1M U17 ( .B0(n11), .B1(n112), .A0N(\mem[0][0] ), .A1N(n11), .Y(n21)
         );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n111), .A0N(\mem[0][1] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n110), .A0N(\mem[0][2] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n109), .A0N(\mem[0][3] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n108), .A0N(\mem[0][4] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n107), .A0N(\mem[0][5] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n106), .A0N(\mem[0][6] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n105), .A0N(\mem[0][7] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U25 ( .B0(n112), .B1(n13), .A0N(\mem[1][0] ), .A1N(n13), .Y(n29)
         );
  OAI2BB2X1M U26 ( .B0(n111), .B1(n13), .A0N(\mem[1][1] ), .A1N(n13), .Y(n30)
         );
  OAI2BB2X1M U27 ( .B0(n110), .B1(n13), .A0N(\mem[1][2] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U28 ( .B0(n109), .B1(n13), .A0N(\mem[1][3] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U29 ( .B0(n108), .B1(n13), .A0N(\mem[1][4] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U30 ( .B0(n107), .B1(n13), .A0N(\mem[1][5] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U31 ( .B0(n106), .B1(n13), .A0N(\mem[1][6] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U32 ( .B0(n105), .B1(n13), .A0N(\mem[1][7] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U33 ( .B0(n112), .B1(n19), .A0N(\mem[6][0] ), .A1N(n19), .Y(n69)
         );
  OAI2BB2X1M U34 ( .B0(n111), .B1(n19), .A0N(\mem[6][1] ), .A1N(n19), .Y(n70)
         );
  OAI2BB2X1M U35 ( .B0(n110), .B1(n19), .A0N(\mem[6][2] ), .A1N(n19), .Y(n71)
         );
  OAI2BB2X1M U36 ( .B0(n109), .B1(n19), .A0N(\mem[6][3] ), .A1N(n19), .Y(n72)
         );
  OAI2BB2X1M U37 ( .B0(n108), .B1(n19), .A0N(\mem[6][4] ), .A1N(n19), .Y(n73)
         );
  OAI2BB2X1M U38 ( .B0(n107), .B1(n19), .A0N(\mem[6][5] ), .A1N(n19), .Y(n74)
         );
  OAI2BB2X1M U39 ( .B0(n106), .B1(n19), .A0N(\mem[6][6] ), .A1N(n19), .Y(n75)
         );
  OAI2BB2X1M U40 ( .B0(n105), .B1(n19), .A0N(\mem[6][7] ), .A1N(n19), .Y(n76)
         );
  OAI2BB2X1M U41 ( .B0(n112), .B1(n14), .A0N(\mem[2][0] ), .A1N(n14), .Y(n37)
         );
  OAI2BB2X1M U42 ( .B0(n111), .B1(n14), .A0N(\mem[2][1] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U43 ( .B0(n110), .B1(n14), .A0N(\mem[2][2] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U44 ( .B0(n109), .B1(n14), .A0N(\mem[2][3] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U45 ( .B0(n108), .B1(n14), .A0N(\mem[2][4] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U46 ( .B0(n107), .B1(n14), .A0N(\mem[2][5] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U47 ( .B0(n106), .B1(n14), .A0N(\mem[2][6] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U48 ( .B0(n105), .B1(n14), .A0N(\mem[2][7] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U49 ( .B0(n112), .B1(n16), .A0N(\mem[4][0] ), .A1N(n16), .Y(n53)
         );
  OAI2BB2X1M U50 ( .B0(n111), .B1(n16), .A0N(\mem[4][1] ), .A1N(n16), .Y(n54)
         );
  OAI2BB2X1M U51 ( .B0(n110), .B1(n16), .A0N(\mem[4][2] ), .A1N(n16), .Y(n55)
         );
  OAI2BB2X1M U52 ( .B0(n109), .B1(n16), .A0N(\mem[4][3] ), .A1N(n16), .Y(n56)
         );
  OAI2BB2X1M U53 ( .B0(n108), .B1(n16), .A0N(\mem[4][4] ), .A1N(n16), .Y(n57)
         );
  OAI2BB2X1M U54 ( .B0(n107), .B1(n16), .A0N(\mem[4][5] ), .A1N(n16), .Y(n58)
         );
  OAI2BB2X1M U55 ( .B0(n106), .B1(n16), .A0N(\mem[4][6] ), .A1N(n16), .Y(n59)
         );
  OAI2BB2X1M U56 ( .B0(n105), .B1(n16), .A0N(\mem[4][7] ), .A1N(n16), .Y(n60)
         );
  INVX2M U57 ( .A(wdata[0]), .Y(n112) );
  INVX2M U58 ( .A(wdata[1]), .Y(n111) );
  INVX2M U59 ( .A(wdata[2]), .Y(n110) );
  INVX2M U60 ( .A(wdata[3]), .Y(n109) );
  INVX2M U61 ( .A(wdata[4]), .Y(n108) );
  INVX2M U62 ( .A(wdata[5]), .Y(n107) );
  INVX2M U63 ( .A(wdata[6]), .Y(n106) );
  INVX2M U64 ( .A(wdata[7]), .Y(n105) );
  OAI2BB2X1M U65 ( .B0(n112), .B1(n95), .A0N(\mem[3][0] ), .A1N(n95), .Y(n45)
         );
  OAI2BB2X1M U66 ( .B0(n111), .B1(n95), .A0N(\mem[3][1] ), .A1N(n95), .Y(n46)
         );
  OAI2BB2X1M U67 ( .B0(n110), .B1(n95), .A0N(\mem[3][2] ), .A1N(n95), .Y(n47)
         );
  OAI2BB2X1M U68 ( .B0(n109), .B1(n95), .A0N(\mem[3][3] ), .A1N(n95), .Y(n48)
         );
  OAI2BB2X1M U69 ( .B0(n108), .B1(n95), .A0N(\mem[3][4] ), .A1N(n95), .Y(n49)
         );
  OAI2BB2X1M U70 ( .B0(n107), .B1(n95), .A0N(\mem[3][5] ), .A1N(n95), .Y(n50)
         );
  OAI2BB2X1M U71 ( .B0(n106), .B1(n95), .A0N(\mem[3][6] ), .A1N(n95), .Y(n51)
         );
  OAI2BB2X1M U72 ( .B0(n105), .B1(n95), .A0N(\mem[3][7] ), .A1N(n95), .Y(n52)
         );
  OAI2BB2X1M U73 ( .B0(n112), .B1(n94), .A0N(\mem[5][0] ), .A1N(n94), .Y(n61)
         );
  OAI2BB2X1M U74 ( .B0(n111), .B1(n94), .A0N(\mem[5][1] ), .A1N(n94), .Y(n62)
         );
  OAI2BB2X1M U75 ( .B0(n110), .B1(n94), .A0N(\mem[5][2] ), .A1N(n94), .Y(n63)
         );
  OAI2BB2X1M U76 ( .B0(n109), .B1(n94), .A0N(\mem[5][3] ), .A1N(n94), .Y(n64)
         );
  OAI2BB2X1M U77 ( .B0(n108), .B1(n94), .A0N(\mem[5][4] ), .A1N(n94), .Y(n65)
         );
  OAI2BB2X1M U78 ( .B0(n107), .B1(n94), .A0N(\mem[5][5] ), .A1N(n94), .Y(n66)
         );
  OAI2BB2X1M U79 ( .B0(n106), .B1(n94), .A0N(\mem[5][6] ), .A1N(n94), .Y(n67)
         );
  OAI2BB2X1M U80 ( .B0(n105), .B1(n94), .A0N(\mem[5][7] ), .A1N(n94), .Y(n68)
         );
  OAI2BB2X1M U81 ( .B0(n112), .B1(n93), .A0N(\mem[7][0] ), .A1N(n93), .Y(n77)
         );
  OAI2BB2X1M U82 ( .B0(n111), .B1(n93), .A0N(\mem[7][1] ), .A1N(n93), .Y(n78)
         );
  OAI2BB2X1M U83 ( .B0(n110), .B1(n93), .A0N(\mem[7][2] ), .A1N(n93), .Y(n79)
         );
  OAI2BB2X1M U84 ( .B0(n109), .B1(n93), .A0N(\mem[7][3] ), .A1N(n93), .Y(n80)
         );
  OAI2BB2X1M U85 ( .B0(n108), .B1(n93), .A0N(\mem[7][4] ), .A1N(n93), .Y(n81)
         );
  OAI2BB2X1M U86 ( .B0(n107), .B1(n93), .A0N(\mem[7][5] ), .A1N(n93), .Y(n82)
         );
  OAI2BB2X1M U87 ( .B0(n106), .B1(n93), .A0N(\mem[7][6] ), .A1N(n93), .Y(n83)
         );
  OAI2BB2X1M U88 ( .B0(n105), .B1(n93), .A0N(\mem[7][7] ), .A1N(n93), .Y(n84)
         );
  NOR2BX2M U89 ( .AN(wclken), .B(waddr[2]), .Y(n12) );
  INVX2M U90 ( .A(waddr[0]), .Y(n103) );
  INVX2M U91 ( .A(waddr[1]), .Y(n104) );
  AND2X2M U92 ( .A(waddr[2]), .B(wclken), .Y(n17) );
  NAND3X2M U93 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n15) );
  NAND3X2M U94 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n20) );
  NAND3X2M U95 ( .A(waddr[0]), .B(n104), .C(n17), .Y(n18) );
  MX2X2M U96 ( .A(n90), .B(n89), .S0(N12), .Y(rdata[7]) );
  MX4X1M U97 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n91), .S1(N11), .Y(n89) );
  MX4X1M U98 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX2X2M U99 ( .A(n2), .B(n1), .S0(N12), .Y(rdata[0]) );
  MX4X1M U100 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
  MX4X1M U101 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
  MX2X2M U102 ( .A(n4), .B(n3), .S0(N12), .Y(rdata[1]) );
  MX4X1M U103 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX4X1M U104 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
  MX2X2M U105 ( .A(n6), .B(n5), .S0(N12), .Y(rdata[2]) );
  MX4X1M U106 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX4X1M U107 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U108 ( .A(n8), .B(n7), .S0(N12), .Y(rdata[3]) );
  MX4X1M U109 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX4X1M U110 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U111 ( .A(n10), .B(n9), .S0(N12), .Y(rdata[4]) );
  MX4X1M U112 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX4X1M U113 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n92), .S1(N11), .Y(n10) );
  MX2X2M U114 ( .A(n86), .B(n85), .S0(N12), .Y(rdata[5]) );
  MX4X1M U115 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n91), .S1(N11), .Y(n85) );
  MX4X1M U116 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n92), .S1(N11), .Y(n86) );
  MX2X2M U117 ( .A(n88), .B(n87), .S0(N12), .Y(rdata[6]) );
  MX4X1M U118 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n91), .S1(N11), .Y(n87) );
  MX4X1M U119 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n92), .S1(N11), .Y(n88) );
  BUFX2M U120 ( .A(N10), .Y(n92) );
  BUFX2M U121 ( .A(N10), .Y(n91) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8 ( W_CLK, W_RST, W_INC, WR_DATA, FULL, R_CLK, 
        R_RST, R_INC, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   winc_pulse, rinc_pulse, wclken, rclken, n1, n2, n3, n4;
  wire   [3:0] wq2_rptr;
  wire   [2:0] waddr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;

  PULSE_GEN_2 u_winc_gen ( .clk(W_CLK), .rst(n1), .in_level(W_INC), 
        .out_pulse(winc_pulse) );
  PULSE_GEN_1 u_rinc_gen ( .clk(R_CLK), .rst(n3), .in_level(R_INC), 
        .out_pulse(rinc_pulse) );
  FIFO_WR_ADDR_WIDTH3 u_wr ( .wclk(W_CLK), .wrst_n(n1), .winc(winc_pulse), 
        .wq2_rptr(wq2_rptr), .wclken(wclken), .wfull(FULL), .waddr(waddr), 
        .wptr(wptr) );
  FIFO_RD_ADDR_WIDTH3 u_rd ( .rclk(R_CLK), .rrst_n(n3), .rinc(rinc_pulse), 
        .rq2_wptr(rq2_wptr), .rclken(rclken), .rempty(EMPTY), .raddr(raddr), 
        .rptr(rptr) );
  DF_SYNC_ADDR_WIDTH3_0 r2w_DF_SYNC ( .clk(W_CLK), .rst(n1), .d_in(rptr), 
        .d_out(wq2_rptr) );
  DF_SYNC_ADDR_WIDTH3_1 w2r_DF_SYNC ( .clk(R_CLK), .rst(n3), .d_in(wptr), 
        .d_out(rq2_wptr) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_ADDR_WIDTH3 u_FIFO_MEM ( .wclk(W_CLK), .wrst_n(n1), .wclken(wclken), .wdata(WR_DATA), .waddr(waddr), .rclk(R_CLK), .rrst_n(n3), 
        .rclken(rclken), .raddr(raddr), .rdata(RD_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(R_RST), .Y(n4) );
endmodule


module PULSE_GEN_0 ( clk, rst, in_level, out_pulse );
  input clk, rst, in_level;
  output out_pulse;
  wire   d2, d1;

  DFFRQX2M d1_reg ( .D(in_level), .CK(clk), .RN(rst), .Q(d1) );
  DFFRQX2M d2_reg ( .D(d1), .CK(clk), .RN(rst), .Q(d2) );
  NOR2BX2M U3 ( .AN(d1), .B(d2), .Y(out_pulse) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST_N, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input REF_CLK, UART_CLK, RST_N, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   UART_TX_CLK, SYNC_UART_RST, TX_OUTPUT_V, UART_RX_CLK, RX_OUTPUT_V,
         FIFO_EMPTY, SYNC_REF_RST, DATA_SYNC_EN, WR_EN, RD_EN, RDDATA_VALID,
         ALU_OUT_VALID, ALU_EN, Winc_fifo, FIFO_FULL, CLK_GATE_EN, ALU_CLK,
         R_INC_FIFO, n1, n2, n3, n4, n5, n6, n7, n8;
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

  UART_IN_width8_DATA_WIDTH8 UART_U0 ( .TX_CLK(UART_TX_CLK), .RST(n7), 
        .TX_IN_P(TX_INPUT_P), .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(
        TX_OUTPUT_V), .PAR_EN(UART_Config[0]), .PAR_TYP(UART_Config[1]), 
        .RX_CLK(UART_RX_CLK), .RX_IN_S(n2), .prescale(UART_Config[7:2]), 
        .RX_OUT_P(RX_OUTPUT_P), .RX_OUT_V(RX_OUTPUT_V), .stp_err(framing_error), .par_err(parity_error) );
  CLKDIV_MUX_DATA_WIDTH8 CLKDIV_MUX_U0 ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        RX_CLK_DIV_RATIO[3:0]}) );
  Clock_Divider_0 UART_TX_CLK_U0 ( .i_ref_clk(UART_CLK), .i_rst_n(n7), 
        .i_clk_en(1'b1), .i_div_ratio(Div_Ratio), .o_div_clk(UART_TX_CLK) );
  Clock_Divider_1 UART_RX_CLK_U0 ( .i_ref_clk(UART_CLK), .i_rst_n(n7), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        RX_CLK_DIV_RATIO[3:0]}), .o_div_clk(UART_RX_CLK) );
  RST_SYNC_0 RST_SYNC_1 ( .CLK(REF_CLK), .RST(RST_N), .SYNC_RST(SYNC_REF_RST)
         );
  RST_SYNC_1 RST_SYNC_2 ( .CLK(UART_CLK), .RST(RST_N), .SYNC_RST(SYNC_UART_RST) );
  DATA_SYNC_BUS_WIDTH8 DATA_SYNC_U0 ( .CLK(REF_CLK), .RST(n5), .bus_enable(
        RX_OUTPUT_V), .unsync_bus(RX_OUTPUT_P), .sync_bus(DATA_SYNC), 
        .enable_pulse(DATA_SYNC_EN) );
  SYS_CTRL_WIDTH8_ADDR4 SYS_CTRL_U0 ( .CLK(REF_CLK), .RST(n5), .RX_P_DATA(
        DATA_SYNC), .RX_D_VLD(DATA_SYNC_EN), .ALU_OUT(ALU_Out), .OUT_Valid(
        ALU_OUT_VALID), .ALU_FUN(ALU_Fun), .EN(ALU_EN), .WrEn(WR_EN), .RdEn(
        RD_EN), .address(ADDRESS), .WrData(WRDATA), .RdData(RDDATA), 
        .RdData_Valid(RDDATA_VALID), .WR_DATA(WR_DATA_FIFO), .Winc(Winc_fifo), 
        .FIFO_Full(FIFO_FULL), .CLK_EN(CLK_GATE_EN) );
  Register_File_WIDTH8_ADDR4 Register_File_U0 ( .RST(n5), .CLK(REF_CLK), 
        .WrEn(WR_EN), .RdEn(RD_EN), .address({ADDRESS[3:2], n4, n3}), .WrData(
        WRDATA), .RdData(RDDATA), .RdData_Valid(RDDATA_VALID), .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(Div_Ratio) );
  CLK_GATE CLK_GATE_U0 ( .CLK(REF_CLK), .CLK_EN(CLK_GATE_EN), .GATED_CLK(
        ALU_CLK) );
  ALU_DATA_WIDTH8 ALU_U0 ( .CLK(ALU_CLK), .RST(n5), .EN(ALU_EN), .A(Operand_A), 
        .B(Operand_B), .ALU_FUN(ALU_Fun), .ALU_OUT(ALU_Out), .OUT_VALID(
        ALU_OUT_VALID) );
  ASYNC_FIFO_DATA_WIDTH8 ASYNC_FIFO_U0 ( .W_CLK(REF_CLK), .W_RST(n5), .W_INC(
        Winc_fifo), .WR_DATA(WR_DATA_FIFO), .FULL(FIFO_FULL), .R_CLK(
        UART_TX_CLK), .R_RST(n7), .R_INC(R_INC_FIFO), .RD_DATA(TX_INPUT_P), 
        .EMPTY(FIFO_EMPTY) );
  PULSE_GEN_0 PULSE_GEN_U0 ( .clk(UART_TX_CLK), .rst(n7), .in_level(
        TX_OUTPUT_V), .out_pulse(R_INC_FIFO) );
  INVX2M U2 ( .A(n8), .Y(n7) );
  BUFX2M U3 ( .A(ADDRESS[1]), .Y(n4) );
  BUFX2M U4 ( .A(ADDRESS[0]), .Y(n3) );
  BUFX2M U5 ( .A(UART_RX_IN), .Y(n2) );
  INVX2M U6 ( .A(FIFO_EMPTY), .Y(n1) );
  INVX4M U7 ( .A(n6), .Y(n5) );
  INVX2M U8 ( .A(SYNC_REF_RST), .Y(n6) );
  INVX2M U9 ( .A(SYNC_UART_RST), .Y(n8) );
endmodule

