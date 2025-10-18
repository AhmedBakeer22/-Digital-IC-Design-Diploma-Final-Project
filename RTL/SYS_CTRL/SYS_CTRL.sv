module SYS_CTRL #(
    parameter WIDTH= 8 ,
    parameter ADDR  = 4
) (
    input wire CLK,
    input wire RST,

    // UART interface
    input wire [WIDTH-1:0] RX_P_DATA,
    input wire RX_D_VLD,
    
    // ALU interface 
    input wire [WIDTH*2-1:0] ALU_OUT ,
    input wire OUT_Valid,
    output reg [3:0] ALU_FUN,
    output reg EN,

    // RegFile interface
    output reg WrEn,
    output reg RdEn,
    output reg [ADDR-1:0]  address ,  
    output reg [WIDTH-1:0] WrData ,
    input wire [WIDTH-1:0] RdData ,
    input wire RdData_Valid,

    // FIFO interface
    output reg [WIDTH-1:0] WR_DATA,
    output reg Winc,
    input wire FIFO_Full,

    // Clock gating
    output reg  CLK_EN,

    // Clock divider
    output reg  clk_div_en 
);

localparam RF_Wr_CMD          = 8'hAA ;
localparam RF_Rd_CMD          = 8'hBB ;
localparam ALU_OPER_W_OP_CMD  = 8'hCC ;
localparam ALU_OPER_W_NOP_CMD = 8'hDD ;

typedef enum bit [2:0] 
{
   IDLE       = 3'b000,
   ENCODED    = 3'b001,
	 STORE_OP_B = 3'b011,
	 EXECUTE    = 3'b010,
   SEND       = 3'b110,
   SEND_2     = 3'b111,
   WAIT       = 3'b101,
	 DONE       = 3'b100
} state_e; 

state_e current_state,next_state;
reg [WIDTH-1:0] store_frames [3:0] ;
reg [2:0] frame_cnt ;
integer i;



always @(posedge CLK or negedge RST) begin
    if (!RST) begin
        current_state <= IDLE;
        frame_cnt <= 3'b0;
		for (i =0 ;i<4 ;i=i+1 ) begin
          store_frames [i] <= 'b0;
        end
    end else begin
        current_state <= next_state;
        if (RX_D_VLD) begin
            store_frames [frame_cnt] <= RX_P_DATA ;
            frame_cnt <= frame_cnt + 1;
        end else if (current_state == DONE) begin
            frame_cnt <= 3'b0;
        end
    end
end


always @(*) begin
    
    next_state = current_state;
    RdEn       = 0;
    WrEn       = 0;
    EN         = 0;
    Winc       = 0;
    CLK_EN     = 0;
    clk_div_en = 1;
    address    = 'b0;
    WrData     = 'b0;
    ALU_FUN    = 4'b0;
    WR_DATA    = 'b0;

    case (current_state)
          
        IDLE           : 
                         begin
                           if (RX_D_VLD) next_state = ENCODED; 
                         end
        
        ENCODED        :
                         begin
                           case (store_frames [0])
                               RF_Wr_CMD          :  if (frame_cnt == 3) next_state = EXECUTE;
                                             
                               RF_Rd_CMD          :  if (frame_cnt == 2) next_state = EXECUTE;

                               ALU_OPER_W_OP_CMD  :  if (frame_cnt == 4) begin
                                                        WrEn = 1;
                                                        address = 'h0;
                                                        WrData  = store_frames [1];
                                                        next_state = STORE_OP_B;
                                                     end 

                               ALU_OPER_W_NOP_CMD :  if (frame_cnt == 2) next_state = EXECUTE; 
                           endcase
                          end

        STORE_OP_B     : 
                         begin
                           WrEn = 1;
                           address = 'h1;
                           WrData  = store_frames [2];
                           next_state = EXECUTE;
                         end

        EXECUTE        : 
                         begin
                            case (store_frames [0])
                                  RF_Wr_CMD          : 
                                                          begin
                                                            WrEn    = 1;
                                                            address = store_frames [1];
                                                            WrData  = store_frames [2];
                                                            next_state = DONE;
                                                          end
                                             
                                  RF_Rd_CMD          :   
                                                          begin
                                                            RdEn     = 1;
                                                            address  = store_frames [1];
                                                            if (RdData_Valid && !FIFO_Full) begin
                                                              next_state = SEND;
                                                              Winc = 1;
                                                            end
                                                          end

                                  ALU_OPER_W_OP_CMD   :
                                                          begin
                                                            CLK_EN  = 1;
                                                            EN =1;
                                                            ALU_FUN = store_frames [3][3:0];
                                                            if (OUT_Valid && !FIFO_Full) begin
                                                              next_state = SEND;
                                                              Winc = 1;
                                                            end     
                                                          end

                                   ALU_OPER_W_NOP_CMD :  
                                                          begin
                                                           CLK_EN  = 1; 
                                                           EN   = 1;
                                                           ALU_FUN = store_frames [1][3:0];
                                                           if (OUT_Valid && !FIFO_Full) begin
                                                              next_state = SEND;
                                                              Winc = 1;
                                                            end    
                                                          end 
                            endcase
                         end

        SEND           :
                         begin
                           
                           case (store_frames [0])
                            
                                  RF_Rd_CMD          :   
                                                          begin
                                                            WR_DATA = RdData ;
                                                            next_state = DONE;
                                                          end

                                  ALU_OPER_W_OP_CMD   :
                                                          begin
                                                            WR_DATA = ALU_OUT [WIDTH-1:0];
                                                            if (OUT_Valid && !FIFO_Full) begin
                                                              next_state = WAIT;
                                                            end     
                                                          end

                                   ALU_OPER_W_NOP_CMD :  
                                                          begin
                                                            WR_DATA = ALU_OUT[WIDTH-1:0];
                                                            if (OUT_Valid && !FIFO_Full) begin
                                                              next_state = WAIT;
                                                            end     
                                                          end 
                            endcase
                            
                         end 

        
        WAIT           :  
                         begin
                           Winc = 1;
                           next_state = SEND_2;        
                         end
        
        
        SEND_2           :  
                         begin
                           WR_DATA = ALU_OUT[2*WIDTH-1:WIDTH];
                           next_state = DONE;         
                         end

        DONE           :  
                         begin
                          next_state = IDLE;          
                         end  
    endcase

end

endmodule
