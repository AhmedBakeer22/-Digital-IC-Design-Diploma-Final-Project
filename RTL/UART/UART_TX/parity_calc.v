module parity_calc # (parameter IN_width = 8)
( 
 input wire clk ,
 input wire rst ,   
 input wire [IN_width-1:0] p_data ,
 input wire par_typ , // 0: Even, 1: Odd 
 input wire par_en ,
 input wire data_valid,
 input wire busy,
 output reg par_bit 
);
 
 wire even_parity ;
 reg [IN_width-1:0] reg_data;


always @(posedge clk or negedge rst) begin
    if (!rst) begin
        reg_data <= 'b0;
    end else if(data_valid && !busy)begin
        reg_data <= p_data;
    end
end

 assign even_parity = ^reg_data ;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        par_bit <= 'b0;
    end else if(par_en)begin
        if (par_typ) begin
            par_bit <= !even_parity;
        end else begin
            par_bit <= even_parity;
        end
    end
end


endmodule  


