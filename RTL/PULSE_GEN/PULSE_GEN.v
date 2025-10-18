module PULSE_GEN (
    input wire clk,
    input wire rst,
    input wire  in_level,
    output wire out_pulse
);
  reg d1,d2;

 always @(posedge clk or negedge rst) begin
    if (!rst) begin
        d1 <= 0;
        d2 <= 0;
    end else begin
        d1 <= in_level;
        d2 <= d1;
    end
 end    

assign out_pulse = d1 && ~ d2;

endmodule
