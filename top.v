`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2021 05:38:30 PM
// Design Name: 
// Module Name: top
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


module top(
input clock_in,reset,  
output[15:0] pc_out, alu_result
    );
  wire clock_out;  
  mips_16 m1( clock_out ,reset, pc_out, alu_result);  
  Clock_divider c1 (clock_in,clock_out);  
    
    
endmodule
