module CLK_GATE (
    input   CLK ,
    input   CLK_EN,
    output  GATED_CLK
);

 reg Latch_out;   

//latch (Level Sensitive Device)
always @(CLK or CLK_EN) begin
    if (!CLK) begin // active low
        Latch_out = CLK_EN ;
    end
end

assign GATED_CLK = CLK && Latch_out;

endmodule
