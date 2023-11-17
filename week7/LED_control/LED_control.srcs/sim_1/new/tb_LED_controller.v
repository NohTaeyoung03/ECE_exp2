`timescale 1ms / 1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 17:02:57
// Design Name: 
// Module Name: tb_LED_control
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


module tb_LED_control();

reg clk, rst;
reg[7:0] bin;

wire[7:0] seg_data;
wire[7:0] seg_sel;
wire led_signal;

LED_control tb(clk, rst, bin, seg_data, seg_sel, led_signal);

initial begin
    rst <= 1; clk <= 0; bin <= 0; #1e+6
    rst <= 0; #1e+6
    bin <= 8'b00000000; #1e+6
    bin <= 8'b00111111; #1e+6
    bin <= 8'b01111111; #1e+6
    bin <= 8'b10111111; #1e+6
    bin <= 8'b11111111;
end

always begin
    #0.05e+3 clk <= ~clk;
end
endmodule
