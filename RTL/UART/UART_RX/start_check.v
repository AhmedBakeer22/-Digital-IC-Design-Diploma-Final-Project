module start_check
(
 input wire clk,
 input wire rst,
 input wire RX_IN,
 input wire strt_chk_en,
 output reg strt_glitch   
);
    

always @(posedge clk or negedge rst)
 begin
  if (!rst) begin
    strt_glitch <= 1'b0;
  end else begin
    if (!strt_chk_en) begin
     strt_glitch <= 1'b0;
   end else begin
    strt_glitch <= (RX_IN != 0);
   end 
  end
   
 end

endmodule

