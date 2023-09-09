`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 01:39:01
// Design Name: 
// Module Name: week2_half2
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


module week2_half2(a,b,c,s);
input a,b;
output c,s;
reg c,s;

always @(*)begin
    case({a,b})
        2'b00: begin c=1'b0; s=1'b0; end
        2'b01: begin c=1'b0; s=1'b1; end
        2'b10: begin c=1'b0; s=1'b1; end
        2'b11: begin c=1'b1; s=1'b0; end
    endcase
end
endmodule
