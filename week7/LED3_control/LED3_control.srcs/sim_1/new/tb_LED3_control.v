`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 19:01:26
// Design Name: 
// Module Name: tb_LED3_control
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


module tb_LED3_control();

reg clk, rst;
reg[7:0] btn;

wire[3:0] led_signal_R;
wire[3:0] led_signal_G;
wire[3:0] led_signal_B;

LED3_control tb(clk, rst, btn, led_signal_R, led_signal_G, led_signal_B);

initial begin 
    rst <= 1; clk <= 0; btn <= 8'b00000000; #1e+6 
    rst <= 0; #1e+6
    btn <= 8'b00000001; #1e+6
    btn <= 8'b00000010; #1e+6
    btn <= 8'b00000100;
end

always begin
    #0.5 clk <= ~clk;
end

endmodule
