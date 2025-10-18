module SYS_TB #(
    parameter DATA_WIDTH =8,
    parameter ADDR = 4
) ();

    reg REF_CLK_TB;
    reg UART_CLK_TB;
    reg RST_N_TB;
    reg UART_RX_IN_TB;

    wire UART_TX_O_TB;
    wire parity_error_TB;
    wire framing_error_TB;

integer clock_period_REF = 20;
integer clock_period_UART = 271.296;
integer clock_period_UART_TX = 271.296*32 ; // default clock_period_UART*Div Ratio  
always #(clock_period_REF/2)  REF_CLK_TB =~ REF_CLK_TB; //REF_CLK
always #(clock_period_UART/2) UART_CLK_TB=~ UART_CLK_TB;
 
 SYS_TOP # (
    .DATA_WIDTH (DATA_WIDTH),
    .ADDR(ADDR)
 ) SYS_TOP_U0 (
    .REF_CLK(REF_CLK_TB),
    .UART_CLK(UART_CLK_TB),
    .RST_N(RST_N_TB),
    .UART_RX_IN(UART_RX_IN_TB),

    .UART_TX_O(UART_TX_O_TB),
    .parity_error(parity_error_TB),
    .framing_error(framing_error_TB)
 );


integer i,j;


 initial begin

   $dumpfile ("SYS.vcd");
   $dumpvars ;

   initialize ;
   reset;

   $display("\n========== SYSTEM Tests START ==========\n");

   $display ("WRITE B7 IN REGFILE AT ADRESS 0x06");
   RF_Wr_CMD (8'hAA,8'h06,8'hB7);

   $display ("WRITE 39 IN REGFILE AT ADRESS 0x0E");
   RF_Wr_CMD (8'hAA,8'h0E,8'h39);

   $display ("TEST CASE 1 : READ DATA FROM REGFILE AT ADRESS 0x06");
   RF_Rd_CMD (8'hBB,8'h06,8'hB7);

   $display ("TEST CASE 2 : READ DATA FROM REGFILE AT ADRESS 0x0E");
   RF_Rd_CMD (8'hBB,8'h0E,8'h39);

   $display ("TEST CASE 3 : ALU ADD_OPEARATION (18 + 20) ");
   ALU_OPER_W_OP_CMD (8'hCC,8'd18,8'd20,8'b0,16'd38);

   $display ("TEST CASE 4 : ALU SUB_OPEARATION (243 - 112) ");
   ALU_OPER_W_OP_CMD (8'hCC,8'd243,8'd112,8'b01,16'd131);

   $display ("TEST CASE 5 : ALU Multip_OPEARATION (10 * 36) ");
   ALU_OPER_W_OP_CMD (8'hCC,8'd10,8'd36,8'b10,16'd360);

   $display ("TEST CASE 6 : ALU CMP_OPEARATION (114 > 112) ");
   ALU_OPER_W_OP_CMD (8'hCC,8'd114,8'd112,8'b1011,16'd2);
   
   $display ("TEST CASE 7 : ALU ADD_OPEARATION WITHOUT OPERANDS ");
   ALU_OPER_W_NOP_CMD (8'hDD,8'b00,16'd226);

   $display ("TEST CASE 8 : ALU SUB_OPEARATION WITHOUT OPERANDS ");
   ALU_OPER_W_NOP_CMD (8'hDD,8'b01,16'd2);

   $display("\n========== All Tests Completed ==========\n");


    #4000
    $stop; 
 end

task initialize ;
   begin
    REF_CLK_TB =0;
    UART_CLK_TB=0;
    UART_RX_IN_TB = 1;  
   end 
endtask

task reset ;
   begin
    RST_N_TB = 1;
    #(clock_period_UART_TX);  
    RST_N_TB =0; 
    #(clock_period_UART_TX);
    RST_N_TB = 1;
    #(clock_period_UART_TX);  
   end 
endtask

task RF_Wr_CMD ; 
 input [DATA_WIDTH-1:0] CMD ;
 input [DATA_WIDTH-1:0] address;
 input [DATA_WIDTH-1:0] data ;
   begin
     //send CMD
     Send_frame (CMD);
     //send address 
     Send_frame (address);
     //send data 
     Send_frame (data);
   end    
endtask

task RF_Rd_CMD ; 
 input [DATA_WIDTH-1:0] CMD ;
 input [DATA_WIDTH-1:0] address;
 input [DATA_WIDTH-1:0] EXPECTED ;
 reg [DATA_WIDTH-1:0] OUT ;
   begin
     //send CMD
     Send_frame (CMD);
     //send address 
     Send_frame (address);

     // Wait for start bit (falling edge)
      @(negedge UART_TX_O_TB)
      #(clock_period_UART_TX);
      for (i=0 ;i<DATA_WIDTH ;i=i+1 ) begin
        OUT [i] = UART_TX_O_TB;
        #(clock_period_UART_TX);
      end
    
      if (OUT !== EXPECTED) begin
        $display("FAIL: EXPECTED = 0x%h, Got=%h", EXPECTED, OUT);
      end else begin
        $display("PASS: OUTPUT = 0x%h", OUT);
      end
   end    
endtask

task ALU_OPER_W_OP_CMD ; 
 input [DATA_WIDTH-1:0] CMD ;
 input [DATA_WIDTH-1:0] OP_A ;
 input [DATA_WIDTH-1:0] OP_B ; 
 input [DATA_WIDTH-1:0] ALU_FUN;
 input [2*DATA_WIDTH-1:0] EXPECTED ;

 reg [2*DATA_WIDTH-1:0] OUT ;
   begin
     //send CMD
     Send_frame (CMD);
     //send OP_A 
     Send_frame (OP_A);
     //send OP_B 
     Send_frame (OP_B);
     //Send ALU_FUN
     Send_frame (ALU_FUN);

     // Wait for start bit (falling edge)
      @(negedge UART_TX_O_TB)
      #(clock_period_UART_TX);
      for (i=0 ;i<DATA_WIDTH ;i=i+1 ) begin
        OUT [i] = UART_TX_O_TB;
        #(clock_period_UART_TX);
      end

      @(negedge UART_TX_O_TB)
      #(clock_period_UART_TX);
      for (j=DATA_WIDTH ;j<2*DATA_WIDTH ;j=j+1 ) begin
        OUT [j] = UART_TX_O_TB;
        #(clock_period_UART_TX);
      end
    
      if (OUT !== EXPECTED) begin
        $display("FAIL: EXPECTED = %d, Got=%d", EXPECTED, OUT);
      end else begin
        $display("PASS: OUTPUT = %d", OUT);
      end
   end    
endtask

task ALU_OPER_W_NOP_CMD ; 
 input [DATA_WIDTH-1:0] CMD ; 
 input [DATA_WIDTH-1:0] ALU_FUN;
 input [2*DATA_WIDTH-1:0] EXPECTED ;

 reg [2*DATA_WIDTH-1:0] OUT ;
   begin
     //send CMD
     Send_frame (CMD);
     //Send ALU_FUN
     Send_frame (ALU_FUN);

     // Wait for start bit (falling edge)
      @(negedge UART_TX_O_TB)
      #(clock_period_UART_TX);
      for (i=0 ;i<DATA_WIDTH ;i=i+1 ) begin
        OUT [i] = UART_TX_O_TB;
        #(clock_period_UART_TX);
      end

      @(negedge UART_TX_O_TB)
      #(clock_period_UART_TX);
      for (j=DATA_WIDTH ;j<2*DATA_WIDTH ;j=j+1 ) begin
        OUT [j] = UART_TX_O_TB;
        #(clock_period_UART_TX);
      end
    
      if (OUT !== EXPECTED) begin
        $display("FAIL: EXPECTED = %d, Got=%d", EXPECTED, OUT);
      end else begin
        $display("PASS: OUTPUT = %d", OUT);
      end
   end    
endtask

task Send_frame ; 
 input [DATA_WIDTH-1:0] frame ;
   begin
      //start bit
      UART_RX_IN_TB = 1'b0;
      #(clock_period_UART_TX);
      //CMD
      for ( i=0 ;i<DATA_WIDTH ;i=i+1 ) begin
      UART_RX_IN_TB = frame [i];
      #(clock_period_UART_TX);
      end  
      //parity bit 
      UART_RX_IN_TB = ^frame ; // default even parity
      #(clock_period_UART_TX);
      // stop_bit 
      UART_RX_IN_TB = 1'b1 ;
      #(clock_period_UART_TX);
   end    
endtask


endmodule


