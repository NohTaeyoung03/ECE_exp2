`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 21:06:32
// Design Name: 
// Module Name: tb_LCD
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


module tb_LCD();

reg rst, clk;
reg[9:0] number_btn;
reg[1:0] control_btn;
reg line_swap;

wire LCD_E, LCD_RS, LCD_RW;
wire[7:0] LCD_DATA; 
wire[7:0] LED_out;

LCD tb(rst, clk, LCD_E, LCD_RS, LCD_RW, LCD_DATA, LED_out, number_btn, control_btn, line_swap);

initial begin 
    rst <= 0; clk <= 0; number_btn <= 10'b0000_0000_00; control_btn <= 2'b00; line_swap <= 0; #10
    rst <= 1; #100
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    number_btn <= 10'b1000000000; #10 number_btn <= 10'b0000000000; #10
    number_btn <= 10'b0010000000; #10 number_btn <= 10'b0000000000; #10
    line_swap <= 1; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    control_btn <= 2'b01; #10 control_btn <= 2'b00; #10
    number_btn <= 10'b0000100000; #10 number_btn <= 10'b0000000000;
end

always 
    #0.05 clk <= ~clk;

endmodule
