module data_sampling # (parameter prescale_width = 6 )
( 
 input wire    clk,
 input wire    rst,   
 input wire    RX_IN,
 input wire    dat_samp_en,
 input wire [prescale_width-1:0] prescale ,
 input wire [prescale_width-1:0] edge_cnt ,
 output reg    sampled_bit  
);

reg sample_1,sample_2,sample_3;

always @(posedge clk or negedge rst )
 begin
   if (!rst) begin
    sample_1 <= 1'b1;
    sample_2 <= 1'b1;
    sample_3 <= 1'b1; 
    sampled_bit <= 1'b1;  
   end else if (dat_samp_en) begin
    // takes sample at mid-2 , mid-1 , mid
    if (edge_cnt == (prescale>>1)-2) sample_1 <= RX_IN;
    if (edge_cnt == (prescale>>1)-1)   sample_2 <= RX_IN;
    if (edge_cnt == (prescale>>1)) sample_3 <= RX_IN;
    // majority vote
    sampled_bit <= (sample_1 & sample_2) | (sample_2 & sample_3) |  (sample_1 & sample_3) ;
   end 
 end
    
endmodule
