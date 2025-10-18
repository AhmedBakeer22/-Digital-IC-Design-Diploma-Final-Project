module FIFO_RD #(
    parameter ADDR_WIDTH =3
) (
    input wire rclk,
    input wire rrst_n,
    input wire rinc,
    input wire [ADDR_WIDTH:0] rq2_wptr ,

    output wire rclken,
    output reg rempty,
    output wire [ADDR_WIDTH-1:0] raddr,
    output reg [ADDR_WIDTH:0] rptr
);

 reg [ADDR_WIDTH:0] rbin;
 wire [ADDR_WIDTH:0] rbin_next ;
 wire [ADDR_WIDTH:0] rgray_next ;
 wire empty_flag;

 assign rclken = rinc && ~rempty;
 assign rbin_next = rbin +rclken;
 assign rgray_next = (rbin_next >> 1) ^ rbin_next;
 assign raddr = rbin [ADDR_WIDTH-1:0];

 assign empty_flag = (rgray_next == rq2_wptr);

 always @ (posedge rclk or negedge rrst_n) begin
    if (!rrst_n) begin
        rbin   <=  'b0;
        rptr   <=  'b0;
        rempty <= 1'b1;
    end else begin
        rbin   <= rbin_next;
        rptr   <= rgray_next;
        rempty <= empty_flag;
    end
 end 
endmodule
