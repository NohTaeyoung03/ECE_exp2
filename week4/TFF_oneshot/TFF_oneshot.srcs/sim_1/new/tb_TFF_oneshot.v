`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 22:17:02
// Design Name: 
// Module Name: tb_TFF_oneshot
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


module tb_TFF_oneshot();

reg clk, rst, T;
wire Q;

TFF_oneshot FF(.clk(clk), .rst(rst), .T(T), .Q(Q));

initial begin
    clk<=0;
    rst<=1;
    #10 rst<=0;
    #10 rst<=1;
    #10 T<=0;
    #80 T<=1;
    #100 T<=0;
    #80 T<=1;
    #100 T<=0;
    #80 T<=1;
    #100 T<=0;
end

always begin
    #5 clk<=~clk;
end

endmodule
