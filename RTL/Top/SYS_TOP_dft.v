module SYS_TOP #(
    parameter DATA_WIDTH =8,
    parameter RF_ADDR = 4,
    parameter NUM_OF_CHAINS = 3
) (
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST_N,
    input wire UART_RX_IN,

    output wire UART_TX_O,
    output wire parity_error,
    output wire framing_error,

    input wire scan_clk,
    input wire scan_rst,
    input wire test_mode,
    input wire SE,
    input wire  [NUM_OF_CHAINS:0] SI,
    output wire [NUM_OF_CHAINS:0] SO
    
);



   wire UART_TX_CLK;
   wire UART_RX_CLK;

   wire SYNC_REF_RST;
   wire SYNC_UART_RST;



   wire     REF_CLK_SCAN,
            UART_CLK_SCAN,
            RX_CLK_SCAN,
            TX_CLK_SCAN;
   wire     RST_SCAN,
            SYNC_REF_RST_SCAN,
            SYNC_UART_RST_SCAN;  

mux2X1 U1 (
  .IN_0(REF_CLK),
  .IN_1(scan_clk),
  .SEL(test_mode),
  .OUT(REF_CLK_SCAN)
);

mux2X1 U2 (
  .IN_0(UART_CLK),
  .IN_1(scan_clk),
  .SEL(test_mode),
  .OUT(UART_CLK_SCAN)
);

mux2X1 U3 (
  .IN_0(UART_RX_CLK),
  .IN_1(scan_clk),
  .SEL(test_mode),
  .OUT(RX_CLK_SCAN)
);

mux2X1 U4 (
  .IN_0(UART_TX_CLK),
  .IN_1(scan_clk),
  .SEL(test_mode),
  .OUT(TX_CLK_SCAN)
);


mux2X1 U5 (
  .IN_0(RST_N),
  .IN_1(scan_rst),
  .SEL(test_mode),
  .OUT(RST_SCAN)
);


mux2X1 U6 (
  .IN_0(SYNC_REF_RST),
  .IN_1(scan_rst),
  .SEL(test_mode),
  .OUT(SYNC_REF_RST_SCAN)
);

mux2X1 U7 (
  .IN_0(SYNC_UART_RST),
  .IN_1(scan_rst),
  .SEL(test_mode),
  .OUT(SYNC_UART_RST_SCAN)
);
  
   

   

   wire FIFO_EMPTY;

   wire TX_OUTPUT_V;
   wire RX_OUTPUT_V;
   wire [DATA_WIDTH-1:0] RX_OUTPUT_P;
   wire [DATA_WIDTH-1:0] TX_INPUT_P;

   wire [DATA_WIDTH-1:0] UART_Config;
   wire [DATA_WIDTH-1:0] Div_Ratio ;


UART # (
    .IN_width (DATA_WIDTH),
    .DATA_WIDTH (DATA_WIDTH)
) UART_U0 (
    .TX_CLK(TX_CLK_SCAN),
    .RST(SYNC_UART_RST_SCAN),
    .TX_IN_P(TX_INPUT_P),
    .TX_IN_V(!FIFO_EMPTY),
    .TX_OUT_S(UART_TX_O),
    .TX_OUT_V(TX_OUTPUT_V),
    
    .PAR_EN(UART_Config[0]),
    .PAR_TYP(UART_Config[1]),

    .RX_CLK(RX_CLK_SCAN),
    .RX_IN_S(UART_RX_IN),
    .prescale(UART_Config[7:2]),
    .RX_OUT_P(RX_OUTPUT_P),
    .RX_OUT_V(RX_OUTPUT_V),
    .stp_err(framing_error),
    .par_err(parity_error)
);

wire [DATA_WIDTH-1:0] RX_CLK_DIV_RATIO;

CLKDIV_MUX #(
    .DATA_WIDTH (DATA_WIDTH)
) CLKDIV_MUX_U0 (
    .IN(UART_Config[7:2]),
    .OUT(RX_CLK_DIV_RATIO) 
);


   wire CLK_DIV_EN;   

Clock_Divider UART_TX_CLK_U0 (
    .i_ref_clk(UART_CLK_SCAN),
    .i_rst_n(SYNC_UART_RST_SCAN),
    .i_clk_en(CLK_DIV_EN),
    .i_div_ratio(Div_Ratio),
    .o_div_clk(UART_TX_CLK)
);

Clock_Divider UART_RX_CLK_U0 (
    .i_ref_clk(UART_CLK_SCAN),
    .i_rst_n(SYNC_UART_RST_SCAN),
    .i_clk_en(CLK_DIV_EN),
    .i_div_ratio(RX_CLK_DIV_RATIO),
    .o_div_clk(UART_RX_CLK)
);


RST_SYNC RST_SYNC_1 (
    .CLK(REF_CLK_SCAN),
    .RST(RST_SCAN),
    .SYNC_RST(SYNC_REF_RST)
);

