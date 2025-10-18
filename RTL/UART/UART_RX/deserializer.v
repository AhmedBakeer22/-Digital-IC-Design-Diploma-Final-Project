module deserializer #(parameter DATA_WIDTH = 8 , parameter bit_cnt_width =4 )
(
 input wire clk,
 input wire rst,   
 input wire deser_en,
 input wire sampled_bit,
 input wire [bit_cnt_width-1:0] bit_cnt,
 output reg [DATA_WIDTH-1:0] P_DATA
);


always @(posedge clk or negedge rst ) 
 begin
    if (!rst)
    P_DATA <='b0 ;
    else if (deser_en) begin
        if ((bit_cnt >= 1) && (bit_cnt <= DATA_WIDTH))
        P_DATA [bit_cnt-1] <= sampled_bit ;
    end 
    
 end

endmodule
