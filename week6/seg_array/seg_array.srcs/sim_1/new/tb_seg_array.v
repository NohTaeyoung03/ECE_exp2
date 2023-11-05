`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/04 21:16:47
// Design Name: 
// Module Name: tb_seg_array
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


module tb_seg_array();

reg clk, rst;
reg btn;
wire[7:0] seg_data;
wire[7:0] seg_sel;

seg_array tb(.clk(clk), .rst(rst), .btn(btn), .seg_data(seg_data), .seg_sel(seg_sel));

initial begin
    rst=0; clk=0; btn=0; #10
    rst=1; #10
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
