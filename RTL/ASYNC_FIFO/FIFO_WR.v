module FIFO_WR #(
    parameter ADDR_WIDTH = 3
) (
    input wire wclk,
    input wire wrst_n,
    input wire winc,
    input wire [ADDR_WIDTH:0] wq2_rptr,

    output wire wclken,
    output reg wfull,
    output wire [ADDR_WIDTH-1:0] waddr,
    output reg [ADDR_WIDTH:0] wptr 
);

    reg [ADDR_WIDTH:0] wbin;
    wire [ADDR_WIDTH:0] wbin_next ;
    wire [ADDR_WIDTH:0] wgray_next ; 
    wire full_flag;

    assign wclken = winc && ~wfull ;
    assign wbin_next = wbin + wclken;
    assign wgray_next = (wbin_next >> 1) ^ wbin_next;
    assign waddr = wbin [ADDR_WIDTH-1:0];
    
    assign full_flag = (
           ( wgray_next [ADDR_WIDTH] != wq2_rptr [ADDR_WIDTH] )&&
           ( wgray_next [ADDR_WIDTH-1] != wq2_rptr [ADDR_WIDTH-1] )&&
           ( wgray_next [ADDR_WIDTH-2:0] == wq2_rptr [ADDR_WIDTH-2:0] )
       ) ;

 always @ (posedge wclk or negedge wrst_n) begin 
    if (!wrst_n) begin
        wbin  <=  'b0;
        wptr  <=  'b0;
        wfull <= 1'b0;
    end else begin
        wbin  <= wbin_next;
        wptr  <= wgray_next;
        wfull <= full_flag;       
    end
 end
 
endmodule
