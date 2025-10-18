module MUX 
(
 input wire clk ,
 input wire rst , 
 input wire [1:0] mux_sel,
 input wire par_bit,
 input wire ser_data,
 output reg TX_OUT
);

localparam start_bit = 1'b0;
localparam stop_bit  = 1'b1;

reg OUT;

always @ (*) 
  case (mux_sel)
   
    2'b00  : OUT = start_bit ; 
    2'b01  : OUT = ser_data ;
    2'b10  : OUT = par_bit ;	
    2'b11  : OUT = stop_bit ;
	
  endcase 
  
always @ (posedge clk or negedge rst) begin
     if (!rst) 
	    TX_OUT <= 1;
	 else 
      TX_OUT <= OUT;	 
end  
endmodule 