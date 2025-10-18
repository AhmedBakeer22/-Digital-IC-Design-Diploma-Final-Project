module Clock_Divider (
    input  i_ref_clk,
    input  i_rst_n,
    input  i_clk_en,
    input [7:0] i_div_ratio,
    output wire o_div_clk
);
    reg [7:0] counter ;
    wire odd ;
    wire [7:0] half_togg;
    wire [7:0] half_togg_p1;
    reg flag ;
    wire clk_div_en;
    reg div_clk_reg;
    
    assign clk_div_en = i_clk_en && (i_div_ratio > 1);
    assign odd = i_div_ratio[0];
    assign half_togg = i_div_ratio >>1;
    assign half_togg_p1 = i_div_ratio - half_togg;

 always @(posedge i_ref_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        div_clk_reg <= 1'b0 ;
        flag <= 1'b0 ;
        counter <= 8'd0;
    end else if ( clk_div_en && !odd && (counter == half_togg -1) ) begin
        div_clk_reg <= ~div_clk_reg;
        counter <= 8'd0;
    end else if ( clk_div_en && odd && ( (counter == half_togg-1 && flag ) || (counter == half_togg_p1-1 && !flag ) ) )begin
        div_clk_reg <= ~div_clk_reg;
        counter <= 8'd0;
        flag <= ~flag ;
    end else if (clk_div_en) begin
        counter <= counter + 1'd1;
    end else begin
        flag <= 1'b0 ;
        counter <= 8'd0;
    end
    
 end

 assign o_div_clk = clk_div_en ? div_clk_reg : i_ref_clk ;
 
 


endmodule
