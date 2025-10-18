module UART_RX_FSM #(
    parameter DATA_WIDTH = 8,
    parameter bit_cnt_width =4
) (
    input wire clk,
    input wire rst,

    input wire RX_IN,
    input wire PAR_EN, 

    input wire par_err,
    input wire stp_err,
    input wire strt_glitch,
    input wire [bit_cnt_width-1:0]  bit_cnt,

    output reg dat_samp_en,
    output reg cnt_enable,
    output reg deser_en,
    output reg par_chk_en,
    output reg stp_chk_en,
    output reg strt_chk_en,

    output reg data_valid 
);


typedef enum bit [2:0] 
{
   IDLE   = 3'b000,
   START  = 3'b001,
	 DATA   = 3'b011,
	 PARITY = 3'b010,
	 STOP   = 3'b110
} state_e;

state_e current_state,next_state;

always @(posedge clk or negedge rst) begin
 if (!rst)
  current_state <= IDLE ;
 else 
  current_state <= next_state;     
end


always @(*) 
begin
    dat_samp_en = 1'b0 ;
    cnt_enable  = 1'b0 ;
    deser_en    = 1'b0 ;
    par_chk_en  = 1'b0 ;
    stp_chk_en  = 1'b0 ;
    strt_chk_en = 1'b0 ;
    data_valid  = 1'b0 ;
    next_state  = current_state;
    
    case (current_state)

        IDLE   : begin
                  if (RX_IN == 1'b0) begin  
                     next_state = START;
                     strt_chk_en = 1'b1 ;
                     cnt_enable  = 1'b0 ;
                  end
                 end

        START  : begin
                  
                  cnt_enable  = 1'b1 ;
                  dat_samp_en = 1'b1 ;
                  if (strt_glitch) begin
                    next_state = IDLE ;                    
                  end else begin 
                   if (bit_cnt == 1) begin
                    next_state = DATA ;
                    dat_samp_en = 1'b0 ;
                   end
                  end 
                 end

        DATA   : begin
                  cnt_enable  = 1'b1 ;
                  deser_en    = 1'b1 ;
                  dat_samp_en = 1'b1 ;
                  if (bit_cnt == DATA_WIDTH+1) begin
                    if (PAR_EN) begin
                        next_state = PARITY;
                        //dat_samp_en = 1'b0 ;
                    end else begin
                        next_state = STOP;
                       // dat_samp_en = 1'b0 ;
                    end
                  end
                 end

        PARITY : begin
                  cnt_enable  = 1'b1 ;
                  dat_samp_en = 1'b1 ;
                  par_chk_en  = 1'b1 ;
                  if (bit_cnt == DATA_WIDTH+2) 
                    next_state = STOP ;
                    //dat_samp_en = 1'b0 ;
                 end 

        STOP   : begin  
                  cnt_enable  = 1'b1 ;
                  dat_samp_en = 1'b1 ;
                  stp_chk_en  = 1'b1 ;
                  if (bit_cnt == DATA_WIDTH + (PAR_EN ?3:2)) begin 
                     data_valid = (par_err | stp_err) ? 1'b0 : 1'b1 ;
                     cnt_enable  = 1'b0 ;
                     if (RX_IN == 0) begin
                       next_state = START;
                       strt_chk_en = 1'b1 ;
                     end else begin
                       next_state = IDLE;
                     end
                  end 
                 end        

        default: next_state = IDLE ;
    endcase
    
end

endmodule
