`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/03 20:20:40
// Design Name: 
// Module Name: tb_seg_counter
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


module tb_seg_counter();

reg clk, rst;
reg btn;
wire[7:0] seg;

seg_counter tb(.clk(clk), .rst(rst), .btn(btn), .seg(seg));

initial begin
    rst=0; clk=0; #10
    rst=1; #10
    btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0; #10
    btn=1; #10 btn=0;
end

always #1 clk <= ~clk;
endmodule
