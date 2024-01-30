`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 06:42:16
// Design Name: 
// Module Name: digilock_test
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


`timescale 1ns / 1ps

module testbench;
    // Inputs unlock, b_in, clear, clk 101100
    reg b_in;
    reg clk;
    reg clear;
    // Outputs
    wire unlock;
    // Instantiate the Unit Under Test (UUT)
    digi_lock uut (
        .b_in(b_in), 
        .clk(clk), 
        .clear(clear), 
        .unlock(unlock)
    );
    
initial
    begin
        clk = 1'b0;
        clear = 1'b0;
        #15 clear = 1'b1;
    end

always #5 clk = ~ clk;  

initial begin
        #10 b_in = 1;#10 b_in = 0 ; #10 b_in = 1 ; #10 b_in = 1 ; #10 b_in = 0 ; #10 b_in = 0 ;
        #10 b_in = 1;#10 b_in = 0 ; #10 b_in = 1 ; #10 b_in = 1 ; #10 b_in = 0 ; #10 b_in = 0 ;
 
        #10 $finish;
    end
      
    
endmodule

