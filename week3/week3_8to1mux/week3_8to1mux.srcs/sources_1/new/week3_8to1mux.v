`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 13:47:30
// Design Name: 
// Module Name: week3_8to1mux
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


module week3_8to1mux(I0,I1,I2,I3,I4,I5,I6,I7,S,Y);
input[3:0] I0;
input[3:0] I1;
input[3:0] I2;
input[3:0] I3;
input[3:0] I4;
input[3:0] I5;
input[3:0] I6;
input[3:0] I7;
input[2:0] S;
output reg[3:0] Y;

always @(S) begin
    case(S)
        3'b000: Y=I0;
        3'b001: Y=I1;
        3'b010: Y=I2;
        3'b011: Y=I3;
        3'b100: Y=I4;
        3'b101: Y=I5;
        3'b110: Y=I6;
        3'b111: Y=I7;
    endcase
end
endmodule
