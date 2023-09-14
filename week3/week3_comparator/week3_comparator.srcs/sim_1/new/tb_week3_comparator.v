`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 10:13:24
// Design Name: 
// Module Name: tb_week3_comparator
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


module tb_week3_comparator();
reg[3:0] a,b;
wire x,y,z;
week3_comparator u(.a(a), .b(b), .x(x), .y(y), .z(z));
initial begin
    a = 4'b0011; b = 4'b1000; #1
    a = 4'b0111; b = 4'b0001; #1
    a = 4'b1001; b = 4'b1001; #1
    a = 4'b1011; b = 4'b1111;
end
endmodule
