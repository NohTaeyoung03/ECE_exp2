`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 02:14:21
// Design Name: 
// Module Name: week2_full
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


module week2_full(a,b,ci,c,s);
input a,b,ci;
output c,s;

assign c=(a^b)&ci|a&b;
assign s=a^b^ci;

endmodule
