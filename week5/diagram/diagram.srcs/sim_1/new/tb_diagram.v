`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/27 22:18:37
// Design Name: 
// Module Name: tb_diagram
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


module tb_diagram();

reg clk, rst, x;
wire[1:0] state;
wire y;

diagram tb(.clk(clk), .rst(rst), .x(x), .y(y), .state(state));

initial begin 
    clk=0; rst=0; #1
    rst=1; #1
    x=1; #10
    x=1; #10
    x=0;
end
always #5 clk<=~clk;
endmodule
