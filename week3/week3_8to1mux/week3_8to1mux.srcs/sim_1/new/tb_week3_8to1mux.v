`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 13:56:59
// Design Name: 
// Module Name: tb_week3_8to1mux
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


module tb_week3_8to1mux();
reg[3:0] I0;
reg[3:0] I1;
reg[3:0] I2;
reg[3:0] I3;
reg[3:0] I4;
reg[3:0] I5;
reg[3:0] I6;
reg[3:0] I7;
reg[2:0] S;
wire[3:0] Y;
week3_8to1mux u(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7),.S(S),.Y(Y));

initial begin
    I0=4'b0000; 
    I1=4'b0001; 
    I2=4'b0010; 
    I3=4'b0011; 
    I4=4'b0100; 
    I5=4'b0101; 
    I6=4'b0110; 
    I7=4'b0111;
    S=3'b000; #10
    S=3'b001; #10
    S=3'b010; #10
    S=3'b011; #10
    S=3'b100; #10
    S=3'b101; #10
    S=3'b110; #10
    S=3'b111;
end
endmodule
