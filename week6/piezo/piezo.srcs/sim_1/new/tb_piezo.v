`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/05 15:18:54
// Design Name: 
// Module Name: tb_piezo
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


module tb_piezo();

reg clk, rst;
reg[7:0] btn;
wire piezo;

piezo P1(clk, rst, btn, piezo);

initial begin
    clk <= 0; rst <= 1; btn <= 8'b00000000;#1e+6;
    rst <= 0; #1e+6
    rst <= 1; #1e+6
    btn <= 8'b00000010; #1e+6
    btn <= 8'b00100000; 
end

always begin
    #0.5 clk <= ~clk;
end

endmodule
