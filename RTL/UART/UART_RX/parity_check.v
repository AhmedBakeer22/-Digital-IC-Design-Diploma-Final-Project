module parity_check #(parameter DATA_WIDTH = 8 )
(
 input wire clk,
 input wire rst,
 input wire [DATA_WIDTH-1:0] P_DATA,
 input wire par_chk_en,
 input wire sampled_bit,
 input wire PAR_TYP, // 0: Even parity bit  and 1: Odd parity bit
 output reg par_err 
);

 wire par_chk ;
 wire even_par;
 assign even_par = ^P_DATA;
 assign par_chk = PAR_TYP ? (! even_par) : even_par ;

always @(posedge clk or negedge rst)
 begin
   if (!rst) begin
    par_err = 1'b0;
   end else if (par_chk_en)  
    par_err = (par_chk != sampled_bit) ;
 end


endmodule
