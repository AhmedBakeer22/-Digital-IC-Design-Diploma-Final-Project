module RST_SYNC #(
    parameter NUM_STAGES = 2
) (
    input wire CLK,
    input wire RST,
    output wire SYNC_RST
);
    
 reg [NUM_STAGES-1:0] reg_sync ;

 always @ (posedge CLK or negedge RST) begin 
    if (!RST) begin
        reg_sync <= 'b0; 
    end else begin
        reg_sync <= {reg_sync [NUM_STAGES-2:0],1'b1};
    end
 end

 assign SYNC_RST = reg_sync [NUM_STAGES-1] ;

endmodule
