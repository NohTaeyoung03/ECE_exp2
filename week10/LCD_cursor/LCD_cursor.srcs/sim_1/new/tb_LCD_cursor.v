`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/14 22:11:40
// Design Name: 
// Module Name: tb_LCD_cursor
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


module tb_LCD_cursor();

reg rst, clk;
reg[9:0] number_btn;
reg[1:0] control_btn;

wire LCD_E, LCD_RS, LCD_RW;
wire[7:0] LCD_DATA; 
wire[7:0] LED_out;

LCD_cursor tb(rst, clk, LCD_E, LCD_RS, LCD_RW, LCD_DATA, LED_out, number_btn, control_btn);

initial begin
    rst <= 0; clk <= 0; number_btn <= 10'b0000_0000_00; control_btn <= 2'b00; #10
    rst <= 1; #100
    number_btn <= 10'b0010_0000_00; #10
    number_btn <= 10'b0000_0000_00; #10
    number_btn <= 10'b0000_1000_00; #10
    number_btn <= 10'b0000_0000_00; #10
    control_btn <= 2'b10;#10
    control_btn <= 2'b00;#10
    control_btn <= 2'b01;#10
    control_btn <= 2'b00;
end

always
    #0.05 clk <= ~clk;
    
endmodule
