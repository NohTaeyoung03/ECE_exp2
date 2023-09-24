`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 18:04:25
// Design Name: 
// Module Name: tb_DFF
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


module tb_dff();
reg clk, D;
wire Q;

DFF FF(.clk(clk), .D(D), .Q(Q));

initial begin
    clk<=0;
    #30 D<=0;
    #30 D<=1;
    #30 D<=0;
end

always begin
    #5 clk<=~clk;
end

endmodule
