`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 01:54:09
// Design Name: 
// Module Name: tb_week2_half2
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


module tb_week2_half2();
reg a,b;
reg c,s;
wire c,s;

initial begin
    a=1'b0; b=1'b0; #10
    a=1'b0; b=1'b1; #10
    a=1'b1; b=1'b0; #10
    a=1'b1; b=1'b1;
end
endmodule