RST_SYNC RST_SYNC_2 (
    .CLK(UART_CLK_SCAN),
    .RST(RST_SCAN),
    .SYNC_RST(SYNC_UART_RST)
);


   wire DATA_SYNC_EN;
   wire [DATA_WIDTH-1:0] DATA_SYNC;

DATA_SYNC #(
    .BUS_WIDTH(DATA_WIDTH)
) DATA_SYNC_U0 (
    .CLK(REF_CLK_SCAN), // Destination domain clock
    .RST(SYNC_REF_RST_SCAN), // Destination domain reset
    .bus_enable(RX_OUTPUT_V),
    .unsync_bus(RX_OUTPUT_P),
    .sync_bus(DATA_SYNC),
    .enable_pulse(DATA_SYNC_EN)
);

   wire [DATA_WIDTH-1:0] WRDATA,RDDATA ;
   wire WR_EN,RD_EN,RDDATA_VALID;
   wire [RF_ADDR-1:0] ADDRESS ;

   wire ALU_EN;
   wire [3:0] ALU_Fun;
   wire [DATA_WIDTH*2-1:0] ALU_Out ;
   wire ALU_OUT_VALID;

   wire [DATA_WIDTH-1:0] WR_DATA_FIFO ;
   wire Winc_fifo;
   wire FIFO_FULL;

   wire CLK_GATE_EN ;

SYS_CTRL # (
    .WIDTH (DATA_WIDTH),
    .ADDR(RF_ADDR)
) SYS_CTRL_U0 (
    .CLK(REF_CLK_SCAN),
    .RST(SYNC_REF_RST_SCAN),

    // UART interface
    .RX_P_DATA(DATA_SYNC ),
    .RX_D_VLD(DATA_SYNC_EN),

    // RegFile interface
    .WrEn(WR_EN),
    .RdEn(RD_EN),
    .address(ADDRESS) ,  
    .WrData(WRDATA) ,
    .RdData (RDDATA),
    .RdData_Valid(RDDATA_VALID),

    // ALU interface 
    .ALU_OUT(ALU_Out),
    .OUT_Valid(ALU_OUT_VALID),
    .ALU_FUN(ALU_Fun),
    .EN(ALU_EN),

    // FIFO interface
    .WR_DATA(WR_DATA_FIFO),
    .Winc(Winc_fifo),
    .FIFO_Full(FIFO_FULL),

    // Clock gating
    .CLK_EN(CLK_GATE_EN),

    // Clock divider
    .clk_div_en(CLK_DIV_EN)
);


   wire [DATA_WIDTH-1:0] Operand_A,Operand_B;
   
   
Register_File # (
  .WIDTH(DATA_WIDTH),
  .ADDR(RF_ADDR)
) Register_File_U0 ( 
  .RST(SYNC_REF_RST_SCAN),
  .CLK(REF_CLK_SCAN),
  .WrEn(WR_EN),
  .RdEn(RD_EN),
  .address(ADDRESS),  
  .WrData(WRDATA) ,
  .RdData(RDDATA) ,
  .RdData_Valid(RDDATA_VALID),
  .REG0(Operand_A),
  .REG1(Operand_B), 
  .REG2(UART_Config), 
  .REG3(Div_Ratio)   
);

   wire ALU_CLK; 

CLK_GATE CLK_GATE_U0 (
    .CLK(REF_CLK_SCAN),
    .CLK_EN(CLK_GATE_EN | test_mode),
    .GATED_CLK(ALU_CLK)
);

ALU # (
    .DATA_WIDTH(DATA_WIDTH)
) ALU_U0 (
    .CLK(ALU_CLK),
    .RST(SYNC_REF_RST_SCAN),
    .EN(ALU_EN),
    .A(Operand_A),
    .B(Operand_B),
    .ALU_FUN(ALU_Fun),
    .ALU_OUT(ALU_Out),
    .OUT_VALID(ALU_OUT_VALID)
);

wire R_INC_FIFO;



ASYNC_FIFO #(
    .DATA_WIDTH(DATA_WIDTH)
) ASYNC_FIFO_U0 (
    .W_CLK(REF_CLK_SCAN),
    .W_RST(SYNC_REF_RST_SCAN),
    .W_INC(Winc_fifo),
    .WR_DATA(WR_DATA_FIFO),
    .FULL(FIFO_FULL),

    .R_CLK(TX_CLK_SCAN),
    .R_RST(SYNC_UART_RST_SCAN),
    .R_INC(R_INC_FIFO),
    .RD_DATA(TX_INPUT_P),
    .EMPTY(FIFO_EMPTY)
);


PULSE_GEN PULSE_GEN_U0 (
    .clk(TX_CLK_SCAN),
    .rst(SYNC_UART_RST_SCAN),
    .in_level(TX_OUTPUT_V),
    .out_pulse(R_INC_FIFO)
);

endmodule
