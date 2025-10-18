module UART #(
    parameter IN_width = 8,
    parameter prescale_width = 6,
    parameter DATA_WIDTH = 8 
) (
    input wire TX_CLK,
    input wire RST,
    input wire [IN_width-1:0] TX_IN_P,
    input wire TX_IN_V,
    output wire TX_OUT_S,
    output wire TX_OUT_V,
    
    input wire PAR_EN,
    input wire PAR_TYP,

    input wire RX_CLK,
    input wire RX_IN_S,
    input wire [prescale_width-1:0] prescale,
    output wire [DATA_WIDTH-1:0] RX_OUT_P,
    output wire RX_OUT_V,
    output wire stp_err,par_err
);

UART_TX # (
    .IN_width(IN_width)
) UART_TX_U0 (
    .p_data(TX_IN_P),
    .clk(TX_CLK),
    .rst(RST),
    .data_valid(TX_IN_V),
    .par_en(PAR_EN),
    .par_typ(PAR_TYP),
    .TX_OUT(TX_OUT_S),
    .busy(TX_OUT_V)
);

UART_RX # (
    .prescale_width(prescale_width),
    .DATA_WIDTH(DATA_WIDTH) 
) UART_RX_U0 (
    .clk(RX_CLK),
    .rst(RST),    
    .RX_IN(RX_IN_S),
    .PAR_TYP(PAR_TYP),
    .PAR_EN(PAR_EN),
    .prescale(prescale),
    .P_DATA(RX_OUT_P),
    .data_valid(RX_OUT_V),
    .par_err(par_err),
    .stp_err(stp_err)
);

endmodule
