`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/23 12:47:10
// Design Name: 
// Module Name: tb_traffic_light
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


module tb_traffic_light();

reg clk, rst;
reg[3:0] speed_sel;
reg add_time;
reg btn_A;
wire S_W_GREEN, N_W_GREEN, W_W_GREEN, E_W_GREEN, S_W_RED, N_W_RED, W_W_RED, E_W_RED, 
     S_GREEN, N_GREEN, W_GREEN, E_GREEN, S_YELLOW, N_YELLOW, W_YELLOW, E_YELLOW,
     S_RED, N_RED, W_RED, E_RED, S_LEFT, N_LEFT, W_LEFT, E_LEFT;
wire LCD_E, LCD_RS, LCD_RW;
wire[7:0] LCD_DATA; 
     
traffic_light tb(clk, rst, S_W_GREEN, N_W_GREEN, W_W_GREEN, E_W_GREEN, S_W_RED, N_W_RED, W_W_RED, E_W_RED,
                 S_GREEN, N_GREEN, W_GREEN, E_GREEN, S_YELLOW, N_YELLOW, W_YELLOW, E_YELLOW, 
                 S_RED, N_RED, W_RED, E_RED, S_LEFT, N_LEFT, W_LEFT, E_LEFT,
                 LCD_E, LCD_RS, LCD_RW, LCD_DATA,
                 speed_sel, add_time,
                 btn_A);

initial begin
    clk <= 0; rst <= 0; speed_sel <= 4'b0000; add_time <= 0; btn_A <= 0; #0.05
    rst <= 1;
    #26e+3
    btn_A <= 1; #0.5
    btn_A <= 0;
end

always 
    #0.5 clk <= ~clk;

endmodule
