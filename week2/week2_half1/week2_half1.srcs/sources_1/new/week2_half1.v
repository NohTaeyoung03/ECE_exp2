`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 23:54:32
// Design Name: 
// Module Name: week2_half1
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


module week2_half1(a,b,c,s);

input a,b;
output c,s;
wire c,s;

assign c=a&b;
assign s=a^b;

endmodule
