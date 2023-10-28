`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 10:16:50
// Design Name: 
// Module Name: tb_updown
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


module tb_updown();

reg clk, rst;
reg x;
wire[2:0] state;

updown tb(.clk(clk), .rst(rst), .x(x), .state(state));

initial begin
    rst=0; clk=0; #10
    rst=1; x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0; #10
    x=1; #10
    x=0;
end   
always #1 clk <= ~clk;
endmodule
