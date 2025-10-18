module serializer # (parameter IN_width = 8) 
( 
  input wire [IN_width-1:0] p_data ,
  input wire  ser_en ,
  input wire  clk,
  input wire  rst,
  input wire data_valid,
  input wire busy,  
  output wire  ser_done,
  output wire  ser_data  
);

/*  reg [2:0] counter;
 reg [IN_width-1:0] reg_data ;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        reg_data <= 'b0;
    end else if(data_valid && !busy)begin
        reg_data <= p_data;
    end
end 

always @ (posedge clk or negedge rst ) 
  begin 
    if (!rst)
        begin 
            ser_data <= 1'b0 ;
            ser_done <= 1'b0 ;
            counter  <= 3'b0 ;  			
		end
    else if (ser_en) 
	    begin 
    	    ser_data <= reg_data [counter];
            if (counter == IN_width-1)
			  begin 
                ser_done <= 1'b1 ;
                counter  <= 3'b0 ;
			  end 	
            else 
			   begin 
			    counter <= counter +1 ;
			    ser_done <= 1'b0 ;   
			   end 
        end  
    else 
        begin 
            ser_done <= 1'b0 ;   
            counter  <= 3'b0 ;
			      ser_data <= 1'b0 ; 
        end 			
  end*/

reg  [IN_width-1:0]    DATA_V ;
reg  [2:0]          ser_count ;
              
//isolate input 
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    DATA_V <= 'b0 ;
   end
  else if(data_valid && !busy)
   begin
    DATA_V <= p_data ;
   end	
  else if(ser_en)
   begin
    DATA_V <= DATA_V >> 1 ;         // shift register
   end
 end
 

//counter
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    ser_count <= 'b0 ;
   end
  else
   begin
    if (ser_en)
	 begin
      ser_count <= ser_count + 'b1 ;		 
	 end
	else 
	 begin
      ser_count <= 'b0 ;		 
	 end	
   end
 end 

assign ser_done = (ser_count == 'b111) ? 1'b1 : 1'b0 ;

assign ser_data = DATA_V[0] ;



 endmodule  