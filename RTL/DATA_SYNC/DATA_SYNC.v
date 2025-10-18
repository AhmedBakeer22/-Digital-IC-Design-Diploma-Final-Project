module DATA_SYNC #(
    parameter  NUM_STAGES = 2,
    parameter  BUS_WIDTH  = 8
) (
    input wire CLK, // Destination domain clock
    input wire RST, // Destination domain reset
    input wire bus_enable,
    input wire [BUS_WIDTH-1:0] unsync_bus,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg enable_pulse
); 

 reg [NUM_STAGES-1:0] reg_sync ;
 reg enable_flop;
 wire enable_pulse_wire; // output of Pulse GEN

 always @ (posedge CLK or negedge RST) begin 
    if (!RST) begin
        reg_sync <= 'b0;
    end else begin
        reg_sync <= {reg_sync [NUM_STAGES-2:0],bus_enable}; 
    end
 end 

 always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        enable_flop <= 'b0;
    end else begin
        enable_flop <= reg_sync[NUM_STAGES-1]; 
    end
 end

 assign enable_pulse_wire = reg_sync [NUM_STAGES-1] && !enable_flop; // output of Pulse GEN
 

always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        sync_bus <= 'b0;
        enable_pulse <= 'b0;
    end else if (enable_pulse_wire) begin
        sync_bus <= unsync_bus;
        enable_pulse <= enable_pulse_wire; 
    end else begin 
        sync_bus <= sync_bus;
        enable_pulse <= enable_pulse_wire;
    end     
 end 

endmodule
