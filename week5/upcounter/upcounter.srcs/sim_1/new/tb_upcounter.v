`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 08:44:39
// Design Name: 
// Module Name: tb_upcounter
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


module tb_upcounter();

reg clk, rst;
reg x;
wire[1:0] state;

upcounter tb(.clk(clk), .rst(rst), .x(x), .state(state));

initial begin
    rst=0; clk=0; x=0; #10
    rst=1; x=1; #10
    x=0;#10
    x=1;#10
    x=0;#10
    x=1;#10
    x=0;#10
    x=1;#10
    x=0;
end
always #5 clk <= ~clk;
endmodule
