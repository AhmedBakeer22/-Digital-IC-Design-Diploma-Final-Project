module Register_File # (
  parameter WIDTH = 8,
  parameter DEPTH = 16,
  parameter ADDR  = 4
) ( 
  input wire RST,
  input wire CLK,
  input wire WrEn,
  input wire RdEn,
  input wire [ADDR-1:0] address ,  
  input wire [WIDTH-1:0] WrData ,
  output reg [WIDTH-1:0] RdData ,
  output reg RdData_Valid,
  output wire [WIDTH-1:0] REG0,
  output wire [WIDTH-1:0] REG1, 
  output wire [WIDTH-1:0] REG2, 
  output wire [WIDTH-1:0] REG3   
);

 reg [WIDTH-1:0] REG [DEPTH-1:0] ; 
 integer i;

 // Asynchronous active-low reset
 always @ (posedge CLK or negedge RST)
 begin
  if (!RST)
   begin
    RdData <= 'b0 ;
    RdData_Valid <= 1'b0;

    for (i =0 ;i<DEPTH ;i=i+1 ) begin
      if (i==2) begin
        REG[2] <= 'b100000_01;
      end else if (i==3) begin
        REG[3] <= 'b00100000;
      end else begin
        REG[i] <= 'b0;
      end
    end
   end
  else if (WrEn && !RdEn)  // Write Data
   begin 
    REG [address] <= WrData;
   end else if (!WrEn && RdEn)
   begin
    RdData <= REG[address] ;
    RdData_Valid <= 1'b1;
   end else begin
    RdData_Valid <= 1'b0;
   end

 end
 
assign REG0 = REG [0];
assign REG1 = REG [1];
assign REG2 = REG [2];
assign REG3 = REG [3];

endmodule  
   