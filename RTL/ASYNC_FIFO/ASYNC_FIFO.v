module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3 // Depth is 2^ADDR_WIDTH = 8 byte
) (
    input wire W_CLK,
    input wire W_RST,
    input wire W_INC,
    input wire [DATA_WIDTH-1:0] WR_DATA,
    output wire FULL,

    input wire R_CLK,
    input wire R_RST,
    input wire R_INC,
    output wire [DATA_WIDTH-1:0] RD_DATA,
    output wire EMPTY 
);
    
wire winc_pulse, rinc_pulse;
 
 PULSE_GEN u_winc_gen (
    .clk(W_CLK),
    .rst(W_RST),
    .in_level(W_INC),
    .out_pulse(winc_pulse)
 );

 PULSE_GEN u_rinc_gen (
    .clk(R_CLK),
    .rst(R_RST),
    .in_level(R_INC),
    .out_pulse(rinc_pulse)
 );


wire [ADDR_WIDTH-1:0] waddr ;
wire [ADDR_WIDTH:0] wptr ;
wire [ADDR_WIDTH-1:0] raddr ;
wire [ADDR_WIDTH:0] rptr ;
wire wclken, rclken;
wire [ADDR_WIDTH:0]   rq2_wptr, wq2_rptr;

 FIFO_WR # (
    .ADDR_WIDTH(ADDR_WIDTH)
 ) u_wr (
    .wclk(W_CLK),
    .wrst_n(W_RST),
    .winc(winc_pulse),
    .wq2_rptr(wq2_rptr),

    .wclken(wclken),
    .wfull(FULL),
    .waddr(waddr),
    .wptr(wptr)
 );

FIFO_RD # (
    .ADDR_WIDTH(ADDR_WIDTH)
) u_rd (
    .rclk(R_CLK),
    .rrst_n(R_RST),
    .rinc(rinc_pulse),
    .rq2_wptr(rq2_wptr),

    .rclken(rclken),
    .rempty(EMPTY),
    .raddr(raddr),
    .rptr(rptr)
 ); 



 DF_SYNC # (.ADDR_WIDTH(ADDR_WIDTH)) r2w_DF_SYNC(
    .clk(W_CLK),
    .rst(W_RST),
    .d_in(rptr),
    .d_out(wq2_rptr)  
 );

DF_SYNC # (.ADDR_WIDTH(ADDR_WIDTH)) w2r_DF_SYNC(
    .clk(R_CLK),
    .rst(R_RST),
    .d_in(wptr),
    .d_out(rq2_wptr)  
 );


FIFO_MEM_CNTRL #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
) u_FIFO_MEM(
    .wclk(W_CLK),
    .wrst_n(W_RST),
    .wclken(wclken),
    .wdata(WR_DATA),
    .waddr(waddr),

    .rclk(R_CLK),
    .rrst_n(R_RST),
    .rclken(rclken),
    .raddr(raddr),
    .rdata(RD_DATA)
);


endmodule
