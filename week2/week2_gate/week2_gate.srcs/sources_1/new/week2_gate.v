`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/09 20:42:17
// Design Name: 
// Module Name: week2_gate
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


module week2_gate(a,b,o1,o2,o3,o4,o5);

input a,b;
output o1,o2,o3,o4,o5;
wire o1,o2,o3,o4,o5;

assign o1=a&b;
assign o2=a|b;
assign o3=a^b;
assign o4=~(a|b);
assign o5=~(a&b);

endmodule
