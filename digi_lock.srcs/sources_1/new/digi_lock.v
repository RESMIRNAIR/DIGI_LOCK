`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 06:29:19
// Design Name: 
// Module Name: digi_lock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digi_lock(unlock, b_in, clear, clk);
   input b_in, clear, clk;
   output reg unlock;
   reg [2:0] state; // The machine states 
   parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111; 
   always @(negedge clk or clear) begin
        if (clear == 0) state <= S0;
        else case (state) // Write the logic for digi lock
            
            
            
            
            
            
            
            
            
              default: state <= S0;
        endcase
   end
always @(state) 
  begin  
      case (state)
            S0, S1, S2, S3, S4, S5, S7: unlock = 0;
            S6: unlock = 1;
      endcase
   end
endmodule
