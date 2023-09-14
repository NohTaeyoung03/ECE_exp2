`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 13:28:18
// Design Name: 
// Module Name: tb_week3_encoder
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


module tb_week3_encoder();
reg[3:0] D;
wire x,y,V;
week3_encoder u(.D(D),.x(x),.y(y),.V(V));

initial begin
    D=4'b0000; #10
    D=4'b1000; #10
    D=4'b1011; #10
    D=4'b0101; #10
    D=4'b0001;
end
endmodule
