module FIFO_MEM_CNTRL #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 3 // Depth is 2^ADDR_WIDTH = 8 byte
) (
    input wire wclk,
    input wire wrst_n,
    input wire wclken,
    input wire [DATA_WIDTH-1:0] wdata,
    input wire [ADDR_WIDTH-1:0] waddr,

    input wire rclk,
    input wire rrst_n,
    input wire rclken,
    input wire [ADDR_WIDTH-1:0] raddr,
    output wire [DATA_WIDTH-1:0] rdata
);

localparam DEPTH = (1 << ADDR_WIDTH);
reg [DATA_WIDTH-1:0] mem [DEPTH-1:0] ;
integer i;

always @(posedge wclk or negedge wrst_n) begin
    if (!wrst_n) begin 
	    for (i=0 ; i<DEPTH; i=i+1) begin
		    mem [i] <= {DATA_WIDTH{1'b0}};
		end 
	end else if (wclken) begin
        mem [waddr] <= wdata;
    end

end 

assign rdata =mem [raddr];
 

endmodule
