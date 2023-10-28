`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 01:10:34
// Design Name: 
// Module Name: tb_vending_machine
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


module tb_vending_machine();

reg clk, rst;
reg A, B, C;
wire[2:0] state;
wire y;

vending_machine tb(.clk(clk), .rst(rst), .A(A), .B(B), .C(C), .state(state), .y(y));

initial begin
    rst=0; clk=0; #10
    rst=1; A=1; B=0; C=0; #10
    A=0; B=1; C=0; #10
    A=1; B=0; C=0; #10
    A=0; B=1; C=0; #10
    A=0; B=0; C=1; #10
    rst=0; #10
    rst=1; A=1; B=0; C=0; #10
    A=0; B=1; C=0; #10
    A=0; B=0; C=1;
end
always #1 clk <= ~clk;
endmodule
