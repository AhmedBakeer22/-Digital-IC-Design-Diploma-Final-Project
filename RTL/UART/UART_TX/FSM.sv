module FSM 
( 
 input wire clk ,
 input wire rst ,
 input wire data_valid,
 input wire par_en,
 input wire ser_done,
 output reg ser_en,
 output reg [1:0] mux_sel ,
 output reg busy
);

typedef enum bit [2:0] 
{
     IDLE   = 3'b000,
     START  = 3'b001,
	 SERIAL = 3'b011,
	 PARITY = 3'b010,
	 STOP   = 3'b110
} state_e; 

state_e current_state,next_state;
reg busy_c;

always @ (posedge clk or negedge rst)
   if (!rst)
     current_state <= IDLE ;
   else 
     current_state <= next_state ;

// next state logic	 
always @ (*) 
   begin 
	case (current_state) 
	    
	    IDLE   : 
            	  begin 
		          if (data_valid) 
                      begin 				  
                      next_state = START ;
                      end 					  
                  else 
                      next_state = IDLE ;
				  end 
					  
        START  :  
		          begin
	               next_state = SERIAL ;			   
                  end 
				  
		SERIAL : 
           		  begin 
 				   if (ser_done) begin 
                    next_state = par_en ? PARITY : STOP ;
				   end 	
				   else begin  
				    next_state = SERIAL ;
				   end
				  end 

		PARITY :   
		          begin 	
				   next_state = STOP;
				  end 
				  
        STOP   :  
           		  begin 
				   next_state = IDLE;  
				  end 
	    default : begin
			       next_state = IDLE ;
		          end  
    endcase 
   end 

// output logic
always @ (*) 
   begin 
      ser_en  = 1'b0 ;
	  mux_sel = 2'b00;
	  busy_c  = 1'b0 ;
	case (current_state) 
	    
	    IDLE   : 
            	  begin 
				  ser_en  = 1'b0;	
		          busy_c  = 1'b0;
				  mux_sel = 2'b11;
				  end 
					  
        START  :  
		          begin 
		           mux_sel = 2'b00;
                   ser_en  = 1'b0 ;
				   busy_c  = 1'b1 ;				   
                  end 
				  
		SERIAL : 
           		  begin 
				   ser_en  = 1'b1 ;
                   mux_sel = 2'b01;
				   busy_c  = 1'b1 ;
 				   if (ser_done) begin 
					ser_en = 1'b0;
				   end 	
				   else begin
					ser_en  = 1'b1 ;
				   end
				  end 

		PARITY :   
		          begin 
                   mux_sel = 2'b10;
				   busy_c  = 1'b1 ;		
				  end 
				  
        STOP   :  
           		  begin 
                   mux_sel = 2'b11;	
				   busy_c  = 1'b1 ;	
				  end 
	    default : begin
			       mux_sel = 2'b00;	
				   busy_c  = 1'b0 ;
				   ser_en = 1'b0;
		          end  
    endcase 
   end 


//register output 
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    busy <= 1'b0 ;
   end
  else
   begin
    busy <= busy_c ;
   end
 end

endmodule



