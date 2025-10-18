module DF_SYNC #(
    parameter ADDR_WIDTH = 3
) (
    input wire clk,
    input wire rst,
    input wire [ADDR_WIDTH:0] d_in,
    output reg [ADDR_WIDTH:0] d_out
);
      
 reg [ADDR_WIDTH:0] reg_sync1,reg_sync2 ;

 always @ (posedge clk or negedge rst) begin
    if (!rst) begin
        reg_sync1 <= 'b0;
        reg_sync2 <= 'b0;
    end else begin
        reg_sync1 <= d_in;
        reg_sync2 <= reg_sync1;
    end
 end      

always @(*) begin 
    d_out = reg_sync2;     
end

endmodule
