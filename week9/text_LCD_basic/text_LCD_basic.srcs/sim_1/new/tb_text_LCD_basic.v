`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/09 06:21:38
// Design Name: 
// Module Name: tb_text_LCD_basic
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


module tb_text_LCD_basic();

reg rst, clk;

wire LCD_E, LCD_RS, LCD_RW;
wire[7:0] LCD_DATA; 
wire[7:0] LED_out;

text_LCD_basic tb(rst, clk, LCD_E, LCD_RS, LCD_RW, LCD_DATA, LED_out);

initial begin
    rst <= 0; clk <= 0; #10
    rst <= 1;
end

always begin
    #1 clk <= ~clk;
end

endmodule
