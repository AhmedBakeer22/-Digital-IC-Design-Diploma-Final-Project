module UART_RX #(
    parameter prescale_width = 6,
    parameter DATA_WIDTH = 8,
    parameter bit_cnt_width =4
) (
    input wire clk,
    input wire rst,    
    input wire RX_IN,
    input wire PAR_TYP,
    input wire PAR_EN,
    input wire [prescale_width-1:0] prescale ,
    output wire [DATA_WIDTH-1:0] P_DATA ,
    output wire data_valid,
    output wire stp_err,par_err
);

// Internal signals
wire [prescale_width-1:0] edge_cnt ;
wire [bit_cnt_width-1:0] bit_cnt ;
wire dat_samp_en,cnt_enable,deser_en,par_chk_en,stp_chk_en,strt_chk_en;
wire strt_glitch;
wire sampled_bit;

data_sampling  #(.prescale_width(prescale_width)) data_sampling_unit
(
    .clk(clk),
    .rst(rst),   
    .RX_IN(RX_IN),
    .dat_samp_en(dat_samp_en),
    .prescale(prescale),
    .edge_cnt(edge_cnt),
    .sampled_bit(sampled_bit)
);

edge_bit_counter # (
    .prescale_width(prescale_width),
    .bit_cnt_width(bit_cnt_width)
) edge_bit_counter_unit (
    .cnt_enable(cnt_enable),
    .clk(clk),
    .rst(rst),
    .prescale(prescale),  
    .bit_cnt(bit_cnt) ,
    .edge_cnt(edge_cnt)
);


deserializer #(
    .DATA_WIDTH(DATA_WIDTH),
    .bit_cnt_width(bit_cnt_width)
) deserialize_unit (
    .clk(clk),
    .rst(rst),   
    .deser_en(deser_en),
    .sampled_bit(sampled_bit),
    .bit_cnt(bit_cnt),
    .P_DATA(P_DATA)    
);


parity_check #(.DATA_WIDTH(DATA_WIDTH)) parity_check_unit
(
    .clk(clk),
    .rst(rst),   
    .P_DATA(P_DATA),
    .par_chk_en(par_chk_en),
    .sampled_bit(sampled_bit),
    .PAR_TYP(PAR_TYP),
    .par_err(par_err) 
);


stop_check stop_check_unit
(
    .clk(clk),
    .rst(rst),   
    .stp_chk_en(stp_chk_en),
    .sampled_bit(sampled_bit),
    .stp_err(stp_err) 
);


start_check start_check_unit
(
    .clk(clk),
    .rst(rst),    
    .RX_IN(RX_IN),
    .strt_chk_en(strt_chk_en),
    .strt_glitch(strt_glitch)
);



UART_RX_FSM # (
    .DATA_WIDTH(DATA_WIDTH),
    .bit_cnt_width(bit_cnt_width)
) UART_RX_FSM_unit (
    .clk(clk),
    .rst(rst),

    .RX_IN(RX_IN),
    .PAR_EN(PAR_EN), 

    .par_err(par_err),
    .stp_err(stp_err),
    .strt_glitch(strt_glitch),
    .bit_cnt(bit_cnt) ,

    .dat_samp_en(dat_samp_en),
    .cnt_enable(cnt_enable),
    .deser_en(deser_en),
    .par_chk_en(par_chk_en),
    .stp_chk_en(stp_chk_en),
    .strt_chk_en(strt_chk_en),

    .data_valid(data_valid)
);



endmodule
