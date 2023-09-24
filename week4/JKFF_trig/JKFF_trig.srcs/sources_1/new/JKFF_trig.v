`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 20:24:24
// Design Name: 
// Module Name: JKFF_trig
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


module JKFF(clk, J, K, Q);

input clk, J, K;
output reg Q;

always @(posedge clk) begin
    if(J&K) begin 
        Q<=~Q;
    end
    else if(J) 
        Q<=1'b1;
    else if(K) 
        Q<=1'b0;
end
endmodule
