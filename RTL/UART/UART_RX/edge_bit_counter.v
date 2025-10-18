module edge_bit_counter # (parameter prescale_width = 6, parameter bit_cnt_width =4)
( 
  input wire cnt_enable,
  input wire clk,
  input wire rst,
  input wire [prescale_width-1:0] prescale,  
  output reg [bit_cnt_width-1:0] bit_cnt ,
  output reg [prescale_width-1:0] edge_cnt   
);

always @(posedge clk or negedge rst)
 begin
    if (!rst) begin
        bit_cnt  <= 'b0;
        edge_cnt <= 'b0;
    end
    else if (!cnt_enable) begin
        bit_cnt  <= 'b0;
        edge_cnt <= 'b0;
    end
    else begin
        if (edge_cnt == prescale-1 ) begin 
            edge_cnt<= 'b0 ;
            bit_cnt <= bit_cnt +1 ;
        end
        else 
         edge_cnt <= edge_cnt +1 ; 
    end  
 end

endmodule
