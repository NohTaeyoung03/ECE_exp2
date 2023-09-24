`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 22:13:52
// Design Name: 
// Module Name: TFF_oneshot
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


module TFF_oneshot(clk, rst, T, Q);

input clk,rst,T;
reg T_reg,T_trig;
output reg Q;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        Q<=1'b0;
        T_reg<=1'b0;
        T_trig<=1'b0;
    end
    else begin
        T_reg<=T;
        T_trig<=T & ~T_reg;
        if(T_trig)
            Q<=~Q;
    end
end

endmodule
