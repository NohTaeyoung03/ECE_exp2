`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 19:59:32
// Design Name: 
// Module Name: tb_JKFF
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


module tb_JKFF();

reg clk, J, K;
wire Q;

JKFF FF(.clk(clk), .J(J),.K(K),.Q(Q));

initial begin
    clk<=1'b0;
    #30 J<=1'b0; K<=1'b0;
    #30 J<=1'b0; K<=1'b1;
    #30 J<=1'b1; K<=1'b0;
    #30 J<=1'b1; K<=1'b1;
end

always begin
    #5 clk<=~clk;
end
endmodule
