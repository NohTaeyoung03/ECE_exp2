`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/03 10:29:31
// Design Name: 
// Module Name: tb_bin2bcd
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


module tb_bin2bcd();

reg clk, rst;
reg[3:0] bin;
wire[7:0] bcd;

bin2bcd tb(.clk(clk), .rst(rst), .bin(bin), .bcd(bcd));

initial begin
    rst=1; clk=0; #10
    bin=0; #10
    bin=1; #10
    bin=2; #10
    bin=3; #10
    bin=4; #10
    bin=5; #10
    bin=6; #10
    bin=7; #10
    bin=8; #10
    bin=9; #10
    bin=10; #10
    bin=11; #10
    bin=12; #10
    bin=13; #10
    bin=14; #10
    bin=15;
end

always #1 clk <= ~clk;
endmodule
